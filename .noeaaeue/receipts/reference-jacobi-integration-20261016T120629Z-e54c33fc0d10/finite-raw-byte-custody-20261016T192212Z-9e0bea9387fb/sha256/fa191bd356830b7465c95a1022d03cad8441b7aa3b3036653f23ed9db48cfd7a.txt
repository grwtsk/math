"""Reuse qualified compilation artifacts in the manifested application replay.

Compilation reuse never provides an application or public-library admission claim.
All app owner censuses, hostile-control hops and input commands stay fresh.
"""
import hashlib
import json
from pathlib import Path
import subprocess
import uuid

from incremental_lean import (
    CacheError, CommandCache, artifact_family, create_origin, regular_bytes, validate_origin,
    compiler_runtime_digest, RuntimeIdentityGuard,
)


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def canonical(value):
    return json.dumps(value, sort_keys=True, separators=(",", ":"), allow_nan=False).encode()


def read_json(path):
    def unique(pairs):
        result = {}
        for name, value in pairs:
            if name in result:
                raise ValueError("Duplicate cache metadata key")
            result[name] = value
        return result
    return json.loads(regular_bytes(path), object_pairs_hook=unique)


def dependency_content(record):
    """Bind every frozen external byte without unique run paths/inode identities."""
    return {
        "source_revisions": record["source_revisions"],
        "lake_lock_sha256": record["lake_lock_sha256"],
        "objects": {name: {"sha256": entry["sha256"], "bytes": entry["bytes"]}
                    for name, entry in sorted(record["immutable_object_families"].items())},
    }


class QualifiedApplicationCompilationBridge:
    def __init__(self, driver, runner, nodes, build, dependency_record, compiler_sha,
                 validator_contract, cache_root, *, cold=False, public_origin=None,
                 compiler_runtime_identity=None, compiler_runtime_guard=None):
        self.driver, self.runner, self.nodes, self.build = driver, runner, nodes, Path(build)
        self.dependency_record = dependency_record
        self.dependency_digest = sha(canonical(dependency_content(dependency_record)))
        self.compiler_sha, self.validator_contract = compiler_sha, validator_contract
        if (not isinstance(compiler_runtime_identity, dict)
                or compiler_runtime_identity.get("schema") != "lean-compiler-runtime-v1"
                or compiler_runtime_identity.get("executable", {}).get("sha256") != compiler_sha):
            raise ValueError("Application compilation requires its complete observed compiler runtime identity")
        self.compiler_runtime_identity = json.loads(json.dumps(compiler_runtime_identity))
        self.compiler_runtime_sha256 = compiler_runtime_digest(self.compiler_runtime_identity)
        self.compiler_runtime_guard = compiler_runtime_guard or RuntimeIdentityGuard(
            Path(self.compiler_runtime_identity["executable"]["path"]), env=runner.environment)
        if (canonical(self.compiler_runtime_guard.identity) != canonical(self.compiler_runtime_identity)
                or self.compiler_runtime_guard.sha256 != self.compiler_runtime_sha256):
            raise ValueError("Application compiler runtime differs from its observed byte binding")
        self.compiler_runtime_guard.assert_stable()
        self.runner.receipt.update(compiler_runtime_identity=self.compiler_runtime_identity,
                                   compiler_runtime_sha256=self.compiler_runtime_sha256)
        self.cache = CommandCache(cache_root, namespace="qualified-application-compilation-v1",
                                  cold=cold, require_origin=True)
        self.public_cache = CommandCache(cache_root, namespace="math-trust-compile-v1",
                                         cold=cold, require_origin=True)
        self.public_origin, self.public_state = public_origin, None
        self.public_checked, self.public_metadata, self.public_source_checks = False, {}, {}
        self.application_origins = {}
        self.frames, self.compiled, self.results, self.pending = {}, {}, [], []
        self.runner.receipt["compilation_reuse_scope"] = (
            "Retained compilation artifacts only; complete application owner census and all "
            "native hostile controls are freshly executed before qualified application admission.")

    def _frame(self, label, argv, bindings, options):
        if label not in self.nodes:
            return None
        node = self.nodes[label]
        if not argv or argv[0] != self.compiler_runtime_identity["executable"]["path"]:
            raise ValueError("Application compilation requested an unbound compiler runtime")
        if bindings != {node.relative: node.source_hash}:
            raise ValueError("Cache bridge source binding differs from frozen manifested node")
        source = self.runner.frozen / node.relative
        if sha(regular_bytes(source)) != node.source_hash:
            raise ValueError("Frozen manifested source differs from exact compile binding")
        destination = self.build / (label.replace(".", "/") + ".olean")
        if (argv.count("-o") != 1 or argv[argv.index("-o") + 1] != str(destination)
                or argv[-1] != node.relative):
            raise ValueError("Cache bridge requires the exact declared module output/source")
        local = []
        for child in sorted(node.dependencies):
            if child not in self.compiled:
                raise ValueError("Cache bridge requires an already completed local prerequisite")
            identity = self.compiled[child]
            if artifact_family(identity["destination"]) != identity["artifacts"]:
                raise ValueError("Imported local artifact changed")
            local.append({name: value for name, value in identity.items() if name != "destination"})
        environment = options.get("environment") or self.runner.environment
        self.compiler_runtime_guard.assert_stable(env=environment)
        cwd = Path(options.get("cwd") or self.runner.frozen)
        if cwd != self.runner.frozen:
            raise ValueError("Application compilation must use its sealed frozen source root")
        material = {
            "scope": "qualified-manifested-application-module",
            "module": label, "source_sha256": node.source_hash,
            "imports": list(node.imports), "local_imported_objects": local,
            "dependency_snapshot_sha256": self.dependency_digest,
            "compiler_sha256": self.compiler_sha,
            "compiler_runtime_sha256": self.compiler_runtime_sha256,
            "argv": [str(arg).replace(str(self.build), "<build>")
                     .replace(str(self.runner.frozen), "<source>") for arg in argv],
            "validator_contract": self.validator_contract,
            "timeout_seconds": options.get("timeout") or self.runner.timeout,
            "environment_sha256": sha(canonical({name: str(value).replace(
                str(self.runner.state), "<state>") for name, value in sorted(environment.items())})),
            "trust": 0, "fatal_warnings": True,
        }
        contract = {"argv": argv, "cwd": str(cwd), "source_sha256": bindings,
                    "LEAN_PATH": environment.get("LEAN_PATH", ""),
                    "timeout_seconds": options.get("timeout") or self.runner.timeout}
        return {"label": label, "material": material, "destination": destination,
                "contract": contract}

    def _public_context(self):
        if self.public_checked:
            return self.public_state
        self.public_checked = True
        if self.public_origin is None or self.cache.cold:
            return None
        try:
            payload = validate_origin(self.public_origin)
            state = payload["evidence"]["validation"]
            if (state.get("mode") != "all-project-replay"
                    or state.get("status") != "ALL_PROJECT_SOURCE_AND_AXIOM_CHECKS_PASSED"
                    or not isinstance(state.get("module_validation"), dict)
                    or not isinstance(state.get("snapshot", {}).get("sha256"), dict)):
                raise ValueError("Public candidate is not the registered full-library validation form")
            if (state.get("compiler_runtime_sha256") != self.compiler_runtime_sha256
                    or compiler_runtime_digest(state.get("compiler_runtime_identity")) != self.compiler_runtime_sha256
                    or canonical(state.get("compiler_runtime_identity")) != canonical(self.compiler_runtime_identity)):
                raise ValueError("Public candidate compiler runtime is absent or differs from the application")
            # A public origin only supplies candidate object identities. Every
            # current application still runs its own complete native census.
            for module, identity in state["dependency_object_identities"].items():
                relative = module.replace(".", "/") + ".olean"
                roots = self.runner.environment.get("LEAN_PATH", "").split(":")
                found = None
                for root in roots:
                    if not root or Path(root) == self.build:
                        continue
                    path = Path(root) / relative
                    if path.exists() or path.is_symlink():
                        found = path
                        break
                if found is None or artifact_family(found) != identity["artifacts"]:
                    raise ValueError("Public candidate external object family differs from sealed app resolution")
            self.public_state = state
        except (CacheError, OSError, ValueError, TypeError, KeyError) as error:
            self.runner.receipt["public_compilation_candidate_status"] = {
                "status": "miss", "reason": str(error), "admission_claim": False}
        return self.public_state

    def _public_module_metadata(self, module):
        if module in self.public_metadata:
            return self.public_metadata[module]
        record = self.public_state["module_validation"][module]
        key = record["compilation"]["cache_key"]
        if not isinstance(key, str) or len(key) != 64 or any(c not in "0123456789abcdef" for c in key):
            raise ValueError("Public module compilation key is malformed")
        metadata = read_json(self.public_cache.base / key / "metadata.json")
        material = metadata["key_material"]
        if (self.public_cache.key(material) != key or material.get("schema") != "math-trust-module-v1"
                or material.get("module") != module):
            raise ValueError("Public module metadata differs from its registered exact key")
        registered = record["compilation"]
        declared = metadata.get("provenance", {}).get("origin_receipt")
        retained = registered.get("origin_receipt") or registered.get("origin", {}).get("origin_receipt")
        if declared != self.public_origin and declared != retained:
            raise ValueError("Public candidate cache origin is not registered by the explicit public validation")
        self.public_metadata[module] = metadata
        return metadata

    def _public_source_closure(self, module, policy, active=None):
        qualified = (module, sha(canonical(policy)))
        if qualified in self.public_source_checks:
            return self.public_source_checks[qualified]
        active = set() if active is None else active
        if module in active:
            raise ValueError("Cyclic public candidate source dependency")
        active.add(module)
        node = self.nodes[module]
        observed = sha(regular_bytes(self.runner.frozen / node.relative))
        if (observed != node.source_hash
                or self.public_state["snapshot"]["sha256"].get(node.relative) != observed
                or self.public_state["module_validation"][module].get("source_sha256") != observed):
            raise ValueError("Public candidate source closure differs from current frozen application")
        metadata = self._public_module_metadata(module)
        if metadata["key_material"]["policy"] != policy:
            raise ValueError("Public candidate transitive compiler/flags/policy differs")
        imports = metadata["key_material"]["project_imports"]
        if (not isinstance(imports, list) or len(imports) != len(node.dependencies)
                or {item["module"] for item in imports} != set(node.dependencies)):
            raise ValueError("Public candidate local import inventory differs")
        for item in imports:
            child = item["module"]
            self._public_source_closure(child, policy, active)
            child_metadata = self._public_module_metadata(child)
            if (item["key"] != sha(canonical(child_metadata["key_material"]))
                    or item["objects"] != child_metadata["artifacts"]):
                raise ValueError("Public candidate transitive compilation/object key differs")
        active.remove(module)
        self.public_source_checks[qualified] = True
        return True

    def _public_policy(self, frame):
        if frame["contract"]["timeout_seconds"] != 600:
            raise ValueError("Public candidate command timeout differs from the frozen public driver")
        assets = {self.driver.relocated_name(path): value for path, value in
                  self.validator_contract["operational_asset_sha256"].items()}
        assets.update({"lean-toolchain": self.validator_contract["toolchain_sha256"],
                       "lakefile.toml": self.validator_contract["lakefile_sha256"],
                       "lake-manifest.json": self.validator_contract["lake_manifest_sha256"]})
        flags = frame["contract"]["argv"][1:]
        flags = flags[:flags.index("-o")]
        expected = {"compiler_sha256": self.compiler_sha,
                    "compiler_runtime_sha256": self.compiler_runtime_sha256, "flags": flags,
                    "toolchain": assets["lean-toolchain"], "lakefile": assets["lakefile.toml"],
                    "dependency_pins": self.dependency_record["source_revisions"],
                    "driver": assets[".noeaaeue/scripts/check_math_trust.py"],
                    "executor": assets[".noeaaeue/scripts/incremental_math_trust.py"],
                    "engine": assets[".noeaaeue/scripts/incremental_lean.py"],
                    "parsers": {path: assets[path] for path in (
                        ".noeaaeue/scripts/cache_math.py", ".noeaaeue/scripts/monitor_math.py")}}
        public_hashes = self.public_state["snapshot"]["sha256"]
        for path in ("lean-toolchain", "lakefile.toml", "lake-manifest.json",
                     ".noeaaeue/scripts/check_math_trust.py", ".noeaaeue/scripts/incremental_math_trust.py",
                     ".noeaaeue/scripts/incremental_lean.py", ".noeaaeue/scripts/cache_math.py",
                     ".noeaaeue/scripts/monitor_math.py"):
            if public_hashes.get(path) != assets[path]:
                raise ValueError("Public candidate current frozen policy or dependency pin differs: " + path)
        return expected

    def _try_public_module(self, frame):
        if self._public_context() is None:
            return None
        module = frame["label"]
        try:
            self._public_source_closure(module, self._public_policy(frame))
            metadata = self._public_module_metadata(module)
            material = metadata["key_material"]
            if material["policy"] != self._public_policy(frame):
                raise ValueError("Public candidate compiler flags or frozen validator policy differs")
            for item in material["project_imports"]:
                if self.compiled[item["module"]]["artifacts"] != item["objects"]:
                    raise ValueError("Public candidate actual child object differs from current app build")
        except (CacheError, OSError, ValueError, TypeError, KeyError) as error:
            self.runner.receipt.setdefault("public_compilation_candidate_misses", []).append({
                "module": module, "reason": str(error)})
            return None
        # Unsafe restoration errors must propagate: no partial family may fall
        # through to a supposedly empty-output native invocation.
        found = self.public_cache.lookup(material, destination=frame["destination"])
        if found is not None:
            if (found.provenance.get("origin_receipt") != metadata["provenance"]["origin_receipt"]
                    or found.artifacts != metadata["artifacts"]):
                raise CacheError("Public cache origin/object changed after qualification")
            self.runner.receipt.setdefault("qualified_public_compilation_candidates", []).append({
                "module": module, "cache_key": found.key,
                "origin_receipt": found.provenance["origin_receipt"],
                "declared_public_origin": self.public_origin,
                "scope": "compilation-artifact-only", "application_admission_claim": False})
        return found

    def _application_lookup(self, frame):
        if self.cache.cold:
            return None
        key = self.cache.key(frame["material"])
        try:
            metadata = read_json(self.cache.base / key / "metadata.json")
            identity = metadata["provenance"]["origin_receipt"]
            token = sha(canonical(identity))
            if token not in self.application_origins:
                evidence = validate_origin(identity)["evidence"]
                gates = evidence.get("exact_final_application_gates")
                if (evidence.get("acceptance_scope") != "qualified-manifested-application-only"
                        or evidence.get("public_library_admission_claim") is not False
                        or evidence.get("validator_contract") != self.validator_contract
                        or evidence.get("compiler_runtime_sha256") != self.compiler_runtime_sha256
                        or compiler_runtime_digest(evidence.get("compiler_runtime_identity")) != self.compiler_runtime_sha256
                        or canonical(evidence.get("compiler_runtime_identity")) != canonical(self.compiler_runtime_identity)
                        or not isinstance(gates, dict)
                        or gates.get("scope") != "exact-manifested-application-only"
                        or gates.get("all_final_hashes_match") is not True
                        or gates.get("public_compilation_does_not_confer_application_admission") is not True
                        or not isinstance(gates.get("complete_owner_census"), dict)
                        or not isinstance(gates.get("terminal_custom_axiom_controls"), dict)):
                    raise ValueError("Retained origin is not an exact qualified application validation")
                self.application_origins[token] = True
        except (CacheError, OSError, ValueError, TypeError, KeyError):
            return None
        found = self.cache.lookup(frame["material"], destination=frame["destination"])
        if found is not None and (found.provenance.get("origin_receipt") != identity
                                  or found.artifacts != metadata["artifacts"]):
            raise CacheError("Application cache origin/object changed after qualification")
        return found

    def try_cached_module(self, label, argv, bindings, **options):
        frame = self._frame(label, argv, bindings, options)
        if frame is None:
            return None
        self.frames[label] = frame
        cached = self._application_lookup(frame)
        public = False
        if cached is None:
            cached = self._try_public_module(frame)
            public = cached is not None
        if cached is None:
            return None
        text = cached.process.stdout + cached.process.stderr
        if cached.process.returncode != 0 or self.driver.diagnostic_records(text) or "sorryAx" in text:
            raise ValueError("Cached module result no longer passes the original strict compile oracle")
        log = self.runner.state / "logs" / (label + ".log")
        self.driver.write_exclusive(log, text.encode())
        entry = {"label": label, **frame["contract"],
                 "command_sha256": sha(canonical(frame["contract"])),
                 "status": "completed", "exit_code": 0, "postcheck_passed": None,
                 "postcheck_deferred": True, "local_cache_checks_passed": True,
                 "elapsed_seconds": 0, "log": str(log.relative_to(self.runner.state)),
                 "log_sha256": sha(text.encode()), "diagnostics": self.driver.diagnostic_records(text),
                 "execution_kind": "verified-cache-reuse", "fresh_execution_this_run": False,
                 "freshly_elaborated_this_run": False, "cache_key": cached.key,
                 "origin_receipt": cached.provenance["origin_receipt"]}
        entry["compilation_cache_kind"] = "qualified-public-candidate" if public else "qualified-application"
        # No child PID, reaped flag or current native lifecycle is synthesized.
        self.runner.receipt["commands"].append(entry)
        self.runner.receipt["fresh_project_build"] = False
        result = {**entry, "text": text, "stdout": cached.process.stdout, "stderr": cached.process.stderr}
        self.record_module_result(label, result, cached=True)
        return result

    def record_module_result(self, label, result, *, cached=False):
        frame = self.frames.get(label)
        if frame is None:
            return
        passed = (result["status"] == "completed" and result["exit_code"] == 0
                  and not result["diagnostics"] and "sorryAx" not in result["text"]
                  and (result.get("local_cache_checks_passed") is True if cached else
                       result.get("postcheck_passed") is True))
        if not passed:
            return
        family = artifact_family(frame["destination"])
        process = subprocess.CompletedProcess(frame["contract"]["argv"], 0,
                                             result["stdout"], result["stderr"])
        item = {**frame, "artifacts": family, "process": process, "command": result}
        self.compiled[label] = {"module": label, "command_key": self.cache.key(frame["material"]),
                                "artifacts": family, "destination": frame["destination"]}
        self.results.append(item)
        if not cached:
            self.pending.append(item)

    def qualify(self, final_application_gate):
        """Only the live driver can supply its exact complete application gates."""
        qualification = final_application_gate()
        self.runner.guard()
        self.compiler_runtime_guard.assert_unchanged()
        self.cache.assert_origins_unchanged()
        self.public_cache.assert_origins_unchanged()
        if self.public_state is not None:
            validate_origin(self.public_origin)
        if set(self.compiled) != set(self.nodes):
            raise ValueError("The complete manifested application graph was not qualified")
        for item in self.results:
            if artifact_family(item["destination"]) != item["artifacts"]:
                raise ValueError("Application artifact changed before qualification")
        command_records = [self.cache.command_evidence(
            item["material"], process=item["process"], artifacts=item["artifacts"])
            for item in self.results]
        origin = create_origin(self.runner.state / "proof-validation-origin.json", {
            "attempt_id": "qualified-application-" + uuid.uuid4().hex,
            "outcome": "passed", "terminal": True,
            "evidence": {
                "commands": command_records,
                "acceptance_scope": "qualified-manifested-application-only",
                "public_library_admission_claim": False,
                "exact_final_application_gates": qualification,
                "application_receipt_snapshot": json.loads(json.dumps(self.runner.receipt)),
                "dependency_snapshot_content_digest": self.dependency_digest,
                "validator_contract": self.validator_contract,
                "compiler_runtime_identity": self.compiler_runtime_identity,
                "compiler_runtime_sha256": self.compiler_runtime_sha256,
            }})
        self.runner.receipt["proof_validation_origin"] = origin
        self.runner.receipt["proof_validation_outcome"] = "passed"
        self.runner.save()
        report = {"scope": "cache-publication-only", "outcome": "running", "terminal": False,
                  "attempt_id": "qualified-app-cache-publication-" + uuid.uuid4().hex,
                  "origin_receipt": origin, "published_keys": []}
        path = self.runner.state / "cache-publication.json"
        try:
            self.driver.atomic_json(path, report)
            for item in self.pending:
                published = self.cache.publish(item["material"], process=item["process"],
                    destination=item["destination"], provenance={"origin_receipt": origin})
                report["published_keys"].append(published.key)
            self.cache.assert_origins_unchanged()
            self.public_cache.assert_origins_unchanged()
            self.compiler_runtime_guard.assert_unchanged()
            report.update(outcome="passed", terminal=True)
        except Exception as error:
            report.update(outcome="failed", terminal=True, error=str(error))
            raise
        finally:
            self.driver.atomic_json(path, report)
        return origin
