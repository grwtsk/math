#!/usr/bin/env python3
"""Build the navigable evidence catalog without interpreting mathematical claims."""
from __future__ import annotations

import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
EVIDENCE = ROOT / '.noeaaeue/evidence'


def classify(path: Path) -> str:
    rel = path.relative_to(EVIDENCE).as_posix()
    if rel.startswith("archive/"):
        return "archive-only"
    if rel.startswith("policy-inputs/"):
        return "policy-input"
    if rel.startswith(("Analysis/", "NumberTheory/")) or rel.endswith("-checks.json"):
        return "scoped-check"
    if rel.startswith("citation-"):
        return "claim-projection"
    if "manifest" in path.name or rel.startswith("source-"):
        return "provenance"
    if any(token in path.name for token in ("consolidation", "conformance", "intake", "pickup", "diagnostic", "failure")):
        return "historical-diagnostic"
    return "registry-record"


def main() -> None:
    records = []
    for path in sorted(p for p in EVIDENCE.rglob("*") if p.is_file() and p.name != "catalog.json"):
        rel = path.relative_to(ROOT).as_posix()
        item = {
            "path": rel,
            "class": classify(path),
            "bytes": path.stat().st_size,
            "sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
        }
        if path.suffix == ".json":
            try:
                value = json.loads(path.read_text())
                item["parse"] = "ok"
                if isinstance(value, dict):
                    item["status"] = value.get("status")
                    item["claim_limit"] = value.get("claim_limit")
                    item["scope"] = value.get("scope")
            except Exception as exc:  # catalog the failure; do not hide it
                item["parse"] = "error"
                item["parse_error"] = str(exc)
        else:
            item["parse"] = "not-json"
        records.append(item)
    output = {
        "schema": "evidence-catalog/v1",
        "generated_from": ".noeaaeue/evidence/",
        "review_rule": "A record is not an admission without readable source bindings and an explicit execution status.",
        "record_count": len(records),
        "records": records,
    }
    (EVIDENCE / "catalog.json").write_text(json.dumps(output, indent=2, sort_keys=True) + "\n")


if __name__ == "__main__":
    main()
