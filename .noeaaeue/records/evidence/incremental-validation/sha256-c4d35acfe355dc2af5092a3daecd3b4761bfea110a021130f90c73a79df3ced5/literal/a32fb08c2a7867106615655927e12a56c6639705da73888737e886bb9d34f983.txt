#!/usr/bin/env python3
"""Build a bounded append-only taxonomy proposal and structural Lean obligations.

The supplied policy is a pinned input, not authenticated standing authority.
No evidence, concept, proposal, or source attachment is automatically admitted.
No network, Git, Lean execution, PMD checkpoint mutation, or effect dispatch occurs.
"""
from __future__ import annotations
import argparse
import copy
import hashlib
import heapq
import json
import os
from pathlib import Path
import re
import sys
from taxonomy import canonical_bytes, lean_address, lean_string, normalize
from taxonomy_handoff import build as build_handoff

SCHEMA = "governed-taxonomy-registry/v1"
REQUEST = "taxonomy-expansion-request/v1"
POLICY = "taxonomy-expansion-policy/v1"
PROFILE = "TAXONOMY-APPEND-1"
LIMIT = 16 * 1024 * 1024
MAX_ROWS = 100_000
MAX_EDGES = 200_000
TABLES = ("domains", "concepts", "bindings")
SCOPE = "STRUCTURAL_PROPOSAL_ONLY_NO_SEMANTIC_OR_EFFECT_ADMISSION"


def sha(raw: bytes) -> str:
    return hashlib.sha256(raw).hexdigest()


def require(test: bool, reason: str) -> None:
    if not test:
        raise ValueError(reason)


def closed(value, keys: set[str], name: str) -> None:
    require(isinstance(value, dict) and set(value) == keys, "CLOSED_GRAMMAR:" + name)


def text(value, name: str) -> str:
    require(isinstance(value, str) and bool(value.strip()) and len(value) <= 65536,
            "INVALID_TEXT:" + name)
    value.encode("utf-8")
    return value


def digest(value) -> str:
    require(isinstance(value, str) and re.fullmatch(r"[0-9a-f]{64}", value) is not None,
            "INVALID_DIGEST")
    return value


def string_list(value, name: str) -> list[str]:
    require(isinstance(value, list) and len(value) <= MAX_ROWS, "INVALID_LIST:" + name)
    for item in value:
        text(item, name)
    require(len(set(value)) == len(value), "DUPLICATE:" + name)
    return value


def load(raw: bytes):
    require(len(raw) <= LIMIT, "RESOURCE_BOUNDED:input16MiB")
    def unique(pairs):
        out = {}
        for key, value in pairs:
            require(key not in out, "DUPLICATE_JSON_KEY")
            out[key] = value
        return out
    def no_number(_):
        raise ValueError("NONINTEGER_JSON_NUMBER")
    value = json.loads(raw.decode("utf-8"), object_pairs_hook=unique,
                       parse_float=no_number, parse_constant=no_number)
    def visit(node, depth=0):
        require(depth <= 32, "RESOURCE_BOUNDED:depth32")
        if isinstance(node, dict):
            for key, child in node.items():
                key.encode("utf-8"); visit(child, depth + 1)
        elif isinstance(node, list):
            for child in node:
                visit(child, depth + 1)
        elif isinstance(node, str):
            node.encode("utf-8")
        elif type(node) is int:
            require(-(2**63) <= node < 2**64, "INTEGER_RANGE")
    visit(value)
    return value


def policy(raw: bytes) -> dict:
    p = load(raw)
    closed(p, {"schema", "id", "roles", "facets", "effect"}, "policy")
    require(p["schema"] == POLICY and p["effect"] == "PROPOSAL_ONLY", "UNSUPPORTED_POLICY")
    text(p["id"], "policy_id")
    string_list(p["roles"], "roles"); string_list(p["facets"], "facets")
    return p


def rows(registry: dict, name: str, keys: set[str]) -> dict:
    values = registry[name]
    require(isinstance(values, list) and len(values) <= MAX_ROWS, "ROW_LIMIT:" + name)
    out = {}
    for row in values:
        closed(row, keys, name)
        identity = text(row["id"], name + ".id")
        require(identity not in out, "DUPLICATE_ID:" + name)
        out[identity] = row
    return out


def validate(registry: dict, p: dict, policy_digest: str) -> tuple[dict, dict]:
    closed(registry, {"schema", "registry_id", "revision", "policy_sha256", "root", *TABLES}, "registry")
    require(registry["schema"] == SCHEMA, "UNSUPPORTED_REGISTRY")
    require(registry["policy_sha256"] == policy_digest, "POLICY_IDENTITY_MISMATCH")
    for key in ("registry_id", "revision", "root"):
        text(registry[key], key)
    ds = rows(registry, "domains", {"id", "label", "definition", "parents", "primary_parent", "slot", "notation"})
    require(0 < len(ds) <= MAX_ROWS and registry["root"] in ds, "MISSING_ROOT")
    children = {node: [] for node in ds}
    indegree, rank, edge_count = {}, {}, 0
    decimal = []
    for node, row in ds.items():
        for key in ("label", "definition", "notation"):
            text(row[key], key)
        parents = string_list(row["parents"], "parents")
        require(all(parent in ds for parent in parents), "UNRESOLVED_PARENT")
        primary = row["primary_parent"]
        require(type(row["slot"]) is int and 0 <= row["slot"] < 2**31, "INVALID_SLOT")
        if node == registry["root"]:
            require(parents == [] and primary is None, "INVALID_ROOT")
        else:
            require(isinstance(primary, str) and primary in parents, "MISSING_PRIMARY_PARENT")
        edge_count += len(parents)
        require(edge_count <= MAX_EDGES, "RESOURCE_BOUNDED:edges200000")
        indegree[node] = len(parents)
        for parent in parents:
            children[parent].append(node)
        decimal.append({"id": node, "parent": primary, "slot": row["slot"],
                        "notation": row["notation"], "label": row["label"]})
    pending = [registry["root"]]
    rank[registry["root"]] = 0
    visited = []
    while pending:
        node = heapq.heappop(pending); visited.append(node)
        for child in children[node]:
            rank[child] = max(rank.get(child, 0), rank[node] + 1)
            indegree[child] -= 1
            if indegree[child] == 0:
                heapq.heappush(pending, child)
    require(len(visited) == len(ds), "CYCLE_OR_UNREACHABLE_DOMAIN")
    view = {"schema": "decimal-taxonomy/v1", "taxonomy_id": registry["registry_id"],
            "revision": registry["revision"], "root_id": registry["root"], "nodes": decimal}
    normalized = normalize(view)
    cs = rows(registry, "concepts", {"id", "definition", "role", "primary", "secondary", "facets"})
    for c in cs.values():
        text(c["definition"], "definition")
        require(isinstance(c["role"], str) and c["role"] in p["roles"], "UNSUPPORTED_ROLE")
        require(isinstance(c["primary"], str) and c["primary"] in ds, "UNRESOLVED_PRIMARY_DOMAIN")
        secondary = string_list(c["secondary"], "secondary")
        require(c["primary"] not in secondary and all(x in ds for x in secondary), "INVALID_SECONDARY_DOMAINS")
        facets = string_list(c["facets"], "facets")
        require(all(x in p["facets"] for x in facets), "UNSUPPORTED_FACET")
    bs = rows(registry, "bindings", {"id", "concept", "record_id", "source_version_id", "environment_id",
                                    "source_sha256", "expected_type_sha256", "rationale"})
    records = set()
    for b in bs.values():
        require(isinstance(b["concept"], str) and b["concept"] in cs, "UNRESOLVED_CONCEPT")
        for key in ("record_id", "source_version_id", "environment_id", "source_sha256", "expected_type_sha256"):
            digest(b[key])
        require(b["record_id"] not in records, "MULTIPLE_BINDINGS_FOR_DECLARATION_UNSUPPORTED")
        records.add(b["record_id"])
        text(b["rationale"], "rationale")
    return view, {"ranks": rank, "paths": [n["address"] for n in normalized["nodes"]]}


def lean_obligations(base: dict, candidate: dict, old_paths: list, new_paths: list, ranks: dict) -> bytes:
    def addresses(xs):
        return "[" + ", ".join(lean_address(x) for x in xs) + "]"
    row_characters = sum(len(canonical_bytes(row)) for table in TABLES
                         for row in base[table] + candidate[table])
    require(row_characters * 24 <= LIMIT, "RESOURCE_BOUNDED:leanObligations16MiB")
    lines = ["import GRWTSK.Order.Taxonomy.ConservativeExtension",
             "import GRWTSK.Order.Taxonomy.Polyhierarchy", "",
             "/- Generated structural obligations. NOT native-checked by the Python producer.",
             "The row strings bind exact normalized records, not their mathematical meaning. -/",
             "open GRWTSK.Order.Taxonomy", "namespace TaxonomyExpansionObligations",
             "def oldPaths : List Address := " + addresses(old_paths),
             "def addedPaths : List Address := " + addresses(new_paths[len(old_paths):]),
             "example : checkClosed oldPaths = true := by decide",
             "example : checkClosed (oldPaths ++ addedPaths) = true := by decide",
             "def extension := ConservativeExtension.ofPathsAppend oldPaths addedPaths " +
             " ".join(lean_string(x) for x in (base["registry_id"], base["revision"], candidate["revision"]))]
    for table in TABLES:
        def strings(xs):
            return "[" + ", ".join(lean_string(canonical_bytes(x).decode()) for x in xs) + "]"
        lines += [f"def old_{table} : List String := " + strings(base[table]),
                  f"def new_{table} : List String := " + strings(candidate[table]),
                  f"example : new_{table}.take old_{table}.length = old_{table} := by decide"]
    domains = candidate["domains"]
    positions = {d["id"]: i for i, d in enumerate(domains)}
    by_id = {d["id"]: d for d in domains}
    edges = [(positions[parent], positions[d["id"]]) for d in domains for parent in d["parents"]]
    edge_text = "[" + ", ".join(f"({a}, {b})" for a, b in edges) + "]"
    n = len(domains)
    lines += ["def parentEdges : List (Nat × Nat) := " + edge_text,
              "def domainRanks : List Nat := " + lean_address([ranks[d["id"]] for d in domains]),
              f"def domainGraph : DomainGraph (Fin {n}) where",
              f"  root := ⟨{positions[candidate['root']]}, by decide⟩",
              "  parent a b := (a.val, b.val) ∈ parentEdges",
              "  rank a := domainRanks[a.val]!",
              "  parent_increases := by decide",
              "  root_reaches := by", "    intro node", "    fin_cases node"]
    for domain in domains:
        route = []
        current = domain
        while current["primary_parent"] is not None:
            route.append(positions[current["id"]]); current = by_id[current["primary_parent"]]
        route.reverse()
        if not route:
            lines += ["    · exact Or.inl rfl"]
        else:
            proof = "StrictPath.single (by decide)"
            for middle in route[:-1]:
                proof = f"StrictPath.append (b := (⟨{middle}, by decide⟩ : Fin {n})) ({proof}) (by decide)"
            lines += ["    · exact Or.inr (" + proof + ")"]
    lines += [f"example (node : Fin {n}) : ¬ StrictPath domainGraph.parent node node :=",
              "  domainGraph.no_cycle node", "end TaxonomyExpansionObligations", ""]
    raw = "\n".join(lines).encode()
    require(len(raw) <= LIMIT, "RESOURCE_BOUNDED:leanObligations16MiB")
    return raw


def build(base_raw: bytes, delta_raw: bytes, policy_raw: bytes) -> dict[str, bytes]:
    p = policy(policy_raw); base = load(base_raw); delta = load(delta_raw)
    before_view, before_info = validate(base, p, sha(policy_raw))
    closed(delta, {"schema", "base_sha256", "policy_sha256", "revision", *TABLES}, "request")
    require(delta["schema"] == REQUEST, "UNSUPPORTED_REQUEST")
    require(delta["base_sha256"] == sha(base_raw), "STALE_BASE_BYTES")
    require(delta["policy_sha256"] == sha(policy_raw), "POLICY_CHANGE_NOT_APPEND")
    text(delta["revision"], "new_revision")
    require(delta["revision"] != base["revision"], "UNCHANGED_REVISION")
    candidate = copy.deepcopy(base); candidate["revision"] = delta["revision"]
    for table in TABLES:
        require(isinstance(delta[table], list), "INVALID_APPEND_LIST")
        candidate[table] += copy.deepcopy(delta[table])
    view, after_info = validate(candidate, p, sha(policy_raw))
    require(after_info["paths"][:len(before_info["paths"])] == before_info["paths"], "OLD_ADDRESS_CHANGED")
    # Old rows remain an exact ordered prefix; no reclassification or replacement.
    for table in TABLES:
        require(candidate[table][:len(base[table])] == base[table], "OLD_ROW_CHANGED")
    cs = {c["id"]: c for c in candidate["concepts"]}
    assignments = {"schema": "math-taxonomy-assignments/v1", "taxonomy_id": candidate["registry_id"],
                   "taxonomy_revision": candidate["revision"], "assignments": []}
    for binding in candidate["bindings"]:
        concept = cs[binding["concept"]]
        assignments["assignments"].append({"record_id": binding["record_id"], "primary": concept["primary"],
          "secondary": concept["secondary"], "review": "PROPOSED", "rationale": binding["rationale"]})
    encoded = lambda x: canonical_bytes(x) + b"\n"
    view_raw, assignment_raw = encoded(view), encoded(assignments)
    output = {"input.registry.json": base_raw, "input.request.json": delta_raw, "input.policy.json": policy_raw,
              "candidate.registry.json": encoded(candidate), "candidate.taxonomy.json": view_raw,
              "candidate.assignments.json": assignment_raw,
              "candidate.handoff.json": encoded(build_handoff(view_raw, assignment_raw)),
              "structural-obligations.lean": lean_obligations(base, candidate, before_info["paths"], after_info["paths"], after_info["ranks"])}
    bundle = Path(__file__).resolve().parents[2] / ".noeaaeue/evidence/taxonomy-expansion-v1/formal-candidates.zip"
    output["formal-candidates.zip"] = read_file(bundle)
    manifest = {"schema": "taxonomy-expansion-proposal/v1", "profile": PROFILE, "scope": SCOPE,
                "registry_id": candidate["registry_id"], "base_revision": base["revision"],
                "candidate_revision": candidate["revision"], "policy_sha256": sha(policy_raw),
                "admission": "NOT_ESTABLISHED", "native_lean_replay": "NOT_RUN",
                "semantic_bridge": "REQUIRED_SEPARATELY", "coverage": "SUPPLIED_ROWS_ONLY",
                "delta_counts": {table: len(delta[table]) for table in TABLES},
                "artifacts": {name: {"sha256": sha(raw), "byte_count": len(raw)} for name, raw in output.items()},
                "producer_sha256": sha(Path(__file__).read_bytes()),
                "dependency_sha256": {name: sha(Path(__file__).with_name(name).read_bytes())
                                      for name in ("taxonomy.py", "taxonomy_handoff.py")}}
    output["proposal.json"] = encoded(manifest)
    require(len(output["proposal.json"]) <= 16_384, "RESOURCE_BOUNDED:receipt16384")
    require(all(len(raw) <= LIMIT for raw in output.values()), "RESOURCE_BOUNDED:output16MiB")
    return output


def read_file(path: Path) -> bytes:
    require(path.is_file() and not path.is_symlink(), "INPUT_NOT_REGULAR")
    with path.open("rb") as stream:
        raw = stream.read(LIMIT + 1)
    require(len(raw) <= LIMIT, "RESOURCE_BOUNDED:input16MiB")
    return raw


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("registry", type=Path); parser.add_argument("request", type=Path)
    parser.add_argument("policy", type=Path); parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args(argv)
    try:
        files = build(*(read_file(p) for p in (args.registry, args.request, args.policy)))
        # Reserve exclusively; a partial I/O failure leaves an incomplete directory,
        # never a false success. Completion marker is written last. Not durable admission.
        args.out.mkdir(mode=0o700)
        for name, raw in files.items():
            with (args.out / name).open("xb") as stream:
                stream.write(raw)
        print(json.dumps({"profile": PROFILE, "status": "PROPOSAL_WRITTEN", "admission": "NOT_ESTABLISHED"}))
        return 0
    except (OSError, ValueError, TypeError, KeyError, RecursionError) as error:
        print(f"expansion rejected: {error}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
