# isoLocallyConstantOfIsColimit_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09a26db38ca3966c08ffd6534b357e5e12eb0f43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 524,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b708a825971b40c1a0b362ffecd599d309a17d3718080308a49162e94790b905.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f527efd2-fbce-484d-2c89-eafb0286171c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e436b635-32eb-7f3c-71a9-be697e7eb32c",
  "kind": "lemma",
  "lexical_name": "isoLocallyConstantOfIsColimit_inv",
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
  "slug": "isolocallyconstantofiscolimit-inv--78169a33ecb0242337d9ec57",
  "source": {
    "blob": "09a26db38ca3966c08ffd6534b357e5e12eb0f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 524,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb708a825971b40c1a0b362ffecd599d309a17d3718080308a49162e94790b905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78169a33ecb0242337d9ec57c1dbd13da7efb29bf5a34814bec7ef340d1be249",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb708a825971b40c1a0b362ffecd599d309a17d3718080308a49162e94790b905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e436b635-32eb-7f3c-71a9-be697e7eb32c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isoLocallyConstantOfIsColimit_inv (X : LightProfinite.{u}ᵒᵖ ⥤ Type u)
    [PreservesFiniteProducts X] (hX : ∀ S : LightProfinite.{u}, (IsColimit <|
      X.mapCocone (coconeRightOpOfCone S.asLimitCone))) :
    (isoLocallyConstantOfIsColimit X hX).inv =
      (CompHausLike.LocallyConstant.counitApp.{u, u} X) := by
  dsimp [isoLocallyConstantOfIsColimit]
  simp only [Category.assoc]
  rw [Iso.inv_comp_eq]
  ext S : 2
  apply colimit.hom_ext
  intro ⟨Y, _, g⟩
  simp? [locallyConstantIsoFinYoneda, isoFinYoneda, counitApp] says
    simp only [comp_obj, CostructuredArrow.proj_obj, op_obj, functorToPresheaves_obj_obj,
      isoFinYoneda, locallyConstantIsoFinYoneda, finYoneda_obj, LocallyConstant.toFun_eq_coe,
      NatTrans.comp_app, pointwiseLeftKanExtension_obj, lanPresheafExt_inv, Iso.trans_inv,
      Iso.symm_inv, whiskerLeft_comp, lanPresheafNatIso_hom_app, Opposite.op_unop, colimit.map_desc,
      id_eq, Functor.comp_map, op_map, colimit.ι_desc, Cocones.precompose_obj_pt,
      LightProfinite.Extend.cocone_pt, Cocones.precompose_obj_ι, Category.assoc, const_obj_obj,
      whiskerLeft_app, NatIso.ofComponents_hom_app, NatIso.ofComponents_inv_app,
      LightProfinite.Extend.cocone_ι_app, counitApp, colimit.ι_desc_assoc]
  erw [(counitApp.{u, u} X).naturality]
  simp only [← Category.assoc]
  congr
  ext f
  simp only [types_comp_apply, isoFinYoneda_inv_app, counitApp_app]
  apply presheaf_ext.{u, u} (X := X) (Y := X) (f := f)
  intro x
  rw [incl_of_counitAppApp]
  simp only [counitAppAppImage, CompHausLike.coe_of]
  letI : Fintype (fiber.{u, u} f x) :=
    Fintype.ofInjective (sigmaIncl.{u, u} f x).1 Subtype.val_injective
  apply injective_of_mono (isoFinYonedaComponents X (fiber.{u, u} f x)).hom
  ext y
  simp only [isoFinYonedaComponents_hom_apply, ← FunctorToTypes.map_comp_apply, ← op_comp]
  rw [show (LightProfinite.of PUnit.{u + 1}).const y ≫ IsTerminal.from _ (fiber f x) = 𝟙 _ from rfl]
  simp only [op_comp, FunctorToTypes.map_comp_apply, op_id, FunctorToTypes.map_id_apply]
  rw [← isoFinYonedaComponents_inv_comp X _ (sigmaIncl.{u, u} f x)]
  simpa [← isoFinYonedaComponents_hom_apply] using x.map_eq_image f y

end LightCondensed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb708a825971b40c1a0b362ffecd599d309a17d3718080308a49162e94790b905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb708a825971b40c1a0b362ffecd599d309a17d3718080308a49162e94790b905.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09a26db38ca3966c08ffd6534b357e5e12eb0f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
