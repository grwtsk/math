#!/usr/bin/env python3
"""Replay additive-triple targets, oriented-line transport and finite degree sums from frozen source bytes.

Pinned dependency objects are reused; this is not a Mathlib source rebuild,
whole-repository admission, independent review, or a proof of integer abc.
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
import subprocess
import tempfile
import time

from selected_incremental import (SelectedReplayCache, SelectedCompilerDiscovery,
                                  freeze_incremental_policy)

ROOT = Path(__file__).resolve().parents[2]
LIBRARY = ['GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/EquivalentForms.lean', 'GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean', 'GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean', 'GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/PartialBounds.lean', 'GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/NonprimitiveObstruction.lean', 'GRWTSK/LinearAlgebra/OrientedRealLine/Coherence.lean', 'GRWTSK/LinearAlgebra/OrientedRealLine/FiniteComparison.lean', 'GRWTSK/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean', 'GRWTSK/Analysis/FiniteSums/WeightedDegreeComparison.lean', 'GRWTSK/NumberTheory/Polynomial/DerivativeRadicalBound.lean']
POSITIVE = ['GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Positive/TargetPackage.lean', 'GRWTSK/LinearAlgebra/OrientedRealLine/Checks/Positive/Transport.lean', 'GRWTSK/Analysis/FiniteSums/Checks/Positive/WeightedDegreeComparison.lean', 'GRWTSK/NumberTheory/Polynomial/Checks/Positive/DerivativeRadicalBound.lean']
NEGATIVE = [('GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/FixedEpsilon.lean', 'ABCBound 1'), ('GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/ExistentialEpsilon.lean', '∃ ε'), ('GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/ProductForRadical.lean', '∃ K'), ('GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/FiniteHeight.lean', '100'), ('GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/MissingSquarefree.lean', 'Squarefree'), ('GRWTSK/LinearAlgebra/OrientedRealLine/Checks/Negative/MissingCycleCommutativity.lean', 'cycle_scale'), ('GRWTSK/LinearAlgebra/OrientedRealLine/Checks/Negative/SomeNormalizationToAll.lean', '∃ f ∈ P'), ('GRWTSK/Analysis/FiniteSums/Checks/Negative/DeletedSquareWeight.lean', 'weighted_eq'), ('GRWTSK/NumberTheory/Polynomial/Checks/Negative/IntegerTransfer.lean', 'Polynomial.abc')]
AUDIT = "GRWTSK/Logic/ProofChecking/Checks/OwnedDeclarationAudit.lean"


def require(value, message):
    if not value:
        raise RuntimeError(message)


def sha(data):
    return hashlib.sha256(data).hexdigest()


_compiler_discovery = SelectedCompilerDiscovery()


def command(*args):
    return _compiler_discovery.command(args, cwd=ROOT)


def main():
    _compiler_discovery.reset()
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--receipt", help="absent repository-relative durable JSON destination")
    parser.add_argument("--cold", action="store_true",
                        help="recompile and revalidate every selected module without cache reuse")
    args = parser.parse_args()
    destination = None
    if args.receipt:
        relative = Path(args.receipt)
        require(not relative.is_absolute() and ".." not in relative.parts
                and relative.parts[:4] == (".noeaaeue", "evidence", "NumberTheory", "Diophantine")
                and relative.suffix == ".json", "invalid receipt destination")
        destination = ROOT / relative
        require(not destination.exists() and not destination.is_symlink(), "receipt already exists")
    spec = importlib.util.spec_from_file_location("math_guard", ROOT / ".noeaaeue/scripts/check_math_trust.py")
    guard = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(guard)
    lock_path = ROOT / ".noeaaeue/.local/math-trust/replay.lock"
    lock_path.parent.mkdir(parents=True, exist_ok=True)
    with lock_path.open("a+") as lock:
        try:
            fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError:
            print("DEFERRED: another native replay holds the shared lock", flush=True)
            return 2
        require(not guard.competing_jobs(ROOT), "native replay busy")
        return replay(guard, destination, cold=args.cold)


def replay(guard, destination, cold=False):
    _compiler_discovery.reset()
    require((ROOT / "lean-toolchain").read_text().strip() == "leanprover/lean4:v4.33.0",
            "Lean pin mismatch")
    pins = {p["name"]: p["rev"] for p in json.loads((ROOT / "lake-manifest.json").read_text())["packages"]}
    require(pins["mathlib"] == guard.MATHLIB_REV, "Mathlib pin mismatch")
    lean = str(Path(command("elan", "which", "lean")).resolve())
    version = command(lean, "--version")
    require(guard.LEAN_VERSION in version and guard.LEAN_COMMIT in version, "compiler mismatch")
    frozen_bytes, order = {}, []

    def visit(rel):
        if rel in frozen_bytes:
            return
        body = guard.read_source(ROOT, rel)
        frozen_bytes[rel] = body
        for module in re.findall(r"^import (GRWTSK[.\w]+)\s*$", body.decode(), re.M):
            visit(module.replace(".", "/") + ".lean")
        order.append(rel)

    for rel in LIBRARY:
        visit(rel)
    library_order = list(order)
    for rel in POSITIVE + [p for p, _ in NEGATIVE]:
        frozen_bytes[rel] = guard.read_source(ROOT, rel)
    for rel in [AUDIT, ".noeaaeue/evidence/NumberTheory/Diophantine/PrimitiveAdditiveTriples/abc-campaign.json", ".noeaaeue/scripts/check_additive_triple_transport.py", ".noeaaeue/scripts/check_math_trust.py",
                "lean-toolchain", "lakefile.toml", "lake-manifest.json"]:
        frozen_bytes[rel] = guard.read_source(ROOT, rel)
    campaign = json.loads(frozen_bytes[".noeaaeue/evidence/NumberTheory/Diophantine/PrimitiveAdditiveTriples/abc-campaign.json"])
    for rel, expected_hash in campaign["canonical_abc_target"]["local_definition_closure_sha256"].items():
        require(rel in frozen_bytes and sha(frozen_bytes[rel]) == expected_hash,
                "frozen target definition drift: " + rel)
    base = ROOT / ".noeaaeue/.local/additive-triple-transport-replay"
    base.mkdir(parents=True, exist_ok=True)
    run = Path(tempfile.mkdtemp(prefix="replay-", dir=base))
    source, build = run / "source", run / "build"
    source.mkdir()
    build.mkdir()
    freeze_incremental_policy(guard, ROOT, frozen_bytes)
    for rel, body in frozen_bytes.items():
        path = source / rel
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(body)
        path.chmod(0o444)
    paths, removed = guard.dependency_search_path(command("lake", "env", "printenv", "LEAN_PATH"), ROOT, lean)
    require(paths, "no dependency paths")
    env = dict(os.environ, LEAN_PATH=os.pathsep.join([str(build)] + paths))
    env.pop("LEAN_SRC_PATH", None)
    receipt = {
        "schema": "additive-triple-transport-selected-replay-v1", "outcome": "running",
        "at": datetime.datetime.now(datetime.timezone.utc).isoformat(),
        "head_observed": command("git", "rev-parse", "HEAD"),
        "source_hashes": {rel: sha(body) for rel, body in frozen_bytes.items()},
        "compiler_sha256": sha(Path(lean).read_bytes()), "lean_version": version,
        "pins": pins,
        "library_order": library_order, "trust": 0, "fatal_warnings": True,
        "canonical_project_objects_excluded": True, "dependency_objects_reused": True,
        "full_repository_build": False, "mathlib_source_rebuild": False,
        "independent_review": False, "abc_proved": False,
        "allowed_axioms": sorted(guard.ALLOWED_AXIOMS),
        "dependency_search_paths": paths, "removed_project_search_paths": removed,
        "dependency_cache_policy": (
            "Existing objects from pinned clean dependency checkouts are reused and "
            "kernel-checked by Lean at trust zero. Every imported dependency object's "
            "resolved .olean family is fingerprinted after the owned-declaration audit "
            "and checked again before acceptance; dependency sources are not rebuilt."),
        "scope": (
            "Only the selected additive-triple and transport modules and their complete local import "
            "closure are validated from immutable source copies with explicit fresh or cached compilation provenance. Positive "
            "consumers and intended type-rejection controls are checked separately; "
            "all owned declarations and transitive axioms in that library closure are "
            "audited. No application to IUT, integer abc proof, whole-library "
            "acceptance, cold dependency rebuild, or independent review is claimed."),
        "results": [], "selected_checks": {},
    }

    def save():
        (run / "receipt.json").write_text(json.dumps(receipt, indent=2) + "\n")

    def stable():
        for rel, body in frozen_bytes.items():
            require(guard.read_source(ROOT, rel) == body, "source drift: " + rel)
            require((source / rel).read_bytes() == body, "frozen source drift: " + rel)
        require(sha(Path(lean).read_bytes()) == receipt["compiler_sha256"], "compiler drift")
        for name, revision in pins.items():
            package = ROOT / ".lake/packages" / name
            require(command("git", "-C", str(package), "rev-parse", "HEAD") == revision,
                    "dependency revision mismatch: " + name)
            require(not command("git", "-C", str(package), "status", "--porcelain", "--untracked-files=no"),
                    "dirty dependency: " + name)
        for family in receipt.get("dependency_object_identities", {}).values():
            for identity in family:
                obj = Path(identity["path"])
                require(obj.is_file() and obj.stat().st_size == identity["bytes"]
                        and guard.digest(obj) == identity["sha256"],
                        "dependency object drift: " + str(obj))
        if "audit_wrapper_sha256" in receipt:
            require(sha((source / "SelectedAudit.lean").read_bytes())
                    == receipt["audit_wrapper_sha256"], "audit wrapper drift")

    incremental = SelectedReplayCache(
        ROOT, guard, source, build, frozen_bytes, paths, lean, receipt, cold=cold,
        runtime_guard=_compiler_discovery.require_guard(lean))

    def compile_source(rel, output=False, expected=None):
        stable()
        argv = [lean, "-j1", "--trust=0", "--memory=4096", "-DwarningAsError=true", "--root=" + str(source)]
        if output:
            obj = build / Path(rel).with_suffix(".olean")
            obj.parent.mkdir(parents=True, exist_ok=True)
            argv += ["-o", str(obj)]
        argv.append(str(source / rel))
        started = time.monotonic()
        process = incremental.run(rel, argv=argv, cwd=source, env=env, output=output, expected=expected, timeout=600)
        diagnostic = process.stdout + process.stderr
        (run / (str(len(receipt["results"])) + ".log")).write_text(diagnostic)
        receipt["results"].append({"path": rel, "argv": argv, "exit_code": process.returncode,
                                  "seconds": time.monotonic() - started,
                                  "output_sha256": sha(diagnostic.encode()), "expected_rejection": expected is not None})
        incremental.annotate_result(receipt["results"][-1])
        save()
        if expected is None:
            require(process.returncode == 0, "Lean rejection: " + rel + "\n" +
                    "\n".join(diagnostic.splitlines()[-25:]))
        else:
            require(process.returncode != 0 and diagnostic.count("error:") == 1
                    and "type mismatch" in diagnostic.casefold() and expected in diagnostic
                    and "but is expected to have type" in diagnostic,
                    "control did not reject at the intended type: " + rel + "\n" + diagnostic)
        print(rel + (" INTENDED REJECTION" if expected else " PASSED"), flush=True)
        receipt["selected_checks"][rel] = "passed"
        return diagnostic

    save()
    print("RUN " + str(run), flush=True)
    try:
        stable()
        for rel in library_order:
            compile_source(rel, output=True)
        for rel in POSITIVE:
            compile_source(rel)
        audit_body = frozen_bytes[AUDIT].decode()
        audit_body = "\n".join(line for line in audit_body.splitlines() if not line.startswith("import "))
        imports = ["import " + Path(rel).with_suffix("").as_posix().replace("/", ".") for rel in library_order]
        wrapper = "\n".join(imports + ["import Lean", "import Lean.Compiler.Old", audit_body, ""])
        (source / "SelectedAudit.lean").write_text(wrapper)
        (source / "SelectedAudit.lean").chmod(0o444)
        receipt["audit_wrapper_sha256"] = sha(wrapper.encode())
        diagnostic = compile_source("SelectedAudit.lean")
        modules = [Path(rel).with_suffix("").as_posix().replace("/", ".") for rel in library_order]
        declarations, owners = guard.parse_census(diagnostic, modules)
        require(all(d["mathematical_admission"] for d in declarations), "non-admitted declaration")
        receipt["declarations"], receipt["modules"] = declarations, owners
        receipt["dependency_object_identities"] = guard.dependency_object_identities(
            diagnostic, paths, lean)
        save()
        for rel, expected in NEGATIVE:
            compile_source(rel, expected=expected)
        stable()
        incremental.accept()
        receipt["outcome"] = "passed"
        receipt["mathematical_outcomes"] = ["PARTIAL_ABC_RESULT_CHECKED"]
        receipt["overall_status"] = "OPEN_FRONTIER"
        save()
        if destination:
            destination.parent.mkdir(parents=True, exist_ok=True)
            with destination.open("x") as stream:
                stream.write(json.dumps(receipt, indent=2) + "\n")
        print(json.dumps({"outcome": "passed", "declarations": len(declarations),
                          "receipt": str(destination or run / "receipt.json")}), flush=True)
        return 0
    except Exception as error:
        if "incremental" in locals():
            incremental.close()
        receipt["outcome"], receipt["failure"] = "failed", str(error)
        save()
        raise


if __name__ == "__main__":
    raise SystemExit(main())
