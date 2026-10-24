---
schema_version: 0.1.0
id: urn:uuid:9d8aa282-1cde-42d4-81d0-e80b543a9910
record_kind: subject_concept
scheme: grwtsk-mathematics
labels: {preferred: {en: Finite reversible Markov chain theory}, alternative: {en: []}}
definition_section: Definition
scope_section: Scope
broader: [{edge: parent-chains, target: 'urn:uuid:770ecd4c-5dc6-4ebe-88da-5033eb4ced60', type: subjectSpecialization, origin: direct, status: proposed, sources: [L2], rationale: 'Finite state space and the explicit detailed-balance condition restrict the chain class.'}]
navigation_parent: urn:uuid:770ecd4c-5dc6-4ebe-88da-5033eb4ced60
facets: []
relations: []
sources: [{key: L2, locator: 'Section 1.6, detailed balance and reversibility'}]
warrant: {literary: 'Established detailed-balance theory.', user: 'Reach spectral subtopics from probability.', organizational: 'Additional parentage without a duplicate canonical page.'}
status: {editorial: proposed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: local_editorial_text, operational_permission: not_conferred}
rights: {local_prose: MIT, source_reuse: reference_only}
revision_history: [{version: 0.1, date: '2026-10-19', change: Initial draft.}]
proposal_refs: ['urn:uuid:dd591907-4562-43ba-bb64-aff410d76b73']
decision_refs: [D01, D03, D04]
---
# Finite reversible Markov chain theory

[Discrete-time Markov chains](../index.md) · [Probability theory](../../../ProbabilityTheory/index.md)

## Definition

Theory of finite transition matrices with a specified strictly positive probability distribution satisfying `pi(x)P(x,y) = pi(y)P(y,x)`.

## Scope

This pilot retains the distribution as part of the context. Irreducibility is not assumed; an appropriate positive reversible distribution is required. The theory is not identical to its spectral subsubject.

Selected child division criterion: aspect of this chain class. The narrower [spectral topic](../../../../Analysis/OperatorTheory/SpectralTheory/SelfAdjointOperators/FiniteReversibleChains/index.md) has its canonical home under analysis. Follow that link rather than creating another definition here. Both proposed parent links are displayed on the canonical page.

## Sources and mappings

[L2](../../../../../standards/index.md), section 1.6. The [compound mapping](../../../../../crosswalks/msc2020/index.md) concerns the narrower spectral topic, not exact equivalence of this entire theory with an external class.
