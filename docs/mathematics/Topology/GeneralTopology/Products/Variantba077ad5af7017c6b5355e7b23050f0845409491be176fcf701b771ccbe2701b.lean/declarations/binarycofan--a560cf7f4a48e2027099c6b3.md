# binaryCofan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a51935a7692aff36dc9094e27add06e964a545e41a8d19cf44bc22bbf06f4dac",
  "kind": "def",
  "lexical_name": "binaryCofan",
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
  "slug": "binarycofan--a560cf7f4a48e2027099c6b3",
  "source": {
    "blob": "52ba0c2f58d5643ff7ed7a7c5f63ace2c14a14ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/Products/Variantba077ad5af7017c6b5355e7b23050f0845409491be176fcf701b771ccbe2701b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a560cf7f4a48e2027099c6b3139c208f6091f8bb6e8711b7498789bbff8e1149",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Products/Variantba077ad5af7017c6b5355e7b23050f0845409491be176fcf701b771ccbe2701b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a51935a7692aff36dc9094e27add06e964a545e41a8d19cf44bc22bbf06f4dac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def binaryCofan (X Y : TopCat.{u}) : BinaryCofan X Y :=
  BinaryCofan.mk (ofHom ⟨Sum.inl, by fun_prop⟩) (ofHom ⟨Sum.inr, by fun_prop⟩)

/-- The constructed binary coproduct cofan in `TopCat` is the coproduct. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Products/Variantba077ad5af7017c6b5355e7b23050f0845409491be176fcf701b771ccbe2701b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Products/Variantba077ad5af7017c6b5355e7b23050f0845409491be176fcf701b771ccbe2701b.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52ba0c2f58d5643ff7ed7a7c5f63ace2c14a14ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
