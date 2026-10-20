---
schema_version: "0.1.1"
id: "urn:uuid:09a7cc2c-9c83-403b-8878-ec023725dedb"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Numerical linear algebra"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-numerical", "target": "urn:uuid:5a00d561-cb33-491e-95b5-123f6be35e6c", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L24", "L25"], "rationale": "Restricts the parent subject to the stated problem or algorithm family and explicit hypotheses."}]
navigation_parent: "urn:uuid:5a00d561-cb33-491e-95b5-123f6be35e6c"
facets: []
relations: []
sources: [{"key": "L24", "locator": "DLMF section 3.2(i),(iii),(iv): linear solves, conditioning and eigenvalue tasks."}, {"key": "L25", "locator": "Templates second-edition electronic text: Chapters 1-2, section 2.3.1 and sections 4.2, 5.1."}]
warrant: {"literary": "Established subject terminology supported by the cited primary sources; the precise local scopes and parentage require independent review.", "user": "Find numerical and optimization topics independently of repository implementations.", "organizational": "Keep problem assumptions, numerical evidence, mathematical proof and operational permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.6-pilot", "date": "2026-10-20", "change": "Original local subject record; proposed placement; no source migration or classification-data import."}]
proposal_refs: ["urn:uuid:839a77ac-06ca-49a0-a167-d1c03a077368"]
decision_refs: ["D01", "D03", "D04", "D10"]
---
# Numerical linear algebra

[Numerical analysis](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of algorithms and numerical error for matrix and vector problems, including linear equations, least squares, eigenvalues and matrix factorizations.

## Scope

This subject is narrower than abstract linear algebra and broader than solving linear systems. Matrix structure, representation, conditioning, rounding and resource use affect its questions. It is a subject about computational problems, not a single matrix object or a claim that a particular library implements an algorithm correctly.

## Browse

Selected division criterion: Linear-algebraic computational task; only linear-system solution is populated here.

Selected narrower subjects: [Numerical solution of linear systems](linear-systems/index.md).

## Example and boundary

An eigenvalue computation and a linear solve may both use a factorization but do not ask for the same output. Classification by a shared technique does not identify the tasks.

## Sources and review

[L24, L25](../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../proposals/new-concepts/numerical-optimization.md) preserves alternatives and acceptance criteria. These are subject descriptions, not new results or software qualification. All parentage is proposed. Repository implementation is unassessed, not absent; source-specific attribution and proof evidence remain separate.
