---
schema_version: "0.1.1"
id: "urn:uuid:267a8bd8-914b-5b49-96e0-300b64649f2b"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Markov process theory (continuous time, time-homogeneous)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-1", "type": "subjectSpecialization", "target": "urn:uuid:51a46483-2271-5808-bde1-8327d5fb8eec", "origin": "direct", "status": "proposed", "sources": ["L54", "L57", "L60"], "rationale": "Restricts the parent subject to the stated markov process theory (continuous time, time-homogeneous)."}]
navigation_parent: "urn:uuid:51a46483-2271-5808-bde1-8327d5fb8eec"
facets: []
relations: []
sources: [{"key": "L54", "locator": "Registered bounded source inspection; see source register."}, {"key": "L57", "locator": "Registered bounded source inspection; see source register."}, {"key": "L60", "locator": "Registered bounded source inspection; see source register."}]
warrant: {"literary": "Established probability subject; bounded source warrants below.", "user": "Retrieve limiting assumptions, dependence and path-version distinctions.", "organizational": "Separate universal subjects from repository artifacts and proof evidence."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.12-pilot", "date": "2026-10-20", "change": "Original local description and proposed parentage; independent review pending."}]
proposal_refs: ["urn:uuid:ef76df22-8a02-56a7-b64a-3c363473c2b1"]
decision_refs: ["D01", "D03", "D04", "D16"]
---
# Markov process theory (continuous time, time-homogeneous)

[Stochastic process theory](../../index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The study of continuous-time stochastic processes whose conditional future law, at deterministic times, depends on the past through the present state, with transition kernels depending on elapsed time.

## Scope

The local scope uses t >= 0, a specified standard Borel state space and the natural filtration, with a time-homogeneous family of transition kernels. Continuous time does not mean continuous paths. A deterministic-time Markov property does not automatically include a strong Markov property at stopping times. A transition semigroup does not, without additional analytic assumptions, supply a strongly continuous operator semigroup or a differential generator.

## Browse

Selected division criterion: Specified state-space, transition or path restrictions.

Browse [Brownian motion theory (standard real)](../../BrownianMotion/StandardReal/index.md).

## Example and boundary

A homogeneous Poisson counting process has a continuous time index and jump paths. It illustrates why the word continuous modifies the time parameter here, not the paths; no particular generator domain or numerical simulation is certified by the classification.

## Sources and review

[L54, L57, L60](../../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../../proposals/new-concepts/probability-processes.md) retains alternatives and acceptance criteria. Repository implementation is unassessed, not absent. This record confers no proof, originality, attribution or execution approval.
