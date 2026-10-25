# CommittedSnapshotReplay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da62d114ac5b02f062608249c9874fb05aeaa9798cb3e0b18c58e44452709ee6",
  "kind": "inductive",
  "lexical_name": "CommittedSnapshotReplay",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "committedsnapshotreplay--d54fb5769888e1fe9842ba9b",
  "source": {
    "blob": "b851e6deb9b4e409c6fc7f8ff6e4be20a81e7c8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variante725558593ba7807e0896b07045048e9d60f2e8efb0be7dd2783319bebb86869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d54fb5769888e1fe9842ba9bcd0aa1d22a1060d76b10b32c0e3929c1238f71ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variante725558593ba7807e0896b07045048e9d60f2e8efb0be7dd2783319bebb86869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da62d114ac5b02f062608249c9874fb05aeaa9798cb3e0b18c58e44452709ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive CommittedSnapshotReplay
    (snapshot : ProjectionSnapshot) :
    SnapshotAuthorityEvent → SnapshotStatus → Prop
  | create
      (event : SnapshotAuthorityEvent)
      (targetsSnapshot : event.snapshotId = snapshot.snapshotId)
      (eventKind : event.kind = .createCandidate)
      (hasNoPredecessor : event.predecessorEventId = none)
      (initialSequence : event.sequence = 0)
      (digestValid : event.eventDigest.Valid) :
      CommittedSnapshotReplay snapshot event .candidate
  | append
      {previous current : SnapshotAuthorityEvent}
      {before after : SnapshotStatus}
      (prior : CommittedSnapshotReplay snapshot previous before)
      (targetsSnapshot : current.snapshotId = snapshot.snapshotId)
      (predecessor :
        current.predecessorEventId = some previous.eventObjectId)
      (nextSequence : current.sequence = previous.sequence + 1)
      (epochMonotone : previous.authorityEpoch ≤ current.authorityEpoch)
      (digestValid : current.eventDigest.Valid)
      (transition :
        SnapshotEventTransition current.kind before after) :
      CommittedSnapshotReplay snapshot current after

namespace CommittedSnapshotReplay

/-- Every replayed head targets the frozen snapshot identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variante725558593ba7807e0896b07045048e9d60f2e8efb0be7dd2783319bebb86869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variante725558593ba7807e0896b07045048e9d60f2e8efb0be7dd2783319bebb86869.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b851e6deb9b4e409c6fc7f8ff6e4be20a81e7c8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
