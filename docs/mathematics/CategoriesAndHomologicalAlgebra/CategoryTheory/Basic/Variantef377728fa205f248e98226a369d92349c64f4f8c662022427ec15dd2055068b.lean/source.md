# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1abccb0430bea733261c12d6f3e43608467e467` · SHA-256 `ef9bebdf5aeacbbdc844190ea0e677fbd4acbbfb097bac84244bca5c3db6ce44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomEquiv.Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HomEquiv.Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Closed/FunctorCategory/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Closed.Enrichment
import Mathlib.CategoryTheory.Enriched.FunctorCategory

/-!
# Functor categories are monoidal closed

Let `C` be a monoidal closed category. Let `J` be a category. In this file,
we obtain that the category `J ⥤ C` is monoidal closed if `C` has suitable
limits.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomEquiv.Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475

universe v₁ v₂ u₁ u₂

namespace CategoryTheory

open Category Limits MonoidalCategory

namespace MonoidalClosed

namespace FunctorCategory

open Enriched.FunctorCategory

variable {C : Type u₁} [Category.{v₁} C] [MonoidalCategory C] [MonoidalClosed C]
  {J : Type u₂} [Category.{v₂} J]
  [∀ (F₁ F₂ : J ⥤ C), HasFunctorEnrichedHom C F₁ F₂]

attribute [local simp] enrichedCategorySelf_hom

section

variable {F₁ F₂ F₂' F₃ F₃' : J ⥤ C}

/-- The bijection `(F₁ ⊗ F₂ ⟶ F₃) ≃ (F₂ ⟶ functorEnrichedHom C F₁ F₃)` when `F₁`, `F₂`
and `F₃` are functors `J ⥤ C`, and `C` is monoidal closed. -/
noncomputable def homEquiv : (F₁ ⊗ F₂ ⟶ F₃) ≃ (F₂ ⟶ functorEnrichedHom C F₁ F₃) where
  toFun f :=
    { app j := end_.lift (fun k ↦ F₂.map k.hom ≫ curry (f.app k.right))
        (fun k₁ k₂ φ ↦ by
          dsimp
          simp only [enrichedOrdinaryCategorySelf_eHomWhiskerLeft, Category.assoc,
            enrichedOrdinaryCategorySelf_eHomWhiskerRight]
          rw [← curry_natural_left_assoc, ← curry_natural_left_assoc,
            ← curry_natural_right, curry_pre_app, Category.assoc,
            ← f.naturality φ.right, Monoidal.tensorObj_map, tensorHom_def_assoc,
            ← Under.w φ, Functor.map_comp, MonoidalCategory.whiskerLeft_comp_assoc,
            whisker_exchange_assoc]) }
  invFun g :=
    { app j := uncurry (g.app j ≫ enrichedHomπ C _ _ (Under.mk (𝟙 j)) )
      naturality j j' φ := by
        dsimp
        rw [← uncurry_natural_right, tensorHom_def'_assoc, ← uncurry_pre_app,
          ← uncurry_natural_left, Category.assoc, Category.assoc,
          NatTrans.naturality_assoc, functorEnrichedHom_map,
          end_.lift_π_assoc, enrichedOrdinaryCategorySelf_eHomWhiskerRight]
        dsimp
        rw [pre_id, NatTrans.id_app, enrichedOrdinaryCategorySelf_eHomWhiskerLeft,
          Functor.map_id, Category.comp_id, Category.comp_id]
        congr 2
        dsimp
        rw [← enrichedOrdinaryCategorySelf_eHomWhiskerRight,
          ← enrichedOrdinaryCategorySelf_eHomWhiskerLeft]
        let α : Under.mk (𝟙 j) ⟶ (Under.map φ).obj (Under.mk (𝟙 j')) := Under.homMk φ
        exact (enrichedHom_condition C (Under.forget j ⋙ F₁) (Under.forget j ⋙ F₃) α).symm }
  left_inv f := by aesop_cat
  right_inv g := by
    ext j
    dsimp
    ext k
    -- this following list was obtained by
    -- `simp? [enrichedOrdinaryCategorySelf_eHomWhiskerLeft, Under.map, Comma.mapLeft]`
    simp only [diagram_obj_obj, Functor.comp_obj, Under.forget_obj, enrichedCategorySelf_hom,
      curry_uncurry, NatTrans.naturality_assoc, functorEnrichedHom_obj, functorEnrichedHom_map,
      Under.map, Comma.mapLeft, Functor.const_obj_obj, Functor.id_obj, Discrete.natTrans_app,
      StructuredArrow.left_eq_id, end_.lift_π, Under.mk_right, Under.mk_hom, Iso.refl_inv,
      NatTrans.id_app, enrichedOrdinaryCategorySelf_eHomWhiskerRight, pre_id, Iso.refl_hom,
      enrichedOrdinaryCategorySelf_eHomWhiskerLeft, Functor.map_id, Category.comp_id]
    congr
    simp

lemma homEquiv_naturality_two_symm (f₂ : F₂ ⟶ F₂') (g : F₂' ⟶ functorEnrichedHom C F₁ F₃) :
    homEquiv.symm (f₂ ≫ g) = F₁ ◁ f₂ ≫ homEquiv.symm g := by
  dsimp [homEquiv]
  ext j
  simp [← uncurry_natural_left]

lemma homEquiv_naturality_three [∀ (F₁ F₂ : J ⥤ C), HasEnrichedHom C F₁ F₂]
    (f : F₁ ⊗ F₂ ⟶ F₃) (f₃ : F₃ ⟶ F₃') :
    homEquiv (f ≫ f₃) = homEquiv f ≫ (ρ_ _).inv ≫ _ ◁ functorHomEquiv _ f₃ ≫
      functorEnrichedComp C F₁ F₃ F₃' := by
  dsimp [homEquiv]
  ext j
  dsimp
  ext k
  rw [Category.assoc, Category.assoc, Category.assoc, end_.lift_π, enrichedComp_π,
    tensorHom_def, Category.assoc, whisker_exchange_assoc, whiskerRight_id_assoc,
    Iso.inv_hom_id_assoc, end_.lift_π_assoc, Category.assoc,
    ← MonoidalCategory.whiskerLeft_comp_assoc, Category.assoc, end_.lift_π,
    enrichedOrdinaryCategorySelf_eHomWhiskerRight,
    enrichedOrdinaryCategorySelf_eHomWhiskerLeft]
  dsimp
  rw [pre_id, NatTrans.id_app, Functor.map_id, Category.comp_id,
    Category.comp_id, homEquiv_apply_π, curry_natural_right]
  congr 2
  symm
  apply enrichedOrdinaryCategorySelf_eHomWhiskerLeft

end

variable [∀ (F₁ F₂ : J ⥤ C), HasEnrichedHom C F₁ F₂]
attribute [local instance] Enriched.FunctorCategory.functorEnrichedOrdinaryCategory

/-- When `C` is monoidal closed and has suitable limits,
then for any `F : J ⥤ C`, `tensorLeft F` has a right adjoint. -/
noncomputable def adj (F : J ⥤ C) :
    MonoidalCategory.tensorLeft F ⊣ (eHomFunctor _ _).obj ⟨F⟩ :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun _ _ ↦ homEquiv
      homEquiv_naturality_left_symm := homEquiv_naturality_two_symm
      homEquiv_naturality_right := homEquiv_naturality_three }

/-- When `C` is monoidal closed and has suitable limits,
then for any `F : J ⥤ C`, `tensorLeft F` has a right adjoint. -/
noncomputable def closed (F : J ⥤ C) : Closed F where
  rightAdj := (eHomFunctor _ _).obj ⟨F⟩
  adj := adj F

/-- If `C` is monoidal closed and has suitable limits, the functor
category `J ⥤ C` is monoidal closed. -/
noncomputable scoped instance monoidalClosed : MonoidalClosed (J ⥤ C) where
  closed := closed

end FunctorCategory

end MonoidalClosed

end CategoryTheory
```
