"""Incremental compilation and owned-declaration validation for math-trust.

Only this driver's successful, byte-bound commands are reusable. Cached native
facts are revalidated and combined into an exact current module census; a cache
hit never changes the source-role, layout, axiom, or runtime-helper policy.
"""
import hashlib
import json
from pathlib import Path
import subprocess
import time

from incremental_lean import (CommandCache, DependencyGraph, artifact_family,
                              create_origin, verify_loaded_parser_sources)
import incremental_audit


SCRIPT = ".noeaaeue/scripts/incremental_math_trust.py"
INPUTS = [SCRIPT, ".noeaaeue/scripts/incremental_lean.py",
          ".noeaaeue/scripts/incremental_audit.py",
          ".noeaaeue/scripts/cache_math.py", ".noeaaeue/scripts/monitor_math.py"]


def object_identity(guard, path):
    """Path-independent identity of exactly the generated import object family."""
    return artifact_family(path)


def _replay(guard, *, run, state, results, snapshot, modules, order, lean,
           binary_hash, env, paths, pins, frozen, build, audit_source,
           native_profiles, memory_mib, graph, cold=False, runtime_guard=None):
    """Called under the existing replay lock, after all admission input gates."""
    root = guard.ROOT
    if runtime_guard is not None:
        runtime_guard.assert_stable(env=env)
        if runtime_guard.identity != graph.compiler_runtime_identity:
            raise RuntimeError("compiler runtime changed before incremental replay")
    for name, actual in (("compiler_runtime_identity", graph.compiler_runtime_identity),
                         ("compiler_runtime_sha256", graph.compiler_runtime_sha256)):
        if name in state and state[name] != actual:
            raise RuntimeError("compiler runtime differs from frozen replay identity: " + name)
        state[name] = actual
    cache_root = root / ".noeaaeue/.local/incremental-lean"
    compile_cache = CommandCache(cache_root, cold=cold, namespace="math-trust-compile-v1", require_origin=True)
    audit_cache = CommandCache(cache_root, cold=cold, namespace="math-trust-audit-v1", require_origin=True)
    flags = ["--trust=0", "--memory=" + str(memory_mib), "--threads=1",
             "-DwarningAsError=true"]
    source_hashes = {name: snapshot["sha256"][relative] for name, relative in modules.items()}
    compile_policy = {"compiler_sha256": binary_hash,
                      "compiler_runtime_sha256": graph.compiler_runtime_sha256, "flags": flags,
                      "toolchain": snapshot["sha256"]["lean-toolchain"],
                      "lakefile": snapshot["sha256"]["lakefile.toml"],
                      "dependency_pins": pins,
                      "driver": snapshot["sha256"][guard.CHECKER],
                      "engine": snapshot["sha256"][INPUTS[1]],
                      "executor": snapshot["sha256"][SCRIPT],
                      "parsers": {relative: snapshot["sha256"][relative] for relative in INPUTS[3:]}}
    audit_policy = {"compile_policy": compile_policy,
                    "audit_sha256": hashlib.sha256(audit_source).hexdigest(),
                    "protocol": snapshot["sha256"][guard.PROTOCOL],
                    "scope_helper": snapshot["sha256"][INPUTS[2]],
                    "runtime_profile": state["qualified_current_runtime_profile"],
                    "audit_dependencies": graph.dependencies(b"import Lean\nimport Lean.Compiler.Old\n")}
    pending_compiles, pending_audits = [], []
    module_keys, object_keys, audit_keys, accepted, validation = {}, {}, {}, {}, {}
    counters = {"compiled": 0, "compilation_cache_hits": 0,
                "audited_modules": 0, "audit_cache_hits": 0, "native_audit_commands": 0}
    state.update({"compilation_mode": "cold" if cold else "incremental",
                  "incremental": counters,
                  "cache_policy": "Exact source/dependency/compiler/flags/policy keys; verified object families; "
                                  "cached native censuses revalidated; publish only after final source and object checks."})

    def progress(label):
        state.update({"status": "RUNNING", "active": label, "results": results})
        guard.write_json(run / "progress.json", state)

    def execute(label, source, destination=None):
        # Compiler inputs are the immutable run copies. Full live membership,
        # HEAD, source, compiler, and dependency checks still gate final admission.
        graph.runtime_guard.assert_stable(env=env)
        if runtime_guard is not None:
            runtime_guard.assert_stable(env=env)
        progress(label)
        argv = [lean, *flags, "--root=" + str(frozen)]
        if destination is not None:
            guard.make_directory(destination.parent)
            argv.extend(["-o", str(destination)])
        argv.append(str(source))
        started = time.monotonic()
        try:
            process = subprocess.run(argv, cwd=frozen, env=env, capture_output=True,
                                     text=True, timeout=600)
        except subprocess.TimeoutExpired as error:
            captured = lambda value: value.decode(errors="replace") if isinstance(value, bytes) else (value or "")
            diagnostic = captured(error.stdout) + captured(error.stderr) + "\n" + str(error)
            guard.write_bytes(run / (label.replace(".", "-") + ".log"), diagnostic.encode(), exclusive=True)
            results.append({"name": label, "outcome": "timed-out", "exit_code": None,
                            "cache_hit": False, "seconds": time.monotonic() - started})
            raise RuntimeError(label + " timed out; retained log in " + str(run)) from error
        diagnostic = process.stdout + process.stderr
        graph.runtime_guard.assert_stable(env=env)
        guard.write_bytes(run / (label.replace(".", "-") + ".log"), diagnostic.encode(), exclusive=True)
        results.append({"name": label, "outcome": "passed" if process.returncode == 0 else "failed",
                        "exit_code": process.returncode, "cache_hit": False,
                        "seconds": time.monotonic() - started,
                        "output_sha256": hashlib.sha256(diagnostic.encode()).hexdigest()})
        if process.returncode != 0:
            raise RuntimeError(label + " did not pass; retained log in " + str(run))
        return process

    for module in order:
        relative = modules[module]
        imports = list(guard.project_imports(guard.read_source(frozen, relative).decode()))
        key = {"schema": "math-trust-module-v1", "module": module, "node": graph.key(module),
               "policy": compile_policy,
               "project_imports": [{"module": name, "key": module_keys[name], "objects": object_keys[name]}
                                   for name in imports]}
        module_keys[module] = hashlib.sha256(json.dumps(key, sort_keys=True, separators=(",", ":")).encode()).hexdigest()
        validation[module] = {"module": module, "source_sha256": source_hashes[module],
                              "compilation": {"cache_key": compile_cache.key(key), "execution": "fresh"},
                              "audit": {"cache_key": None, "execution": "not-run"}}
        destination = build / Path(relative).with_suffix(".olean")
        found = compile_cache.lookup(key, destination=destination)
        if found is None:
            process = execute(module, frozen / relative, destination)
            pending_compiles.append((module, key, process, destination))
            counters["compiled"] += 1
            print(module, "COMPILED", flush=True)
        else:
            if found.process.returncode != 0:
                raise RuntimeError("invalid successful compilation cache entry: " + module)
            counters["compilation_cache_hits"] += 1
            validation[module]["compilation"].update(execution="cached", origin=found.provenance)
            results.append({"name": module, "outcome": "passed", "exit_code": 0,
                            "cache_hit": True, "cache_key": found.key, "seconds": 0,
                            "output_sha256": hashlib.sha256((found.process.stdout + found.process.stderr).encode()).hexdigest()})
        object_keys[module] = object_identity(guard, destination)
        audit_key = {"schema": "math-trust-owned-module-v1", "module": module,
                     "compilation": key, "objects": object_keys[module], "policy": audit_policy}
        audit_keys[module] = audit_key
        validation[module]["audit"]["cache_key"] = audit_cache.key(audit_key)
        checked = audit_cache.lookup(audit_key)
        if checked is not None:
            if checked.process.returncode != 0:
                raise RuntimeError("invalid successful owned-audit cache entry: " + module)
            diagnostic = checked.process.stdout + checked.process.stderr
            guard.owned_audit_protocol.validate_census(
                diagnostic, [module], {module: source_hashes[module]}, native_profiles,
                incremental_audit.partial_census_records)
            accepted[module] = incremental_audit.partition_output(diagnostic, [module])[module]
            validation[module]["audit"].update(
                execution="cached", origin=checked.provenance, revalidated=True,
                partition_sha256=hashlib.sha256(diagnostic.encode()).hexdigest())
            counters["audit_cache_hits"] += 1

    missing = [name for name in order if name not in accepted]
    if missing:
        body, _ = incremental_audit.scoped_wrapper(audit_source, source_hashes, missing)
        wrapper = frozen / "IncrementalProjectAudit.lean"
        guard.write_bytes(wrapper, ("\n".join("import " + name for name in order)
                          + "\nimport Lean\nimport Lean.Compiler.Old\n").encode() + body,
                          exclusive=True, readonly=True)
        wrapper_hash = guard.digest(wrapper)
        process = execute("IncrementalProjectAudit", wrapper)
        diagnostic = process.stdout + process.stderr
        guard.owned_audit_protocol.validate_census(
            diagnostic, missing, {name: source_hashes[name] for name in missing}, native_profiles,
            incremental_audit.partial_census_records)
        partitions = incremental_audit.partition_output(diagnostic, missing)
        for module in missing:
            accepted[module] = partitions[module]
            saved = subprocess.CompletedProcess(process.args, 0,
                                                 incremental_audit.aggregate_output({module: partitions[module]}), "")
            pending_audits.append((audit_keys[module], saved, {
                "native_batch_log": str(run / "IncrementalProjectAudit.log"),
                "native_batch_output_sha256": hashlib.sha256(diagnostic.encode()).hexdigest(),
                "native_wrapper_sha256": wrapper_hash, "source_module": module}))
            validation[module]["audit"].update(
                execution="fresh", revalidated=True,
                partition_sha256=hashlib.sha256(saved.stdout.encode()).hexdigest(),
                native_batch_output_sha256=hashlib.sha256(diagnostic.encode()).hexdigest(),
                native_wrapper_sha256=wrapper_hash)
        counters["audited_modules"] = len(missing)
        counters["native_audit_commands"] = 1
        state["incremental_audit_wrapper_sha256"] = wrapper_hash

    aggregate = incremental_audit.aggregate_output(accepted)
    declarations, audited_modules = guard.owned_audit_protocol.validate_census(
        aggregate, modules, source_hashes, native_profiles, guard.census_records)

    # This is the admission/publication boundary. Interrupted, failed, drifting,
    # or incomplete runs cannot publish successful compilation/audit entries.
    guard.verify_snapshot(root, snapshot)
    guard.verify_frozen(frozen, snapshot)
    if guard.digest(Path(lean)) != binary_hash:
        raise RuntimeError("compiler changed during incremental replay")
    for name, revision in pins.items():
        package = root / ".lake/packages" / name
        if (guard.output(["git", "rev-parse", "HEAD"], package) != revision
                or guard.output(["git", "status", "--porcelain=v1", "--untracked-files=no"], package)):
            raise RuntimeError("dependency checkout changed during incremental replay: " + name)
    graph.assert_unchanged()
    if runtime_guard is not None:
        runtime_guard.assert_stable(env=env)
    compile_cache.assert_origins_unchanged()
    audit_cache.assert_origins_unchanged()
    for module in order:
        if object_identity(guard, build / Path(modules[module]).with_suffix(".olean")) != object_keys[module]:
            raise RuntimeError("compiled object changed during incremental replay: " + module)
    if missing and guard.digest(wrapper) != wrapper_hash:
        raise RuntimeError("incremental audit wrapper changed during replay")
    state.update({"status": "ALL_PROJECT_SOURCE_AND_AXIOM_CHECKS_PASSED", "active": None,
                  "declaration_count": len(declarations), "declarations": declarations,
                  "modules": audited_modules, "results": results, "module_validation": validation,
                  "dependency_object_identities": graph.identities(),
                  "runtime_helper_consumers": [d["name"] for d in declarations
                                               if d["direct_value_reference_to_runtime_helper"]],
                  "scope": "Every active Git-visible library module compiled or reused under exact input keys; "
                           "all owned declarations and transitive axioms checked by fresh or byte-bound cached native censuses. "
                           "Current layout, candidate exclusions, membership/deletions, source bytes, compiler, "
                           "dependency checkout/object identities and complete aggregate census checked in this run. "
                           "Cached checks are retained prior evidence, not a fresh cold replay.",
                  "rh_proved": False})
    # Final proof validation and execution-state publication are separate
    # transactions. An origin never references its own digest. Every new cache
    # entry must match diagnostic and artifact bytes recorded in this origin.
    origin_commands = [compile_cache.command_evidence(key, process=process, artifacts=object_keys[module])
                       for module, key, process, _ in pending_compiles]
    origin_commands += [audit_cache.command_evidence(key, process=process, artifacts={})
                        for key, process, _ in pending_audits]
    origin = create_origin(run / "proof-validation-origin.json", {
        "attempt_id": "math-trust:" + run.name, "outcome": "passed", "terminal": True,
        "evidence": {"commands": origin_commands, "scope": state["scope"],
                     "validation": state, "aggregate_census_sha256": hashlib.sha256(aggregate.encode()).hexdigest()}})
    state["proof_validation_origin"] = origin
    publication = {"origin_receipt": origin, "outcome": "running", "published": []}
    try:
        for module, key, process, destination in pending_compiles:
            published = compile_cache.publish(key, process=process, destination=destination,
                provenance={"origin_receipt": origin, "proof_checks": "owned-declaration-audit",
                            "source_module": module})
            publication["published"].append(published.key)
            validation[module]["compilation"]["origin_receipt"] = origin
        for key, process, provenance in pending_audits:
            published = audit_cache.publish(key, process=process, provenance={**provenance, "origin_receipt": origin})
            publication["published"].append(published.key)
            validation[provenance["source_module"]]["audit"]["origin_receipt"] = origin
        compile_cache.assert_origins_unchanged()
        audit_cache.assert_origins_unchanged()
        graph.runtime_guard.assert_stable(env=env)
        publication["outcome"] = "passed"
    except Exception as error:
        publication.update(outcome="failed", error=str(error))
        raise
    finally:
        guard.write_json(run / "cache-publication.json", publication)
    guard.write_json(run / "receipt.json", state)
    guard.write_json(run / "progress.json", state)
    print(json.dumps({"status": state["status"], "sources": len(modules),
                      **counters, "declarations": len(declarations), "receipt": str(run / "receipt.json")}))
    return 0


def replay(guard, **kwargs):
    """Always release the native object-header inspector, including on failure."""
    verify_loaded_parser_sources({
        Path(relative).name: guard.read_source(kwargs["frozen"], relative)
        for relative in INPUTS[3:]})
    with DependencyGraph(
            {name: kwargs["frozen"] / relative for name, relative in kwargs["modules"].items()},
            search_paths=kwargs["paths"], compiler=Path(kwargs["lean"]),
            cache_root=guard.ROOT / ".noeaaeue/.local/incremental-lean",
            compiler_env=kwargs.get("env")) as graph:
        return _replay(guard, graph=graph, **kwargs)
