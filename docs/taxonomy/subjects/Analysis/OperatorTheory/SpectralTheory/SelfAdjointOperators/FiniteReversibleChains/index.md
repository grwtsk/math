---
schema_version: 0.1.1
id: urn:uuid:6f8afa7d-458b-4dc9-8bff-230582f3a0c7
record_kind: subject_concept
scheme: grwtsk-mathematics
labels: {preferred: {en: Spectral theory of finite reversible Markov chains}, alternative: {en: []}}
definition_section: Definition
scope_section: Scope
broader:
  - {edge: parent-selfadjoint, target: 'urn:uuid:7ac44c10-be39-42fa-ac8e-c3b2a3bf1e64', type: subjectSpecialization, origin: direct, status: proposed, sources: [L1, L2], rationale: 'The specified spectral subject concerns a self-adjoint transition-operator family.'}
  - {edge: parent-reversible, target: 'urn:uuid:9d8aa282-1cde-42d4-81d0-e80b543a9910', type: subjectSpecialization, origin: direct, status: proposed, sources: [L2], rationale: 'Spectral properties are a specialized subject within the specified finite reversible-chain theory.'}
navigation_parent: urn:uuid:7ac44c10-be39-42fa-ac8e-c3b2a3bf1e64
facets: [{edge: facet-operator-spectrum, axis: objects, target: 'urn:uuid:9ef6cd3e-21ce-440d-845f-702f515bda95', type: facet, origin: direct, status: proposed, sources: [L1, L2], rationale: 'The specified finite transition operator has a bounded-operator spectrum in the complex weighted Hilbert-space realization.'}]
relations: []
sources: [{key: L1, locator: 'Self-adjoint spectral setting'}, {key: L2, locator: 'Section 1.6; finite transition-matrix setting'}]
warrant: {literary: 'Finite reversible chains have an established operator-spectral treatment.', user: 'Find the same topic from analysis or probability.', organizational: 'Positive polyhierarchy example without duplicated definitions or source migrations.'}
status: {editorial: proposed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: local_editorial_text, operational_permission: not_conferred}
rights: {local_prose: MIT, source_reuse: reference_only}
revision_history: [{version: 0.1, date: '2026-10-19', change: 'Initial draft with two explicit proposed parents.'}, {version: '0.1.1', date: '2026-10-19', change: 'Explicit facet edge identity, provenance and proposed status; concept scope and parentage unchanged.'}]
proposal_refs: ['urn:uuid:dd591907-4562-43ba-bb64-aff410d76b73']
decision_refs: [D01, D03, D04]
---
# Spectral theory of finite reversible Markov chains

[Self-adjoint spectral theory](../index.md) · [Finite reversible Markov chains](../../../../../ProbabilityAndMathematicalStatistics/StochasticProcesses/MarkovChains/FiniteReversible/index.md) · [Taxonomy](../../../../../../index.md)

## Definition

The spectral study of finite, discrete-time transition operators reversible with respect to a strictly positive stationary probability distribution.

## Scope

The operator is `Pf(x) = sum_y P(x,y)f(y)` on the weighted Hilbert space with inner product `sum_x pi(x) conjugate(f(x)) g(x)`. Its finite carrier, transition matrix and strictly positive distribution are part of the context. Nonreversible chains, unsupported zero-weight states and continuous-time generators require distinct treatment. No repository implementation has been exhaustively searched for this exact subject.

## Why both parents are meaningful

Under detailed balance, interchange of the two finite summation indices gives `sum_xy pi(x) conjugate(f(x)) P(x,y)g(y) = sum_xy pi(y)P(y,x)conjugate(f(x))g(y)`. This is the weighted-adjoint identity after exchanging indices; it explains the chosen self-adjoint operator family. This written explanation is not a Lean verification or a coercion supplied by the taxonomy.

The second parent is [finite reversible Markov chain theory](../../../../../ProbabilityAndMathematicalStatistics/StochasticProcesses/MarkovChains/FiniteReversible/index.md). Both routes reach this one canonical record. No duplicate page is placed under probability. There are no narrower topics authored yet; that is not a claim that none exist.

## Mappings, examples and sources

The two-state transition matrix with every entry 1/2 is a representative case. The [MSC compound candidate](../../../../../../crosswalks/msc2020/index.md) uses joint indexing rather than exact equivalence. The [arXiv candidate](../../../../../../crosswalks/arxiv/index.md) points toward a broader publication category.

Sources [L1 and L2](../../../../../../standards/index.md); [placement proposal](../../../../../../proposals/new-concepts/index.md). The spectral subsubject, not general use of a method, is the proposed specialization relation. Independent review is pending.
