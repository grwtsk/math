---
schema_version: "0.1.1"
id: "urn:uuid:ba9c47a2-28b3-4974-81e0-73c0981dcc2d"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Measure theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-real", "type": "subjectSpecialization", "target": "urn:uuid:08e5fed0-7528-4d4c-aa1f-01c11c97eb49", "origin": "direct", "status": "proposed", "sources": ["L49", "L52"], "rationale": "The subject specializes Real analysis by its analytic structure or domain; placement remains proposed."}]
navigation_parent: "urn:uuid:08e5fed0-7528-4d4c-aa1f-01c11c97eb49"
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
# Measure theory

[Real analysis](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of measurable spaces, measures, measurable maps and the structures and convergence questions associated with assigning size to sets.

## Scope

The baseline is a sigma-algebra with a nonnegative countably additive measure, possibly of infinite total mass. Probability measures add total mass one; signed measures, outer measures and capacities require distinct qualifications. An abstract measurable space need not be a subset of the real line. The real-analysis home is conventional navigation, not a restriction of the underlying set.

## Browse

Selected division criterion: Construction or analytic operation associated with measures. Browse [Lebesgue integration theory](lebesgue-integration/index.md).

## Example and boundary

A singleton has Lebesgue measure zero on the real line but counting measure one. Neither value is an intrinsic property of the set alone: the measurable space and the selected measure are part of the data.

## Sources and review

[L49, L52](../../../../standards/index.md) records editions, inspection limits and rights. [The placement proposal](../../../../proposals/new-concepts/analysis-measure-fourier.md) retains alternatives and review criteria. Repository implementation is unassessed, not absent. This subject record is neither a new mathematical result nor proof, authorship or execution approval.
