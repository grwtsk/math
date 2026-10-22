---
schema_version: "0.1.1"
id: "urn:uuid:718b562b-0637-4e67-99b0-95fecae91bea"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Lp space theory (1 <= p <= infinity)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-lebesgue", "type": "subjectSpecialization", "target": "urn:uuid:bc652585-5fb0-4cb6-a91a-20769447862b", "origin": "direct", "status": "proposed", "sources": ["L49", "L50"], "rationale": "The restricted integrability family is a measure-theoretic and Banach-space subject; neither parent is exclusive."}, {"edge": "parent-banach", "type": "subjectSpecialization", "target": "urn:uuid:57ce1c47-e2c8-4b8d-8ed3-675cca62c991", "origin": "direct", "status": "proposed", "sources": ["L49", "L50"], "rationale": "The restricted integrability family is a measure-theoretic and Banach-space subject; neither parent is exclusive."}]
navigation_parent: "urn:uuid:bc652585-5fb0-4cb6-a91a-20769447862b"
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
# Lp space theory (1 <= p <= infinity)

[Lebesgue integration theory](../index.md) · [Banach space theory (real or complex)](../../../../functional-analysis/banach-spaces/index.md) · [Subjects](../../../../../index.md) · [Taxonomy](../../../../../../index.md)

## Definition

The study of scalar measurable-function classes with finite p-norm, for 1 <= p < infinity, or finite essential-supremum norm for p=infinity, identifying functions that agree almost everywhere.

## Scope

A nonnegative measure and real or complex scalar field are fixed. For finite p the norm is the p-th root of the integral of the p-th power of absolute value; for infinity it is the essential supremum. Values on null sets do not specify different vectors. Cases 0<p<1, variable exponents and vector-valued integration are excluded from this restricted record. Duality, separability and inclusions between exponents require their own measure-space assumptions.

## Browse

Selected division criterion: Exponent restriction. Browse [L2 space theory (scalar measure spaces)](l2/index.md).

## Example and boundary

The indicator of the singleton {0} and the zero function are distinct pointwise functions but give the same class for Lebesgue measure. The indicator has pointwise supremum one and essential supremum zero. A point-evaluation rule is therefore not automatically well-defined on these classes.

## Parentage

Both proposed parents refer to the same scoped subject. The directory home selects a browsing route, not exclusive mathematical ownership. A related-topic link instead of the second specialization remains an explicit review alternative.

## Sources and review

[L49, L50](../../../../../../standards/index.md) records editions, inspection limits and rights. [The placement proposal](../../../../../../proposals/new-concepts/analysis-measure-fourier.md) retains alternatives and review criteria. Repository implementation is unassessed, not absent. This subject record is neither a new mathematical result nor proof, authorship or execution approval.
