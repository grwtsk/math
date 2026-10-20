---
schema_version: "0.1.1"
id: "urn:uuid:6f2cb4af-cae3-4956-91f9-d385910b72bf"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Primality testing theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-computational", "target": "urn:uuid:37973241-e8ba-4a2f-a597-529739204d6f", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L30", "L32"], "rationale": "Specializes the parent subject to the stated arithmetic scope."}]
navigation_parent: "urn:uuid:37973241-e8ba-4a2f-a597-529739204d6f"
facets: []
relations: []
sources: [{"key": "L30", "locator": "Author second-edition description and dated download/errata listing; full book not inspected."}, {"key": "L32", "locator": "2004 publisher abstract and separate 2019 errata record; no algorithm or correction proof audit."}]
warrant: {"literary": "Established terminology with bounded literature warrants; precise local scope and placement need independent review.", "user": "Find arithmetic subjects independently of repository research priorities or implementations.", "organizational": "Keep subject, algorithm, theorem, evidence and operational permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.7-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed placement; no source migration or external-data import."}]
proposal_refs: ["urn:uuid:b3592120-494d-41c9-a967-9dd0c8e653f0"]
decision_refs: ["D01", "D03", "D04", "D11"]
---
# Primality testing theory

[Computational number theory](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of algorithms that decide whether a given integer at least two is prime, together with their correctness, complexity and error or certificate guarantees.

## Scope

Primality decision is not the same output problem as finding a complete factorization. A probable-prime outcome, a proved prime and a separately checkable certificate must not be substituted for one another. Integers zero and one are not primes; interfaces accepting them need explicit handling. The cited AKS publication and its later errata are retained as separate historical records, not reproduced or audited implementations.

## Browse

Selected division criterion: Guarantee or algorithm family; no individual algorithm receives a canonical page yet.

No narrower canonical pages are authored yet; this is not a claim that no narrower mathematical questions exist.

## Example and boundary

For n=15, the factor 3 is a concrete compositeness witness. A positive primality assertion requires a different argument; failure to find a small factor is not by itself such an argument.

## Sources and review

[L30, L32](../../../../standards/index.md) records the editions, inspection limits and rights. [Placement proposal](../../../../proposals/new-concepts/number-theory.md) retains alternatives and acceptance criteria. These are original subject explanations, not new mathematical results. All parentage is proposed. Local implementation is unassessed, not absent; proof and source-specific attribution remain separate.
