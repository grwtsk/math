#!/usr/bin/env python3
"""Fresh selected replay of conditional exposure and fixed-size anti-concentration.

Project sources are rebuilt from frozen bytes at trust zero with fatal warnings.
Pinned dependency objects are reused; global binding observations and historical
receipts are not refreshed by this selected mathematical batch.
"""
import argparse
import datetime
import fcntl
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import re
import stat
import subprocess
import time
import uuid


ROOT = Path(__file__).resolve().parents[2]
STANDARD_AXIOMS = {"propext", "Classical.choice", "Quot.sound"}
CHECKER = ".noeaaeue/scripts/check_partition_concentration.py"
GUARD = ".noeaaeue/scripts/check_math_trust.py"
AUDIT_PROTOCOL = ".noeaaeue/scripts/owned_audit_protocol.py"
SOURCE_OBSERVATIONS = ".noeaaeue/scripts/source_observations.py"
AUDIT = "GRWTSK/Logic/ProofChecking/Checks/OwnedDeclarationAudit.lean"
LIBRARY = ["GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean"]
POSITIVE = [
    "GRWTSK/Combinatorics/Sequences/PartitionExposureChecks.lean",
    "GRWTSK/Analysis/Fourier/Checks/Positive/SubsetAntiConcentration.lean",
]
NEGATIVE = [
    ("GRWTSK/Analysis/Fourier/Checks/Negative/SubsetAntiConcentrationMissingRange.lean",
     ("Real.log", "subsetSumProbability")),
    ("GRWTSK/Analysis/Fourier/Checks/Negative/SubsetAntiConcentrationMissingPrime.lean",
     ("Prime", "subsetSumProbability")),
]


def require(value, message):
    if not value:
        raise RuntimeError(message)


def sha(data):
    return hashlib.sha256(data).hexdigest()


def command(*args):
    return subprocess.check_output(args, cwd=ROOT, text=True).strip()


def object_family(main):
    """Bind the complete importable object family, rejecting links and drift."""
    main = Path(main)
    require(main.is_file() and not main.is_symlink(), "missing/linked object: " + str(main))
    result = []
    for item in [main, Path(str(main) + ".private"), Path(str(main) + ".server")]:
        if item.exists() or item.is_symlink():
            require(item.is_file() and not item.is_symlink(), "nonregular object: " + str(item))
            raw = item.read_bytes()
            result.append({"path": str(item), "sha256": sha(raw), "bytes": len(raw)})
    return result


def verify_project_objects(identities):
    for family in identities.values():
        require(object_family(family[0]["path"]) == family, "object-family drift")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--receipt", help="absent repository-relative durable JSON destination")
    parser.add_argument("--memory-mib", type=int, default=12288)
    args = parser.parse_args()
    destination = None
    if args.receipt:
        relative = Path(args.receipt)
        require(not relative.is_absolute() and ".." not in relative.parts
                and relative.parts[:4] == (".noeaaeue", "evidence", "Analysis", "Fourier")
                and relative.suffix == ".json", "invalid receipt destination")
        destination = ROOT / relative
        require(not destination.exists() and not destination.is_symlink(), "receipt already exists")
    spec = importlib.util.spec_from_file_location("math_guard", ROOT / GUARD)
    guard = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(guard)
    lock_path = ROOT / ".noeaaeue/.local/math-trust/replay.lock"
    guard.make_directory(lock_path.parent)
    parent = guard.directory_descriptor(lock_path.parent)
    try:
        descriptor = os.open(lock_path.name, os.O_RDWR | os.O_CREAT | os.O_NOFOLLOW,
                             0o600, dir_fd=parent)
        require(stat.S_ISREG(os.fstat(descriptor).st_mode), "non-regular replay lock")
    finally:
        os.close(parent)
    with os.fdopen(descriptor, "a+") as lock:
        try:
            fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError:
            print("DEFERRED: another native replay holds the shared lock", flush=True)
            return 2
        jobs = guard.competing_jobs(ROOT)
        if jobs:
            print(json.dumps({"outcome": "deferred", "competing_jobs": jobs}), flush=True)
            return 2
        return replay(guard, destination, args.memory_mib)


def replay(guard, destination, memory_mib):
    require(memory_mib >= 4096, "at least 4096 MiB required")
    require(guard.ALLOWED_AXIOMS == STANDARD_AXIOMS, "standard-three axiom policy mismatch")
    base = ROOT / ".noeaaeue/.local/partition-concentration-replay"
    require(subprocess.run(["git", "check-ignore", "-q", "--", str(base)],
                           cwd=ROOT).returncode == 0, "replay output must be Git-ignored")
    guard.make_directory(base)
    run = base / (time.strftime("%Y%m%dT%H%M%SZ", time.gmtime()) + "-" + uuid.uuid4().hex[:10])
    guard.make_directory(run, exclusive=True)
    receipt = {
        "schema": "partition-concentration-selected-replay-v1", "outcome": "initializing",
        "at": datetime.datetime.now(datetime.timezone.utc).isoformat(),
        "run_directory": str(run), "trust": 0, "fatal_warnings": True,
        "canonical_project_objects_excluded": True, "dependency_objects_reused": True,
        "full_repository_build": False, "mathlib_source_rebuild": False,
        "independent_review": False, "theorem_13_checked": False,
        "source": {"url": "https://arxiv.org/html/2602.15797v1", "version": "v1, 2026-02-17"},
        "result_kind": "uniform_fixed_size_subset_sum_anticoncentration",
        "memory_mib": memory_mib,
        "allowed_axioms": sorted(STANDARD_AXIOMS),
        "scope": (
            "The selected balanced-partition concentration and fixed-size Fourier bound, "
            "and their complete local project import closure, freshly elaborated from immutable "
            "source copies. Positive controls and every owned library and accepted-control "
            "declaration are audited; intended type-rejection controls are checked separately. "
            "Only standard axioms are permitted. This does not refresh global source observations, "
            "admit the whole library, rebuild dependency sources, prove Corollary 1.4 or close "
            "the source-range rearrangement theorem."),
        "dependency_cache_policy": (
            "Pinned clean dependency checkout HEADs are checked and existing dependency objects "
            "are kernel-checked by Lean at trust zero. Search-path-resolved imported dependency "
            "object families are fingerprinted after the audit and rechecked thereafter. "
            "These fingerprints do not establish cached object-to-source provenance or bind "
            "object bytes at earlier import times; dependency sources are not rebuilt."),
        "results": [], "selected_checks": {}, "project_object_identities": {},
        "positive_consumer_paths": list(POSITIVE), "positive_consumer_count": len(POSITIVE),
        "negative_control_paths": [path for path, _ in NEGATIVE], "negative_control_count": len(NEGATIVE),
    }

    def save():
        guard.write_bytes(run / "receipt.json", (json.dumps(receipt, indent=2) + "\n").encode())

    save()
    print("RUN " + str(run), flush=True)
    try:
        frozen_bytes, order, active = {}, [], set()

        def visit(rel):
            require(rel not in active, "cyclic project import: " + rel)
            if rel in frozen_bytes:
                return
            body = guard.read_source(ROOT, rel)
            active.add(rel)
            frozen_bytes[rel] = body
            for module in guard.project_imports(body.decode()):
                visit(module.replace(".", "/") + ".lean")
            active.remove(rel)
            order.append(rel)

        for rel in LIBRARY:
            visit(rel)
        # A control-only local import must also be freshly built and audited.
        for rel in POSITIVE + [path for path, _ in NEGATIVE]:
            body = guard.read_source(ROOT, rel)
            for module in guard.project_imports(body.decode()):
                visit(module.replace(".", "/") + ".lean")
            frozen_bytes[rel] = body
        library_order = list(order)
        require(not any("/Checks/" in rel for rel in library_order),
                "library/control imports must not promote a Checks module into library acceptance")
        for rel in [AUDIT, AUDIT_PROTOCOL, SOURCE_OBSERVATIONS, CHECKER, GUARD,
                    "lean-toolchain", "lakefile.toml", "lake-manifest.json"]:
            frozen_bytes[rel] = guard.read_source(ROOT, rel)
        require(frozen_bytes["lean-toolchain"].decode().strip()
                == "leanprover/lean4:v" + guard.LEAN_VERSION, "Lean pin mismatch")
        pins = {package["name"]: package["rev"]
                for package in json.loads(frozen_bytes["lake-manifest.json"])["packages"]}
        revisions = re.findall(r'^\s*rev\s*=\s*"([^"]+)"\s*$',
                               frozen_bytes["lakefile.toml"].decode(), re.MULTILINE)
        require(pins.get("mathlib") == guard.MATHLIB_REV and revisions == [guard.MATHLIB_REV],
                "Mathlib pin mismatch")
        lean = str(Path(command("elan", "which", "lean")).resolve())
        version = command(lean, "--version")
        require(guard.LEAN_VERSION in version and guard.LEAN_COMMIT in version, "compiler mismatch")
        source, build = run / "source", run / "build"
        guard.make_directory(source, exclusive=True)
        guard.make_directory(build, exclusive=True)
        for rel, body in frozen_bytes.items():
            guard.write_bytes(source / rel, body, exclusive=True, readonly=True)
        paths, removed = guard.dependency_search_path(
            command("lake", "env", "printenv", "LEAN_PATH"), ROOT, lean)
        require(paths, "no dependency paths")
        env = dict(os.environ, LEAN_PATH=os.pathsep.join([str(build)] + paths))
        env.pop("LEAN_SRC_PATH", None)
        receipt.update({
            "outcome": "running", "head_observed": command("git", "rev-parse", "HEAD"),
            "source_hashes": {rel: sha(body) for rel, body in frozen_bytes.items()},
            "compiler_sha256": guard.digest(Path(lean)), "lean_version": version,
            "pins": pins, "library_order": library_order,
            "dependency_search_paths": paths, "removed_project_search_paths": removed,
            "negative_control_required_diagnostics": {path: list(fragments) for path, fragments in NEGATIVE},
        })

        def stable():
            for rel, body in frozen_bytes.items():
                require(guard.read_source(ROOT, rel) == body, "source drift: " + rel)
                require(guard.read_source(source, rel) == body, "frozen source drift: " + rel)
            require(guard.digest(Path(lean)) == receipt["compiler_sha256"], "compiler drift")
            for name, revision in pins.items():
                package = ROOT / ".lake/packages" / name
                require(command("git", "-C", str(package), "rev-parse", "HEAD") == revision,
                        "dependency revision mismatch: " + name)
                require(not command("git", "-C", str(package), "status", "--porcelain", "--untracked-files=no"),
                        "dirty dependency: " + name)
            verify_project_objects(receipt["project_object_identities"])
            verify_project_objects(receipt.get("dependency_object_identities", {}))
            if "audit_wrapper_sha256" in receipt:
                require(sha(guard.read_source(source, "SelectedAudit.lean"))
                        == receipt["audit_wrapper_sha256"], "audit wrapper drift")

        def compile_source(rel, output=False, expected=None):
            stable()
            argv = [lean, "-j1", "--trust=0", "--memory=" + str(memory_mib), "-DwarningAsError=true",
                    "--root=" + str(source)]
            obj = None
            if output:
                obj = build / Path(rel).with_suffix(".olean")
                guard.make_directory(obj.parent)
                require(not obj.exists() and not obj.is_symlink(), "compiled output already exists")
                argv += ["-o", str(obj)]
            argv.append(str(source / rel))
            started = time.monotonic()
            try:
                process = subprocess.run(argv, cwd=source, env=env, capture_output=True,
                                         text=True, timeout=600)
                diagnostic = process.stdout + process.stderr
                exit_code = process.returncode
            except subprocess.TimeoutExpired as error:
                captured = lambda value: value.decode(errors="replace") if isinstance(value, bytes) else (value or "")
                diagnostic = captured(error.stdout) + captured(error.stderr) + "\n" + str(error)
                exit_code = None
            guard.write_bytes(run / (str(len(receipt["results"])) + ".log"),
                              diagnostic.encode(), exclusive=True)
            receipt["results"].append({
                "path": rel, "argv": argv, "exit_code": exit_code,
                "seconds": time.monotonic() - started, "output_sha256": sha(diagnostic.encode()),
                "expected_rejection": expected is not None,
            })
            save()
            errors = guard.error_messages(diagnostic)
            if expected is None:
                require(exit_code == 0 and not errors, "Lean rejection: " + rel + "\n" +
                        "\n".join(diagnostic.splitlines()[-25:]))
            else:
                require(exit_code is not None and exit_code > 0 and len(errors) == 1
                        and errors[0].casefold().startswith("type mismatch")
                        and "but is expected to have type" in diagnostic
                        and all(fragment in diagnostic for fragment in expected),
                        "control did not reject at the intended type: " + rel + "\n" + diagnostic)
            if obj is not None:
                receipt["project_object_identities"][rel] = object_family(obj)
            stable()
            receipt["selected_checks"][rel] = "passed"
            save()
            print(rel + (" INTENDED REJECTION" if expected is not None else " PASSED"), flush=True)
            return diagnostic

        save()
        stable()
        for rel in library_order:
            compile_source(rel, output=True)
        for rel in POSITIVE:
            compile_source(rel, output=True)
        modules = [Path(rel).with_suffix("").as_posix().replace("/", ".") for rel in library_order + POSITIVE]
        owner_hashes = {module: receipt["source_hashes"][rel]
                        for module, rel in zip(modules, library_order + POSITIVE)}
        audit_body, profile = guard.owned_audit_protocol.wrapper_body(
            frozen_bytes[AUDIT], "project", owner_hashes)
        runtime_profiles = guard.owned_audit_protocol.runtime_profiles(frozen_bytes[AUDIT], "project")
        imports = ["import " + Path(rel).with_suffix("").as_posix().replace("/", ".")
                   for rel in library_order + POSITIVE]
        wrapper = "\n".join(imports + ["import Lean", "import Lean.Compiler.Old", audit_body, ""])
        guard.write_bytes(source / "SelectedAudit.lean", wrapper.encode(), exclusive=True, readonly=True)
        receipt["audit_wrapper_sha256"] = sha(wrapper.encode())
        receipt["audit_source_profile"] = profile
        diagnostic = compile_source("SelectedAudit.lean")
        declarations, owners = guard.owned_audit_protocol.validate_census(
            diagnostic, modules, owner_hashes, runtime_profiles, guard.census_records)
        require(all(declaration["mathematical_admission"] for declaration in declarations),
                "non-admitted declaration")
        receipt["declarations"], receipt["modules"] = declarations, owners
        receipt["dependency_object_identities"] = guard.dependency_object_identities(diagnostic, paths, lean)
        save()
        for rel, expected in NEGATIVE:
            compile_source(rel, expected=expected)
        stable()
        receipt["outcome"] = "passed"
        receipt["mathematical_outcomes"] = ["SOURCE_THEOREM_1_3_CHECKED"]
        receipt["theorem_13_checked"] = True
        receipt["positive_consumers_passed"] = len(POSITIVE)
        receipt["intended_negative_rejections_passed"] = len(NEGATIVE)
        save()
        if destination:
            guard.write_bytes(destination, (json.dumps(receipt, indent=2) + "\n").encode(), exclusive=True)
        print(json.dumps({"outcome": "passed", "declarations": len(declarations),
                          "receipt": str(destination or run / "receipt.json")}), flush=True)
        return 0
    except Exception as error:
        receipt["outcome"], receipt["failure"] = "failed", str(error)
        save()
        raise


if __name__ == "__main__":
    raise SystemExit(main())
