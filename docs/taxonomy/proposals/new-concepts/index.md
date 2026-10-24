---
schema_version: 0.1.0
id: urn:uuid:dd591907-4562-43ba-bb64-aff410d76b73
record_kind: proposal
proposal_type: addition
lifecycle: proposed
affected_concept_ids: ['urn:uuid:6f8afa7d-458b-4dc9-8bff-230582f3a0c7', 'urn:uuid:7ac44c10-be39-42fa-ac8e-c3b2a3bf1e64', 'urn:uuid:9d8aa282-1cde-42d4-81d0-e80b543a9910']
affected_source: {repository: grwtsk/math, commit: eb3124bd05f0f74aaa709ca36a855539f722fb92, vocabulary: 0.1-pilot}
status: {editorial: proposed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: local_editorial_text, operational_permission: not_conferred}
sources: [{key: L1, locator: 'Self-adjoint spectral context'}, {key: L2, locator: 'Finite-chain and detailed-balance context'}]
rights: {local_prose: MIT, source_reuse: reference_only}
revision_history: [{version: 0.1, date: '2026-10-19', change: Initial subject-placement proposal.}]
decision_refs: [D01, D03, D04]
---
# Add one polyhierarchical spectral subject

[Proposals](../index.md) · [Canonical proposed concept](../../subjects/Analysis/OperatorTheory/SpectralTheory/SelfAdjointOperators/FiniteReversibleChains/index.md)

## Problem and exact scope

Readers should be able to find the spectral study of finite discrete-time transition operators reversible for a strictly positive stationary distribution from analysis and from probability. Its exact definition and exclusions are maintained only on the canonical concept page, not duplicated here.

This is a local concept/placement addition for established mathematics, not a new mathematical result, new formalization, or a claim that the topic is absent from every external scheme or source file. Repository implementation of this exact subject remains unassessed.

## Warrant and nearest concepts

The inspected [L1 and L2 sources](../../standards/index.md) establish the operator and reversible-chain contexts. The closest local proposed parents are self-adjoint spectral theory and finite reversible Markov chain theory. The canonical page gives the finite weighted-adjoint calculation supporting this particular cross-parent placement. Literature and terminology searching is bounded to these sources; international, historical and competing labels need further review.

An alias would lose the narrower scope relative to either parent. An object facet alone would describe an operator or chain rather than this subject of study. A crosswalk connects different schemes and does not provide the second parent inside this scheme. A mere usesMethod edge would be appropriate for an application without a spectral subject, but this record explicitly specializes spectral questions for the specified family.

## Alternatives and recommended disposition

Alternatives: retain only a probability home and an associative analytic link; retain only an analytic home with usesMethod/application links; or accept two semantic parents and one navigation home. The last is proposed, subject to independent review of the stated restriction and whether its subject granularity is useful.

## Before and after relationships

Before: no admitted local concept or parentage for this proposed record. Proposed after: one persistent concept with direct subjectSpecialization edges to the two named parent IDs. Navigation home remains below the self-adjoint branch; the probability branch links to the same page. Until acceptance, all these relations remain proposed and no production edge changes.

## Compatibility, criteria and history

No source file, import or old concept ID changes. Accept only after mathematical and cataloging review agrees on scope and both parent relations, source provenance is sufficient, the UUID/path registry is checked, alternate browsing paths reach one record, and positive/hostile tests succeed in the authorized Noe implementation. Rights and operational acceptance remain independent gates. Retain rejected alternatives and any dissent in later revisions. Local editorial acceptance would not be an external classification-standard approval.
