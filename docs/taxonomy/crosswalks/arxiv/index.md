---
schema_version: 0.1.0
id: urn:uuid:3abad45e-df88-4369-8cef-aa9bf9ca1473
record_kind: crosswalk
source_scheme: {id: grwtsk-mathematics, edition: 0.2-pilot}
source_identifiers: ['urn:uuid:6f8afa7d-458b-4dc9-8bff-230582f3a0c7']
target_scheme: {id: arXiv, edition: 'unversioned category page retrieved 2026-10-19', source_key: S10, snapshot_checksum: unavailable}
target_identifiers: [math.PR]
direction: local_to_external
relation: broadMatch
origin: direct
status: {editorial: proposed, review: unassessed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: source_reference_preserved, operational_permission: not_conferred}
sources: [{key: S10, locator: 'math.PR category heading and scope'}]
rights: {local_prose: MIT, source_reuse: reference_only, dataset_reuse: unassessed}
revision_history: [{version: 0.1, date: '2026-10-19', change: Initial broader-category candidate.}, {version: '0.2-pilot', date: '2026-10-19', change: 'Explicit local source-edition update only; source concept scope, target edition and mapping relation unchanged; independent review remains pending.'}]
proposal_refs: []
decision_refs: [D02, D03, D04]
---
# arXiv broader publication-category mapping

[Crosswalks](../index.md) · [Standards](../../standards/index.md)

## Source and rationale

The source is [spectral theory of finite reversible Markov chains](../../subjects/analysis/functional-analysis/linear-operators/spectral-theory/self-adjoint/finite-reversible-chains/index.md). The inspected `math.PR` category covers probability and stochastic-process topics more broadly. The proposed arrow is `local broadMatch math.PR`: the target is broader, not narrower.

## Limitations and review

This is a category-level retrieval mapping, not an endorsement of a manuscript, an assertion of a primary submission category, or equality with all probability theory. Additional cross-listing to other categories needs its own review. The web page has no verified annual edition; the retrieval-date snapshot is not an invented official arXiv release. Without a hash-pinned snapshot and completed review, this candidate is ineligible for the asserted graph.

Initial revision 0.1 retains the candidate and its limitations. Independent review, raw snapshot integrity and dataset reuse disposition remain pending.

Edition note: the local source edition is now the `0.2-pilot` candidate. The prior `0.1-pilot` payload remains at math `cce5f855028dfc581917a40a222e8209ac9bd8c3`; this update neither validates the external target nor transports a review approval.
