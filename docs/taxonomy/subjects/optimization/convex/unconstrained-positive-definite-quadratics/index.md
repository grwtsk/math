---
schema_version: "0.1.1"
id: "urn:uuid:15c70f79-f6ea-43ba-b22e-7ac3c6fdcbd5"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Unconstrained strictly convex quadratic optimization (finite-dimensional real)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-convex", "target": "urn:uuid:5b6b329f-d4f2-4806-ac40-8ad34d655843", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L26", "L25"], "rationale": "Restricts the parent subject to the stated problem or algorithm family and explicit hypotheses."}]
navigation_parent: "urn:uuid:5b6b329f-d4f2-4806-ac40-8ad34d655843"
facets: []
relations: []
sources: [{"key": "L26", "locator": "Author book page, publisher description and 2004 edition listing; full book not inspected in this increment."}, {"key": "L25", "locator": "Templates second-edition electronic text: Chapters 1-2, section 2.3.1 and sections 4.2, 5.1."}]
warrant: {"literary": "Established subject terminology supported by the cited primary sources; the precise local scopes and parentage require independent review.", "user": "Find numerical and optimization topics independently of repository implementations.", "organizational": "Keep problem assumptions, numerical evidence, mathematical proof and operational permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.6-pilot", "date": "2026-10-20", "change": "Original local subject record; proposed placement; no source migration or classification-data import."}]
proposal_refs: ["urn:uuid:839a77ac-06ca-49a0-a167-d1c03a077368"]
decision_refs: ["D01", "D03", "D04", "D10"]
---
# Unconstrained strictly convex quadratic optimization (finite-dimensional real)

[Convex optimization](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of minimizing real finite-dimensional quadratic functions with symmetric positive-definite quadratic part and no constraints on the variable.

## Scope

The local convention is q(x)=x^T A x/2-b^T x+c on R^n, with n positive and A real symmetric positive definite. Its unique minimizer is A^{-1}b; the constant c does not change it. Positive-semidefinite or indefinite matrices, constraints, infinite-dimensional operators and stochastic objectives require different scopes. The underlying minimization problem is not the conjugate-gradient algorithm itself.

## Browse

Selected division criterion: Solution theory by algorithm; the conjugate-gradient specialization is one selected route, not the only solution approach.

Selected narrower subjects: [Conjugate-gradient theory (real symmetric positive-definite systems)](../../../numerical-analysis/linear-algebra/linear-systems/iterative/krylov/conjugate-gradient-spd/index.md).

## Example and boundary

Since q(x)-q(x_star)=(x-x_star)^T A (x-x_star)/2, the same quadratic measures the energy error. This exact algebraic observation does not identify Euclidean residual size with energy error or qualify a floating-point solver.

## Sources and review

[L26, L25](../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../proposals/new-concepts/numerical-optimization.md) preserves alternatives and acceptance criteria. These are subject descriptions, not new results or software qualification. All parentage is proposed. Repository implementation is unassessed, not absent; source-specific attribution and proof evidence remain separate.
