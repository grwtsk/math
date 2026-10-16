"""Exact current source-role observations, explicitly separate from acceptance.

Validation never updates this input. Historical intake/catalog bytes are pinned
and retained; changed candidates remain candidates. Additional pending sources
must be outside the actual public entry-point closure, together with validation
consumers that import them. The future taxonomy proposal is historical data.
"""
import argparse
import hashlib
import json
import re
from pathlib import Path, PurePosixPath

PATH = ".noeaaeue/bindings/current-source-observations.json"
INTAKE = ".noeaaeue/evidence/source-intake.json"
CATALOG = ".noeaaeue/documentation/math-layout.json"
POLICY = ".noeaaeue/documentation/reference/taxonomy/tree-policy-v1.json"
ORACLE = ".noeaaeue/scripts/rh_target_oracle.py"
SCHEMA = "current-source-observations-v1"
STATUS = "OBSERVED_CURRENT_SOURCES_NOT_THEOREM_ACCEPTANCE"
_NEGATIVES = {
    "GRWTSK/Logic/Counterexamples/Checks/Positive/PositivityIsNotVanishing.lean":
        ("checks/Logic/Counterexamples/PositivityIsNotVanishing.lean", "747a51d3c83e2ba94808f76c2b35b2130b4f23cb84f8f4722351c24003e0a219"),
    "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/ExcludedTrivialZero.lean":
        ("checks/NumberTheory/Zeta/Riemann/ExcludedTrivialZero.lean", "6e54ec9ddb515e9a2a428c0fb61ba050d64b53a895c74cd34c4fb1260f97b2ae"),
}


def encoded(value):
    return (json.dumps(value, sort_keys=True, separators=(",", ":"), ensure_ascii=True) + "\n").encode()


def digest(data):
    return hashlib.sha256(data).hexdigest()


def module_name(path):
    return str(PurePosixPath(path).with_suffix("")).replace("/", ".")


def exists(root):
    path = Path(root) / PATH
    return path.exists() or path.is_symlink()


def observe(root, reader, paths, role, imports):
    """Derive an unaccepted readset without writing any source or directory."""
    root = Path(root)
    inputs, raw_inputs = {}, {}
    for name in (INTAKE, CATALOG, POLICY, ORACLE):
        try:
            raw = reader(root, name)
        except (OSError, ValueError, RuntimeError):
            if name in (INTAKE, CATALOG):
                raise
            continue
        raw_inputs[name] = raw
        inputs[name] = {"sha256": digest(raw), "bytes": len(raw)}
    intake = json.loads(raw_inputs[INTAKE])
    if (intake.get("schema") != "mathematical-source-intake-v1"
            or intake.get("status") != "CANDIDATE_SOURCE_INTAKE_NOT_THEOREM_ACCEPTANCE"
            or not isinstance(intake.get("sources"), list)
            or intake.get("source_count") != len(intake["sources"])):
        raise RuntimeError("invalid historical candidate intake contract")
    historical_candidates = {}
    for row in intake["sources"]:
        name = row.get("path") if isinstance(row, dict) else None
        if (not isinstance(name, str) or name in historical_candidates or
                not name.startswith("GRWTSK/") or not name.endswith(".lean") or
                ".." in PurePosixPath(name).parts or row.get("status") != "CANDIDATE_SOURCE_ONLY" or
                row.get("mathematical_admission") is not False or row.get("public_release_eligible") is not False):
            raise RuntimeError("historical candidate membership/admission contract changed")
        if (not isinstance(row.get("sha256"), str) or re.fullmatch(r"[0-9a-f]{64}", row["sha256"]) is None
                or type(row.get("bytes")) is not int or row["bytes"] < 0):
            raise RuntimeError("historical candidate source digest/size contract is malformed")
        historical_candidates[name] = row
    catalog = json.loads(raw_inputs[CATALOG])
    active_catalog = {row["path"]: row for row in catalog["active_sources"]}
    candidate_catalog = {row["path"]: row for row in catalog.get("candidate_sources", [])}
    if len(active_catalog) != len(catalog["active_sources"]) or len(candidate_catalog) != len(catalog.get("candidate_sources", [])):
        raise RuntimeError("historical source catalog has duplicate identities")
    present, deleted, graph = {}, [], {}
    selected = sorted({p for p in paths if p == "GRWTSK.lean" or p.startswith("GRWTSK/") and p.endswith(".lean")})
    for name in selected:
        try:
            data = reader(root, name)
        except (OSError, ValueError, RuntimeError):
            path = root / name
            if path.exists() or path.is_symlink():
                raise
            # Deleted tracked files remain explicitly part of the observation.
            deleted.append(name)
            continue
        physical_role = role(name)
        semantic_role, alias = physical_role, None
        if name in _NEGATIVES:
            historical, expected_hash = _NEGATIVES[name]
            if digest(data) != expected_hash or ORACLE not in inputs:
                raise RuntimeError("qualified historical negative role source differs: " + name)
            semantic_role = "negative-control"
            alias = {"historical_profile": historical, "sha256": expected_hash,
                     "oracle": ORACLE, "oracle_sha256": inputs[ORACLE]["sha256"]}
        present[name] = {"path": name, "sha256": digest(data), "bytes": len(data),
            "physical_role": physical_role, "source_role": semantic_role,
            "qualified_role_alias": alias}
        graph[module_name(name)] = [m for m, _ in imports(data.decode()) if m == "GRWTSK" or m.startswith("GRWTSK.")]
    if "GRWTSK.lean" not in present:
        raise RuntimeError("current observations require the actual Lean library entry point")
    if set(historical_candidates) - set(present):
        raise RuntimeError("historical candidate source is missing from current readset")
    reachable, pending = set(), ["GRWTSK"]
    while pending:
        name = pending.pop()
        if name in reachable or name not in graph:
            continue
        reachable.add(name)
        pending.extend(graph[name])
    candidates = set(historical_candidates)
    reasons = {name: "historical-candidate-membership-retained" for name in candidates}
    for name, row in present.items():
        if row["physical_role"] == "library" and module_name(name) not in reachable and name not in candidates:
            candidates.add(name)
            reasons[name] = "pending-library-source-outside-public-entrypoint-closure"
    changed = True
    while changed:
        changed = False
        candidate_modules = {module_name(name) for name in candidates}
        for name, row in present.items():
            if name not in candidates and row["physical_role"] != "library" and set(graph[module_name(name)]) & candidate_modules:
                candidates.add(name)
                reasons[name] = "pending-validation-consumer-of-candidate-source"
                changed = True
    exported_candidates = sorted(name for name in candidates if module_name(name) in reachable)
    if exported_candidates:
        raise RuntimeError("public entrypoint imports candidate-only source: " + ", ".join(exported_candidates))
    findings, rows = [], []
    for name in sorted(present):
        current = present[name]
        historical_intake = historical_candidates.get(name)
        historical_catalog = (candidate_catalog if historical_intake else active_catalog).get(name)
        for label, historical in (("intake", historical_intake), ("catalog", historical_catalog)):
            if historical is not None and historical.get("sha256") != current["sha256"]:
                findings.append({"path": name, "code": "historical-" + label + "-source-hash-stale",
                    "historical_sha256": historical.get("sha256"), "observed_sha256": current["sha256"],
                    "acceptance_inherited": False})
        if historical_catalog is None:
            findings.append({"path": name, "code": "absent-from-historical-source-catalog", "acceptance_inherited": False})
        candidate = name in candidates
        row = dict(current, source_set="candidate-evidence" if candidate else "active",
            classification_reason=reasons.get(name, "entrypoint-library-source" if current["physical_role"] == "library" else "subject-local-validation-source"),
            historical_intake_binding=historical_intake, historical_catalog_binding=historical_catalog,
            proof_status="not-replayed", mathematical_admission=False, public_release_eligible=False)
        if current["physical_role"] != "library":
            row["runner"] = {"kind": "source-role-only-not-executed",
                "expected_outcome": {"negative-control": "reject", "positive-check": "compile", "audit-driver": "audit"}.get(current["source_role"], "unclassified"),
                "command_contract": "lake env lean --trust=0 -DwarningAsError=true <source>"}
        rows.append(row)
    for name in sorted(set(active_catalog) - set(present)):
        findings.append({"path": name, "code": "historical-catalog-source-not-present", "acceptance_inherited": False})
    proposal = None
    if POLICY in raw_inputs:
        policy = json.loads(raw_inputs[POLICY])
        current_dirs = sorted({"" if p == root / "GRWTSK" else p.relative_to(root / "GRWTSK").as_posix()
            for p in (root / "GRWTSK").rglob("*") if p.is_dir() and not p.is_symlink()} | {""})
        required = policy.get("required_directories", [])
        proposal = {"path": POLICY, "status": "HISTORICAL_PENDING_PROPOSAL_NOT_CURRENT_TAXONOMY",
            "authority": "Taxonomy evolution deferred to grwtsk/noeaaeue by the human owner.",
            "mathematical_admission": False, "source_role_overrides_allowed": False,
            "required_directory_count": len(required), "observed_directory_count": len(current_dirs),
            "missing_proposed_directories": sorted(set(required) - set(current_dirs)),
            "current_directories_outside_proposal": sorted(set(current_dirs) - set(required)),
            "observed_directories": current_dirs}
    return {"historical_inputs": inputs, "entrypoint": present["GRWTSK.lean"],
        "source_count": len(rows), "sources": rows, "deleted_tracked_paths": deleted,
        "historical_candidate_paths": sorted(historical_candidates),
        "public_entrypoint_closure": sorted(reachable), "historical_findings": findings,
        "pending_taxonomy_proposal": proposal}


def create(root, reader, paths, role, imports):
    result = {"schema": SCHEMA, "status": STATUS, "mathematical_admission": False,
        "public_release_eligible": False, "scope": "Exact current bytes and engineering source roles only; no proof acceptance is inherited.",
        "observation": observe(root, reader, paths, role, imports)}
    result["identity"] = digest(encoded(result))
    return result


def load(root, reader, paths, role, imports):
    if not exists(root):
        return None
    raw = reader(root, PATH)
    document = json.loads(raw)
    identity = document.get("identity")
    payload = dict(document)
    payload.pop("identity", None)
    if identity != digest(encoded(payload)):
        raise RuntimeError("current source observation identity mismatch")
    expected = create(root, reader, paths, role, imports)
    if document != expected:
        actual = document.get("observation", {})
        wanted = expected["observation"]
        if actual.get("historical_inputs") != wanted["historical_inputs"]:
            raise RuntimeError("historical input/policy binding drift in current source observations")
        if actual.get("entrypoint") != wanted["entrypoint"]:
            raise RuntimeError("entrypoint/source drift in current source observations")
        old_rows = {r["path"]: r for r in actual.get("sources", []) if isinstance(r, dict) and isinstance(r.get("path"), str)}
        new_rows = {r["path"]: r for r in wanted["sources"]}
        if set(old_rows) != set(new_rows) or len(old_rows) != len(actual.get("sources", [])):
            raise RuntimeError("current source observation membership omission or drift")
        for name in sorted(new_rows):
            if old_rows[name] != new_rows[name]:
                raise RuntimeError("current source bytes/role/classification drift: " + name)
        raise RuntimeError("current source observation metadata/admission tampering or drift")
    return document


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument("--output", type=Path, required=True, help="New absent explicit observation input; never updated by validation")
    args = parser.parse_args()
    import check_math_layout as layout
    result = create(args.root, layout.read_regular, layout.git_inventory(args.root)["paths"], layout.source_role, layout.imports)
    if args.output.exists() or args.output.is_symlink():
        parser.error("observation destination already exists; preserve its identity and choose a new explicit record")
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"path": str(args.output), "source_count": result["observation"]["source_count"], "identity": result["identity"], "mathematical_admission": False}))


if __name__ == "__main__":
    main()
