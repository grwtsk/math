#!/usr/bin/env python3
"""Validate, normalize, and emit Lean for a finite single-parent taxonomy.

Standard library only. Does not execute Lean, classify mathematics automatically,
verify source proofs, or modify any Git repository. Original notation is opaque.
Normalization preserves node-array order and every original node field.
"""
from __future__ import annotations

import argparse
import copy
import csv
import hashlib
import io
import json
import re
import sys
from pathlib import Path
from typing import Any

SCHEMA = "decimal-taxonomy/v1"
NORMALIZED_SCHEMA = "decimal-taxonomy-normalized/v1"
MAX_NODES = 100_000
MAX_DEPTH = 2_000


class ValidationError(ValueError):
    """An explicit input invariant failed."""


def canonical_bytes(value: Any) -> bytes:
    return json.dumps(value, ensure_ascii=False, sort_keys=True,
                      separators=(",", ":"), allow_nan=False).encode("utf-8")


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def nonempty_string(value: Any, field: str) -> str:
    if not isinstance(value, str) or not value.strip():
        raise ValidationError(f"{field} must be a nonempty string")
    # Surrogates have no direct Unicode scalar representation in Lean Char.
    if any(0xD800 <= ord(c) <= 0xDFFF for c in value):
        raise ValidationError(f"{field} contains an unpaired Unicode surrogate")
    return value


def prefix(a: list[int], b: list[int]) -> bool:
    return len(a) <= len(b) and b[:len(a)] == a


def common_prefix(a: list[int], b: list[int]) -> list[int]:
    i = 0
    while i < min(len(a), len(b)) and a[i] == b[i]:
        i += 1
    return a[:i]


def normalize(document: dict[str, Any]) -> dict[str, Any]:
    if not isinstance(document, dict) or document.get("schema") != SCHEMA:
        raise ValidationError(f"schema must be {SCHEMA!r}")
    taxonomy_id = nonempty_string(document.get("taxonomy_id"), "taxonomy_id")
    nonempty_string(document.get("revision"), "revision")
    root_id = nonempty_string(document.get("root_id"), "root_id")
    rows = document.get("nodes")
    if not isinstance(rows, list) or not 1 <= len(rows) <= MAX_NODES:
        raise ValidationError(f"nodes must contain 1..{MAX_NODES} records")
    ids: dict[str, dict[str, Any]] = {}
    for index, row in enumerate(rows):
        if not isinstance(row, dict):
            raise ValidationError(f"nodes[{index}] must be an object")
        node_id = nonempty_string(row.get("id"), f"nodes[{index}].id")
        if node_id in ids:
            raise ValidationError(f"duplicate node ID {node_id!r}")
        if "parent" not in row:
            raise ValidationError(f"node {node_id!r} has no explicit parent field")
        parent = row["parent"]
        if parent is not None:
            nonempty_string(parent, f"{node_id}.parent")
        for key in ("notation", "label"):
            nonempty_string(row.get(key), f"{node_id}.{key}")
        slot = row.get("slot", index)
        if type(slot) is not int or slot < 0:
            raise ValidationError(f"{node_id}.slot must be a nonnegative integer")
        ids[node_id] = {"row": copy.deepcopy(row), "index": index,
                        "parent": parent, "slot": slot}
    if root_id not in ids:
        raise ValidationError("root_id is not present")
    roots = [node_id for node_id, entry in ids.items() if entry["parent"] is None]
    if roots != [root_id]:
        raise ValidationError("exactly the declared root must have parent=null")
    radix = document.get("radix")
    if radix is not None and (type(radix) is not int or radix < 2):
        raise ValidationError("radix must be absent or an integer at least 2")
    sibling_slots: set[tuple[str, int]] = set()
    for node_id, entry in ids.items():
        parent = entry["parent"]
        if parent is None:
            continue
        if parent not in ids:
            raise ValidationError(f"unknown parent {parent!r} of {node_id!r}")
        if radix is not None and entry["slot"] >= radix:
            raise ValidationError(f"{node_id}.slot is outside radix {radix}")
        key = (parent, entry["slot"])
        if key in sibling_slots:
            raise ValidationError(f"duplicate sibling slot at parent {parent!r}")
        sibling_slots.add(key)

    # Iterative parent traversal detects cycles, including disconnected cycles.
    addresses: dict[str, list[int]] = {root_id: []}
    for start in ids:
        chain: list[str] = []
        seen: set[str] = set()
        current = start
        while current not in addresses:
            if current in seen:
                raise ValidationError(f"parent cycle at {current!r}")
            seen.add(current)
            chain.append(current)
            if len(chain) > MAX_DEPTH:
                raise ValidationError(f"depth exceeds configured limit {MAX_DEPTH}")
            current = ids[current]["parent"]
        while chain:
            node_id = chain.pop()
            p = addresses[ids[node_id]["parent"]]
            if len(p) >= MAX_DEPTH:
                raise ValidationError(f"depth exceeds configured limit {MAX_DEPTH}")
            addresses[node_id] = p + [ids[node_id]["slot"]]

    path_to_id: dict[tuple[int, ...], str] = {}
    normalized_rows = []
    for node_id, entry in ids.items():
        a = addresses[node_id]
        key = tuple(a)
        if key in path_to_id:
            raise ValidationError("normalization produced a duplicate address")
        path_to_id[key] = node_id
        normalized_rows.append({"input_index": entry["index"], "address": a,
                                "original": entry["row"]})
    # Independent closure verification: no invented unnamed prefixes.
    for key in path_to_id:
        for depth in range(len(key) + 1):
            if key[:depth] not in path_to_id:
                raise ValidationError("normalized addresses are not prefix-closed")
    return {
        "schema": NORMALIZED_SCHEMA,
        "taxonomy_id": taxonomy_id,
        "revision": document["revision"],
        "root_id": root_id,
        "original_document": copy.deepcopy(document),
        "nodes": normalized_rows,
        "normalization": "parent edges; explicit slot or original zero-based row index",
        "native_lean_replay": "NOT_RUN",
    }


def validate_extension(old: dict[str, Any], new: dict[str, Any]) -> None:
    old_norm, new_norm = normalize(old), normalize(new)
    for key in ("taxonomy_id", "root_id"):
        if old[key] != new[key]:
            raise ValidationError(f"extension changed {key}")
    if old.get("radix") != new.get("radix"):
        raise ValidationError("extension changed the radix profile")
    old_rows, new_rows = old["nodes"], new["nodes"]
    if len(new_rows) < len(old_rows):
        raise ValidationError("extension removed records")
    if any(canonical_bytes(a) != canonical_bytes(b)
           for a, b in zip(old_rows, new_rows)):
        raise ValidationError("extension changed or reordered an existing record")
    old_paths = [n["address"] for n in old_norm["nodes"]]
    new_paths = [n["address"] for n in new_norm["nodes"][:len(old_paths)]]
    if old_paths != new_paths:
        raise ValidationError("extension changed an old structural address")


def load_json(raw: bytes) -> dict[str, Any]:
    def reject_duplicates(pairs: list[tuple[str, Any]]) -> dict[str, Any]:
        out: dict[str, Any] = {}
        for key, val in pairs:
            if key in out:
                raise ValidationError(f"duplicate JSON object key {key!r}")
            out[key] = val
        return out
    try:
        result = json.loads(raw.decode("utf-8"), object_pairs_hook=reject_duplicates,
                            parse_constant=lambda x: (_ for _ in ()).throw(
                                ValidationError(f"nonfinite JSON number {x}")))
    except (UnicodeDecodeError, json.JSONDecodeError) as exc:
        raise ValidationError(f"invalid UTF-8 JSON: {exc}") from exc
    if not isinstance(result, dict):
        raise ValidationError("top-level JSON must be an object")
    return result


def import_csv(raw: bytes, *, taxonomy_id: str, revision: str, root_id: str,
               id_column: str, parent_column: str, notation_column: str,
               label_column: str, root_token: str = "null") -> dict[str, Any]:
    """Explicit column adapter. Does not guess PMD schemas or validate PMD hashes."""
    try:
        stream = io.StringIO(raw.decode("utf-8-sig"), newline="")
        reader = csv.DictReader(stream, strict=True)
        required = (id_column, parent_column, notation_column, label_column)
        if not reader.fieldnames or len(set(reader.fieldnames)) != len(reader.fieldnames):
            raise ValidationError("CSV header is missing or has duplicate columns")
        if any(name not in reader.fieldnames for name in required):
            raise ValidationError("one or more explicitly mapped CSV columns are missing")
        nodes = []
        for record in reader:
            if None in record or any(v is None for v in record.values()):
                raise ValidationError("CSV row length does not match its header")
            parent = record[parent_column]
            nodes.append({"id": record[id_column],
                          "parent": None if parent == root_token else parent,
                          "notation": record[notation_column],
                          "label": record[label_column],
                          "original_csv_fields": record})
    except (UnicodeDecodeError, csv.Error) as exc:
        raise ValidationError(f"invalid CSV: {exc}") from exc
    return {"schema": SCHEMA, "taxonomy_id": taxonomy_id, "revision": revision,
            "root_id": root_id, "nodes": nodes}


def lean_string(text: str) -> str:
    # Codepoints rather than quoted arbitrary text: no Lean code injection.
    return "(String.ofList [" + ", ".join(f"Char.ofNat {ord(c)}" for c in text) + "])"


def lean_address(address: list[int]) -> str:
    return "[" + ", ".join(map(str, address)) + "]"


def emit_lean(normalized: dict[str, Any], namespace: str = "GeneratedTaxonomy") -> str:
    if not re.fullmatch(r"[A-Z][A-Za-z0-9_]*", namespace):
        raise ValidationError("namespace must be a single safe UpperCamelCase identifier")
    # Validate again; callers cannot smuggle a false normalized record.
    checked = normalize(normalized["original_document"])
    if checked["nodes"] != normalized["nodes"]:
        raise ValidationError("normalized content disagrees with its original document")
    rows = normalized["nodes"]
    out = [
        "import GRWTSK.Logic.Classification.Provenance", "",
        "-- Generated from validated data. Native Lean replay is a separate gate.",
        "set_option autoImplicit false", "",
        f"namespace {namespace}",
        "open GRWTSK.Order.Taxonomy GRWTSK.Logic.Classification", "",
        "def paths : List Address := [",
        ",\n".join("  " + lean_address(row["address"]) for row in rows), "]", "",
        "def taxonomy : Taxonomy := ofPaths paths " + lean_string(normalized["taxonomy_id"]) + " " + lean_string(normalized["revision"]), "",
        "theorem paths_closed : ClosedPaths paths := checkClosed_sound paths (by decide)",
        "theorem paths_unique : paths.Nodup := by decide", "",
        "theorem exact_nodes (a : Address) : taxonomy.present a ↔ a ∈ paths :=",
        "  ofPaths_exact paths paths_closed a", "",
        "def records : List ExternalNode := [",
    ]
    records = []
    for row in rows:
        original = row["original"]
        parent = "none" if original["parent"] is None else "some " + lean_string(original["parent"])
        records.append("  { id := " + lean_string(original["id"]) +
                       ", parentId := " + parent +
                       ", notation := " + lean_string(original["notation"]) +
                       ", label := " + lean_string(original["label"]) +
                       ", address := " + lean_address(row["address"]) + " }")
    out += [",\n".join(records), "]", "",
            "theorem record_addresses : records.map ExternalNode.address = paths := by decide",
            "theorem unique_external_ids : (records.map ExternalNode.id).Nodup := by decide", ""]
    for i, row in enumerate(rows):
        a = lean_address(row["address"])
        out += [f"def node{i} : taxonomy.Node :=",
                f"  ⟨{a}, Or.inr ⟨{a}, by decide, prefix_refl {a}⟩⟩", ""]
    index_by_id = {row["original"]["id"]: i for i, row in enumerate(rows)}
    for i, row in enumerate(rows):
        parent = row["original"]["parent"]
        if parent is not None:
            j = index_by_id[parent]
            out += [f"theorem parent_{i} : node{j} ≤ node{i} := by decide",
                    f"theorem immediate_parent_{i} : node{i}.val = node{j}.val ++ [{row['address'][-1]}] := rfl", ""]
    out += [f"end {namespace}", ""]
    return "\n".join(out)



def validate_bindings(document: dict[str, Any], normalized: dict[str, Any]) -> None:
    """Validate reference integrity; never infer proof acceptance from metadata."""
    if document.get("schema") != "taxonomy-source-binding-proposals/v1":
        raise ValidationError("unsupported source-binding schema")
    if (document.get("taxonomy_id"), document.get("taxonomy_revision")) != (
            normalized["taxonomy_id"], normalized["revision"]):
        raise ValidationError("source bindings target a different taxonomy revision")
    ids = {row["original"]["id"] for row in normalized["nodes"]}
    entries = document.get("assignments")
    if not isinstance(entries, list) or not entries:
        raise ValidationError("assignments must be a nonempty list")
    seen = set()
    roles = {"library", "positiveCheck", "negativeControl", "auditDriver", "manuscript", "historical"}
    for index, entry in enumerate(entries):
        if not isinstance(entry, dict) or not isinstance(entry.get("source"), dict):
            raise ValidationError(f"assignment {index} has no source object")
        if entry.get("primary_taxon_id") not in ids:
            raise ValidationError(f"assignment {index} has an unknown primary taxon")
        secondary = entry.get("secondary_taxon_ids")
        if not isinstance(secondary, list) or not all(isinstance(x, str) for x in secondary):
            raise ValidationError("secondary_taxon_ids must be a list of strings")
        if len(set(secondary)) != len(secondary) or any(x not in ids for x in secondary):
            raise ValidationError("secondary taxa contain a duplicate or unknown ID")
        if entry["primary_taxon_id"] in secondary:
            raise ValidationError("primary taxon must not be repeated as a secondary")
        source = entry["source"]
        for key in ("repository", "commit", "path", "module", "declaration", "lean_toolchain"):
            nonempty_string(source.get(key), f"assignment {index}.{key}")
        if not re.fullmatch(r"[0-9a-f]{40}|[0-9a-f]{64}", source["commit"]):
            raise ValidationError("source commit must be a full hexadecimal object ID")
        if source.get("role") not in roles:
            raise ValidationError("unknown source role")
        if not re.fullmatch(r"[0-9a-f]{40}", source.get("git_blob_sha1", "")):
            raise ValidationError("git_blob_sha1 must be a 40-digit hexadecimal digest")
        identity = tuple(source[key] for key in ("repository", "commit", "path", "declaration"))
        if identity in seen:
            raise ValidationError("source has more than one primary assignment")
        seen.add(identity)
        nonempty_string(entry.get("rationale"), "classification rationale")
        if type(entry.get("classification_reviewed")) is not bool:
            raise ValidationError("classification_reviewed must be an explicit Boolean")


def emit_catalogue(document: dict[str, Any], normalized: dict[str, Any],
                   taxonomy_namespace: str = "GeneratedTaxonomy") -> str:
    validate_bindings(document, normalized)
    if not re.fullmatch(r"[A-Z][A-Za-z0-9_]*", taxonomy_namespace):
        raise ValidationError("unsafe taxonomy namespace")
    entries = document["assignments"]
    n = len(entries)
    node_index = {r["original"]["id"]: i for i, r in enumerate(normalized["nodes"])}
    out = ["import GeneratedTaxonomy", "import GRWTSK.Logic.Classification.Catalogue", "",
           "-- Source references only. No foreign theorem is imported or asserted here.",
           "set_option autoImplicit false", "namespace GeneratedSourceCatalogue",
           "open GRWTSK.Logic.Classification", f"open {taxonomy_namespace}", "",
           f"abbrev Artifact := Fin {n}", "", "def source : Artifact → SourceRef := !["]
    source_rows = []
    for entry in entries:
        src = entry["source"]
        lock = src.get("dependency_lock_digest")
        snapshot = ("{ repository := " + lean_string(src["repository"]) +
                    ", commit := " + lean_string(src["commit"]) +
                    ", leanToolchain := " + lean_string(src["lean_toolchain"]) +
                    ", dependencyLockDigest := " + ("none" if lock is None else "some " + lean_string(lock)) + " }")
        source_rows.append("  { snapshot := " + snapshot + ", path := " + lean_string(src["path"]) +
                           ", moduleName := some " + lean_string(src["module"]) +
                           ", declarationName := some " + lean_string(src["declaration"]) +
                           ", sourceDigest := some " + lean_string("git-blob-sha1:" + src["git_blob_sha1"]) +
                           ", role := ." + src["role"] + " }")
    out += [",\n".join(source_rows), "]", "", "def catalogue : Catalogue taxonomy Artifact where",
            "  primary := ![" + ", ".join(f"node{node_index[e['primary_taxon_id']]}" for e in entries) + "]",
            "  secondary := ![" + ", ".join("[" + ", ".join(f"node{node_index[x]}" for x in e["secondary_taxon_ids"]) + "]" for e in entries) + "]",
            "", "theorem source_preserved {a b : taxonomy.Node} (h : a ≤ b)",
            "    (d : catalogue.Bucket b) : source (catalogue.restrict h d).val = source d.val := rfl",
            "", "end GeneratedSourceCatalogue", ""]
    return "\n".join(out)

def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--expected-sha256")
    parser.add_argument("--previous", type=Path)
    parser.add_argument("--namespace", default="GeneratedTaxonomy")
    parser.add_argument("--bindings", type=Path)
    parser.add_argument("--csv", action="store_true")
    parser.add_argument("--taxonomy-id")
    parser.add_argument("--revision")
    parser.add_argument("--root-id")
    parser.add_argument("--id-column")
    parser.add_argument("--parent-column")
    parser.add_argument("--notation-column")
    parser.add_argument("--label-column")
    parser.add_argument("--root-token", default="null")
    args = parser.parse_args(argv)
    try:
        raw = args.input.read_bytes()
        digest = sha256(raw)
        if args.expected_sha256 is not None and digest != args.expected_sha256.lower():
            raise ValidationError(f"source SHA-256 mismatch: observed {digest}")
        if args.csv:
            names = ("taxonomy_id", "revision", "root_id", "id_column", "parent_column",
                     "notation_column", "label_column")
            if any(getattr(args, name) is None for name in names):
                raise ValidationError("CSV input requires every explicit schema mapping")
            document = import_csv(raw, **{name: getattr(args, name) for name in names},
                                  root_token=args.root_token)
        else:
            document = load_json(raw)
        if args.previous is not None:
            # The previous input here is the normalized canonical JSON input, not a guessed ledger.
            validate_extension(load_json(args.previous.read_bytes()), document)
        normalized = normalize(document)
        generated = emit_lean(normalized, args.namespace)
        binding_raw = args.bindings.read_bytes() if args.bindings else None
        binding_doc = load_json(binding_raw) if binding_raw is not None else None
        catalogue_code = emit_catalogue(binding_doc, normalized, args.namespace) if binding_doc is not None else None
        if args.output.exists() and any(args.output.iterdir()):
            raise ValidationError("output directory is not empty; refusing to overwrite artifacts")
        args.output.mkdir(parents=True, exist_ok=True)
        (args.output / "input.snapshot").write_bytes(raw)
        (args.output / "input.json").write_text(
            json.dumps(document, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        (args.output / "normalized.json").write_text(
            json.dumps(normalized, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        (args.output / "GeneratedTaxonomy.lean").write_text(generated, encoding="utf-8")
        if catalogue_code is not None:
            (args.output / "bindings.snapshot").write_bytes(binding_raw)
            (args.output / "GeneratedCatalogue.lean").write_text(catalogue_code, encoding="utf-8")
        receipt = {"schema": "taxonomy-normalization-receipt/v1", "source_sha256": digest,
                   "source_bytes": len(raw), "bindings_sha256": sha256(binding_raw) if binding_raw is not None else None,
                   "nodes": len(normalized["nodes"]),
                   "normalized_sha256": sha256(canonical_bytes(normalized)),
                   "generated_lean_sha256": sha256(generated.encode("utf-8")),
                   "python_structural_validation": "PASS", "native_lean_replay": "NOT_RUN",
                   "semantic_classification_review": "NOT_RUN",
                   "pmd_continuation_ledger_validation": "NOT_IMPLEMENTED"}
        (args.output / "receipt.json").write_text(json.dumps(receipt, indent=2) + "\n")
        print(json.dumps(receipt, indent=2))
        return 0
    except (OSError, ValidationError, TypeError, KeyError) as exc:
        print(f"taxonomy validation failed: {exc}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
