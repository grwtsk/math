---
schema_version: 0.1.0
id: urn:uuid:de2c4156-27ee-49b4-9e36-e95870b60d6b
record_kind: crosswalk
source_scheme: {id: grwtsk-mathematics, edition: 0.12-pilot}
source_identifiers: ['urn:uuid:8abb03fc-4067-4580-9b34-47a7aaee5943']
target_scheme: {id: LCC-public-Q-outline, edition: 'outline retrieved 2026-10-19; schedule edition unavailable', source_key: S3, snapshot_checksum: unavailable}
target_identifiers: [QA273-280]
target_kind: bibliographic_outline_range
direction: local_to_external
relation: broadMatch
origin: direct
status: {editorial: proposed, review: unassessed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: source_reference_preserved, operational_permission: not_conferred}
sources: [{key: S3, locator: 'Q outline PDF page 3, one-based, QA273-280'}]
rights: {local_prose: MIT, source_reuse: reference_only, schedule_import: not_performed}
revision_history: [{"version": 0.1, "date": "2026-10-19", "change": "Initial outline-range candidate."}, {"version": "0.2-pilot", "date": "2026-10-19", "change": "Explicit local source-edition update only; source concept scope, target edition and mapping relation unchanged; independent review remains pending."}, {"version": "0.3-pilot", "date": "2026-10-19", "change": "Local source vocabulary edition only; mapping identity, external targets, relation and proposed state preserved."}, {"version": "0.4-pilot", "date": "2026-10-19", "change": "Update local source vocabulary edition only; retain external target, relation, proposed status and earlier versions."}, {"version": "0.5-pilot", "date": "2026-10-19", "change": "Advance only the local source edition after statistics addition; retain external semantics and proposed status; no review transport."}, {version: "0.6-pilot", date: "2026-10-20", change: "Local source edition only; external target and relation semantics retained; review not carried forward."}, {version: "0.7-pilot", date: "2026-10-20", change: "Local source edition only; external targets and semantics retained; independent review not transported."}, {"version": "0.8-pilot", "date": "2026-10-20", "change": "Update local source vocabulary edition only; preserve external semantics and proposed status."}, {"version": "0.9-pilot", "date": "2026-10-20", "change": "Local vocabulary edition only; external meanings and proposed status retained; no review transport."}, {"version": "0.10-pilot", "date": "2026-10-20", "change": "Local source edition only; external meanings and proposed states preserved; no review transport."}, {"version": "0.11-pilot", "date": "2026-10-20", "change": "Local vocabulary edition only; external meanings and proposed states retained; no review transport."}, {"version": "0.12-pilot", "date": "2026-10-20", "change": "Local source edition only; external meanings and proposed states retained; no approval transport."}]
proposal_refs: []
decision_refs: [D02, D03, D04]
---
# LCC broader bibliographic-range mapping

[Crosswalks](../index.md) · [Standards](../../standards/index.md)

## Source and rationale

[Probability theory](../../subjects/ProbabilityAndMathematicalStatistics/ProbabilityTheory/index.md) is proposed as narrower than the public outline range `QA273-280`, which includes probability and mathematical statistics. The target is an outline range, not an independently verified LCSH authority concept or a fabricated detailed class number.

## Limitations and review

This mapping does not identify probability with statistics and cannot assign an exact call number to a book. Complete schedule edition, detailed subdivisions, source-byte pinning and independent cataloging review remain unavailable. Relevant classes elsewhere in LCC remain within the future crosswalk assessment rather than being excluded by this QA example.

The arrow is `local broadMatch external`. Do not reverse it or export an exactMatch. The candidate remains proposed/unassessed and outside the asserted graph. A later schedule-based mapping must preserve this outline-specific historical record and explicitly explain any change in granularity.

Historical edition note: the local source edition advanced to `0.2-pilot` at the preceding revision. The prior `0.1-pilot` payload remains at math `cce5f855028dfc581917a40a222e8209ac9bd8c3`; this update neither validates the external target nor transports a review approval.

Candidate 0.3 retains the preceding mapping at math `47b87581675315cd4cecfec5602df0c7db9b0c61`; the source-vocabulary change is reviewable history, not a renewed semantic or rights approval.

Candidate 0.4 rebinds the local source edition from 0.3-pilot. The preceding exact payload remains at math `ae9b637989a78a4360ef95e1fc4ead44ee3f6f8a`. This requires new review; no external target, direction, relation or compound expression changes, and no prior approval is inferred.

Candidate 0.5 retains the preceding payload at math `814971e0bc4fd54802423eec4beb6a0b890a8cb4`. Only its local source edition and this history change; the source-only merge `f3d3f755ac0bb40732f9580a3cb30fecdcd26bcd` did not admit the mapping.

Candidate 0.6 versions the local source scheme only. The previous mapping payload is retained at math `262daeee89add65f0d7997f338f9ca45bcac718e`; external meanings and proposed states are unchanged, and independent review is not transported.

Candidate 0.7 retains the preceding payload at math `db30ea5a07fc4d04ef490437e64c108e3a2c4802`. Only the local vocabulary edition and history change; external targets and candidate status remain unchanged.

Candidate 0.8 retains the preceding payload at math `32d0b2f0f33a3de78e26c8b4ebe3f6d2d90e7c60`. Only the local vocabulary edition and retained history change; external meaning, candidate state and independent-review obligations are unchanged.

Candidate 0.9 retains the preceding payload at math `5763524a941479f4fa8b0229749082cbc7582635`. Only local edition and history change; external targets, relation semantics and independent-review obligations remain unchanged.

Candidate 0.10 retains the preceding payload at math `900c2ed33885ad46cc55eabc176fab8cd2b2c0cb`. Only local source edition and history change; no external meaning or review approval is transported.

Candidate 0.11 retains the preceding payload at math `709291d9a54842c6793320fa0f343f3169658dc2`. Only local source edition and history change; external meaning and review obligations are preserved.

Candidate 0.12 retains the preceding payload at math `6f2bc3fe54fb3552eb7753318d54fa5e7a8b1a50`. Only local edition and history change; external targets, directions, relations and independent-review obligations are preserved.
