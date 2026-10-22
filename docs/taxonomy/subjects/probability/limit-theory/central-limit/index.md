---
schema_version: "0.1.1"
id: "urn:uuid:080e0999-f895-5e12-9c4b-7f80bee187dd"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Central limit theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-1", "type": "subjectSpecialization", "target": "urn:uuid:b9675d7e-af1f-5eeb-8787-07dec92fe575", "origin": "direct", "status": "proposed", "sources": ["L54", "L55"], "rationale": "Restricts the parent subject to the stated central limit theory."}]
navigation_parent: "urn:uuid:b9675d7e-af1f-5eeb-8787-07dec92fe575"
facets: []
relations: []
sources: [{"key": "L54", "locator": "Registered bounded source inspection; see source register."}, {"key": "L55", "locator": "Registered bounded source inspection; see source register."}]
warrant: {"literary": "Established probability subject; bounded source warrants below.", "user": "Retrieve limiting assumptions, dependence and path-version distinctions.", "organizational": "Separate universal subjects from repository artifacts and proof evidence."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.12-pilot", "date": "2026-10-20", "change": "Original local description and proposed parentage; independent review pending."}]
proposal_refs: ["urn:uuid:ef76df22-8a02-56a7-b64a-3c363473c2b1"]
decision_refs: ["D01", "D03", "D04", "D16"]
---
# Central limit theory

[Probability limit theory](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of hypotheses under which centered and scaled random quantities have Gaussian limiting distributions, including versions for sums, arrays and processes.

## Scope

The centering, scale, dependence assumptions and state space are part of each result. This subject is not a synonym for all probability limit theorems: stable non-Gaussian limits and laws of large numbers are different tasks. A central limit result by itself supplies neither a quantitative approximation rate nor a pathwise identity. Functional versions need additional tightness and topology conditions.

## Browse

Selected division criterion: Assumption regime and scalar, vector or functional target.

Browse [Central limit theory (real iid, finite positive variance)](iid-finite-variance/index.md).

## Example and boundary

A scalar Gaussian limit at one fixed time does not by itself establish convergence of the entire interpolated path. The scalar and functional questions therefore belong to distinct scoped records or statements rather than an implicit proof-strength upgrade.

## Sources and review

[L54, L55](../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../proposals/new-concepts/probability-processes.md) retains alternatives and acceptance criteria. Repository implementation is unassessed, not absent. This record confers no proof, originality, attribution or execution approval.
