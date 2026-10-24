---
schema_version: 0.1.1
id: urn:uuid:89c7adb8-6d37-40b8-8686-1e692b0960a0
record_kind: proposal
proposal_type: addition
lifecycle: proposed
affected_concept_ids: ['urn:uuid:6b4621a7-5372-457e-acf9-393db3e09503', 'urn:uuid:98d1630a-9a7d-4454-a62a-4ec39833aa96', 'urn:uuid:55fcdccc-6afb-4536-a076-f932dfa53dc2']
affected_source: {repository: grwtsk/math, commit: cce5f855028dfc581917a40a222e8209ac9bd8c3, vocabulary: 0.1-pilot}
status: {editorial: proposed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: local_editorial_text, operational_permission: not_conferred}
sources: [{key: L4, locator: 'ICHM subject scope'}, {key: L5, locator: 'ICMI subject scope'}, {key: S1, locator: 'PDF pages 5 and 219-220'}]
rights: {local_prose: MIT, source_reuse: reference_only}
revision_history: [{version: '0.2-pilot', date: '2026-10-19', change: 'Three established subjects and two proposed parent relations; no novelty or import claim.'}]
decision_refs: [D01, D03, D04, D06]
---
# History and education: bounded subject addition

[Proposals](../index.md) · [Decisions](../../decisions/index.md)

## Problem, affected identities and evidence

The declared scope includes history and education, but the previous pilot supplied no subject entry point for either. Add [history of mathematics](../../subjects/HistoryOfMathematics/index.md), [mathematics education](../../subjects/MathematicsEducation/index.md), and [history of mathematics education](../../subjects/HistoryOfMathematics/MathematicsEducation/index.md). Their definitions remain authoritative on those pages only.

[L4 and L5](../../standards/index.md) supply representative scholarly scope. Selected [MSC references](../../standards/msc2020/index.md) distinguish a historical subject from teaching with mathematical history. The literature search is bounded, not an exhaustive prior-art or international terminology review. These are established subjects newly represented locally, not proposed new mathematics or formalizations.

## Alternatives and recommended disposition

A resource-kind facet for historical documents would miss historical inquiry. A resource-kind facet for introductory exposition would miss educational research. Aliasing the third subject to either parent would erase its narrower scope. Alternatively it could have only one semantic parent and an associative link to the other. Prefer two proposed specialization parents and one navigational home, subject to independent review.

## Before and after relationships

Before: no local subject record for these three topics in the pinned pilot. After: three new stable IDs; the first two have the `subjects` navigation collection as home and no asserted broader concept; the third points to both as proposed direct `subjectSpecialization` parents and has its canonical home under history. No old IDs, definitions or relationships are replaced.

## Compatibility and acceptance criteria

The candidate vocabulary identifier advances to `0.2-pilot`; it is not a published or accepted release. The three existing mapping records explicitly update only their local source edition and revision history. External target editions, mapping meanings and proposed states remain unchanged; prior payloads remain bound to their old Git revision, not silently redirected. Old Noe input bindings must remain historical rather than being overwritten.

Accept only after independent mathematical/historical and cataloging review of definitions and parentage, adequate literature and terminology evidence, and exact-input structure/navigation checks. Reference-only authoring does not unblock full MSC acquisition, native-entry import or mixed-license distribution. [D06](../../decisions/index.md#d06-reference-only-population-and-rights-boundary) keeps those gates separate. Rejected alternatives and objections must survive later revisions. No Lean migration, result admission, authorship determination or external standards submission follows from this addition.
