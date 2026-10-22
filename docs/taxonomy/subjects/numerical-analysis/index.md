---
schema_version: "0.1.1"
id: "urn:uuid:5a00d561-cb33-491e-95b5-123f6be35e6c"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Numerical analysis"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: []
navigation_parent: "subjects"
facets: []
relations: []
sources: [{"key": "L23", "locator": "DLMF Chapter 3 and section 3.1: numerical questions and error measures."}, {"key": "L24", "locator": "DLMF section 3.2(i),(iii),(iv): linear solves, conditioning and eigenvalue tasks."}]
warrant: {"literary": "Established subject terminology supported by the cited primary sources; the precise local scopes and parentage require independent review.", "user": "Find numerical and optimization topics independently of repository implementations.", "organizational": "Keep problem assumptions, numerical evidence, mathematical proof and operational permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.6-pilot", "date": "2026-10-20", "change": "Original local subject record; proposed placement; no source migration or classification-data import."}]
proposal_refs: ["urn:uuid:839a77ac-06ca-49a0-a167-d1c03a077368"]
decision_refs: ["D01", "D03", "D04", "D10"]
---
# Numerical analysis

[Subjects](../index.md) · [Taxonomy](../../index.md)

## Definition

The mathematical study of numerical procedures for solving mathematical problems, including approximation, error, convergence and the cost of computation.

## Scope

Continuous problems and finite numerical representations are central, but a numerical method may also have an exact-arithmetic formulation. The field is not synonymous with running software, symbolic manipulation, empirical data analysis or every discrete algorithm. Conditioning describes sensitivity of a problem to input changes; stability concerns the behavior of a chosen computational procedure. Neither property alone supplies the other.

## Browse

Selected division criterion: Mathematical problem family; this batch populates only the linear-algebra branch.

Selected narrower subjects: [Numerical linear algebra](linear-algebra/index.md).

## Example and boundary

Approximating an integral and solving a matrix equation pose different mathematical error questions. A long decimal output is not by itself an error bound.

## Sources and review

[L23, L24](../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../proposals/new-concepts/numerical-optimization.md) preserves alternatives and acceptance criteria. These are subject descriptions, not new results or software qualification. All parentage is proposed. Repository implementation is unassessed, not absent; source-specific attribution and proof evidence remain separate.
