"""Replay the exact RH target cell from public source with a native declaration audit."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile
import time
from rh_target_oracle import validate_negative_result, validate_positive_audit

ROOT = Path(__file__).resolve().parents[2]
MODULES = [
    "GRWTSK/Analysis/Complex/CriticalReflection.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/Hypothesis.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/ZeroExclusions.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/DefectCriterion.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann.lean",
]
CHECKS = [
    "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Declarations.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/ExcludedTrivialZero.lean",
    "GRWTSK/Logic/Counterexamples/Checks/Positive/PositivityIsNotVanishing.lean",
]
(ROOT / '.noeaaeue/.local').mkdir(parents=True, exist_ok=True)
RUN = Path(tempfile.mkdtemp(prefix="rh-target-", dir=ROOT / '.noeaaeue/.local'))
BUILD = RUN / "build"
BUILD.mkdir()
SOURCE_ROOT = RUN / "source"
SOURCE_ROOT.mkdir()
INPUTS = MODULES + CHECKS + [".noeaaeue/scripts/check_rh_target.py", ".noeaaeue/scripts/rh_target_oracle.py", "lean-toolchain", "lakefile.toml", "lake-manifest.json"]
INPUT_BYTES = {}
for name in INPUTS:
    original = ROOT/name
    if any(part.is_symlink() for part in [original, *original.parents]):
        raise RuntimeError("symlink in RH replay input: " + name)
    raw = original.read_bytes()
    INPUT_BYTES[name] = raw
    target = SOURCE_ROOT/name
    target.parent.mkdir(parents=True, exist_ok=True)
    with target.open('xb') as frozen:
        frozen.write(raw)
    target.chmod(0o400)
lean = subprocess.check_output(["elan", "which", "lean"], cwd=ROOT, text=True).strip()
lean_version = subprocess.check_output([lean, "--version"], text=True).strip()
if "4.33.0" not in lean_version:
    raise RuntimeError("the selected Lean version must match lean-toolchain")
cache = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"], cwd=ROOT, text=True).strip()
env = dict(os.environ, LEAN_PATH=str(BUILD) + os.pathsep + cache)
results = []
declarations = []


def run(source, expected_failure=False, compile_module=False):
    path = SOURCE_ROOT / source
    if path.is_symlink() or not path.is_file():
        raise RuntimeError("a replay input must be a regular public source file: " + source)
    source_bytes = path.read_bytes()
    source_hash = hashlib.sha256(source_bytes).hexdigest()
    argv = [lean, "--trust=0", "--memory=4096", "--threads=1", "-DwarningAsError=true"]
    if expected_failure:
        argv.append("--json")
    argv.append("--root=" + str(SOURCE_ROOT))
    if compile_module:
        output = BUILD / Path(source).with_suffix(".olean")
        output.parent.mkdir(parents=True, exist_ok=True)
        argv += ["-o", str(output)]
    argv += [str(path)]
    start = time.monotonic()
    try:
        process = subprocess.run(argv, cwd=ROOT, env=env, capture_output=True, text=True, timeout=600)
    except subprocess.TimeoutExpired:
        results.append({"source": source, "source_sha256": source_hash,
                        "expected_rejection": expected_failure, "outcome": "timed-out",
                        "seconds": time.monotonic() - start})
        raise
    output = process.stdout + process.stderr
    passed = process.returncode != 0 if expected_failure else process.returncode == 0
    passed = passed and hashlib.sha256(path.read_bytes()).hexdigest() == source_hash
    negative_validation = None
    negative_error = None
    if expected_failure:
        try:
            negative_validation = validate_negative_result(
                source, path, source_bytes, process.returncode,
                process.stdout, process.stderr)
        except ValueError as error:
            negative_error = str(error)
            passed = False
    record = {"source": source, "source_sha256": source_hash,
                    "exit_code": process.returncode, "expected_rejection": expected_failure,
                    "outcome": "passed" if passed else "failed", "seconds": time.monotonic() - start,
                    "output": output.replace(str(ROOT) + "/", "")}
    if expected_failure:
        record["negative_validation"] = negative_validation
        record["negative_validation_error"] = negative_error
    results.append(record)
    print(source, process.returncode, flush=True)
    if not passed:
        raise RuntimeError(results[-1])
    return output


try:
    for module in MODULES:
        run(module, compile_module=True)
    audit = run(CHECKS[0])
    declarations = validate_positive_audit(audit)
    for check in CHECKS[1:]:
        run(check, expected_failure=True)
finally:
    inputs_current = all((ROOT/name).is_file() and not (ROOT/name).is_symlink()
                         and (ROOT/name).read_bytes() == raw for name, raw in INPUT_BYTES.items())
    frozen_current = all((SOURCE_ROOT/name).read_bytes() == raw for name, raw in INPUT_BYTES.items())
    report = {
        "schema_version": 1, "cell": "RH-01-exact-target-and-zero-symmetry",
        "outcome": "passed" if inputs_current and frozen_current and len(results) == len(MODULES)+len(CHECKS) and all(r["outcome"] == "passed" for r in results) else "failed",
        "target": "_root_.RiemannHypothesis", "rh_proved": False,
        "scope": "Exact target comparator, defect equivalence, nontrivial-zero domain and zero symmetries; no unconditional RH proof.",
        "lean_version": lean_version,
        "lean_binary_sha256": hashlib.sha256(Path(lean).read_bytes()).hexdigest(),
        "dependency_revisions": {p["name"]: p["rev"] for p in json.loads((ROOT / "lake-manifest.json").read_text())["packages"]},
        "trust_profile": {"trust_level": 0, "allowed_axioms": ["propext", "Classical.choice", "Quot.sound"],
                          "source": "Selected project modules freshly elaborated; pinned dependency objects kernel-checked."},
        "files": {name: hashlib.sha256(raw).hexdigest() for name, raw in INPUT_BYTES.items()},
        "inputs_still_current": inputs_current, "frozen_inputs_unchanged": frozen_current,
        "declarations": sorted(declarations, key=lambda d: d["name"]), "checks": results,
    }
    with (RUN / "receipt.json").open("x", encoding="utf-8") as output:
        output.write(json.dumps(report, indent=2) + "\n")
print(json.dumps({"cell": report["cell"], "outcome": report["outcome"], "declarations": len(declarations), "checks": len(results)}))
if report['outcome'] != 'passed':
    raise SystemExit(1)
