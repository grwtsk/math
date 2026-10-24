# yonedaYonedaColimit_app_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d3d8b2cb3e63818824f4a8da6d1e41bdc9c490c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a6d323c01172f02274c58988fabb6d5b905ae4156d09c61f49661621325c178.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4e64985-0a78-0d23-d063-434c81f395b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:032060a3-2187-99ff-5dc5-aafb1c8f52f3",
  "kind": "theorem",
  "lexical_name": "yonedaYonedaColimit_app_inv",
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
  "slug": "yonedayonedacolimit-app-inv--737022d964780893d8d0aec1",
  "source": {
    "blob": "1d3d8b2cb3e63818824f4a8da6d1e41bdc9c490c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant4a6d323c01172f02274c58988fabb6d5b905ae4156d09c61f49661621325c178.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:737022d964780893d8d0aec1fc9a1e1435a27f5d1654acfb7e6a04a1099ca97d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant4a6d323c01172f02274c58988fabb6d5b905ae4156d09c61f49661621325c178.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:032060a3-2187-99ff-5dc5-aafb1c8f52f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem yonedaYonedaColimit_app_inv {X : C} : ((yonedaYonedaColimit F).app (op X)).inv =
    (colimitObjIsoColimitCompEvaluation _ _).hom ≫
      (colimit.post F (coyoneda.obj (op (yoneda.obj X)))) := by
  dsimp [yonedaYonedaColimit]
  simp only [Category.assoc, Iso.cancel_iso_hom_left]
  apply colimit.hom_ext
  intro j
  rw [HasColimit.ι_isoOfNatIso_hom_assoc, ι_colimMap_assoc]
  change _ = colimit.ι (F ⋙ coyoneda.obj (op (yoneda.obj X))) j ≫
    colimit.post F (coyoneda.obj (op (yoneda.obj X)))
  rw [colimit.ι_post]
  simp only [← CategoryTheory.Functor.assoc, comp_evaluation]
  rw [ι_preservesColimitIso_inv_assoc]
  simp only [← comp_evaluation, comp_obj, evaluation_obj_obj, yoneda_obj_obj, uliftFunctor_obj,
    whiskerLeft_app, uliftFunctor_map, Functor.comp_map, evaluation_obj_map, yoneda_map_app]
  ext η Y f
  dsimp [largeCurriedYonedaLemma, yonedaOpCompYonedaObj, yonedaEquiv]
  simp only [← comp_apply, Category.assoc]
  simp [← NatTrans.naturality_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant4a6d323c01172f02274c58988fabb6d5b905ae4156d09c61f49661621325c178.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant4a6d323c01172f02274c58988fabb6d5b905ae4156d09c61f49661621325c178.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d3d8b2cb3e63818824f4a8da6d1e41bdc9c490c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
