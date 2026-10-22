---
schema_version: 0.1.0
id: urn:uuid:770ecd4c-5dc6-4ebe-88da-5033eb4ced60
record_kind: subject_concept
scheme: grwtsk-mathematics
labels: {preferred: {en: Markov chain theory (discrete time)}, alternative: {en: []}, disambiguator: 'Discrete time; finite or countable state space; time-homogeneous scope.'}
definition_section: Definition
scope_section: Scope
broader: [{edge: parent-probability, target: 'urn:uuid:8abb03fc-4067-4580-9b34-47a7aaee5943', type: subjectSpecialization, origin: direct, status: proposed, sources: [L2], rationale: 'Restricts probabilistic models to the stated Markov-chain class.'}]
navigation_parent: urn:uuid:8abb03fc-4067-4580-9b34-47a7aaee5943
facets: []
relations: []
sources: [{key: L2, locator: 'Finite-chain introduction and countable-state discussion'}]
warrant: {literary: 'Established Markov-chain terminology with explicit convention.', user: 'Avoid ambiguity between discrete and continuous time.', organizational: 'Do not infer an exact MSC match from a bare label.'}
status: {editorial: proposed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: local_editorial_text, operational_permission: not_conferred}
rights: {local_prose: MIT, source_reuse: reference_only}
revision_history: [{version: 0.1, date: '2026-10-19', change: 'Initial time- and state-qualified scope.'}, {version: '0.12-pilot', date: '2026-10-20', change: 'Add lattice-random-walk browsing; existing definition, scope, parent and navigation home retained.'}]
proposal_refs: []
decision_refs: [D01, D03, D04]
---
# Markov chain theory (discrete time)

[Probability theory](../index.md) · [Subjects](../../index.md)

## Definition

Theory of time-homogeneous discrete-time stochastic processes on finite or countable state spaces whose next-state distribution depends on the present state rather than earlier history.

## Scope

This explicit local scope excludes continuous-time chains and general-state-space processes. Other conventions for the unqualified term must be investigated before aliases are accepted. A classification reference cannot remove these distinctions.

Selected child division criterion: additional state-space and transition-law restrictions. Browse [finite reversible Markov chains](finite-reversible/index.md) and [iid lattice random walks](lattice-random-walks/index.md). The proposed semantic parent is [probability theory](../index.md).

## Sources

[L2](../../../standards/index.md). Native MSC2020 code 60J10 is a relevant reference, but this page asserts no exactMatch or comprehensive crosswalk review.
