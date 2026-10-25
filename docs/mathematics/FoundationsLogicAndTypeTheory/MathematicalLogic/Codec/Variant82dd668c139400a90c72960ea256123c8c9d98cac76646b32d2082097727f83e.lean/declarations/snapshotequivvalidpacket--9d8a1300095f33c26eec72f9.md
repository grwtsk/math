# snapshotEquivValidPacket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bbd6f8dff88dc4184e0c94c2c1d4ffd4f2f4a51cc27d6f7c4cb7e44996c6367",
  "kind": "def",
  "lexical_name": "snapshotEquivValidPacket",
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
  "slug": "snapshotequivvalidpacket--9d8a1300095f33c26eec72f9",
  "source": {
    "blob": "5ceddc029443ad71b0c6b651abdb10229e00460f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant82dd668c139400a90c72960ea256123c8c9d98cac76646b32d2082097727f83e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d8a1300095f33c26eec72f943a4138ab4ded2f36229911fae364e5de499b12f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant82dd668c139400a90c72960ea256123c8c9d98cac76646b32d2082097727f83e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bbd6f8dff88dc4184e0c94c2c1d4ffd4f2f4a51cc27d6f7c4cb7e44996c6367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def snapshotEquivValidPacket
    (C : FilesystemMatrixCodec Snapshot r) :
    Snapshot ≃ C.ValidPacketType where
  toFun snapshot := ⟨C.encode snapshot, ⟨snapshot, rfl⟩⟩
  invFun packet := Classical.choose packet.property
  left_inv snapshot := by
    apply C.encode_injective
    exact Classical.choose_spec
      ((show C.ValidPacket (C.encode snapshot) from ⟨snapshot, rfl⟩))
  right_inv packet := by
    apply Subtype.ext
    exact Classical.choose_spec packet.property

/--
Build a lossless matrix codec by composing canonical serialization,
byte-to-bit framing, and positive-width canonical blocking.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant82dd668c139400a90c72960ea256123c8c9d98cac76646b32d2082097727f83e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant82dd668c139400a90c72960ea256123c8c9d98cac76646b32d2082097727f83e.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ceddc029443ad71b0c6b651abdb10229e00460f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
