# validPacketFiberEquivAmbientImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fe43b257414b6a06319bbc146e5cbc9c93179f85e9d6d6335547058f0619137",
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
  "slug": "validpacketfiberequivambientimage--0462ca41cdad2cecc849ad51",
  "source": {
    "blob": "45e1aee3d7be0ca8c18941be9b7672c057adeccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant403ea28e1f91105855f82f6b5df9816f7fe8d0d487431a42ba49fe7cd195b060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0462ca41cdad2cecc849ad5103a9421f8cce24c093aab72e9509ad01a9e8f26c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant403ea28e1f91105855f82f6b5df9816f7fe8d0d487431a42ba49fe7cd195b060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fe43b257414b6a06319bbc146e5cbc9c93179f85e9d6d6335547058f0619137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–289.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant403ea28e1f91105855f82f6b5df9816f7fe8d0d487431a42ba49fe7cd195b060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant403ea28e1f91105855f82f6b5df9816f7fe8d0d487431a42ba49fe7cd195b060.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e1aee3d7be0ca8c18941be9b7672c057adeccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
