#!/usr/bin/env python3
"""Run one cataloged validation source under its declared outcome policy."""

import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

from cache_math import imports as source_imports
import check_math_trust as guard
from incremental_lean import (CommandCache, DependencyGraph, RuntimeIdentityGuard,
                              artifact_family, regular_bytes, create_origin,
                              validate_runtime_environment)


ROOT = Path(__file__).resolve().parents[2]
LAYOUT = ROOT / ".noeaaeue/documentation/math-layout.json"


def accepted_diagnostic(role, returncode, diagnostic):
    """Apply the existing catalog outcome policy to fresh or cached output."""
    if role == "negative-control":
        missing_input = any(fragment in diagnostic.casefold() for fragment in (
            "unknown module", "no such file", "file not found", "unknown package"))
        return returncode != 0 and "error" in diagnostic.casefold() and not missing_input
    return returncode == 0


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source")
    parser.add_argument("--cold", action="store_true",
                        help="Rebuild the complete selected import closure and rerun validation")
    args = parser.parse_args()
    layout_bytes = regular_bytes(LAYOUT)
    records = {entry["path"]: entry for entry in json.loads(layout_bytes)["active_sources"]}
    record = records.get(args.source)
    if record is None or record["source_role"] not in {
            "positive-check", "negative-control", "audit-driver"}:
        raise SystemExit("source is not a cataloged validation source")
    # Freeze only the selected source and its project import closure. Project
    # objects from .lake never substitute for a changed source dependency.
    frozen_bytes, order, active = {}, [], set()
    def visit(relative):
        if relative in active:
            raise RuntimeError("cyclic validation import: " + relative)
        if relative in frozen_bytes:
            return
        if relative not in records:
            raise RuntimeError("import is not an active cataloged source: " + relative)
        active.add(relative)
        raw = guard.read_source(ROOT, relative)
        for name in source_imports(raw):
            if name == "GRWTSK" or name.startswith("GRWTSK."):
                visit(name.replace(".", "/") + ".lean")
        active.remove(relative)
        frozen_bytes[relative] = raw
        order.append(relative)
    visit(args.source)
    environment = os.environ.copy()
    environment.pop("LEAN_PATH", None)
    environment.pop("LEAN_SRC_PATH", None)
    validate_runtime_environment(environment)
    lean = str(Path(subprocess.check_output(["elan", "which", "lean"], cwd=ROOT,
                                           env=environment, text=True).strip()).resolve())
    runtime = RuntimeIdentityGuard(Path(lean), env=environment)
    runtime.assert_stable(env=environment)
    raw_paths = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"],
                                       cwd=ROOT, env=environment, text=True).strip()
    runtime.assert_stable(env=environment)
    paths, removed = guard.dependency_search_path(raw_paths, ROOT, lean)
    paths = list(dict.fromkeys([*paths, str(Path(lean).parent.parent / "lib/lean")]))
    base = ROOT / ".noeaaeue/.local/validation"
    guard.make_directory(base)
    run = Path(tempfile.mkdtemp(prefix="source-", dir=base))
    source, build = run / "source", run / "build"
    guard.make_directory(source)
    guard.make_directory(build)
    for relative, raw in frozen_bytes.items():
        guard.write_bytes(source / relative, raw, exclusive=True, readonly=True)
    environment["LEAN_PATH"] = os.pathsep.join([str(build), *paths])
    cache = CommandCache(ROOT / ".noeaaeue/.local/incremental-lean", cold=args.cold,
                         namespace="catalog-validation-v1", require_origin=True)
    policy_paths = [Path(__file__), ROOT / ".noeaaeue/scripts/repository_paths.py",
                    ROOT / ".noeaaeue/scripts/check_math_trust.py",
                    *(ROOT / ".noeaaeue/scripts" / name for name in
                      ("incremental_lean.py", "cache_math.py", "monitor_math.py"))]
    policy = {str(path): hashlib.sha256(regular_bytes(path)).hexdigest() for path in policy_paths}
    graph = DependencyGraph({relative[:-5].replace("/", "."): source / relative
                             for relative in frozen_bytes}, paths, Path(lean), cache_root=cache.root,
                            compiler_env=environment)
    runtime.assert_stable(env=environment)
    if graph.compiler_runtime_identity != runtime.identity:
        graph.close()
        raise RuntimeError("compiler runtime changed before validation graph")
    commands, pending, objects, compiled_commands, command_evidence = [], [], {}, {}, []
    cache_publication = {"attempt_id": run.name + ":cache-publication",
                         "outcome": "not-attempted", "terminal": True}
    receipt = {"path": args.source, "source_role": record["source_role"],
               "validation_mode": "cold" if args.cold else "incremental",
               "removed_search_paths": removed, "commands": commands,
               "source_sha256": {relative: hashlib.sha256(raw).hexdigest()
                                  for relative, raw in frozen_bytes.items()},
               "compiler_runtime_identity": runtime.identity,
               "compiler_runtime_sha256": runtime.sha256,
               "outcome": "failed", "cache_entries_published": False}
    accepted = False
    try:
        for relative in order:
            runtime.assert_stable(env=environment)
            for path, expected in objects.items():
                if artifact_family(path) != expected:
                    raise RuntimeError("compiled validation dependency changed: " + str(path))
            target = None if relative == args.source else build / Path(relative).with_suffix(".olean")
            argv = [lean, "-j1", "--trust=0", "-DwarningAsError=true", "--root=" + str(source)]
            if target is not None:
                guard.make_directory(target.parent)
                argv.extend(["-o", str(target)])
            argv.append(relative)
            role = record["source_role"] if target is None else "positive-check"
            dependencies = graph.dependencies(frozen_bytes[relative])
            local_objects = []
            for dependency in dependencies:
                name = dependency["module"]
                if name in graph.local_sources:
                    if name not in compiled_commands:
                        raise RuntimeError("import has no validated command object: " + name)
                    local_objects.append({"module": name, **compiled_commands[name]})
            material = {"source": relative, "source_sha256": receipt["source_sha256"][relative],
                        "dependencies": dependencies, "local_imported_objects": local_objects,
                        "compiler_sha256": graph.compiler_hash, "policy": policy,
                        "compiler_runtime_sha256": runtime.sha256,
                        "role": role, "catalog_role": records[relative]["source_role"],
                        "argv": [arg.replace(str(source), "<source>").replace(str(build), "<build>") for arg in argv],
                        "search_paths": paths}
            reused = cache.lookup(material, destination=target)
            process = reused.process if reused is not None else subprocess.run(
                argv, cwd=source, env=environment, capture_output=True, text=True, timeout=1800)
            runtime.assert_stable(env=environment)
            diagnostic = process.stdout + process.stderr
            passed = accepted_diagnostic(role, process.returncode, diagnostic)
            commands.append({"path": relative, "exit_code": process.returncode, "cache_hit": reused is not None,
                             "cache_key": reused.key if reused else cache.key(material),
                             "outcome": "passed" if passed else "failed"})
            if reused is not None:
                commands[-1]["origin_receipt"] = reused.provenance["origin_receipt"]
            guard.write_bytes(run / (relative.replace("/", "-") + ".log"), diagnostic.encode(), exclusive=True)
            if relative == args.source or not passed:
                print(diagnostic, end="")
            if not passed:
                receipt["exit_code"] = process.returncode
                break
            if target is not None:
                objects[target] = artifact_family(target)
                compiled_commands[relative[:-5].replace("/", ".")] = {
                    "command_key": cache.key(material), "artifacts": objects[target]}
            command_evidence.append(cache.command_evidence(material, process=process,
                                                           artifacts=objects[target] if target else {}))
            if reused is None:
                pending.append((material, process, target))
        else:
            if regular_bytes(LAYOUT) != layout_bytes:
                raise RuntimeError("validation source catalog changed")
            for relative, raw in frozen_bytes.items():
                if guard.read_source(ROOT, relative) != raw:
                    raise RuntimeError("validation source changed: " + relative)
                if guard.read_source(source, relative) != raw:
                    raise RuntimeError("frozen validation source changed: " + relative)
            if any(hashlib.sha256(regular_bytes(Path(path))).hexdigest() != expected for path, expected in policy.items()):
                raise RuntimeError("validation policy changed")
            graph.assert_unchanged()
            for path, expected in objects.items():
                if artifact_family(path) != expected:
                    raise RuntimeError("compiled validation dependency changed: " + str(path))
            cache.assert_origins_unchanged()
            runtime.assert_unchanged(env=environment)
            origin = create_origin(run / "proof-validation-origin.json", {
                "attempt_id": run.name + ":proof-validation", "outcome": "passed", "terminal": True,
                "evidence": {"driver": "catalog-validation", "source": args.source,
                             "source_role": record["source_role"], "commands": command_evidence,
                             "command_results": commands,
                             "validation_mode": receipt["validation_mode"],
                             "compiler_sha256": graph.compiler_hash,
                             "compiler_runtime_identity": runtime.identity,
                             "compiler_runtime_sha256": runtime.sha256,
                             "catalog_sha256": hashlib.sha256(layout_bytes).hexdigest(),
                             "source_sha256": receipt["source_sha256"], "policy": policy,
                             "project_objects": {str(path): family for path, family in objects.items()}}})
            accepted = True
            receipt.update(proof_validation_origin=origin, proof_validation_outcome="passed",
                           outcome="passed", exit_code=commands[-1]["exit_code"])
            cache_publication.update(outcome="publishing", terminal=False, proof_validation_origin=origin)
            try:
                for material, process, target in pending:
                    runtime.assert_stable(env=environment)
                    cache.publish(material, process=process, destination=target,
                                  provenance={"origin_receipt": origin})
                cache.assert_origins_unchanged()
                runtime.assert_unchanged(env=environment)
            except Exception as error:
                cache_publication.update(outcome="failed", terminal=True, error=str(error))
                raise
            else:
                cache_publication.update(outcome="passed", terminal=True)
                receipt["cache_entries_published"] = True
    finally:
        graph.close()
        guard.write_json(run / "cache-publication.json", cache_publication)
        receipt["cache_publication"] = cache_publication
        guard.write_json(run / "receipt.json", receipt)
    print(json.dumps({"path": args.source, "source_role": record["source_role"],
                      "exit_code": receipt.get("exit_code"), "outcome": receipt["outcome"],
                      "validation_mode": receipt["validation_mode"],
                      "compiled": sum(not command["cache_hit"] for command in commands),
                      "cache_hits": sum(command["cache_hit"] for command in commands),
                      "receipt": str(run / "receipt.json")}))
    return 0 if accepted else 1


if __name__ == "__main__":
    raise SystemExit(main())
