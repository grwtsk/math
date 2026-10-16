"""Explicit continuation of a current, source-bound replay after memory exhaustion.

This never edits a previous receipt or grants an exception to the axiom policy.
Completed objects must match the independent memory probe's before/after hashes.
All remaining sources are freshly compiled; the original full native audit and
independent current census validator still decide the final result.
"""
import argparse
import datetime
import fcntl
import hashlib
import json
import os
from pathlib import Path
import stat
import subprocess
import sys
import time
import uuid

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / ".noeaaeue/scripts"))
import check_math_trust as trust
import owned_audit_protocol as protocol


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def object_hashes(build):
    result = {}
    for path in sorted(build.rglob("*")):
        if path.is_symlink():
            raise RuntimeError("symlink in compiled-object lineage")
        if path.is_dir():
            continue
        name = path.relative_to(build).as_posix()
        if not name.endswith(".olean"):
            raise RuntimeError("unexpected file in compiled-object lineage: " + name)
        result[name] = sha(trust.read_source(build, name))
    return result


def verify_objects(build, expected):
    if object_hashes(build) != expected:
        raise RuntimeError("compiled-object bytes or membership drift")


def verify_lineage_evidence(producer, failure_raw, root, probe_name, probe_raw, logs):
    if trust.read_source(producer, "failure.json") != failure_raw:
        raise RuntimeError("producer failed receipt changed")
    if trust.read_source(root, probe_name) != probe_raw:
        raise RuntimeError("resource-retry evidence changed")
    for name, expected in logs.items():
        if sha(trust.read_source(producer, name)) != expected:
            raise RuntimeError("producer source-log lineage changed: " + name)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--producer", required=True, help="Failed math-trust run directory name")
    parser.add_argument("--probe", required=True, help="Repository-relative successful exact-source retry receipt")
    parser.add_argument("--memory-mib", type=int, default=12288)
    args = parser.parse_args()
    if "/" in args.producer or args.producer in {"", ".", ".."}:
        parser.error("producer must be one run directory name")
    producer = ROOT / ".noeaaeue/.local/math-trust" / args.producer
    frozen = producer / "source"
    failure_raw = trust.read_source(producer, "failure.json")
    original = json.loads(failure_raw)
    probe_raw = trust.read_source(ROOT, args.probe)
    probe = json.loads(probe_raw)
    snapshot = original["snapshot"]
    if (original.get("status") != "FAILED" or original.get("mode") != "all-project-replay"
            or original["results"][-1]["outcome"] != "failed"
            or probe.get("status") != "FROZEN_RESOURCE_RETRY_PASSED"
            or probe.get("exit_code") != 0 or probe.get("source_and_object_guards_passed") is not True
            or probe.get("producer_failure_sha256") != sha(failure_raw)
            or args.memory_mib != probe.get("memory_mib")
            or args.memory_mib <= original["lean_memory_limit_mib"]):
        raise RuntimeError("continuation lacks its exact successful resource-only retry")
    failed = original["results"][-1]
    failed_log = trust.read_source(producer, failed["name"].replace(".", "-") + ".log")
    if (sha(failed_log) != failed["output_sha256"] or failed["exit_code"] != -6
            or b"lean::memory_exception" not in failed_log):
        raise RuntimeError("producer failure is not the preserved memory exception")
    modules, order = trust.project_modules(frozen, snapshot["sources"])
    passed = original["results"][:-1]
    if ([row["name"] for row in passed] != order[:len(passed)]
            or any(row["outcome"] != "passed" or row["exit_code"] != 0 for row in passed)
            or failed["name"] != order[len(passed)]
            or probe["source"] != modules[failed["name"]]
            or probe["source_sha256"] != snapshot["sha256"][probe["source"]]):
        raise RuntimeError("producer source order or successful-prefix lineage differs")
    inherited = probe["producer_object_sha256"]
    expected_objects = {str(Path(modules[row["name"]]).with_suffix(".olean")) for row in passed}
    if set(inherited) != expected_objects or len(inherited) != len(passed):
        raise RuntimeError("inherited object membership is not the exact successful prefix")
    verify_objects(producer / "build", inherited)
    owner_hashes = {name: snapshot["sha256"][relative] for name, relative in modules.items()}
    profiles, qualification_inputs, qualification = protocol.qualified_project_profile(frozen, trust.read_source, owner_hashes)
    if qualification != original["qualified_current_runtime_profile"]:
        raise RuntimeError("qualified runtime permission differs from the producer")
    audit_source = protocol.configure_project_table(trust.read_source(frozen, trust.AUDIT), profiles)
    body, source_profile = protocol.wrapper_body(audit_source, "project", owner_hashes)
    wrapper = frozen / "AllProjectAudit.lean"
    expected_wrapper = ("\n".join("import " + name for name in order) +
        "\nimport Lean\nimport Lean.Compiler.Old\n" + body + "\n").encode()
    if (trust.read_source(frozen, "AllProjectAudit.lean") != expected_wrapper
            or sha(expected_wrapper) != original["wrapper_sha256"]):
        raise RuntimeError("original generated full audit differs from the strict current configuration")
    base = ROOT / ".noeaaeue/.local/math-trust-continuation"
    trust.make_directory(base)
    run = base / (time.strftime("%Y%m%dT%H%M%SZ", time.gmtime()) + "-" + uuid.uuid4().hex[:10])
    trust.make_directory(run, exclusive=True)
    build = run / "build"
    trust.make_directory(build, exclusive=True)
    driver_hash = sha(Path(__file__).read_bytes())
    state = {"schema": "explicit-source-bound-memory-continuation-v1", "status": "PREPARING",
        "created_at": datetime.datetime.now(datetime.timezone.utc).isoformat(),
        "run_directory": str(run.relative_to(ROOT)), "producer_failure": str((producer / "failure.json").relative_to(ROOT)),
        "producer_failure_sha256": sha(failure_raw), "producer_status": "FAILED",
        "producer_memory_mib": original["lean_memory_limit_mib"], "memory_mib": args.memory_mib,
        "resource_retry": args.probe, "resource_retry_sha256": sha(probe_raw),
        "driver_sha256": driver_hash, "snapshot": snapshot, "source_count": len(modules),
        "lean_version": original["lean_version"], "lean_binary_sha256": original["lean_binary_sha256"],
        "dependency_revisions": original["dependency_revisions"],
        "dependency_search_path": original["dependency_search_path"],
        "source_profile": source_profile, "qualification": qualification,
        "original_operational_wrapper": original["operational_audit_wrapper"],
        "inherited_source_count": len(passed), "inherited_object_sha256": inherited,
        "inherited_object_hash_observation": "Independent immediate probe verified these exact objects before/after retry; original producer did not persist per-command object hashes.",
        "source_replay_scope": "Successful exact frozen producer prefix plus freshly elaborated continuation suffix. Original failed receipt remains failed. Resource allowance is the only native option difference.",
        "candidate_source_only_paths": original["candidate_source_only_paths"],
        "library_wide_admission": False, "rh_proved": False, "results": []}
    lineage = []
    for row in passed:
        relative = modules[row["name"]]
        object_name = str(Path(relative).with_suffix(".olean"))
        log_name = row["name"].replace(".", "-") + ".log"
        raw = trust.read_source(producer, log_name)
        if sha(raw) != row["output_sha256"]:
            raise RuntimeError("producer successful-source log changed")
        lineage.append({"module": row["name"], "source": relative,
            "source_sha256": snapshot["sha256"][relative], "object": object_name,
            "object_sha256": inherited[object_name], "producer_log": log_name,
            "producer_log_sha256": sha(raw), "exit_code": 0,
            "producer_memory_mib": original["lean_memory_limit_mib"]})
        destination = build / object_name
        trust.make_directory(destination.parent)
        trust.write_bytes(destination, trust.read_source(producer / "build", object_name), exclusive=True, readonly=True)
    state["lineage"] = lineage
    producer_logs = {row["producer_log"]: row["producer_log_sha256"] for row in lineage}
    producer_logs[failed["name"].replace(".", "-") + ".log"] = sha(failed_log)
    trust.write_bytes(run / "lineage.json", (json.dumps(state, indent=2) + "\n").encode(), exclusive=True, readonly=True)
    trust.write_json(run / "progress.json", state)
    known = dict(inherited)
    parent = trust.directory_descriptor(ROOT / ".noeaaeue/.local/math-trust")
    try:
        descriptor = os.open("replay.lock", os.O_RDWR | os.O_CREAT | os.O_NOFOLLOW, 0o600, dir_fd=parent)
        if not stat.S_ISREG(os.fstat(descriptor).st_mode):
            os.close(descriptor)
            raise RuntimeError("refusing non-regular continuation replay lock")
        lock = os.fdopen(descriptor, "a+")
    finally:
        os.close(parent)
    try:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        if trust.competing_jobs(ROOT):
            raise RuntimeError("BUSY: existing native or verification job")
        lean = str(Path(trust.output(["elan", "which", "lean"])).resolve())
        if trust.output([lean, "--version"]) != original["lean_version"]:
            raise RuntimeError("compiler identity differs from producer")
        env = dict(os.environ, LEAN_PATH=os.pathsep.join([str(build)] + original["dependency_search_path"]))
        env.pop("LEAN_SRC_PATH", None)
        def stable():
            verify_lineage_evidence(producer, failure_raw, ROOT, args.probe, probe_raw, producer_logs)
            trust.verify_snapshot(ROOT, snapshot)
            trust.verify_frozen(frozen, snapshot)
            verify_objects(producer / "build", inherited)
            verify_objects(build, known)
            if (sha(Path(__file__).read_bytes()) != driver_hash
                    or trust.digest(Path(lean)) != original["lean_binary_sha256"]
                    or trust.digest(wrapper) != original["wrapper_sha256"]):
                raise RuntimeError("driver/compiler/audit input changed")
            for name, revision in original["dependency_revisions"].items():
                package = ROOT / ".lake/packages" / name
                if (trust.output(["git", "rev-parse", "HEAD"], package) != revision
                        or trust.output(["git", "status", "--porcelain=v1", "--untracked-files=no"], package)):
                    raise RuntimeError("pinned dependency changed: " + name)
        def compile_one(label, source, destination=None):
            stable()
            argv = [lean, "--trust=0", "--memory=" + str(args.memory_mib), "--threads=1", "-DwarningAsError=true"]
            if destination is not None:
                trust.make_directory(destination.parent)
                if destination.exists() or destination.is_symlink():
                    raise RuntimeError("refusing existing continuation output")
                argv += ["-o", str(destination)]
            argv.append(str(source))
            state.update(status="RUNNING", active=label)
            trust.write_json(run / "progress.json", state)
            started = time.monotonic()
            process = subprocess.run(argv, cwd=frozen, env=env, text=True, capture_output=True, timeout=600)
            text = process.stdout + process.stderr
            log = label.replace(".", "-") + ".log"
            trust.write_bytes(run / log, text.encode(), exclusive=True, readonly=True)
            row = {"name": label, "argv": argv, "exit_code": process.returncode,
                "outcome": "passed" if process.returncode == 0 else "failed", "seconds": time.monotonic() - started,
                "log": log, "output_sha256": sha(text.encode())}
            if destination is not None and process.returncode == 0:
                name = destination.relative_to(build).as_posix()
                known[name] = sha(trust.read_source(build, name))
                row["compiled_object_sha256"] = known[name]
            state["results"].append(row)
            trust.write_json(run / "progress.json", state)
            stable()
            print(label, row["outcome"].upper(), flush=True)
            if process.returncode:
                raise RuntimeError(label + " failed; exact native log retained")
            return text
        for module in order[len(passed):]:
            relative = modules[module]
            compile_one(module, frozen / relative, build / Path(relative).with_suffix(".olean"))
        audit_output = compile_one("AllProjectAudit", wrapper)
        declarations, audited_modules = protocol.validate_census(audit_output, modules, owner_hashes, profiles, trust.census_records)
        dependency_objects = trust.dependency_object_identities(audit_output, original["dependency_search_path"], lean)
        stable()
        state.update(status="ALL_CURRENT_PUBLIC_SOURCE_AND_AXIOM_CHECKS_PASSED_BY_EXPLICIT_CONTINUATION",
            active=None, library_wide_admission=True, declaration_count=len(declarations),
            declarations=declarations, modules=audited_modules, compiled_object_sha256=known,
            dependency_object_identities=dependency_objects,
            dependency_provenance_scope=original["dependency_provenance_scope"])
        trust.write_bytes(run / "receipt.json", (json.dumps(state, indent=2) + "\n").encode(), exclusive=True, readonly=True)
        trust.write_json(run / "progress.json", state)
        print(json.dumps({"status": state["status"], "sources": len(modules), "declarations": len(declarations),
            "inherited_fresh_sources": len(passed), "new_source_compilations": len(order) - len(passed),
            "receipt": str((run / "receipt.json").relative_to(ROOT))}), flush=True)
        return 0
    except Exception as error:
        state.update(status="FAILED", error=str(error), library_wide_admission=False,
            compiled_object_sha256=known)
        trust.write_bytes(run / "failure.json", (json.dumps(state, indent=2) + "\n").encode(), exclusive=True, readonly=True)
        trust.write_json(run / "progress.json", state)
        print(json.dumps({"status": "FAILED", "error": str(error), "failure": str((run / "failure.json").relative_to(ROOT))}), flush=True)
        return 1
    finally:
        lock.close()


if __name__ == "__main__":
    raise SystemExit(main())
