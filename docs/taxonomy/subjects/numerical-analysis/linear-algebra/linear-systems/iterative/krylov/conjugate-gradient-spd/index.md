---
schema_version: "0.1.1"
id: "urn:uuid:9eb25631-96c6-4737-b244-17e10e5a8929"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Conjugate-gradient theory (real symmetric positive-definite systems)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-krylov", "target": "urn:uuid:46269753-be23-4ec7-adc4-e2a5c01d29d3", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L25", "L26"], "rationale": "Restricts the parent subject to the stated problem or algorithm family and explicit hypotheses."}, {"edge": "parent-quadratic", "target": "urn:uuid:15c70f79-f6ea-43ba-b22e-7ac3c6fdcbd5", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L25", "L26"], "rationale": "Selects the conjugate-gradient solution theory of this quadratic class, rather than treating any use of optimization as subtyping."}]
navigation_parent: "urn:uuid:46269753-be23-4ec7-adc4-e2a5c01d29d3"
facets: []
relations: []
sources: [{"key": "L25", "locator": "Templates second-edition electronic text: Chapters 1-2, section 2.3.1 and sections 4.2, 5.1."}, {"key": "L26", "locator": "Author book page, publisher description and 2004 edition listing; full book not inspected in this increment."}]
warrant: {"literary": "Established subject terminology supported by the cited primary sources; the precise local scopes and parentage require independent review.", "user": "Find numerical and optimization topics independently of repository implementations.", "organizational": "Keep problem assumptions, numerical evidence, mathematical proof and operational permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.6-pilot", "date": "2026-10-20", "change": "Original local subject record; proposed placement; no source migration or classification-data import."}]
proposal_refs: ["urn:uuid:839a77ac-06ca-49a0-a167-d1c03a077368"]
decision_refs: ["D01", "D03", "D04", "D10"]
---
# Conjugate-gradient theory (real symmetric positive-definite systems)

[Krylov-subspace theory for linear-system solvers](../index.md) · [Unconstrained strictly convex quadratic optimization (finite-dimensional real)](../../../../../../optimization/convex/unconstrained-positive-definite-quadratics/index.md) · [Subjects](../../../../../../index.md) · [Taxonomy](../../../../../../../index.md)

## Definition

The study of the linear conjugate-gradient method for Ax=b with a real symmetric positive-definite matrix, equivalently its minimization of the associated strictly convex quadratic over successive affine Krylov spaces.

## Scope

Here A is a fixed real n-by-n matrix with n positive, b and the initial iterate are real vectors, and the baseline recurrence uses exact arithmetic without preconditioning. For q(x)=x^T A x/2-b^T x, the unique minimizer solves Ax=b. An exact-arithmetic finite-termination statement does not promise the same behavior after rounding. Nonlinear conjugate gradients, indefinite systems, preconditioners and implementation error require additional hypotheses and are not silently included.

## Browse

Selected division criterion: Arithmetic model or specified variant; no narrower canonical pages are authored yet.

No narrower canonical pages are authored yet; narrower research questions are not thereby absent from mathematics.

## Example and boundary

With A=diag(2,3) and b=(2,6), q(x)=(x_1-1)^2+3(x_2-2)^2/2-7, so the minimizer is (1,2). This elementary identity illustrates the shared problem; no program run or new theorem is claimed.

## Why two parents

The same restricted solution theory studies affine Krylov iterates and minimization of a specified quadratic. Both proposed parentages lead to this one page. The second parent is a subject specialization, not a claim that every application of an optimization method is its subtype. The numerical branch is the navigational home; the alternative of a related-topic link remains open in the proposal.

## Sources and review

[L25, L26](../../../../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../../../../proposals/new-concepts/numerical-optimization.md) preserves alternatives and acceptance criteria. These are subject descriptions, not new results or software qualification. All parentage is proposed. Repository implementation is unassessed, not absent; source-specific attribution and proof evidence remain separate.
