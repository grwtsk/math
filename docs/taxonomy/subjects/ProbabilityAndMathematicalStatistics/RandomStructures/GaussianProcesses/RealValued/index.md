---
schema_version: "0.1.1"
id: "urn:uuid:36799ca5-d52f-5e34-8cb8-415004b017f4"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Gaussian process theory (real-valued)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-1", "type": "subjectSpecialization", "target": "urn:uuid:51a46483-2271-5808-bde1-8327d5fb8eec", "origin": "direct", "status": "proposed", "sources": ["L58"], "rationale": "Restricts the parent subject to the stated gaussian process theory (real-valued)."}]
navigation_parent: "urn:uuid:51a46483-2271-5808-bde1-8327d5fb8eec"
facets: []
relations: []
sources: [{"key": "L58", "locator": "Registered bounded source inspection; see source register."}]
warrant: {"literary": "Established probability subject; bounded source warrants below.", "user": "Retrieve limiting assumptions, dependence and path-version distinctions.", "organizational": "Separate universal subjects from repository artifacts and proof evidence."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.12-pilot", "date": "2026-10-20", "change": "Original local description and proposed parentage; independent review pending."}]
proposal_refs: ["urn:uuid:ef76df22-8a02-56a7-b64a-3c363473c2b1"]
decision_refs: ["D01", "D03", "D04", "D16"]
---
# Gaussian process theory (real-valued)

[Stochastic process theory](../../../StochasticProcesses/index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The study of real-valued indexed random families whose every finite linear combination has a Gaussian law, allowing degenerate Gaussian laws.

## Scope

The index set is specified and need not be time. Consistent mean and positive-semidefinite covariance data determine finite-dimensional Gaussian laws, not an unstated sample-path regularity or choice of version. Gaussian one-time marginals are insufficient for joint Gaussianity. Stationarity, independence, the Markov property and continuity require separate conditions.

## Browse

Selected division criterion: Covariance and index-set restrictions, with path regularity explicit.

Browse [Brownian motion theory (standard real)](../../../StochasticProcesses/BrownianMotion/StandardReal/index.md).

## Example and boundary

Let Z be standard normal and let S be an independent fair sign. Both Z and SZ are standard normal, but their absolute values always agree. The pair is not jointly Gaussian: it is uncorrelated yet dependent. Normal marginals therefore cannot replace the finite-dimensional definition.

## Sources and review

[L58](../../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../../proposals/new-concepts/probability-processes.md) retains alternatives and acceptance criteria. Repository implementation is unassessed, not absent. This record confers no proof, originality, attribution or execution approval.
