---
schema_version: "0.1.1"
id: "urn:uuid:20fa8652-bedb-41d6-8b6e-5a4e676c19aa"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "L2 space theory (scalar measure spaces)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-lp", "type": "subjectSpecialization", "target": "urn:uuid:718b562b-0637-4e67-99b0-95fecae91bea", "origin": "direct", "status": "proposed", "sources": ["L49", "L50"], "rationale": "The exponent-two case is both an Lp specialization and an inner-product-space subject."}, {"edge": "parent-hilbert", "type": "subjectSpecialization", "target": "urn:uuid:866d44e7-8be3-4b23-b2ea-03cab0ce63b9", "origin": "direct", "status": "proposed", "sources": ["L49", "L50"], "rationale": "The exponent-two case is both an Lp specialization and an inner-product-space subject."}]
navigation_parent: "urn:uuid:718b562b-0637-4e67-99b0-95fecae91bea"
facets: []
relations: []
sources: [{"key": "L49", "locator": "Registered inspection scope; see source register."}, {"key": "L50", "locator": "Registered inspection scope; see source register."}]
warrant: {"literary": "Established subject; bounded sources below.", "user": "Retrieve analytic structures and explicit hypotheses.", "organizational": "Separate subjects from source artifacts and proof evidence."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.11-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed parentage; independent review pending."}]
proposal_refs: ["urn:uuid:a2ba1baa-9bc0-4c26-81cf-f964a90e9634"]
decision_refs: ["D01", "D03", "D04", "D15"]
---
# L2 space theory (scalar measure spaces)

[Lp space theory (1 <= p <= infinity)](../index.md) · [Hilbert space theory (real or complex)](../../../../../functional-analysis/banach-spaces/hilbert-spaces/index.md) · [Subjects](../../../../../../index.md) · [Taxonomy](../../../../../../../index.md)

## Definition

The study of square-integrable real or complex scalar-function classes on a specified measure space, with inner product obtained by integrating f times the conjugate of g.

## Scope

The exponent is exactly two, the measure is nonnegative, and functions are identified almost everywhere. The inner product uses the first-linear convention. Counting measure gives sequence-space examples. Separability, point evaluation, a Fourier basis and a specific differential operator are not part of the definition and must not be inferred from the L2 label.

## Browse

Selected division criterion: Measure-space or additional-structure restriction. No narrower canonical records are authored yet; the field is not thereby exhausted.

## Example and boundary

On the real line with Lebesgue measure, the indicators of [n,n+1] converge pointwise to zero as the positive integer n tends to infinity. Their L2 norms remain one, so the sequence does not converge to zero in norm. A change in convergence mode changes the conclusion.

## Parentage

Both proposed parents refer to the same scoped subject. The directory home selects a browsing route, not exclusive mathematical ownership. A related-topic link instead of the second specialization remains an explicit review alternative.

## Sources and review

[L49, L50](../../../../../../../standards/index.md) records editions, inspection limits and rights. [The placement proposal](../../../../../../../proposals/new-concepts/analysis-measure-fourier.md) retains alternatives and review criteria. Repository implementation is unassessed, not absent. This subject record is neither a new mathematical result nor proof, authorship or execution approval.
