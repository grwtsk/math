# isoLocallyConstantOfIsColimit_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:262e9f9a-b3b7-34a6-faf3-384f942d16bc",
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
  "slug": "isolocallyconstantofiscolimit-inv--b01628fe0cff8a6b62906856",
  "source": {
    "blob": "844ffd497cf6c389ba7cea5cc8a1059dd49aee1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 584,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b01628fe0cff8a6b62906856ad746c423115ea8541f4252cbfd2990194b4bbde",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:262e9f9a-b3b7-34a6-faf3-384f942d16bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–618.

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
  suffices _ ≫ (isoFinYonedaComponents _ _).inv ≫ X.map g =
    (locallyConstantPresheaf _).map g ≫ counitAppApp (Opposite.unop S) X by
      simpa [locallyConstantIsoFinYoneda, isoFinYoneda, counitApp]
  erw [(counitApp.{u, u} X).naturality]
  simp only [← Category.assoc, op_obj, functorToPresheaves_obj_obj]
  congr
  ext f
  apply presheaf_ext.{u, u} (X := X) (Y := X) (f := f)
  intro x
  dsimp [toLightProfinite_obj]
  rw [incl_of_counitAppApp]
  simp only [counitAppAppImage]
  have : Finite (fiber.{u, u} f x) :=
    Finite.of_injective (sigmaIncl.{u, u} f x).1 Subtype.val_injective
  apply injective_of_mono (isoFinYonedaComponents X (fiber.{u, u} f x)).hom
  ext y
  simp only [toLightProfinite_obj, isoFinYonedaComponents_hom, TypeCat.hom_ofHom,
    TypeCat.Fun.coe_mk, ← map_comp_apply, ← op_comp]
  rw [show (LightProfinite.of PUnit.{u + 1}).const y ≫
    IsTerminal.from _ (fiber.{u, u} f x) = 𝟙 _ from rfl]
  simpa [← dsimp% isoFinYonedaComponents_inv_comp X _ (sigmaIncl.{u, u} f x),
    ← isoFinYonedaComponents_hom_apply, -isoFinYonedaComponents_hom] using! x.map_eq_image f y

end LightCondensed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variant97eeb564d6ad3336b404dd78e2324bccf5ad38f63fe22ab6a9adbed8e3d6cc0c.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `844ffd497cf6c389ba7cea5cc8a1059dd49aee1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
