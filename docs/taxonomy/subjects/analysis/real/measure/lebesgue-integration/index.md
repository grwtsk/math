---
schema_version: "0.1.1"
id: "urn:uuid:bc652585-5fb0-4cb6-a91a-20769447862b"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Lebesgue integration theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-measure", "type": "subjectSpecialization", "target": "urn:uuid:ba9c47a2-28b3-4974-81e0-73c0981dcc2d", "origin": "direct", "status": "proposed", "sources": ["L49", "L52"], "rationale": "The subject specializes Measure theory by its analytic structure or domain; placement remains proposed."}]
navigation_parent: "urn:uuid:ba9c47a2-28b3-4974-81e0-73c0981dcc2d"
facets: []
relations: []
sources: [{"key": "L49", "locator": "Registered inspection scope; see source register."}, {"key": "L52", "locator": "Registered inspection scope; see source register."}]
warrant: {"literary": "Established subject; bounded sources below.", "user": "Retrieve analytic structures and explicit hypotheses.", "organizational": "Separate subjects from source artifacts and proof evidence."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.11-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed parentage; independent review pending."}]
proposal_refs: ["urn:uuid:a2ba1baa-9bc0-4c26-81cf-f964a90e9634"]
decision_refs: ["D01", "D03", "D04", "D15"]
---
# Lebesgue integration theory

[Measure theory](../index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The theory of integration of measurable scalar functions against a measure using nonnegative simple-function approximation and extension to integrable signed or complex functions.

## Scope

This includes integration against general nonnegative measures, not only Lebesgue measure on Euclidean space. Nonnegative integrals may be infinite; a finite signed or complex integral requires absolute integrability. Limits under integrals require stated assumptions such as monotonicity or an integrable dominating function. Conditional improper integrals are not silently identified with finite Lebesgue integrals.

## Browse

Selected division criterion: Integrability-controlled function-space specialization. Browse [Lp space theory (1 <= p <= infinity)](lp-spaces/index.md).

## Example and boundary

On (0,1), f_n(x)=n times the indicator of (0,1/n) converges pointwise to zero, but each integral equals one. The limit of the integrals is therefore not the integral of the limit. No common integrable domination is supplied by mere pointwise convergence.

## Sources and review

[L49, L52](../../../../../standards/index.md) records editions, inspection limits and rights. [The placement proposal](../../../../../proposals/new-concepts/analysis-measure-fourier.md) retains alternatives and review criteria. Repository implementation is unassessed, not absent. This subject record is neither a new mathematical result nor proof, authorship or execution approval.
