# validPacketFiberEquivAmbientImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e9c7ddf15c0b979f03604c23bb2e08f01e28c0ba2a21e0ca88c3bcf35bbdafa",
  "kind": "def",
  "lexical_name": "validPacketFiberEquivAmbientImage",
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
  "slug": "validpacketfiberequivambientimage--f96bb6c86e6da10f57009b59",
  "source": {
    "blob": "6a550aeeb247f92f1f5439e89d14038b37b37d9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 266,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant8c708515a2b8facf24bb5f5e342d7e1c2ce2d72b24d5a53dcb7599d8284679ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f96bb6c86e6da10f57009b59865a60006ef19d176a94b81fd27cc0ddb265060d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant8c708515a2b8facf24bb5f5e342d7e1c2ce2d72b24d5a53dcb7599d8284679ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e9c7ddf15c0b979f03604c23bb2e08f01e28c0ba2a21e0ca88c3bcf35bbdafa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def validPacketFiberEquivAmbientImage
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (k : Nat) :
    C.ValidPacketFiber k ≃ CodecValidAmbientType C E k where
  toFun p := ⟨validPacketFiberToAmbient C E k p, ⟨p, rfl⟩⟩
  invFun a := Classical.choose a.property
  left_inv p := by
    apply (validPacketFiberToAmbient C E k).injective
    exact Classical.choose_spec
      ((show CodecValidAmbient C E k
          (validPacketFiberToAmbient C E k p) from ⟨p, rfl⟩))
  right_inv a := by
    apply Subtype.ext
    exact Classical.choose_spec a.property

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant8c708515a2b8facf24bb5f5e342d7e1c2ce2d72b24d5a53dcb7599d8284679ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant8c708515a2b8facf24bb5f5e342d7e1c2ce2d72b24d5a53dcb7599d8284679ad.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a550aeeb247f92f1f5439e89d14038b37b37d9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
