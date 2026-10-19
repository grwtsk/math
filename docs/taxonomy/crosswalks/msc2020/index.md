---
schema_version: 0.1.0
id: urn:uuid:4ebb4869-baba-42d6-8801-85f7981233ff
record_kind: compound_crosswalk
source_scheme: {id: grwtsk-mathematics, edition: 0.1-pilot}
source_identifiers: ['urn:uuid:6f8afa7d-458b-4dc9-8bff-230582f3a0c7']
target_scheme: {id: MSC, edition: '2020', source_key: S1}
target_expression: {operator: coIndex, identifiers: ['47A10', '60J10']}
direction: local_to_external
relation: compound_co_indexing
origin: direct
status: {editorial: proposed, review: unassessed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: source_reference_preserved, operational_permission: not_conferred}
sources: [{key: S1, locator: 'Official PDF pages 125 and 162, one-based'}, {key: L1, locator: 'Operator spectral context'}, {key: L2, locator: 'Finite-chain and reversibility context'}]
rights: {local_prose: MIT, source_reuse: reference_only, bulk_import: blocked_pending_disposition}
revision_history: [{version: 0.1, date: '2026-10-19', change: 'Initial compound candidate; no exact-match assertion.'}]
proposal_refs: ['urn:uuid:dd591907-4562-43ba-bb64-aff410d76b73']
decision_refs: [D02, D03, D04]
---
# MSC2020 compound spectral/Markov mapping

[Crosswalks](../index.md) · [Standards](../../standards/index.md)

## Source and rationale

The source is [spectral theory of finite reversible Markov chains](../../subjects/analysis/functional-analysis/linear-operators/spectral-theory/self-adjoint/finite-reversible-chains/index.md). The candidate uses MSC2020 `47A10` for operator-spectrum questions together with `60J10` for the discrete-time/discrete-state Markov setting. Code existence and the selected printed context were inspected in the official PDF; complete native hierarchy registration was not performed.

## Semantics and limitations

`coIndex` requires both selected indexing references. It is a local compound retrieval/indexing proposal, not a claim that either external class is exactly equivalent to the source, nor that their mathematical intersection equals the source. Finiteness and reversibility are additional source restrictions not discharged by these two identifiers. Other relevant MSC classes may be needed after specialist review.

No pair of binary exactMatch statements may be generated from this record. An exporter lacking compound support must preserve the record separately or report unsupported export. It may not silently simplify the mapping into a claim of exactness.

## Review and history

Initial status is proposed/unassessed. Acceptance requires code/edition validation against an authorized hash-pinned baseline, mathematical and cataloging review of joint coverage, explicit treatment of missing restrictions, and a rights-safe export disposition. No suitable match has not been established merely because the binary options are too coarse. The candidate remains outside the asserted graph.
