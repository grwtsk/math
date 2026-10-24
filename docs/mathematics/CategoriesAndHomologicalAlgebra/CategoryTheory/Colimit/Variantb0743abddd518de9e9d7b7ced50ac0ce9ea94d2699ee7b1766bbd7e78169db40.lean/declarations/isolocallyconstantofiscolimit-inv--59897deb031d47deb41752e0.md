# isoLocallyConstantOfIsColimit_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33120a7e118f4eb873b9eb5976c1c5ecb9ab4594",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1fad1e4-6360-0815-f1b5-9a0d2a415aee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a0a96f6-b408-a56c-c5f6-7cbb341a37e7",
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
  "slug": "isolocallyconstantofiscolimit-inv--59897deb031d47deb41752e0",
  "source": {
    "blob": "33120a7e118f4eb873b9eb5976c1c5ecb9ab4594",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 284,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59897deb031d47deb41752e099b9c3ac0047077bef40285ba98629884b883e4b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a0a96f6-b408-a56c-c5f6-7cbb341a37e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isoLocallyConstantOfIsColimit_inv (X : Profinite.{u}ᵒᵖ ⥤ Type (u + 1))
    [PreservesFiniteProducts X]
    (hX : ∀ S : Profinite.{u}, (IsColimit <| X.mapCocone S.asLimitCone.op)) :
    (isoLocallyConstantOfIsColimit X hX).inv =
      (CompHausLike.LocallyConstant.counitApp.{u, u + 1} X) := by
  dsimp [isoLocallyConstantOfIsColimit]
  simp only [Category.assoc]
  rw [Iso.inv_comp_eq]
  ext S : 2
  apply colimit.hom_ext
  intro ⟨Y, _, g⟩
  suffices _ ≫ (isoFinYonedaComponents _ _).inv ≫ X.map g =
    (locallyConstantPresheaf _).map g ≫ counitAppApp (Opposite.unop S) X by
      simpa [locallyConstantIsoFinYoneda, isoFinYoneda, counitApp]
  erw [(counitApp.{u, u + 1} X).naturality]
  simp only [← Category.assoc, op_obj, functorToPresheaves_obj_obj]
  congr
  ext f
  simp only [toProfinite_obj, TypeCat.Fun.toFun_apply, CategoryTheory.comp_apply,
    ConcreteCategory.hom_ofHom, TypeCat.Fun.coe_mk, counitApp_app]
  apply presheaf_ext.{u, u + 1} (X := X) (Y := X) (f := f)
  intro x
  dsimp [toProfinite_obj]
  rw [incl_of_counitAppApp.{u, u + 1}]
  simp only [counitAppAppImage]
  have : Finite (fiber.{u, u + 1} f x) :=
    Finite.of_injective (sigmaIncl.{u, u + 1} f x).1 Subtype.val_injective
  apply injective_of_mono (isoFinYonedaComponents X (fiber.{u, u + 1} f x)).hom
  ext y
  simp only [toProfinite_obj, isoFinYonedaComponents_hom, ConcreteCategory.hom_ofHom,
    TypeCat.Fun.coe_mk, ← Functor.map_comp_apply, ← op_comp]
  rw [show (Profinite.of PUnit.{u + 1}).const y ≫
    IsTerminal.from _ (fiber.{u, u + 1} f x) = 𝟙 _ from rfl]
  simp only [op_comp, Functor.map_comp_apply, op_id, Functor.map_id_apply]
  simpa [← dsimp% isoFinYonedaComponents_inv_comp X _ (sigmaIncl.{u, u + 1} f x),
    ← isoFinYonedaComponents_hom_apply, -isoFinYonedaComponents_hom] using! x.map_eq_image f y

end Condensed

namespace LightCondensed

section LocallyConstantAsColimit

variable {F : ℕᵒᵖ ⥤ FintypeCat.{u}} (c : Cone <| F ⋙ toLightProfinite) (X : Type u)

/-- The presheaf on `LightProfinite` of locally constant functions to `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33120a7e118f4eb873b9eb5976c1c5ecb9ab4594` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
