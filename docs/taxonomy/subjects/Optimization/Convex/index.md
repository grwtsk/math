---
schema_version: "0.1.1"
id: "urn:uuid:5b6b329f-d4f2-4806-ac40-8ad34d655843"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Convex optimization"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-optimization", "target": "urn:uuid:ac890272-7f5e-4090-96ee-5b31b92812b0", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L26"], "rationale": "Restricts the parent subject to the stated problem or algorithm family and explicit hypotheses."}]
navigation_parent: "urn:uuid:ac890272-7f5e-4090-96ee-5b31b92812b0"
facets: []
relations: []
sources: [{"key": "L26", "locator": "Author book page, publisher description and 2004 edition listing; full book not inspected in this increment."}]
warrant: {"literary": "Established subject terminology supported by the cited primary sources; the precise local scopes and parentage require independent review.", "user": "Find numerical and optimization topics independently of repository implementations.", "organizational": "Keep problem assumptions, numerical evidence, mathematical proof and operational permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.6-pilot", "date": "2026-10-20", "change": "Original local subject record; proposed placement; no source migration or classification-data import."}]
proposal_refs: ["urn:uuid:839a77ac-06ca-49a0-a167-d1c03a077368"]
decision_refs: ["D01", "D03", "D04", "D10"]
---
# Convex optimization

[Mathematical optimization](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of minimizing convex objectives over convex feasible sets, together with the structure, optimality conditions and algorithms of those problems.

## Scope

The canonical direction here is minimization; a concave maximization can be reformulated by negating its objective. Convexity does not alone imply attainment, uniqueness, strong duality or numerical reliability. Nonconvex formulations and merely locally convex behavior must not be accepted under this subject without an explicit reformulation.

## Browse

Selected division criterion: Objective and constraint structure; a finite-dimensional unconstrained quadratic class is selected.

Selected narrower subjects: [Unconstrained strictly convex quadratic optimization (finite-dimensional real)](UnconstrainedPositiveDefiniteQuadratics/index.md).

## Example and boundary

A constant objective on a nonempty convex set need not have a unique optimizer. Strict convexity can ensure at most one minimizer, but existence remains a separate question.

## Sources and review

[L26](../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../proposals/new-concepts/numerical-optimization.md) preserves alternatives and acceptance criteria. These are subject descriptions, not new results or software qualification. All parentage is proposed. Repository implementation is unassessed, not absent; source-specific attribution and proof evidence remain separate.
