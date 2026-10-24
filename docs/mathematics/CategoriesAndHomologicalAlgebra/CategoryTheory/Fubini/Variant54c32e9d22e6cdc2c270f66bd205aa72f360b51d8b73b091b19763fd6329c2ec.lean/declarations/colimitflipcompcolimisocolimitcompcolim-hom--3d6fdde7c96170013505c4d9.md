# colimitFlipCompColimIsoColimitCompColim_ι_ι_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e6dd1d0bf7daab0fcd24d4d6272b18511e20042",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 579,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c744dc2b-b485-0dc3-aecc-6c6c96c02c77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b25d0ad0-b2d7-2d70-7772-df46ce31b9c4",
  "kind": "theorem",
  "lexical_name": "colimitFlipCompColimIsoColimitCompColim_ι_ι_hom",
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
  "slug": "colimitflipcompcolimisocolimitcompcolim-hom--3d6fdde7c96170013505c4d9",
  "source": {
    "blob": "8e6dd1d0bf7daab0fcd24d4d6272b18511e20042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 579,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d6fdde7c96170013505c4d9497594848222d9fb9b7edb86ae6d0c4e27e75659",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b25d0ad0-b2d7-2d70-7772-df46ce31b9c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitFlipCompColimIsoColimitCompColim_ι_ι_hom (j) (k) :
    colimit.ι (F.flip.obj k) j ≫ colimit.ι (F.flip ⋙ colim) k ≫
      (colimitFlipCompColimIsoColimitCompColim F).hom =
        (colimit.ι _ k ≫ colimit.ι (F ⋙ colim) j : _ ⟶ colimit (F ⋙ colim)) := by
  dsimp [colimitFlipCompColimIsoColimitCompColim]
  conv_lhs => slice 1 3
  simp

set_option backward.defeqAttrib.useBackward true in
@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6dd1d0bf7daab0fcd24d4d6272b18511e20042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
