#!/usr/bin/env python3
"""Check revision-bound ordered taxonomy relation traces, without proof authority.

This separate schema does not change taxonomy v1, its duplicate-edge guard, or
the source cache. No Lean/Python refinement, authorization, or IO theorem follows.
"""
import argparse
import hashlib
import json
import math
from pathlib import Path
import re

import cache_math
import cache_taxonomy

SCHEMA = "math-cache-occurrence-trace-v1"
MAX_BYTES = 2 * 1024 * 1024
MAX_STEPS = 10000
HEX = re.compile(r"[0-9a-f]{64}\Z")


class TraceError(ValueError):
    pass


def require(condition, message):
    if not condition:
        raise TraceError(message)


def shape(value, fields, label):
    require(isinstance(value, dict) and set(value) == set(fields), label + " schema fields")


def unique_json(raw):
    require(isinstance(raw, bytes) and len(raw) <= MAX_BYTES, "bounded byte input required")

    def pairs(entries):
        result = {}
        for key, value in entries:
            require(key not in result, "duplicate JSON key: " + key)
            result[key] = value
        return result

    def reject_constant(value):
        raise TraceError("nonfinite JSON constant: " + value)

    def bounded_int(value):
        require(len(value) <= 64, "oversized JSON integer token")
        return int(value)

    def finite_float(value):
        result = float(value)
        require(math.isfinite(result), "nonfinite JSON number")
        return result

    try:
        return json.loads(raw.decode("utf-8"), object_pairs_hook=pairs,
                          parse_constant=reject_constant, parse_int=bounded_int,
                          parse_float=finite_float)
    except TraceError:
        raise
    except (UnicodeError, ValueError, RecursionError) as error:
        raise TraceError("invalid bounded UTF-8 JSON") from error


def relation_identity(relation):
    raw = json.dumps(relation, sort_keys=True, ensure_ascii=False,
                     separators=(",", ":"), allow_nan=False).encode()
    return hashlib.sha256(raw).hexdigest()


def validate_trace(document, taxonomy_raw, expected_snapshot):
    """Pure validation against externally supplied exact taxonomy/snapshot inputs."""
    shape(document, ("schema", "id", "source_snapshot", "taxonomy", "relation_kind",
                     "direction", "root", "steps", "end", "proof_acceptance"), "trace")
    require(document["schema"] == SCHEMA, "unknown occurrence trace schema")
    require(isinstance(document["id"], str) and document["id"].startswith("occurrence-trace:")
            and len(document["id"]) > len("occurrence-trace:"), "trace identity")
    require(isinstance(expected_snapshot, str) and HEX.fullmatch(expected_snapshot),
            "external expected snapshot required")
    require(document["source_snapshot"] == expected_snapshot, "stale source snapshot")
    require(document["direction"] == "source-to-target", "unsupported trace direction")
    require(document["proof_acceptance"] == "not-established", "trace cannot assert proof acceptance")
    kind = document["relation_kind"]
    require(isinstance(kind, str) and kind in cache_taxonomy.RELATION_TYPES, "unknown relation role")
    taxonomy = unique_json(taxonomy_raw)
    report = cache_taxonomy.validate_taxonomy(taxonomy)
    binding = document["taxonomy"]
    shape(binding, ("id", "revision", "sha256"), "taxonomy binding")
    require(binding == {"id": taxonomy["id"], "revision": report["revision"],
                        "sha256": hashlib.sha256(taxonomy_raw).hexdigest()},
            "taxonomy byte/revision identity mismatch")
    entities = {row["id"] for key in ("families", "records", "sources", "communications",
                                      "decisions", "contributions") for row in taxonomy[key]}
    entities.update(p["id"] for d in taxonomy["decisions"] for p in d["premises"])
    require(isinstance(document["root"], str) and document["root"] in entities,
            "root must be a canonical taxonomy entity")
    require(isinstance(document["end"], str) and document["end"] in entities,
            "end must be a canonical taxonomy entity")
    steps = document["steps"]
    require(isinstance(steps, list) and len(steps) <= MAX_STEPS, "bounded ordered steps required")
    relations = {row["id"]: row for row in taxonomy["relations"]}
    cursor = document["root"]
    occurrences = []
    for index, step in enumerate(steps):
        shape(step, ("index", "relation_id", "relation_sha256", "source", "target"), "step")
        require(type(step["index"]) is int and step["index"] == index, "occurrence index mismatch")
        ident = step["relation_id"]
        require(isinstance(ident, str) and ident in relations, "dangling relation identity")
        relation = relations[ident]
        require(relation["kind"] == kind, "mixed relation roles")
        require(step["relation_sha256"] == relation_identity(relation), "relation content drift")
        require(step["source"] == relation["source"] and step["target"] == relation["target"],
                "edge endpoint identity mismatch")
        require(cursor == relation["source"], "wrong root or broken endpoint join")
        cursor = relation["target"]
        occurrences.append(dict(step))
    require(cursor == document["end"], "trace endpoint mismatch")
    return {"schema": SCHEMA, "id": document["id"], "source_snapshot": expected_snapshot,
            "taxonomy_revision": report["revision"], "relation_kind": kind,
            "root": document["root"], "end": cursor, "occurrences": occurrences,
            "step_count": len(steps), "proof_acceptance": "not-established",
            "lean_runtime_refinement": "not-established"}


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("trace", help="repository-relative occurrence JSON path")
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument("--revision", help="explicit retained snapshot; defaults to current source cache")
    args = parser.parse_args(argv)
    root = cache_math.physical_path(args.root)
    raw = cache_math.read_bytes(root, args.trace)
    document = unique_json(raw)
    revision = args.revision or cache_math.current(root)
    cache_math.verify(root, revision)
    taxonomy_raw = cache_math.read_bytes(root, ".noeaaeue/cache/taxonomy.json")
    result = validate_trace(document, taxonomy_raw, revision)
    # Recheck exact inputs and current reference before returning a current-view result.
    require(cache_math.read_bytes(root, args.trace) == raw, "trace input drift")
    require(cache_math.read_bytes(root, ".noeaaeue/cache/taxonomy.json") == taxonomy_raw, "taxonomy input drift")
    require(args.revision is not None or cache_math.current(root) == revision, "current snapshot drift")
    print(json.dumps(result, sort_keys=True))


if __name__ == "__main__":
    main()
