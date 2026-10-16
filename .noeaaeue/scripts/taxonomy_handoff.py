#!/usr/bin/env python3
"""Emit a source-bound taxonomy assignment artifact, not a theorem/rights receipt.

Input assignments refer to immutable external audit record IDs. No Lean parsing,
proof admission, automatic classification, network access or Git mutation occurs.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import re
import sys
from pathlib import Path
from taxonomy import ValidationError, canonical_bytes, load_json, normalize

SCHEMA = "math-taxonomy-handoff/v1"
ASSIGNMENTS = "math-taxonomy-assignments/v1"
LIMIT = 16 * 1024 * 1024


def read_input(path: Path) -> bytes:
    if path.is_symlink() or not path.is_file():
        raise ValidationError("input must be a regular non-symlink file")
    with path.open("rb") as stream:
        data = stream.read(LIMIT + 1)
    if len(data) > LIMIT:
        raise ValidationError("input exceeds 16 MiB profile")
    return data


def build(taxonomy_bytes: bytes, assignment_bytes: bytes) -> dict:
    if max(len(taxonomy_bytes), len(assignment_bytes)) > LIMIT:
        raise ValidationError("input exceeds 16 MiB profile")
    norm = normalize(load_json(taxonomy_bytes))
    assignment = load_json(assignment_bytes)
    if set(assignment) != {"schema", "taxonomy_id", "taxonomy_revision", "assignments"}:
        raise ValidationError("closed assignment grammar violated")
    if assignment["schema"] != ASSIGNMENTS:
        raise ValidationError("unsupported assignment schema")
    if (assignment["taxonomy_id"], assignment["taxonomy_revision"]) != (norm["taxonomy_id"], norm["revision"]):
        raise ValidationError("taxonomy identity or revision mismatch")
    paths = {n["original"]["id"]: n["address"] for n in norm["nodes"]}
    rows = assignment["assignments"]
    if not isinstance(rows, list) or len(rows) > 100_000:
        raise ValidationError("assignments must be a bounded list")
    seen = set()
    for row in rows:
        if not isinstance(row, dict) or set(row) != {"record_id", "primary", "secondary", "review", "rationale"}:
            raise ValidationError("closed assignment row grammar violated")
        rid = row["record_id"]
        if not isinstance(rid, str) or re.fullmatch(r"[0-9a-f]{64}", rid) is None or rid in seen:
            raise ValidationError("duplicate or invalid immutable record ID")
        seen.add(rid)
        if not isinstance(row["primary"], str) or row["primary"] not in paths:
            raise ValidationError("primary node does not exist")
        secondary = row["secondary"]
        if not isinstance(secondary, list) or any(not isinstance(x, str) or x not in paths for x in secondary):
            raise ValidationError("secondary node does not exist")
        if len(set(secondary)) != len(secondary) or row["primary"] in secondary:
            raise ValidationError("duplicate classification; source identity must not be duplicated")
        if row["review"] not in ("PROPOSED", "REVIEWED"):
            raise ValidationError("unsupported editorial review state")
        if not isinstance(row["rationale"], str) or not row["rationale"].strip():
            raise ValidationError("classification rationale is required")
    payload = {
        "schema": SCHEMA,
        "taxonomy_id": norm["taxonomy_id"], "taxonomy_revision": norm["revision"],
        "taxonomy_source_sha256": hashlib.sha256(taxonomy_bytes).hexdigest(),
        "assignment_source_sha256": hashlib.sha256(assignment_bytes).hexdigest(),
        "nodes": [{"id": n["original"]["id"], "address": n["address"],
                   "notation": n["original"]["notation"], "label": n["original"]["label"]}
                  for n in norm["nodes"]],
        "assignments": rows,
        "scope": "CLASSIFICATION_METADATA_NOT_PROOF_OR_AUTHORIZATION",
        "native_lean_replay": "NOT_RUN",
    }
    # Refuse an output larger than the selected whole-artifact profile.
    if len(canonical_bytes(payload)) > LIMIT:
        raise ValidationError("handoff exceeds 16 MiB profile")
    return payload


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("taxonomy", type=Path)
    parser.add_argument("assignments", type=Path)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args(argv)
    try:
        data = canonical_bytes(build(read_input(args.taxonomy), read_input(args.assignments))) + b"\n"
        # Exclusive creation: never overwrite a prior classification artifact.
        with args.out.open("xb") as stream:
            stream.write(data)
        print(json.dumps({"schema": SCHEMA, "sha256": hashlib.sha256(data).hexdigest(),
                          "byte_count": len(data), "native_lean_replay": "NOT_RUN"}))
        return 0
    except (OSError, ValueError, TypeError, RecursionError) as exc:
        print(f"taxonomy handoff rejected: {exc}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
