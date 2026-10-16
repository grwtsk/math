"""Mocked application compilation reuse; no Lean or proof acceptance."""
import hashlib
import copy
import contextlib
import io
import importlib.util
import json
import os
from pathlib import Path
import sys
import tempfile
import subprocess
import struct
from types import ModuleType, SimpleNamespace
import unittest
from unittest.mock import patch

REPOSITORY = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPOSITORY / ".noeaaeue/scripts"))
spec = importlib.util.spec_from_file_location("prototype_live_app_driver",
    REPOSITORY / ".noeaaeue/scripts/check_moebius_response.py")
driver = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = driver
spec.loader.exec_module(driver)

from moebius_incremental import QualifiedApplicationCompilationBridge
from incremental_lean import (CacheError, CommandCache, artifact_family, create_origin,
                              compiler_runtime_identity, compiler_runtime_digest, RuntimeIdentityGuard)


def runtime_image(*, executable=False, rpaths=(), loads=(), marker=b""):
    """Static Mach-O fixture, parsed as bytes and never executed."""
    commands = []
    for command, offset, names in ((0x8000001c, 12, rpaths), (0xc, 24, loads)):
        for name in names:
            payload = name.encode() + b"\0"
            length = (offset + len(payload) + 7) // 8 * 8
            head = struct.pack("<III", command, length, offset)
            commands.append(head + b"\0" * (offset - len(head)) + payload +
                            b"\0" * (length - offset - len(payload)))
    raw = b"".join(commands)
    return struct.pack("<8I", 0xfeedfacf, 0x100000c, 0, 2 if executable else 6,
                       len(commands), len(raw), 0, 0) + raw + marker


def install_runtime(compiler):
    compiler.parent.mkdir(parents=True, exist_ok=True)
    compiler.write_bytes(runtime_image(executable=True, rpaths=("@executable_path/../lib/lean",),
                                       loads=("@rpath/libLeanshared.dylib",)))
    compiler.chmod(0o700)
    library = compiler.parent.parent / "lib/lean/libLeanshared.dylib"
    library.parent.mkdir(parents=True, exist_ok=True)
    library.write_bytes(runtime_image(marker=b"runtime-v1"))
    return library


class ApplicationIncremental(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory(
            dir=REPOSITORY / ".noeaaeue/.local", prefix="moebius-incremental-fixture-")
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.compiler = self.root / "toolchain/bin/lean"
        self.runtime_library = install_runtime(self.compiler)
        self.bodies = {"GRWTSK.A": b"def a := 1\n",
                       "GRWTSK.B": b"import GRWTSK.A\ndef b := a\n",
                       "GRWTSK.C": b"def c := 3\n"}
        self.calls, self.counter = [], 0
        self.native_memory = 4096
        self.guard_calls = 0
        self.save_calls = 0
        self.full_controls = False
        policies = ("check_math_trust.py", "incremental_math_trust.py", "incremental_lean.py",
                    "cache_math.py", "monitor_math.py")
        self.validator_contract = {
            "operational_asset_sha256": {".noeaaeue/scripts/" + name:
                hashlib.sha256(name.encode()).hexdigest() for name in policies},
            "toolchain_sha256": "1" * 64, "lakefile_sha256": "2" * 64,
            "lake_manifest_sha256": "3" * 64, "policy": "exact-app-contract"}
        self.dependency_record = {"source_revisions": {"mathlib": "pinned"},
            "lake_lock_sha256": "lock", "immutable_object_families": {
                "lean-standard-library/Init.olean": {"sha256": "init", "bytes": 4,
                    "snapshot_identity": [1, 2, 3]}}}

    def prepare(self, *, cold=False):
        self.counter += 1
        state = self.root / ("run-" + str(self.counter))
        frozen, build = state / "source", state / "build"
        for path in (frozen, build, state / "logs"):
            path.mkdir(parents=True)
        nodes = {}
        for module, raw in self.bodies.items():
            relative = module.replace(".", "/") + ".lean"
            driver.write_exclusive(frozen / relative, raw, readonly=True)
            dependencies = {name for name in driver.imports(raw.decode()) if name in self.bodies}
            nodes[module] = SimpleNamespace(relative=relative,
                source_hash=hashlib.sha256(raw).hexdigest(), imports=sorted(dependencies),
                dependencies=dependencies)
        for relative in {relative for _, relative in self.control_plan()}:
            driver.write_exclusive(frozen / relative, b"-- mocked native source\n", readonly=True)
        seals = driver.seal_frozen_source(frozen)
        compiled_reads = []

        def guard():
            self.guard_calls += 1
            driver.verify_sealed_source(frozen, seals)
            for read in compiled_reads:
                driver.verify_stable(read)

        receipt = {"commands": [], "fresh_project_build": True, "mock_only": True}
        runner = driver.CommandRunner(state, frozen, receipt, guard,
                                      {"LEAN_PATH": str(build)}, timeout=600)
        original_save = runner.save

        def save():
            self.save_calls += 1
            original_save()

        runner.save = save
        runtime_guard = RuntimeIdentityGuard(self.compiler, env=runner.environment)
        bridge = QualifiedApplicationCompilationBridge(driver, runner, nodes, build,
            self.dependency_record, runtime_guard.identity["executable"]["sha256"], self.validator_contract,
            self.root / "cache", cold=cold, compiler_runtime_identity=runtime_guard.identity,
            compiler_runtime_guard=runtime_guard)
        return bridge, runner, compiled_reads

    @staticmethod
    def write_artifacts(artifact, raw):
        artifact.parent.mkdir(parents=True, exist_ok=True)
        stem = str(artifact)[:-len(".olean")]
        for suffix in (".olean", ".olean.private", ".olean.server", ".ir", ".ir.sig"):
            Path(stem + suffix).write_bytes(b"mock-checked-object\n" + suffix.encode() + raw)

    def seed_public(self, bridge, modules=None, *, external=None, runtime_policy=True):
        """Synthetic terminal public compilation origin; no actual proof claim."""
        modules = list(self.bodies) if modules is None else modules
        cache = CommandCache(self.root / "cache", namespace="math-trust-compile-v1", require_origin=True)
        flags = ["--trust=0", "--memory=4096", "--threads=1", "-DwarningAsError=true"]
        assets = self.validator_contract["operational_asset_sha256"]
        policy = {"compiler_sha256": bridge.compiler_sha,
                  "compiler_runtime_sha256": bridge.compiler_runtime_sha256, "flags": flags,
                  "toolchain": self.validator_contract["toolchain_sha256"],
                  "lakefile": self.validator_contract["lakefile_sha256"],
                  "dependency_pins": self.dependency_record["source_revisions"],
                  "driver": assets[".noeaaeue/scripts/check_math_trust.py"],
                  "executor": assets[".noeaaeue/scripts/incremental_math_trust.py"],
                  "engine": assets[".noeaaeue/scripts/incremental_lean.py"],
                  "parsers": {path: assets[path] for path in (
                      ".noeaaeue/scripts/cache_math.py", ".noeaaeue/scripts/monitor_math.py")}}
        if not runtime_policy:
            policy.pop("compiler_runtime_sha256")
        snapshot_hashes = {**assets, "lean-toolchain": policy["toolchain"],
                           "lakefile.toml": policy["lakefile"],
                           "lake-manifest.json": self.validator_contract["lake_manifest_sha256"]}
        materials, families, validation, pending = {}, {}, {}, []
        for module in modules:
            node = bridge.nodes[module]
            snapshot_hashes[node.relative] = node.source_hash
            material = {"schema": "math-trust-module-v1", "module": module,
                        "node": hashlib.sha256(self.bodies[module]).hexdigest(), "policy": policy,
                        "project_imports": [{"module": child,
                            "key": hashlib.sha256(json.dumps(materials[child],sort_keys=True,separators=(",", ":")).encode()).hexdigest(),
                            "objects": families[child]} for child in sorted(node.dependencies)]}
            materials[module] = material
            artifact = self.root / "public-build" / (module.replace(".", "/") + ".olean")
            self.write_artifacts(artifact, self.bodies[module])
            families[module] = artifact_family(artifact)
            process = subprocess.CompletedProcess(["mock-public-compiler"], 0, "", "")
            pending.append((material, process, artifact))
            validation[module] = {"module": module, "source_sha256": node.source_hash,
                "compilation": {"cache_key": cache.key(material), "execution": "fresh"}}
        state = {"mode": "all-project-replay", "status": "ALL_PROJECT_SOURCE_AND_AXIOM_CHECKS_PASSED",
                 "snapshot": {"sha256": snapshot_hashes}, "module_validation": validation,
                 "compiler_runtime_identity": bridge.compiler_runtime_identity,
                 "compiler_runtime_sha256": bridge.compiler_runtime_sha256,
                 "dependency_object_identities": external or {}, "mock_only": True}
        origin = create_origin(self.root / ("public-origin-" + str(self.counter) + ".json"), {
            "attempt_id": "synthetic-public-compilation-only", "outcome": "passed", "terminal": True,
            "evidence": {"validation": state, "mock_only": True, "commands": [
                cache.command_evidence(material, process=process, artifacts=artifact_family(artifact))
                for material, process, artifact in pending]}})
        for material, process, artifact in pending:
            cache.publish(material, process=process, destination=artifact,
                          provenance={"origin_receipt": origin})
        bridge.public_origin = origin
        return cache, origin, state

    def popen(self, argv, **options):
        self.calls.append(argv[-1])
        source = Path(options["cwd"]) / argv[-1]
        if "-o" in argv:
            artifact = Path(argv[argv.index("-o") + 1])
            self.write_artifacts(artifact, source.read_bytes())
        rejected = self.full_controls and ("MoebiusControls/" in argv[-1] or
                                           argv[-1].startswith("Profile") and argv[-1].endswith("Audit.lean"))
        output = json.dumps({"mock_owner_count": len(self.bodies)}) if argv[-1] == "OwnerCensus.lean" else ""
        return SimpleNamespace(pid=12345, returncode=1 if rejected else 0,
            communicate=lambda timeout: (output, ""), wait=lambda timeout: 1 if rejected else 0)

    def control_plan(self):
        if not self.full_controls:
            return [("complete-owner-census", "OwnerCensus.lean"),
                    ("control_namespace_public", "HostileControl.lean")]
        controls = [("complete-owner-census", "OwnerCensus.lean")]
        for case in driver.PROFILE_CONTROL_CASES:
            stem = "".join(part.title() for part in case.split("-"))
            for hop in ("source", "audit"):
                controls.append(("profile-control-" + case + "-" + hop,
                                 "Profile" + stem + hop.title() + ".lean"))
        controls += [("control_" + namespace + "_" + visibility,
                      "MoebiusControls/" + namespace + "_" + visibility + ".lean")
                     for namespace in driver.NAMESPACES for visibility in ("public", "private")]
        return controls

    def run_application(self, bridge, runner, compiled_reads, *, qualify=True):
        for label, node in bridge.nodes.items():
            artifact = bridge.build / (label.replace(".", "/") + ".olean")
            artifact.parent.mkdir(parents=True, exist_ok=True)
            self.assertFalse(artifact.exists())
            argv = [str(self.compiler), "--trust=0", "--memory=" + str(self.native_memory), "--threads=1",
                    "-DwarningAsError=true", "-o", str(artifact), node.relative]
            bindings = {node.relative: node.source_hash}
            result = bridge.try_cached_module(label, argv, bindings)
            if result is None:
                result = runner.run(label, argv, bindings)
                bridge.record_module_result(label, result)
            driver.freeze_native_artifacts(artifact, compiled_reads)
        # These labels deliberately stay outside the manifested-node cache.
        for label, relative in self.control_plan():
            argv = [str(self.compiler), "--trust=0", relative]
            self.assertIsNone(bridge.try_cached_module(label, argv, {}))
            runner.run(label, argv, {})

        def exact_final_gate():
            runner.guard()
            for command in runner.receipt["commands"]:
                if command.get("execution_kind") == "verified-cache-reuse":
                    command.update(postcheck_passed=True, postcheck_deferred=False,
                                   postcheck_scope="terminal-full-application-input-guard")
            for command in runner.receipt["commands"][-len(self.control_plan()):]:
                self.assertEqual(command["status"], "completed")
                self.assertIs(command["child_reaped"], True)
                self.assertGreater(command["child_pid"], 0)
                self.assertNotIn("execution_kind", command)
            return {"mock_only": True, "scope": "exact-manifested-application-only",
                    "all_final_hashes_match": True,
                    "public_compilation_does_not_confer_application_admission": True,
                    "complete_owner_census": {"mock_only": True, "fresh_native": True},
                    "terminal_profile_controls": {"mock_only": True, "control_count": 6 if self.full_controls else 0},
                    "terminal_custom_axiom_controls": {"mock_only": True, "fresh_native": True}}

        if qualify:
            return bridge.qualify(exact_final_gate)

    def test_warm_nodes_reused_but_census_and_controls_stay_fresh(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(*self.prepare())
            self.calls.clear()
            bridge, runner, reads = self.prepare()
            origin = self.run_application(bridge, runner, reads)
            self.assertEqual(self.calls, ["OwnerCensus.lean", "HostileControl.lean"])
            for command in runner.receipt["commands"][:3]:
                self.assertEqual(command["execution_kind"], "verified-cache-reuse")
                self.assertNotIn("child_pid", command)
                self.assertNotIn("child_reaped", command)
            payload = json.loads(Path(origin["path"]).read_bytes())
            self.assertFalse(payload["evidence"]["public_library_admission_claim"])

    def test_changed_leaf_rebuilds_only_local_dependents(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(*self.prepare())
            self.calls.clear()
            self.bodies["GRWTSK.A"] = b"def a := 2\n"
            self.run_application(*self.prepare())
            self.assertEqual(self.calls, ["GRWTSK/A.lean", "GRWTSK/B.lean",
                                         "OwnerCensus.lean", "HostileControl.lean"])

    def test_unqualified_application_does_not_publish(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(*self.prepare(), qualify=False)
            self.calls.clear()
            self.run_application(*self.prepare())
            self.assertEqual(len(self.calls), 5)

    def test_cold_rebuilds_all_nodes(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(*self.prepare())
            self.calls.clear()
            self.run_application(*self.prepare(cold=True))
            self.assertEqual(len(self.calls), 5)

    def test_run_specific_dependency_identity_does_not_defeat_reuse(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(*self.prepare())
            self.calls.clear()
            self.dependency_record["immutable_object_families"][
                "lean-standard-library/Init.olean"]["snapshot_identity"] = [100, 200, 300]
            self.run_application(*self.prepare())
            self.assertEqual(len(self.calls), 2)

    def test_explicit_public_candidates_compile_only_additional_app_nodes(self):
        self.bodies["GRWTSK.D"] = b"def d := 4\n"
        bridge, runner, reads = self.prepare()
        self.seed_public(bridge, ["GRWTSK.A", "GRWTSK.B", "GRWTSK.C"])
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(bridge, runner, reads)
        self.assertEqual(self.calls, ["GRWTSK/D.lean", "OwnerCensus.lean", "HostileControl.lean"])
        candidates = runner.receipt["qualified_public_compilation_candidates"]
        self.assertEqual(len(candidates), 3)
        self.assertTrue(all(row["application_admission_claim"] is False for row in candidates))

    def test_all_cached_artifact_members_corrupt_or_missing_force_native_retry(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            for suffix in (".olean", ".olean.private", ".olean.server", ".ir", ".ir.sig"):
                for mutation in ("corrupt", "missing"):
                    with self.subTest(suffix=suffix, mutation=mutation):
                        bridge, runner, reads = self.prepare()
                        self.run_application(bridge, runner, reads)
                        key = bridge.cache.key(bridge.frames["GRWTSK.A"]["material"])
                        cached = bridge.cache.base / key / ("object" + suffix)
                        if mutation == "missing":
                            cached.unlink()
                        else:
                            cached.write_bytes(b"corrupt cached object member")
                        self.calls.clear()
                        self.run_application(*self.prepare())
                        self.assertEqual(self.calls, ["GRWTSK/A.lean", "OwnerCensus.lean", "HostileControl.lean"])

    def test_missing_or_corrupt_application_origin_forces_fresh_commands(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            for mutation in ("missing", "corrupt"):
                with self.subTest(mutation=mutation):
                    bridge, runner, reads = self.prepare(cold=True)
                    origin = self.run_application(bridge, runner, reads)
                    path = Path(origin["path"])
                    if mutation == "missing":
                        path.unlink()
                    else:
                        path.chmod(0o600)
                        path.write_bytes(b"corrupt terminal origin")
                    self.calls.clear()
                    self.run_application(*self.prepare())
                    self.assertEqual(len(self.calls), 5)

    def test_generic_same_key_origin_is_not_application_qualification(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            bridge, runner, reads = self.prepare()
            self.run_application(bridge, runner, reads, qualify=False)
            records = [bridge.cache.command_evidence(item["material"], process=item["process"],
                       artifacts=item["artifacts"]) for item in bridge.pending]
            origin = create_origin(self.root / "generic-origin.json", {
                "attempt_id": "unrelated-terminal-attempt", "outcome": "passed", "terminal": True,
                "evidence": {"commands": records}})
            for item in bridge.pending:
                bridge.cache.publish(item["material"], process=item["process"],
                    destination=item["destination"], provenance={"origin_receipt": origin})
            self.calls.clear()
            self.run_application(*self.prepare())
            self.assertEqual(len(self.calls), 5)

    def test_public_compiler_flags_and_current_policy_mismatches_are_misses(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            for mismatch in ("compiler", "flags", "policy"):
                with self.subTest(mismatch=mismatch):
                    self.calls.clear()
                    bridge, runner, reads = self.prepare()
                    self.seed_public(bridge)
                    if mismatch == "compiler":
                        bridge.compiler_sha = "changed-compiler-sha"
                    elif mismatch == "flags":
                        self.native_memory = 8192
                    else:
                        bridge.validator_contract = copy.deepcopy(self.validator_contract)
                        bridge.validator_contract["operational_asset_sha256"][
                            ".noeaaeue/scripts/incremental_lean.py"] = "4" * 64
                    self.run_application(bridge, runner, reads)
                    self.assertEqual(len(self.calls), 5)
                    self.native_memory = 4096

    def test_public_transitive_source_drift_keeps_independent_candidate(self):
        self.bodies["GRWTSK.D"] = b"import GRWTSK.B\ndef d := b\n"
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            original, first_runner, first_reads = self.prepare()
            _, origin, _ = self.seed_public(original, ["GRWTSK.A", "GRWTSK.B", "GRWTSK.C"])
            self.run_application(original, first_runner, first_reads)
            self.calls.clear()
            self.bodies["GRWTSK.A"] = b"def a := 2\n"
            bridge, runner, reads = self.prepare()
            bridge.public_origin = origin
            self.run_application(bridge, runner, reads)
        self.assertEqual(self.calls, ["GRWTSK/A.lean", "GRWTSK/B.lean", "GRWTSK/D.lean",
                                     "OwnerCensus.lean", "HostileControl.lean"])
        self.assertEqual([row["module"] for row in runner.receipt["qualified_public_compilation_candidates"]],
                         ["GRWTSK.C"])

    def test_external_dependency_content_invalidates_application_cache(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(*self.prepare())
            self.calls.clear()
            self.dependency_record["immutable_object_families"][
                "lean-standard-library/Init.olean"]["sha256"] = "changed-external-bytes"
            self.run_application(*self.prepare())
            self.assertEqual(len(self.calls), 5)

    def test_public_external_search_shadow_and_absent_member_are_misses(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            for mutation in ("shadow", "additional-ir", "changed-private"):
                with self.subTest(mutation=mutation):
                    self.calls.clear()
                    bridge, runner, reads = self.prepare()
                    external = self.root / ("dependency-" + str(self.counter))
                    self.write_artifacts(external / "Init.olean", b"original dependency")
                    # Absence must be compared, too.
                    (external / "Init.ir").unlink()
                    expected = artifact_family(external / "Init.olean")
                    roots = [str(bridge.build), str(external)]
                    if mutation == "shadow":
                        shadow = self.root / ("shadow-" + str(self.counter))
                        self.write_artifacts(shadow / "Init.olean", b"different earlier module")
                        roots.insert(1, str(shadow))
                    elif mutation == "additional-ir":
                        (external / "Init.ir").write_bytes(b"newly importable IR")
                    else:
                        (external / "Init.olean.private").write_bytes(b"changed private member")
                    runner.environment["LEAN_PATH"] = ":".join(roots)
                    self.seed_public(bridge, external={"Init": {"path": "/old/public/Init.olean", "artifacts": expected}})
                    self.run_application(bridge, runner, reads)
                    self.assertEqual(len(self.calls), 5)

    def test_final_gate_failure_does_not_publish(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            bridge, runner, reads = self.prepare()
            self.run_application(bridge, runner, reads, qualify=False)
            with self.assertRaisesRegex(ValueError, "terminal hostile control failed"):
                bridge.qualify(lambda: (_ for _ in ()).throw(ValueError("terminal hostile control failed")))
            self.assertFalse((runner.state / "proof-validation-origin.json").exists())
            self.calls.clear()
            self.run_application(*self.prepare())
            self.assertEqual(len(self.calls), 5)

    def test_final_artifact_drift_does_not_publish(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            bridge, runner, reads = self.prepare()
            self.run_application(bridge, runner, reads, qualify=False)
            path = bridge.build / "GRWTSK/A.olean"
            path.chmod(0o600)
            path.write_bytes(b"changed current object")
            with self.assertRaises(ValueError):
                bridge.qualify(lambda: {"mock_only": True})
            self.assertFalse((runner.state / "proof-validation-origin.json").exists())

    def test_warm_hits_do_not_rescan_the_whole_application(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(*self.prepare())
            self.guard_calls = 0
            self.run_application(*self.prepare())
            # Two actual fresh control/census children retain pre/post guards;
            # the final callback and qualification each retain their full guard.
            self.assertEqual(self.guard_calls, 6)

    def test_every_partial_output_family_collision_is_rejected(self):
        artifact = self.root / "collision.olean"
        for suffix in (".olean", ".olean.private", ".olean.server", ".ir", ".ir.sig"):
            with self.subTest(suffix=suffix):
                path = self.root / ("collision" + suffix)
                path.write_bytes(b"preexisting output member")
                with self.assertRaises(ValueError):
                    driver.require_empty_native_artifact_family(artifact)
                path.unlink()

    def frozen_loader_inputs(self):
        frozen, keys = {}, {}
        for name in ("repository_paths", "monitor_math", "cache_math", "incremental_lean", "moebius_incremental"):
            relative = ".noeaaeue/scripts/" + name + ".py"
            path = self.root / "loader" / relative
            raw = (REPOSITORY / relative).read_bytes()
            driver.write_exclusive(path, raw, readonly=True)
            frozen[relative] = SimpleNamespace(original=SimpleNamespace(data=raw),
                                              snapshot=SimpleNamespace(path=path))
            keys[relative] = relative
        return frozen, keys

    def test_frozen_loader_ignores_poisoned_canonical_modules(self):
        frozen, keys = self.frozen_loader_inputs()
        poison = {}
        for name in ("incremental_lean", "cache_math", "monitor_math", "repository_paths"):
            module = ModuleType(name)
            module.CommandCache = lambda *args, **kwargs: (_ for _ in ()).throw(AssertionError("stale module executed"))
            poison[name] = module
        private = []
        try:
            with patch.dict(sys.modules, poison):
                namespace, private = driver.load_incremental_bridge(frozen, keys)
                self.assertNotEqual(namespace["CommandCache"], poison["incremental_lean"].CommandCache)
                self.assertTrue(namespace["CommandCache"].__module__.startswith("moebius_frozen_incremental_lean_"))
                for name, module in poison.items():
                    self.assertIs(sys.modules[name], module)
        finally:
            for name in private:
                sys.modules.pop(name, None)

    def test_frozen_loader_failure_restores_aliases_and_private_modules(self):
        frozen, keys = self.frozen_loader_inputs()
        frozen[".noeaaeue/scripts/cache_math.py"].original.data = b"raise ValueError('frozen load failure')\n"
        poison = {name: ModuleType(name) for name in (
            "incremental_lean", "cache_math", "monitor_math", "repository_paths", "moebius_incremental")}
        before = set(sys.modules)
        with patch.dict(sys.modules, poison):
            with self.assertRaisesRegex(ValueError, "frozen load failure"):
                driver.load_incremental_bridge(frozen, keys)
            for name, module in poison.items():
                self.assertIs(sys.modules[name], module)
        self.assertEqual({name for name in sys.modules if name.startswith("moebius_frozen_")} - before, set())

    def test_loaded_private_parser_mutation_is_rejected(self):
        frozen, keys = self.frozen_loader_inputs()
        namespace, private = driver.load_incremental_bridge(frozen, keys)
        try:
            engine = sys.modules[namespace["CommandCache"].__module__]
            engine.source_imports = lambda source: []
            with self.assertRaises(engine.CacheError):
                engine.verify_loaded_parser_sources({name + ".py":
                    frozen[".noeaaeue/scripts/" + name + ".py"].original.data
                    for name in ("cache_math", "monitor_math")})
        finally:
            for name in private:
                sys.modules.pop(name, None)

    def test_origin_without_exact_command_membership_cannot_authorize_reuse(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            bridge, runner, reads = self.prepare()
            origin = self.run_application(bridge, runner, reads)
            payload = json.loads(Path(origin["path"]).read_bytes())
            key = bridge.cache.key(bridge.frames["GRWTSK.A"]["material"])
            payload["attempt_id"] = "qualified-origin-without-this-command"
            payload["evidence"]["commands"] = [record for record in payload["evidence"]["commands"]
                                                if record["cache_key"] != key]
            unrelated = create_origin(self.root / "wrong-membership-origin.json", payload)
            metadata_path = bridge.cache.base / key / "metadata.json"
            metadata = json.loads(metadata_path.read_bytes())
            metadata["provenance"]["origin_receipt"] = unrelated
            metadata_path.write_text(json.dumps(metadata))
            metadata_path.with_name("metadata.sha256").write_text(
                hashlib.sha256(metadata_path.read_bytes()).hexdigest() + "\n")
            self.calls.clear()
            self.run_application(*self.prepare())
            self.assertEqual(self.calls, ["GRWTSK/A.lean", "OwnerCensus.lean", "HostileControl.lean"])

    def test_cache_origin_replacement_after_preflight_fails_closed(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(*self.prepare())
            bridge, runner, reads = self.prepare()
            lookup = bridge.cache.lookup

            def replacing_lookup(*args, **kwargs):
                found = lookup(*args, **kwargs)
                if found is not None:
                    found.provenance = {"origin_receipt": {"unexpected": "replacement origin"}}
                return found

            self.calls.clear()
            with patch.object(bridge.cache, "lookup", side_effect=replacing_lookup):
                with self.assertRaisesRegex(CacheError, "after qualification"):
                    self.run_application(bridge, runner, reads)
            self.assertEqual(self.calls, [])


    def test_warm_hits_do_not_serialize_whole_receipts_per_node(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(*self.prepare())
            self.save_calls = 0
            self.run_application(*self.prepare())
            self.assertEqual(self.save_calls, 9)

    def test_cached_postcheck_remains_deferred_until_terminal_full_guard(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(*self.prepare())
            bridge, runner, reads = self.prepare()
            self.run_application(bridge, runner, reads, qualify=False)
            cached = [row for row in runner.receipt["commands"] if row.get("execution_kind") == "verified-cache-reuse"]
            self.assertEqual(len(cached), 3)
            self.assertTrue(all(row["postcheck_passed"] is None and row["postcheck_deferred"] is True
                                and row["local_cache_checks_passed"] is True for row in cached))
            path = bridge.build / "GRWTSK/A.olean"
            path.chmod(0o600)
            path.write_bytes(b"changed before actual final guard")
            with self.assertRaises(ValueError):
                bridge.qualify(lambda: runner.guard())
            self.assertTrue(all(row["postcheck_passed"] is None for row in cached))
            self.assertFalse((runner.state / "proof-validation-origin.json").exists())

    def test_changed_timeout_requires_fresh_application_module_commands(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(*self.prepare())
            bridge, runner, reads = self.prepare()
            runner.timeout = 601
            self.calls.clear()
            self.run_application(bridge, runner, reads)
            self.assertEqual(len(self.calls), 5)

    def test_dylib_only_change_rejects_prior_application_and_public_compilations(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            previous, runner, reads = self.prepare(cold=True)
            self.run_application(previous, runner, reads)
            _, public_origin, _ = self.seed_public(previous)
            compiler_bytes = self.compiler.read_bytes()
            self.runtime_library.write_bytes(runtime_image(marker=b"runtime-v2"))
            current, runner, reads = self.prepare()
            current.public_origin = public_origin
            self.assertEqual(self.compiler.read_bytes(), compiler_bytes)
            self.assertEqual(previous.compiler_sha, current.compiler_sha)
            self.assertNotEqual(previous.compiler_runtime_sha256, current.compiler_runtime_sha256)
            self.calls.clear()
            self.run_application(current, runner, reads)
            self.assertEqual(len(self.calls), 5)
            self.assertIn("runtime", runner.receipt["public_compilation_candidate_status"]["reason"])
            self.assertEqual(runner.receipt["compiler_runtime_identity"], current.compiler_runtime_identity)

    def test_runtime_edit_and_restore_blocks_terminal_origin_and_cache_publication(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            bridge, runner, reads = self.prepare()
            self.run_application(bridge, runner, reads, qualify=False)
        original = self.runtime_library.read_bytes()
        self.runtime_library.write_bytes(runtime_image(marker=b"temporary hostile bytes"))
        self.runtime_library.write_bytes(original)
        with self.assertRaisesRegex(CacheError, "runtime custody changed"):
            bridge.qualify(lambda: {})
        self.assertFalse((runner.state / "proof-validation-origin.json").exists())
        self.assertFalse(list(bridge.cache.base.glob("*/metadata.json")))

    def test_warm_runtime_full_byte_checks_only_at_qualification_boundaries(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(*self.prepare())
            bridge, runner, reads = self.prepare()
            with patch.object(bridge.compiler_runtime_guard, "assert_unchanged",
                              wraps=bridge.compiler_runtime_guard.assert_unchanged) as full_check:
                self.run_application(bridge, runner, reads)
            self.assertEqual(full_check.call_count, 2)
            self.assertEqual(sum(row.get("execution_kind") == "verified-cache-reuse"
                                 for row in runner.receipt["commands"]), 3)

    def test_runtime_drift_during_publication_preserves_origin_but_fails_transaction(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            bridge, runner, reads = self.prepare()
            self.run_application(bridge, runner, reads, qualify=False)
        original_publish = bridge.cache.publish

        def drifting_publish(*args, **options):
            result = original_publish(*args, **options)
            self.runtime_library.write_bytes(runtime_image(marker=b"runtime drift during publication"))
            return result

        with patch.object(bridge.cache, "publish", side_effect=drifting_publish):
            with self.assertRaisesRegex(CacheError, "runtime custody changed"):
                bridge.qualify(lambda: {"scope":"mock-only"})
        origin = json.loads((runner.state / "proof-validation-origin.json").read_bytes())
        report = json.loads((runner.state / "cache-publication.json").read_bytes())
        self.assertEqual(origin["outcome"], "passed")
        self.assertIs(origin["terminal"], True)
        self.assertEqual(report["outcome"], "failed")
        self.assertIs(report["terminal"], True)
        self.assertNotEqual(origin["attempt_id"], report["attempt_id"])

    def test_runtime_earlier_resolution_shadow_blocks_origin_without_native(self):
        shadow = self.compiler.parent.parent / "shadow"
        shadow.mkdir()
        self.compiler.write_bytes(runtime_image(executable=True,
            rpaths=("@executable_path/../shadow", "@executable_path/../lib/lean"),
            loads=("@rpath/libLeanshared.dylib",)))
        bridge, runner, _ = self.prepare()
        (shadow / "libLeanshared.dylib").write_bytes(runtime_image(marker=b"earlier shadow"))
        with self.assertRaisesRegex(CacheError, "runtime custody changed"):
            bridge.qualify(lambda: {})
        self.assertFalse((runner.state / "proof-validation-origin.json").exists())

    def test_application_origin_missing_runtime_binding_cannot_authorize_same_key(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            bridge, runner, reads = self.prepare()
            identity = self.run_application(bridge, runner, reads)
            payload = json.loads(Path(identity["path"]).read_bytes())
            payload["attempt_id"] = "legacy-executable-only-application-origin"
            payload["evidence"].pop("compiler_runtime_identity")
            payload["evidence"].pop("compiler_runtime_sha256")
            unrelated = create_origin(self.root / "exe-only-origin.json", payload)
            for item in bridge.pending:
                path = bridge.cache.base / bridge.cache.key(item["material"]) / "metadata.json"
                metadata = json.loads(path.read_bytes())
                metadata["provenance"]["origin_receipt"] = unrelated
                path.write_text(json.dumps(metadata))
                path.with_name("metadata.sha256").write_text(hashlib.sha256(path.read_bytes()).hexdigest() + "\n")
            self.calls.clear()
            self.run_application(*self.prepare())
            self.assertEqual(len(self.calls), 5)

    def test_public_origin_and_command_policy_require_runtime_binding(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            for missing in ("origin", "policy"):
                with self.subTest(missing=missing):
                    bridge, runner, reads = self.prepare(cold=True)
                    cache, origin, state = self.seed_public(bridge, runtime_policy=missing != "policy")
                    bridge.cache.cold = bridge.public_cache.cold = False
                    if missing == "origin":
                        payload = json.loads(Path(origin["path"]).read_bytes())
                        payload["attempt_id"] = "legacy-executable-only-public-origin"
                        payload["evidence"]["validation"].pop("compiler_runtime_identity")
                        payload["evidence"]["validation"].pop("compiler_runtime_sha256")
                        bridge.public_origin = create_origin(self.root / "exe-only-public-origin.json", payload)
                    self.calls.clear()
                    with patch.object(bridge, "_application_lookup", return_value=None):
                        self.run_application(bridge, runner, reads)
                    self.assertEqual(len(self.calls), 5)

    def test_per_command_loader_override_is_rejected_before_cache_or_native(self):
        bridge, runner, _ = self.prepare()
        node = bridge.nodes["GRWTSK.A"]
        artifact = bridge.build / "GRWTSK/A.olean"
        argv = [str(self.compiler), "--trust=0", "-o", str(artifact), node.relative]
        for name in ("DYLD_LIBRARY_PATH", "LD_PRELOAD", "LEAN_SYSROOT"):
            with self.subTest(name=name), self.assertRaisesRegex(CacheError, "unsupported compiler loader environment"):
                bridge.try_cached_module("GRWTSK.A", argv, {node.relative:node.source_hash},
                                         environment={**runner.environment, name:"/hostile"})
        self.assertEqual(runner.receipt["commands"], [])

    def test_new_public_aggregate_can_reference_actual_retained_module_origins(self):
        bridge, runner, reads = self.prepare()
        _, original, state = self.seed_public(bridge)
        retained = copy.deepcopy(state)
        for row in retained["module_validation"].values():
            row["compilation"].update(execution="cached", origin={"origin_receipt": original})
        aggregate = create_origin(self.root / "retained-public-aggregate.json", {
            "attempt_id": "new-public-aggregate-no-fresh-compilations", "outcome": "passed", "terminal": True,
            "evidence": {"commands": [], "validation": retained, "mock_only": True}})
        bridge.public_origin = aggregate
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(bridge, runner, reads)
        self.assertEqual(self.calls, ["OwnerCensus.lean", "HostileControl.lean"])
        candidates = runner.receipt["qualified_public_compilation_candidates"]
        self.assertEqual(len(candidates), 3)
        self.assertTrue(all(row["origin_receipt"] == original and row["declared_public_origin"] == aggregate
                            for row in candidates))

    def test_public_453_plus_3_uses_fresh_full_census_and_all_controls(self):
        self.full_controls = True
        public = ["GRWTSK.Analysis.Object" + str(index) for index in range(453)]
        self.bodies = {module: ("def witness" + str(index) + " := " + str(index) + "\n").encode()
                       for index, module in enumerate(public)}
        self.bodies["GRWTSK.Logic.Application"] = (
            "".join("import " + module + "\n" for module in public) + "def application := 1\n").encode()
        self.bodies["GRWTSK.Logic.ApplicationAudit"] = b"import GRWTSK.Logic.Application\ndef audit := 1\n"
        self.bodies["GRWTSK.Logic.ApplicationAggregate"] = b"import GRWTSK.Logic.ApplicationAudit\n"
        bridge, runner, reads = self.prepare()
        self.seed_public(bridge, public)
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            self.run_application(bridge, runner, reads)
        self.assertEqual(len(runner.receipt["qualified_public_compilation_candidates"]), 453)
        self.assertEqual(len(bridge.compiled), 456)
        self.assertEqual(len(self.calls), 3 + 1 + 12 + 10)
        census = next(row for row in runner.receipt["commands"] if row["label"] == "complete-owner-census")
        self.assertEqual(json.loads((runner.state / census["log"]).read_bytes())["mock_owner_count"], 456)
        profile = [row for row in runner.receipt["commands"] if row["label"].startswith("profile-control-")]
        namespace = [row for row in runner.receipt["commands"] if row["label"].startswith("control_")]
        self.assertEqual(len(profile), 12)
        self.assertEqual(len(namespace), 10)
        self.assertTrue(all("child_pid" in row and row["child_reaped"] is True
                            for row in [census, *profile, *namespace]))

    def full_main_successor_fixture(self, *, explicit_manifest=False):
        import test_moebius_response_checker as fixtures
        checker = fixtures.checker
        fixture = fixtures.CheckerControls()
        fixture.root = self.root / ("explicit-full-main" if explicit_manifest else "default-full-main")
        checker.make_directory(fixture.root)
        packages, lean, sources, manifest_path, manifest = fixture.integration_fixture("clean")
        install_runtime(lean)
        runtime = compiler_runtime_identity(lean, env={})
        manifest.update(lean_sha256=runtime["executable"]["sha256"],
                        compiler_runtime_identity=runtime,
                        compiler_runtime_sha256=compiler_runtime_digest(runtime))
        for relative in checker.INCREMENTAL_ASSETS:
            raw = (REPOSITORY / relative).read_bytes()
            path = fixture.root / relative
            if path.exists():
                self.assertEqual(path.read_bytes(), raw)
            else:
                checker.write_exclusive(path, raw)
            manifest["assets"][relative] = hashlib.sha256(raw).hexdigest()
        manifest["incremental_validation"] = dict(checker.INCREMENTAL_CONTRACT)
        manifest_path.write_text(json.dumps(manifest))
        self.assertEqual(manifest_path.relative_to(fixture.root).as_posix(),
                         ".noeaaeue/bindings/moebius-current-inputs-current.json")
        if explicit_manifest:
            frozen_manifest_path = fixture.root / ".noeaaeue/bindings/frozen-successor.json"
            manifest_path.rename(frozen_manifest_path)
            manifest_path = frozen_manifest_path
        calls = []
        behavior = {"late_loader_override": None}

        def fake_popen(argv, **options):
            stdout, code = "", 0
            if argv[0] == "git":
                if argv[1:] == ["rev-parse", "HEAD"]:
                    stdout = fixtures.REVISION + "\n"
                else:
                    self.assertEqual(argv[1:], ["status", "--porcelain=v1", "--untracked-files=no"])
            elif argv[0] == "ps":
                self.assertEqual(argv, ["ps", "-axo", "pid=,args="])
            elif "--json" in argv:
                stdout = json.dumps({"status": "PASS", "report_only": False})
            elif "--version" in argv:
                stdout = "Mock Lean 4.33.0\n"
                if behavior["late_loader_override"]:
                    os.environ[behavior["late_loader_override"]] = "/hostile-after-initial-runtime-binding"
            elif "--print-prefix" in argv:
                stdout = str(fixture.root / "toolchain") + "\n"
            elif argv[-1].endswith(".lean"):
                self.assertEqual(argv[0], str(lean))
                calls.append(argv[-1])
                source = Path(options["cwd"]) / argv[-1]
                self.assertEqual(source.stat().st_mode & 0o777, 0o400)
                self.assertEqual(Path(options["cwd"]).stat().st_mode & 0o777, 0o500)
                if "-o" in argv:
                    artifact = Path(argv[argv.index("-o") + 1])
                    checker.write_exclusive(artifact, b"mock object " + checker.digest(source.read_bytes()).encode())
                    checker.write_exclusive(Path(str(artifact) + ".private"), b"mock private object")
                if argv[-1] == fixtures.OWNERS[1].replace(".", "/") + ".lean":
                    stdout = "Kernel axiom audit passed for 1 declarations.\n"
                elif argv[-1] == "MoebiusResponseOwnerCensus.lean":
                    stdout = fixtures.CheckerControls.mock_census(list(sources))
                elif argv[-1].startswith("MoebiusControls/"):
                    stem = Path(argv[-1]).stem
                    namespace, visibility = stem.rsplit("_", 1)
                    name = ("_private.MoebiusControls." + stem + ".0." if visibility == "private" else "")
                    name += namespace + ".hostileCustomAxiom"
                    stdout = f"{argv[-1]}:5:0: error: Unapproved axiom {name} in {name}\n"
                    code = 1
            else:
                raise AssertionError("Unmocked full-main command: " + repr(argv))
            return SimpleNamespace(pid=999999, returncode=code,
                communicate=lambda timeout: (stdout, ""), wait=lambda timeout: code)

        def execute(*, cold=False, poisoned=False, legacy=False, late_loader_override=None, expected_failure=False):
            calls.clear()
            behavior["late_loader_override"] = late_loader_override
            arguments = ["checker", "--root", str(fixture.root), "--lean", str(lean), "--packages", str(packages)]
            if explicit_manifest:
                arguments.extend(["--manifest", str(manifest_path)])
            else:
                self.assertNotIn("--manifest", arguments)
            if cold:
                arguments.append("--cold")
            poisoned_modules = {name: ModuleType(name) for name in (
                "incremental_lean", "cache_math", "monitor_math", "repository_paths")}
            for module in poisoned_modules.values():
                module.CommandCache = lambda *args, **kwargs: (_ for _ in ()).throw(
                    AssertionError("stale canonical helper executed"))
            context = patch.dict(sys.modules, poisoned_modules) if poisoned else contextlib.nullcontext()
            with patch.object(checker.subprocess, "Popen", side_effect=fake_popen), \
                 patch.object(sys, "argv", arguments), context, \
                 patch.dict(os.environ), \
                 contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()):
                outcome = checker.main()
            receipts = list((fixture.root / ".noeaaeue/.local/checks").glob("*/receipt.json"))
            path = max(receipts, key=lambda item: item.stat().st_mtime_ns)
            receipt = json.loads(path.read_bytes())
            if expected_failure:
                self.assertEqual(outcome, 1, receipt)
                self.assertFalse(receipt["kernel_checked"])
                self.assertNotIn("proof_validation_origin", receipt)
                return receipt, list(calls)
            self.assertEqual(outcome, 0, receipt.get("error"))
            self.assertEqual(receipt["manifest"], str(manifest_path))
            self.assertEqual(receipt["manifest_sha256"], hashlib.sha256(manifest_path.read_bytes()).hexdigest())
            self.assertEqual(receipt["validation_mode"], "cold" if cold else "legacy-cold" if legacy else "incremental")
            self.assertTrue(receipt["kernel_checked"])
            self.assertEqual(receipt["terminal_custom_axiom_control_validation"]["control_count"], 10)
            self.assertIn("complete_owner_census", receipt)
            if legacy:
                self.assertNotIn("proof_validation_origin", receipt)
            else:
                self.assertIn("proof_validation_origin", receipt)
            receipt.update(mocked_pipeline_reported_kernel_checked=True, kernel_checked=False,
                           status="mocked-full-main-completion-no-kernel-claim", native_processes_mocked=True)
            checker.atomic_json(path, receipt)
            return receipt, list(calls)

        return execute, fixture, manifest_path

    def test_full_main_default_successor_cold_warm_and_poisoned_canonical_imports(self):
        execute, _, _ = self.full_main_successor_fixture()
        first, first_calls = execute()
        self.assertEqual(first["fresh_compilation_count"], 3)
        self.assertEqual(first["reused_compilation_count"], 0)
        warm, warm_calls = execute(poisoned=True)
        self.assertEqual(warm["reused_compilation_count"], 3)
        self.assertEqual(warm["fresh_compilation_count"], 0)
        self.assertIs(warm["fresh_project_build"], False)
        self.assertFalse(any(relative.startswith("GRWTSK/") for relative in warm_calls))
        self.assertEqual(len(warm_calls), 1 + 1 + 10)
        for command in warm["commands"]:
            if command.get("execution_kind") == "verified-cache-reuse":
                self.assertIs(command["postcheck_passed"], True)
                self.assertIs(command["postcheck_deferred"], False)
                self.assertEqual(command["postcheck_scope"], "terminal-full-application-input-guard")
                self.assertNotIn("child_pid", command)
        cold, cold_calls = execute(cold=True)
        self.assertEqual(cold["fresh_compilation_count"], 3)
        self.assertEqual(cold["reused_compilation_count"], 0)
        self.assertIs(cold["fresh_project_build"], True)
        self.assertEqual(len(cold_calls), len(first_calls))

    def test_full_main_explicit_manifest_overrides_absent_active_default(self):
        execute, fixture, manifest_path = self.full_main_successor_fixture(explicit_manifest=True)
        self.assertFalse((fixture.root / driver.DEFAULT_CURRENT_MANIFEST).exists())
        receipt, calls = execute()
        self.assertEqual(receipt["manifest"], str(manifest_path))
        self.assertEqual(receipt["fresh_compilation_count"], 3)
        self.assertEqual(sum(relative.startswith("GRWTSK/") for relative in calls), 3)

    def test_missing_active_default_rejects_before_children_with_producer_refresh_command(self):
        _, fixture, _ = self.full_main_successor_fixture(explicit_manifest=True)
        import test_moebius_response_checker as fixtures
        for flags in ([], ["--cold"]):
            with self.subTest(flags=flags):
                errors = io.StringIO()
                arguments = ["checker", "--root", str(fixture.root), *flags]
                with patch.object(fixtures.checker.subprocess, "Popen",
                                  side_effect=AssertionError("Missing active binding must not launch any child")), \
                     patch.object(sys, "argv", arguments), contextlib.redirect_stderr(errors):
                    self.assertEqual(fixtures.checker.main(), 1)
                self.assertIn("Current incremental input contract is missing", errors.getvalue())
                self.assertIn(str(fixture.root / driver.DEFAULT_CURRENT_MANIFEST), errors.getvalue())
                self.assertIn("python3 -B .noeaaeue/binding-repair/observe_current_moebius_inputs.py", errors.getvalue())
                self.assertFalse((fixture.root / ".noeaaeue/.local/checks").exists())

    def test_default_nonincremental_manifest_rejects_before_children_even_with_cold(self):
        _, fixture, manifest_path = self.full_main_successor_fixture()
        import test_moebius_response_checker as fixtures
        manifest = json.loads(manifest_path.read_bytes())
        manifest.pop("incremental_validation")
        for flags in ([], ["--cold"]):
            manifest_path.write_text(json.dumps(manifest))
            with self.subTest(flags=flags):
                errors = io.StringIO()
                arguments = ["checker", "--root", str(fixture.root), *flags]
                with patch.object(fixtures.checker.subprocess, "Popen",
                                  side_effect=AssertionError("Default legacy fallback must never launch a child")), \
                     patch.object(sys, "argv", arguments), contextlib.redirect_stderr(errors):
                    self.assertEqual(fixtures.checker.main(), 1)
                self.assertIn("exact supported incremental binding", errors.getvalue())
                self.assertIn("no incremental_validation binding", errors.getvalue())
                self.assertIn("observe_current_moebius_inputs.py", errors.getvalue())
                self.assertFalse((fixture.root / ".noeaaeue/.local/checks").exists())

    def test_default_incremental_contract_requires_exact_schema_types_and_assets(self):
        _, fixture, manifest_path = self.full_main_successor_fixture()
        import test_moebius_response_checker as fixtures
        baseline = json.loads(manifest_path.read_bytes())
        variants = []
        for field, value in (("source_module_cache", 1), ("complete_owner_census", "retained"),
                             ("unexpected_field", True)):
            manifest = copy.deepcopy(baseline)
            manifest["incremental_validation"][field] = value
            variants.append((field, manifest))
        manifest = copy.deepcopy(baseline)
        manifest["assets"].pop(".noeaaeue/scripts/moebius_incremental.py")
        variants.append(("missing-bridge-asset", manifest))
        for name, manifest in variants:
            with self.subTest(name=name):
                manifest_path.write_text(json.dumps(manifest))
                errors = io.StringIO()
                with patch.object(fixtures.checker.subprocess, "Popen",
                                  side_effect=AssertionError("Invalid active contract must never launch a child")), \
                     patch.object(sys, "argv", ["checker", "--root", str(fixture.root)]), \
                     contextlib.redirect_stderr(errors):
                    self.assertEqual(fixtures.checker.main(), 1)
                self.assertIn("exact supported incremental binding", errors.getvalue())
                self.assertIn("observe_current_moebius_inputs.py", errors.getvalue())
                self.assertFalse((fixture.root / ".noeaaeue/.local/checks").exists())

    def assert_runtime_rejected_before_child(self, fixture, *, flags=(), environment=None):
        import test_moebius_response_checker as fixtures
        arguments = ["checker", "--root", str(fixture.root), "--lean", str(fixture.root / "toolchain/bin/lean"),
                     "--packages", str(fixture.root / ".noeaaeue/cache"), *flags]
        errors = io.StringIO()
        context = patch.dict(os.environ, environment) if environment is not None else contextlib.nullcontext()
        with patch.object(fixtures.checker.subprocess, "Popen", side_effect=AssertionError(
                 "Runtime identity rejection must precede every child, including scheduling helpers")), \
             patch.object(sys, "argv", arguments), context, contextlib.redirect_stderr(errors):
            self.assertEqual(fixtures.checker.main(), 1)
        return errors.getvalue()

    def test_manifest_requires_complete_strict_runtime_identity_before_any_child(self):
        _, fixture, path = self.full_main_successor_fixture()
        baseline = json.loads(path.read_bytes())
        variants = []
        for field in ("compiler_runtime_identity", "compiler_runtime_sha256"):
            manifest = copy.deepcopy(baseline)
            manifest.pop(field)
            variants.append(("missing-" + field, manifest))
        manifest = copy.deepcopy(baseline)
        manifest["compiler_runtime_sha256"] = "0" * 64
        variants.append(("wrong-digest", manifest))
        manifest = copy.deepcopy(baseline)
        manifest["compiler_runtime_identity"]["cpu_subtype"] = False
        self.assertEqual(manifest["compiler_runtime_identity"], baseline["compiler_runtime_identity"])
        variants.append(("bool-int-confusion", manifest))
        manifest = copy.deepcopy(baseline)
        manifest["compiler_runtime_identity"]["cpu_subtype"] = float("nan")
        variants.append(("nonfinite-value", manifest))
        for name, manifest in variants:
            for flags in ([], ["--cold"]):
                with self.subTest(name=name, flags=flags):
                    path.write_text(json.dumps(manifest))
                    message = self.assert_runtime_rejected_before_child(fixture, flags=flags)
                    self.assertIn("compiler_runtime_identity", message)
                    self.assertIn("compiler_runtime_sha256", message)
                    self.assertIn("observe_current_moebius_inputs.py", message)

    def test_manifest_same_executable_runtime_change_rejects_before_any_child(self):
        _, fixture, _ = self.full_main_successor_fixture()
        compiler = fixture.root / "toolchain/bin/lean"
        before = compiler.read_bytes()
        library = fixture.root / "toolchain/lib/lean/libLeanshared.dylib"
        library.write_bytes(runtime_image(marker=b"changed runtime without changing the compiler"))
        message = self.assert_runtime_rejected_before_child(fixture)
        self.assertEqual(before, compiler.read_bytes())
        self.assertIn("compiler_runtime_identity", message)
        self.assertIn("observe_current_moebius_inputs.py", message)

    def test_loader_overrides_fail_before_every_real_child(self):
        _, fixture, _ = self.full_main_successor_fixture()
        for name in ("DYLD_LIBRARY_PATH", "DYLD_INSERT_LIBRARIES", "LD_LIBRARY_PATH", "LD_PRELOAD", "LEAN_SYSROOT"):
            with self.subTest(name=name):
                message = self.assert_runtime_rejected_before_child(fixture, environment={name:"/hostile"})
                self.assertIn("unsupported compiler loader environment", message)
                self.assertIn(name, message)

    def test_late_ambient_loader_override_cannot_enter_prefix_helper_child(self):
        execute, _, _ = self.full_main_successor_fixture()
        receipt, calls = execute(late_loader_override="LD_PRELOAD", expected_failure=True)
        self.assertEqual(calls, [])
        commands = receipt["commands"]
        self.assertTrue(any(command["label"] == "compiler-version" and command["exit_code"] == 0
                            for command in commands))
        self.assertFalse(any(command.get("argv", [])[-1:] == ["--print-prefix"] for command in commands))
        failures = [command for command in commands if "unsupported compiler loader environment" in command.get("error", "")]
        self.assertTrue(failures)
        self.assertTrue(all("child_pid" not in command for command in failures))
        self.assertFalse(list((Path(receipt["root"]) / ".noeaaeue/.local/incremental-lean").glob("**/metadata.json")))

    def test_explicit_legacy_contract_freezes_observed_runtime_and_stays_fresh(self):
        execute, fixture, path = self.full_main_successor_fixture(explicit_manifest=True)
        manifest = json.loads(path.read_bytes())
        manifest.pop("incremental_validation")
        manifest.pop("compiler_runtime_identity")
        manifest.pop("compiler_runtime_sha256")
        for name in driver.INCREMENTAL_ASSETS:
            if name != ".noeaaeue/scripts/check_moebius_response.py":
                manifest["assets"].pop(name)
        path.write_text(json.dumps(manifest))
        original = path.read_bytes()
        first, _ = execute(legacy=True)
        second, calls = execute(legacy=True)
        self.assertEqual(path.read_bytes(), original)
        self.assertEqual(first["compiler_runtime_identity"], second["compiler_runtime_identity"])
        self.assertEqual(first["compiler_runtime_sha256"], second["compiler_runtime_sha256"])
        self.assertEqual(second["fresh_compilation_count"], 3)
        self.assertEqual(second["reused_compilation_count"], 0)
        self.assertEqual(sum(relative.startswith("GRWTSK/") for relative in calls), 3)
        self.assertIn("legacy cold execution only", second["compiler_runtime_binding_scope"])
        self.assertEqual(set(second["compiler_runtime_operational_assets"]), {
            ".noeaaeue/scripts/" + name + ".py" for name in
            ("repository_paths", "monitor_math", "cache_math", "incremental_lean", "moebius_incremental")})
        self.assertFalse(list((fixture.root / ".noeaaeue/.local/incremental-lean").glob("**/metadata.json")))

    def test_external_origins_cannot_relabel_boolean_runtime_values_as_integers(self):
        with patch.object(driver.subprocess, "Popen", side_effect=self.popen):
            bridge, runner, reads = self.prepare()
            origin = self.run_application(bridge, runner, reads)
        payload = json.loads(Path(origin["path"]).read_bytes())
        payload["attempt_id"] = "bool-int-runtime-application-origin"
        payload["evidence"]["compiler_runtime_identity"]["cpu_subtype"] = False
        identity = create_origin(self.root / "confused-application-origin.json", payload)
        key = bridge.cache.key(bridge.frames["GRWTSK.A"]["material"])
        path = bridge.cache.base / key / "metadata.json"
        metadata = json.loads(path.read_bytes())
        metadata["provenance"]["origin_receipt"] = identity
        path.write_text(json.dumps(metadata))
        path.with_name("metadata.sha256").write_text(hashlib.sha256(path.read_bytes()).hexdigest() + "\n")
        current, _, _ = self.prepare()
        node = current.nodes["GRWTSK.A"]
        destination = current.build / "GRWTSK/A.olean"
        frame = current._frame("GRWTSK.A", [str(self.compiler), "--trust=0", "--memory=4096", "--threads=1",
            "-DwarningAsError=true", "-o", str(destination), node.relative], {node.relative:node.source_hash}, {})
        self.assertIsNone(current._application_lookup(frame))
        _, public_origin, _ = self.seed_public(current)
        payload = json.loads(Path(public_origin["path"]).read_bytes())
        payload["attempt_id"] = "bool-int-runtime-public-origin"
        payload["evidence"]["validation"]["compiler_runtime_identity"]["cpu_subtype"] = False
        current.public_origin = create_origin(self.root / "confused-public-origin.json", payload)
        self.assertIsNone(current._public_context())
        self.assertIn("runtime", current.runner.receipt["public_compilation_candidate_status"]["reason"])


if __name__ == "__main__":
    unittest.main()
