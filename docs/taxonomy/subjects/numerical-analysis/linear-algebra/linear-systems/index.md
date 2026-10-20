---
schema_version: "0.1.1"
id: "urn:uuid:1e436f29-6a2e-4fdd-90f7-60b6c85624d1"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Numerical solution of linear systems"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-nla", "target": "urn:uuid:09a7cc2c-9c83-403b-8878-ec023725dedb", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L24", "L25"], "rationale": "Restricts the parent subject to the stated problem or algorithm family and explicit hypotheses."}]
navigation_parent: "urn:uuid:09a7cc2c-9c83-403b-8878-ec023725dedb"
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
# Numerical solution of linear systems

[Numerical linear algebra](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of numerical methods, error and computational cost for finding solutions of linear equations represented by matrices or linear operators.

## Scope

The ambient subject includes direct and iterative approaches. Existence, uniqueness and compatibility depend on the selected system; they are not supplied by this label. Rectangular or singular systems need explicit solution conventions and are not automatically equivalent to unconstrained least squares. A small residual measures agreement with the equations, not necessarily a small error in the unknown.

## Browse

Selected division criterion: Solution strategy; the iterative branch is selected, while direct methods remain unpopulated.

Selected narrower subjects: [Iterative solution theory for linear systems](iterative/index.md).

## Example and boundary

For nonsingular A, if r=b-Ax then x_star-x=A^{-1}r. This identity explains why the norm of the inverse matters when interpreting a residual; it is not a certification of computed data.

## Sources and review

[L24, L25](../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../proposals/new-concepts/numerical-optimization.md) preserves alternatives and acceptance criteria. These are subject descriptions, not new results or software qualification. All parentage is proposed. Repository implementation is unassessed, not absent; source-specific attribution and proof evidence remain separate.
