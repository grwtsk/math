---
schema_version: "0.1.1"
id: "urn:uuid:51a46483-2271-5808-bde1-8327d5fb8eec"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Stochastic process theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-1", "type": "subjectSpecialization", "target": "urn:uuid:8abb03fc-4067-4580-9b34-47a7aaee5943", "origin": "direct", "status": "proposed", "sources": ["L54", "L57", "L58"], "rationale": "Restricts the parent subject to the stated stochastic process theory."}]
navigation_parent: "urn:uuid:8abb03fc-4067-4580-9b34-47a7aaee5943"
facets: []
relations: []
sources: [{"key": "L54", "locator": "Registered bounded source inspection; see source register."}, {"key": "L57", "locator": "Registered bounded source inspection; see source register."}, {"key": "L58", "locator": "Registered bounded source inspection; see source register."}]
warrant: {"literary": "Established probability subject; bounded source warrants below.", "user": "Retrieve limiting assumptions, dependence and path-version distinctions.", "organizational": "Separate universal subjects from repository artifacts and proof evidence."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.12-pilot", "date": "2026-10-20", "change": "Original local description and proposed parentage; independent review pending."}]
proposal_refs: ["urn:uuid:ef76df22-8a02-56a7-b64a-3c363473c2b1"]
decision_refs: ["D01", "D03", "D04", "D16"]
---
# Stochastic process theory

[Probability theory](../ProbabilityTheory/index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of families of random variables indexed by a specified set, including their joint distributions, dependence structure and, when meaningful, sample-path properties.

## Scope

The index set can represent discrete time, continuous time or spatial inputs; it is not automatically a physical clock. State spaces, measurable structures and filtrations must be specified where used. Finite-dimensional distributions and properties of a chosen path version are different data. A family of one-dimensional marginals alone does not determine the joint process.

## Browse

Selected division criterion: Specified structural conditions; overlapping families, not a disjoint partition.

Browse [Martingale theory (discrete-time integrable real processes)](Martingales/DiscreteTimeIntegrableReal/index.md) · [Gaussian process theory (real-valued)](../RandomStructures/GaussianProcesses/RealValued/index.md) · [Markov process theory (continuous time, time-homogeneous)](MarkovProcesses/ContinuousTimeHomogeneous/index.md).

The earlier [discrete-time Markov branch](MarkovChains/index.md) remains at its existing home and retains its existing direct parent. This cross-link is navigation, not an added semantic edge or silent reparenting.

## Example and boundary

Let Z be standard normal. The processes X_n=Z for all n and Y_n made of independent standard normal variables have identical one-time marginals but different joint dependence. Marginal normality cannot identify a process model.

## Sources and review

[L54, L57, L58](../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../proposals/new-concepts/probability-processes.md) retains alternatives and acceptance criteria. Repository implementation is unassessed, not absent. This record confers no proof, originality, attribution or execution approval.
