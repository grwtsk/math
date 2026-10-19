---
schema_version: 0.1.0
id: urn:uuid:de2c4156-27ee-49b4-9e36-e95870b60d6b
record_kind: crosswalk
source_scheme: {id: grwtsk-mathematics, edition: 0.1-pilot}
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
revision_history: [{version: 0.1, date: '2026-10-19', change: Initial outline-range candidate.}]
proposal_refs: []
decision_refs: [D02, D03, D04]
---
# LCC broader bibliographic-range mapping

[Crosswalks](../index.md) · [Standards](../../standards/index.md)

## Source and rationale

[Probability theory](../../subjects/probability/index.md) is proposed as narrower than the public outline range `QA273-280`, which includes probability and mathematical statistics. The target is an outline range, not an independently verified LCSH authority concept or a fabricated detailed class number.

## Limitations and review

This mapping does not identify probability with statistics and cannot assign an exact call number to a book. Complete schedule edition, detailed subdivisions, source-byte pinning and independent cataloging review remain unavailable. Relevant classes elsewhere in LCC remain within the future crosswalk assessment rather than being excluded by this QA example.

The arrow is `local broadMatch external`. Do not reverse it or export an exactMatch. The candidate remains proposed/unassessed and outside the asserted graph. A later schedule-based mapping must preserve this outline-specific historical record and explicitly explain any change in granularity.
