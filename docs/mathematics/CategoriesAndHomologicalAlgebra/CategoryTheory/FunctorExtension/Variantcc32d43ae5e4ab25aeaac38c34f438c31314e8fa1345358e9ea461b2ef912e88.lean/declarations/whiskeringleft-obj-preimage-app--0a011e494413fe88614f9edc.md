# whiskeringLeft_obj_preimage_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7fbd1d5adfffe679b160631fd8b3d788433963c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b1728f7-2d4d-bed6-bf60-711cd051cdd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46b517f1-a502-4dc8-914a-8ffa609cf701",
  "kind": "theorem",
  "lexical_name": "whiskeringLeft_obj_preimage_app",
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
  "slug": "whiskeringleft-obj-preimage-app--0a011e494413fe88614f9edc",
  "source": {
    "blob": "c7fbd1d5adfffe679b160631fd8b3d788433963c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 286,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a011e494413fe88614f9edc2dd69f6d3241684f18eb5dfb140b9fc9d2bc4b08",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46b517f1-a502-4dc8-914a-8ffa609cf701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whiskeringLeft_obj_preimage_app {F G : Karoubi C ⥤ D}
    (τ : toKaroubi _ ⋙ F ⟶ toKaroubi _ ⋙ G) (P : Karoubi C) :
    (((whiskeringLeft _ _ _).obj (toKaroubi _)).preimage τ).app P =
      F.map P.decompId_i ≫ τ.app P.X ≫ G.map P.decompId_p := by
  rw [natTrans_eq]
  congr 2
  rw [← congr_app (((whiskeringLeft _ _ _).obj (toKaroubi _)).image_preimage τ) P.X]
  dsimp
  congr
#align category_theory.idempotents.whiskering_left_obj_preimage_app CategoryTheory.Idempotents.whiskeringLeft_obj_preimage_app

end IsIdempotentComplete

end Idempotents

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7fbd1d5adfffe679b160631fd8b3d788433963c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
