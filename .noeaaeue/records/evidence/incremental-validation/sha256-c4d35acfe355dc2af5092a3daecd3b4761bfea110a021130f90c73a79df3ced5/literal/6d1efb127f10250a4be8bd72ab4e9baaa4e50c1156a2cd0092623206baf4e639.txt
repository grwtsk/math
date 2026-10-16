"""Manifest-bound generic gauge interface, equation, proof and hostile checks."""

from __future__ import annotations

import hashlib
import json
import os
from pathlib import Path
import subprocess


ROOT = Path(__file__).resolve().parents[2]
LAYOUT = ROOT / ".noeaaeue/documentation/math-layout.json"
AUDIT = "GRWTSK/Algebra/OrderedProduct/Conjugation/Checks/Audit.lean"
POSITIVE = "GRWTSK/Algebra/OrderedProduct/Conjugation/Checks/Positive/ExactGaugeContracts.lean"
NEGATIVE = {
    "MissingClosedPath": {
        "path": "GRWTSK/Algebra/OrderedProduct/Conjugation/Checks/Negative/MissingClosedPath.lean",
        "fragments": (
            "chart_loop_identity p H n k",
            "p (n + k) = p n",
            "but is expected to have type",
        ),
    },
    "ShiftedEndpoint": {
        "path": "GRWTSK/Algebra/OrderedProduct/Conjugation/Checks/Negative/ShiftedEndpoint.lean",
        "fragments": (
            "orderedProduct_forwardGauge A H n k",
            "H (n + k + 1)",
            "but is expected to have type",
        ),
    },
    "StrongerGroup": {
        "path": "GRWTSK/Algebra/OrderedProduct/Conjugation/Checks/Negative/StrongerGroup.lean",
        "fragments": (
            "error(lean.synthInstanceFailed)",
            "failed to synthesize instance of type class",
            "Group",
        ),
    },
}
EXPECTED_ROLES = {
    "GRWTSK/Algebra/OrderedProduct.lean": "library",
    "GRWTSK/Algebra/OrderedProductGauge.lean": "library",
    AUDIT: "audit-driver",
    POSITIVE: "positive-check",
    **{control["path"]: "negative-control" for control in NEGATIVE.values()},
}


def require(condition: bool, message: str) -> None:
    if not condition:
        raise RuntimeError(message)


def current_source_bindings() -> dict[str, str]:
    layout = json.loads(LAYOUT.read_text())
    entries = layout.get("active_sources")
    require(isinstance(entries, list), "authoritative layout has no active source inventory")
    by_path: dict[str, dict[str, object]] = {}
    for entry in entries:
        require(isinstance(entry, dict) and isinstance(entry.get("path"), str),
                "malformed authoritative layout entry")
        path = entry["path"]
        require(path not in by_path, "duplicate authoritative layout entry: " + path)
        by_path[path] = entry
    bindings: dict[str, str] = {}
    for relative, role in EXPECTED_ROLES.items():
        entry = by_path.get(relative)
        require(entry is not None, "gauge source omitted from authoritative layout: " + relative)
        require(entry.get("target_path") == relative,
                "noncanonical gauge target in authoritative layout: " + relative)
        require(entry.get("source_role") == role,
                "gauge role drift in authoritative layout: " + relative)
        expected = entry.get("sha256")
        require(isinstance(expected, str) and len(expected) == 64,
                "invalid gauge source digest in authoritative layout: " + relative)
        source = ROOT / relative
        require(source.is_file() and not source.is_symlink(),
                "invalid gauge source filesystem entry: " + relative)
        observed = hashlib.sha256(source.read_bytes()).hexdigest()
        require(observed == expected, "invalidated current gauge source: " + relative)
        bindings[relative] = expected
    return bindings


def run_lean(lean: str, lean_env: dict[str, str], relative: str) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        ["lake", "env", lean, "-j2", "--trust=0", "-DwarningAsError=true", relative],
        cwd=ROOT,
        env=lean_env,
        capture_output=True,
        text=True,
        timeout=600,
    )


def combined_output(result: subprocess.CompletedProcess[str]) -> str:
    return (result.stdout + result.stderr).replace(str(ROOT), "<project>")


def main() -> None:
    bindings = current_source_bindings()
    layout_check = subprocess.run(
        ["python3", "-B", ".noeaaeue/scripts/check_math_layout.py"],
        cwd=ROOT,
        capture_output=True,
        text=True,
        timeout=120,
    )
    require(layout_check.returncode == 0,
            "authoritative layout validation failed:\n" + combined_output(layout_check))

    lean = subprocess.check_output(["elan", "which", "lean"], cwd=ROOT, text=True).strip()
    version = subprocess.check_output([lean, "--version"], text=True)
    require("4.33.0" in version and "d8b18978322de05a8f3dba51ef03cf5461676c17" in version,
            "invalidated compiler identity")
    lean_env = os.environ.copy()
    lean_env.pop("LEAN_PATH", None)
    lean_env.pop("LEAN_SRC_PATH", None)

    audit = run_lean(lean, lean_env, AUDIT)
    audit_output = combined_output(audit)
    require(
        audit.returncode == 0
        and audit_output.count("ORDERED_GAUGE_DECL::") == 13
        and audit_output.count("ORDERED_GAUGE_EQUATION::") == 3
        and audit_output.count("ORDERED_GAUGE_ORIGINAL_REUSE::") == 6
        and audit_output.count("ORDERED_GAUGE_SYNTHETIC_REUSE::") == 2,
        "gauge audit outcome mismatch:\n" + audit_output,
    )
    print(json.dumps({
        "status": "GAUGE_INTERFACE_EQUATIONS_AND_PROOF_DEPENDENCIES_CHECKED",
        "source_roots": 10,
        "logical_records": 13,
        "original_intra_family_proof_roles": 4,
        "synthetic_public_wrappers": 2,
        "source_sha256": bindings["GRWTSK/Algebra/OrderedProductGauge.lean"],
        "binding": ".noeaaeue/documentation/math-layout.json active_sources exact current bytes and roles",
        "admission": "LOCAL_CANDIDATE",
    }, sort_keys=True))
    print(audit_output)

    positive = run_lean(lean, lean_env, POSITIVE)
    require(positive.returncode == 0,
            "gauge positive control failed:\n" + combined_output(positive))
    print("ORDERED_GAUGE_CONTROL::ExactGaugeContracts::PASSED")

    for name, contract in NEGATIVE.items():
        result = run_lean(lean, lean_env, contract["path"])
        output = combined_output(result)
        require(result.returncode != 0, "gauge negative control unexpectedly compiled: " + name)
        require(all(fragment in output for fragment in contract["fragments"]),
                "gauge negative control failed for the wrong reason: " + name + "\n" + output)
        print("ORDERED_GAUGE_CONTROL::" + name + "::REJECTED_CONTRACT_DRIFT")


if __name__ == "__main__":
    main()
