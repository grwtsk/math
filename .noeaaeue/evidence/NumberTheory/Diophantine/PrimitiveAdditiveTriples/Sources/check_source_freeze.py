#!/usr/bin/env python3
"""Verify byte bindings and declared scope of this frozen source evidence.

This is a source-integrity check, never a proof checker or source-correctness
verdict. It performs no network request and executes no downloaded code.
"""
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent

def require(condition, message):
    if not condition:
        raise ValueError(message)

def read_jsonl(path):
    return [json.loads(line) for line in path.read_text().splitlines() if line.strip()]

def digest(path):
    return "sha256:" + hashlib.sha256(path.read_bytes()).hexdigest()

def main():
    ledger = json.loads((ROOT / "abc-source-ledger.json").read_text())
    coverage = json.loads((ROOT / "abc-source-coverage.json").read_text())
    retrievals = read_jsonl(ROOT / "external-search/retrievals.jsonl")
    queries = read_jsonl(ROOT / "external-search/queries.jsonl")
    signatures = read_jsonl(ROOT / "external-search/theorem-signatures.jsonl")
    sources = ledger["source_occurrences"]
    require(len({source["source_id"] for source in sources}) == len(sources), "Duplicate source occurrence")
    require(ledger["mathematical_acceptance"] is False, "Source ledger cannot assert acceptance")
    require(coverage["complete_literature_coverage"] is False, "Coverage cannot be exhaustive")
    require(coverage["kernel_acceptance_from_sources"] is False, "Source digest cannot establish kernel acceptance")
    require(coverage["actual_local_content_download_attempts"] == len(retrievals) == 32, "Retrieval count drift")
    require(coverage["executed_search_queries"] == len(queries) == 24, "Executed query count drift")
    require(sum(bool(row["success"]) for row in retrievals) == coverage["successful_download_attempts"] == 28, "Successful retrieval count drift")
    require(all(query["execution"] == "executed" for query in queries), "Planned queries mislabeled as executed")
    for row in retrievals:
        if row.get("sha256"):
            path = ROOT / row["local_path"]
            require(path.is_file(), "Missing preserved retrieval: " + str(path))
            require(digest(path) == "sha256:" + row["sha256"], "Retrieval digest mismatch: " + str(path))
        if row.get("extracted_path"):
            path = ROOT / row["extracted_path"]
            require(digest(path) == "sha256:" + row["extracted_sha256"], "Text extraction drift: " + str(path))
    for source in sources:
        if source["content_digest"]:
            path = Path(source["local_path"])
            if not path.is_absolute():
                path = ROOT / path
            require(path.is_file(), "Missing source: " + str(path))
            require(digest(path) == source["content_digest"], "Source digest mismatch: " + source["source_id"])
        require(source["formalization_status"] in {"none", "unknown"}, "Source worker cannot set proof acceptance")
        for key in ("kernel_accepted", "axiom_audited", "iut_application_checked", "abc_closure"):
            require(source.get("evidence_coordinates", {}).get(key, False) is False, "Source evidence promoted to proof")
    signature_fields = {"objects", "ambient", "quantifiers", "hypotheses", "conclusion", "constant_dependence", "uniformity", "exceptional_set", "normalization", "direction"}
    for signature in signatures:
        require(signature_fields <= set(signature), "Incomplete theorem signature: " + signature["claim_id"])
    require(any(source["source_id"] == "ss-2018-05" and source["coverage_status"] == "unavailable" for source in sources), "May report access gap lost")
    require(any(source["source_id"] == "ss-2018-08" and source["coverage_status"] == "unavailable" for source in sources), "August report access gap lost")
    for path in ROOT.rglob("*.json"):
        json.loads(path.read_text())
    for path in ROOT.rglob("*.jsonl"):
        read_jsonl(path)
    print(json.dumps({"source_integrity": "checked", "occurrences": len(sources), "queries": len(queries), "retrieval_attempts": len(retrievals), "successful_retrievals": 28, "mathematical_acceptance": False, "network_requests": 0}, sort_keys=True))

if __name__ == "__main__":
    main()
