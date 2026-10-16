#!/usr/bin/env python3
"""Deterministic, bounded literature-search planning; never mathematical admission.

Network searches are executed separately and logged by the operator. This
controller generates obligation-derived queries, ranks statement signatures,
preserves source occurrences while deduplicating works, and schedules n-ary
research edges only when every declared premise is available. No output of
this program asserts a Lean theorem or changes a proof status.
"""

import argparse
import hashlib
import json
from pathlib import Path
import re


SCORE = {
    "exact_conclusion": 6, "exact_hypotheses": 5,
    "same_normalization_and_constants": 4, "primary": 4,
    "independently_formalized": 3, "addresses_obstruction": 3,
    "missing_prerequisite": 2, "counterexample_or_sharpness": 2,
    "changed_quantifier_order": -5, "drops_uniformity": -5,
    "assumes_target": -6, "weaker_invariant": -6, "unlocated_claim": -8,
}
SIGNATURE_FIELDS = (
    "objects", "ambient", "quantifiers", "hypotheses", "conclusion",
    "constant_dependence", "uniformity", "exceptional_set", "normalization",
    "direction",
)
NEGATIVE_TERMS = (
    "counterexample", "erratum", "missing factor", "wrong normalization",
    "quantifier reversal", "conditional on abc", "not uniform",
)


def require(condition, message):
    if not condition:
        raise ValueError(message)


def canonical(value):
    return json.dumps(value, sort_keys=True, ensure_ascii=False, separators=(",", ":"))


def statement_identity(signature):
    """Syntactic signature identity, explicitly not semantic equivalence."""
    require(set(signature) == set(SIGNATURE_FIELDS), "incomplete theorem signature")
    return "signature-sha256:" + hashlib.sha256(canonical(signature).encode()).hexdigest()


def work_identity(record):
    """Version-sensitive identity; occurrences and retrievals remain separate."""
    if record.get("arxiv"):
        key = record["arxiv"].removeprefix("https://arxiv.org/abs/")
        require(re.fullmatch(r"(?:\d{4}\.\d{4,5}|[a-z-]+(?:\.[A-Z]{2})?/\d{7})v\d+", key), "arXiv identity requires exact version")
        return "arxiv:" + key
    if record.get("doi"):
        require(record.get("version"), "DOI identity requires edition or version")
        return "doi:" + record["doi"].lower().removeprefix("https://doi.org/") + ":" + record["version"]
    if record.get("repository") and record.get("commit"):
        require(re.fullmatch(r"[0-9a-f]{40}", record["commit"]), "full repository commit required")
        return "commit:" + record["repository"] + ":" + record["commit"] + ":" + record.get("path", "")
    require(record.get("content_digest"), "unversioned source requires content digest")
    return "content:" + record["content_digest"]


def deduplicate(records):
    works, seen = {}, set()
    for record in records:
        occurrence = record["source_id"]
        require(occurrence not in seen, "duplicate source occurrence identity")
        seen.add(occurrence)
        works.setdefault(work_identity(record), []).append(record)
    return {key: sorted(value, key=lambda row: row["source_id"])
            for key, value in sorted(works.items())}


def rank(features):
    require(set(features) <= set(SCORE), "unknown ranking feature")
    require(all(type(value) is bool for value in features.values()), "ranking features must be Boolean")
    contributions = {key: SCORE[key] for key, active in sorted(features.items()) if active}
    return {"score": sum(contributions.values()), "contributions": contributions,
            "meaning": "review priority only; no truth or entailment judgment"}


def generate_queries(obligation):
    signature = obligation["signature"]
    sid = statement_identity(signature)
    families = [
        ("exact", obligation["exact_statement"]),
        ("symbolic", signature["conclusion"]),
        ("objects", " ".join(signature["objects"])),
        ("hypotheses", " ".join(signature["hypotheses"])),
        ("normalization", signature["normalization"]),
    ]
    families += [("synonym", term) for term in obligation.get("synonyms", [])]
    families += [("source-key", term) for term in obligation.get("source_keys", [])]
    families += [("formal-declaration", term) for term in obligation.get("declaration_queries", [])]
    core = " ".join(signature["objects"])
    families += [("negative", core + " " + term) for term in NEGATIVE_TERMS]
    families += [("premise-deletion", core + " without " + premise)
                 for premise in signature["hypotheses"]]
    seen, rows = set(), []
    for family, query in families:
        query = " ".join(query.split())
        if query and query not in seen:
            seen.add(query)
            rows.append({"obligation": obligation["id"], "signature_id": sid,
                         "family": family, "query": query, "execution": "not-executed"})
    return rows


def plan(obligations, budget):
    require(type(budget) is int and budget >= 0, "invalid search budget")
    obligations = sorted(obligations, key=lambda o: (o.get("priority", 0), o["id"]))
    require(len({o["id"] for o in obligations}) == len(obligations), "duplicate obligation identity")
    all_rows = [row for obligation in obligations
                for row in generate_queries(obligation)]
    # Round-robin across obligations and query families avoids starving later routes.
    by_id = {o["id"]: [] for o in obligations}
    for row in all_rows:
        by_id[row["obligation"]].append(row)
    ordered = []
    while any(by_id.values()):
        for oid in by_id:
            if by_id[oid]:
                ordered.append(by_id[oid].pop(0))
    return {"queries": ordered[:budget], "coverage": {
        "budget": budget, "generated": len(ordered), "scheduled": min(budget, len(ordered)),
        "executed": 0, "deferred": len(ordered[budget:]), "exhaustive": False,
        "mathematical_admission": False}}


def ready_edges(graph, available):
    """AND across a whole edge; OR across alternative edges. Readiness is not proof."""
    nodes = {n["id"] for n in graph["nodes"]}
    require(len(nodes) == len(graph["nodes"]), "duplicate statement node")
    require(set(available) <= nodes, "unknown available node")
    ready, seen = [], set()
    for edge in graph["edges"]:
        require(edge["id"] not in seen, "duplicate inference edge")
        seen.add(edge["id"])
        premises = edge["premises"]
        require(type(premises) is list and len(premises) == len(set(premises)), "invalid n-ary premise set")
        require(set(premises) <= nodes and edge["conclusion"] in nodes, "unknown edge endpoint")
        require(edge["conclusion"] not in premises, "self-dependent inference")
        # A separately frozen signature fixes the full premise set. Removing one
        # listed premise cannot silently turn an AND-edge into a weaker edge.
        require(edge["required_premises"] == premises, "inference premise signature changed")
        if edge.get("status") != "refuted-at-scope" and set(premises) <= set(available):
            ready.append(edge["id"])
    return {"ready_for_review": ready, "mathematical_admission": False}


def snowball(results, seen, budget):
    """Bounded deterministic next retrievals from backward/forward/erratum links."""
    require(type(budget) is int and budget >= 0, "invalid retrieval budget")
    candidates = []
    for result in results:
        for direction in ("backward", "forward", "erratum", "critique"):
            for link in result.get(direction, []):
                require(link.get("locator") and link.get("url"), "unlocated citation candidate")
                if link["identity"] not in seen:
                    candidates.append({**link, "direction": direction, "from": result["source_id"]})
    candidates.sort(key=lambda row: (-row.get("priority", 0), row["identity"], row["from"]))
    unique = {}
    for row in candidates:
        unique.setdefault(row["identity"], row)
    return list(unique.values())[:budget]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("obligations", type=Path)
    parser.add_argument("--budget", type=int, default=24)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    result = plan(json.loads(args.obligations.read_text()), args.budget)
    raw = json.dumps(result, ensure_ascii=False, indent=2) + "\n"
    if args.output:
        with args.output.open("x") as stream:
            stream.write(raw)
    else:
        print(raw, end="")


if __name__ == "__main__":
    main()
