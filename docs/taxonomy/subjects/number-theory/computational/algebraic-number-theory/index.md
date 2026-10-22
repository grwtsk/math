---
schema_version: "0.1.1"
id: "urn:uuid:df193821-ba5e-444b-9613-610c85927e6b"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Computational algebraic number theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-computational", "target": "urn:uuid:37973241-e8ba-4a2f-a597-529739204d6f", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L29", "L31"], "rationale": "Restricts computational arithmetic to algebraic-number problems."}, {"edge": "parent-algebraic", "target": "urn:uuid:93696268-3f9f-4855-9288-1e9286ad4177", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L29", "L31"], "rationale": "Restricts algebraic-number questions to their algorithmic study."}]
navigation_parent: "urn:uuid:37973241-e8ba-4a2f-a597-529739204d6f"
facets: []
relations: []
sources: [{"key": "L29", "locator": "Author v3.08 course outline: rings of integers, ideal factorization, class number, units and fields."}, {"key": "L31", "locator": "Author abstract of 1992 algorithmic algebraic-number-theory survey: explicit number-field computations."}]
warrant: {"literary": "Established terminology with bounded literature warrants; precise local scope and placement need independent review.", "user": "Find arithmetic subjects independently of repository research priorities or implementations.", "organizational": "Keep subject, algorithm, theorem, evidence and operational permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.7-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed placement; no source migration or external-data import."}]
proposal_refs: ["urn:uuid:b3592120-494d-41c9-a967-9dd0c8e653f0"]
decision_refs: ["D01", "D03", "D04", "D11"]
---
# Computational algebraic number theory

[Computational number theory](../index.md) · [Algebraic number theory](../../algebraic/index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of algorithms for algebraic-number arithmetic and invariants, with explicit representations of number fields, their orders, ideals and related algebraic structures.

## Scope

Selected problems include computing rings of integers, units, class groups and Galois information. Inputs, promised hypotheses and conditional versus unconditional guarantees must be stated for each algorithm; one task does not certify all the others. An exact algebraic representation is distinct from a floating-point approximation, and testing an implementation is distinct from proving its mathematical specification.

## Browse

Selected division criterion: Arithmetic invariant or computational task; the single canonical page serves both proposed parents.

No narrower canonical pages are authored yet; this is not a claim that no narrower mathematical questions exist.

## Example and boundary

A polynomial representation of a degree-d number field supplies coordinates for elements. It does not automatically supply an integral basis or a verified class group.

## Why two parents

Both computational number theory and algebraic number theory specialize to this same algorithmic arithmetic subject. The computational directory is its navigational home, not exclusive ownership. A related-topic link instead of the second parent remains a reviewable alternative; no mathematical implication or type coercion follows from either edge.

## Sources and review

[L29, L31](../../../../standards/index.md) records the editions, inspection limits and rights. [Placement proposal](../../../../proposals/new-concepts/number-theory.md) retains alternatives and acceptance criteria. These are original subject explanations, not new mathematical results. All parentage is proposed. Local implementation is unassessed, not absent; proof and source-specific attribution remain separate.
