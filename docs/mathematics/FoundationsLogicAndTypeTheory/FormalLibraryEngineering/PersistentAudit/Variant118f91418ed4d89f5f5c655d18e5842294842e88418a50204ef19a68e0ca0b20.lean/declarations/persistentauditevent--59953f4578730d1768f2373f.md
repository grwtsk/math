# PersistentAuditEvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdf5dda8c3188ea94f775a801f1f96169bc5b7124fad34f857425762c2617afd",
  "kind": "structure",
  "lexical_name": "PersistentAuditEvent",
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
  "slug": "persistentauditevent--59953f4578730d1768f2373f",
  "source": {
    "blob": "a14722f81a0c7943a83b394c28e728b47c4bbbfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variant118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59953f4578730d1768f2373f26b3ecbbb30d54b25da19ce960c25c5018e3d18a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variant118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdf5dda8c3188ea94f775a801f1f96169bc5b7124fad34f857425762c2617afd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PersistentAuditEvent
    (snapshot : ProjectionSnapshot) where
  eventObjectId : ObjectAddress
  predecessorEventId : Option ObjectAddress
  sequence : Nat
  snapshotId : ObjectAddress
  committedSnapshotHead : ObjectAddress
  eventDigest : Digest
  activeSnapshot : VerifiedActiveSnapshot snapshot
  payload : PersistentAuditPayload snapshot
  snapshot_bound : snapshotId = snapshot.snapshotId
  snapshot_head_bound :
    committedSnapshotHead = activeSnapshot.head
  event_digest_valid : eventDigest.Valid

/--
The committed history is exactly the predecessor-linked chain from its root.
Prepared events not appearing in this inductive replay carry no committed
history status.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variant118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variant118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a14722f81a0c7943a83b394c28e728b47c4bbbfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
