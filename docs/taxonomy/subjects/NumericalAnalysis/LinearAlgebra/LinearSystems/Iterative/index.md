---
schema_version: "0.1.1"
id: "urn:uuid:a0c26630-bd74-42a2-939b-ff8d1fd0d29b"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Iterative solution theory for linear systems"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-systems", "target": "urn:uuid:1e436f29-6a2e-4fdd-90f7-60b6c85624d1", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L25"], "rationale": "Restricts the parent subject to the stated problem or algorithm family and explicit hypotheses."}]
navigation_parent: "urn:uuid:1e436f29-6a2e-4fdd-90f7-60b6c85624d1"
facets: []
relations: []
sources: [{"key": "L25", "locator": "Templates second-edition electronic text: Chapters 1-2, section 2.3.1 and sections 4.2, 5.1."}]
warrant: {"literary": "Established subject terminology supported by the cited primary sources; the precise local scopes and parentage require independent review.", "user": "Find numerical and optimization topics independently of repository implementations.", "organizational": "Keep problem assumptions, numerical evidence, mathematical proof and operational permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.6-pilot", "date": "2026-10-20", "change": "Original local subject record; proposed placement; no source migration or classification-data import."}]
proposal_refs: ["urn:uuid:839a77ac-06ca-49a0-a167-d1c03a077368"]
decision_refs: ["D01", "D03", "D04", "D10"]
---
# Iterative solution theory for linear systems

[Numerical solution of linear systems](../index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The study of successive-approximation procedures for linear systems, including their convergence, stopping rules and interaction with preconditioning.

## Scope

Stationary and nonstationary methods belong here. An iteration need not decrease every error measure at every step, and convergence depends on the method and system assumptions. A stopping condition and a mathematical error guarantee are distinct records. Parallel execution, scheduling and operational permission are not subject-specialization relations.

## Browse

Selected division criterion: Iteration family; Krylov-subspace methods are selected without excluding stationary iterations.

Selected narrower subjects: [Krylov-subspace theory for linear-system solvers](Krylov/index.md).

## Example and boundary

Writing x_(k+1)=B x_k+c specifies an iteration but does not establish convergence for the chosen B. Analysis of the iteration is distinct from observing a finite run.

## Sources and review

[L25](../../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../../proposals/new-concepts/numerical-optimization.md) preserves alternatives and acceptance criteria. These are subject descriptions, not new results or software qualification. All parentage is proposed. Repository implementation is unassessed, not absent; source-specific attribution and proof evidence remain separate.
