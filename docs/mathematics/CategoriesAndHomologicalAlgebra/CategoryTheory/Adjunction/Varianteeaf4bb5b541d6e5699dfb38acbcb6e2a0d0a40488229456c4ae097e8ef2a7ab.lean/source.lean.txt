-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtendsScalarsMapLeftUnitorInvOneTmul.Variant0ef4147dcaab596c6157e53052402cdab40bef6d871676ba0b33579611663114","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ef4147dcaab596c6157e53052402cdab40bef6d871676ba0b33579611663114","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ExtendsScalarsMapLeftUnitorInvOneTmul.Variant0ef4147dcaab596c6157e53052402cdab40bef6d871676ba0b33579611663114","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0ef4147dcaab596c6157e53052402cdab40bef6d871676ba0b33579611663114","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/Monoidal/Adjunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Category.ModuleCat.ChangeOfRings
public import Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic

/-!
# The monoidal adjunction between the extension and the restriction of scalars

Let `f : R →+* S` be a morphism of commutative rings. We show that the functor
`extendsScalars f : ModuleCat R ⥤ ModuleCat S` is monoidal, and deduce that
`restrictScalars f : ModuleCat S ⥤ ModuleCat R` is lax monoidal.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtendsScalarsMapLeftUnitorInvOneTmul.Variant0ef4147dcaab596c6157e53052402cdab40bef6d871676ba0b33579611663114

public section

set_option backward.defeqAttrib.useBackward true

universe u

open CategoryTheory ModuleCat MonoidalCategory Limits
  Functor.LaxMonoidal Functor.OplaxMonoidal TensorProduct

namespace ModuleCat

variable {R S : Type u} [CommRing R] [CommRing S] (f : R →+* S)

@[simp]
lemma extendsScalars_map_leftUnitor_inv_one_tmul (M : ModuleCat R) (m : M) :
    letI := f.toAlgebra
    (extendScalars f).map (λ_ M).inv ((1 : S) ⊗ₜ[R] m) = (1 : S) ⊗ₜ[R] (1 ⊗ₜ m) := rfl

@[simp]
lemma extendsScalars_map_rightUnitor_inv_one_tmul (M : ModuleCat R) (m : M) :
    letI := f.toAlgebra
    (extendScalars f).map (ρ_ M).inv ((1 : S) ⊗ₜ[R] m) = (1 : S) ⊗ₜ[R] (m ⊗ₜ 1) := rfl

set_option backward.isDefEq.respectTransparency.types false in
open ModuleCat.MonoidalCategory in
noncomputable instance : (extendScalars f).Monoidal :=
  letI : Algebra R S := f.toAlgebra
  Functor.CoreMonoidal.toMonoidal
    (.mk'
      (εIso := (AlgebraTensorModule.rid R S S).symm.toModuleIso)
      (μIso := fun M₁ M₂ ↦ (AlgebraTensorModule.distribBaseChange R S M₁ M₂).symm.toModuleIso)
      (μIso_inv_natural_left := fun {M₁ M₁'} g M₂ ↦
        ((extendRestrictScalarsAdj f).homEquiv _ _).injective
          (tensor_ext (fun _ _ ↦ rfl)))
      (μIso_inv_natural_right := fun {M₂ M₂'} M₁ g ↦
        ((extendRestrictScalarsAdj f).homEquiv _ _).injective
          (tensor_ext (fun _ _ ↦ rfl)))
      (oplax_associativity := fun M₁ M₂ M₃ ↦
        ((extendRestrictScalarsAdj f).homEquiv _ _).injective
          (tensor_ext₃' (fun _ _ _ ↦ rfl)))
      (oplax_left_unitality := fun M ↦ by
        ext m
        dsimp
        rw [MonoidalCategory.leftUnitor_inv_apply]
        erw [AlgebraTensorModule.distribBaseChange_tmul,
          MonoidalCategory.whiskerRight_apply,
          AlgebraTensorModule.rid_tmul]
        rw [one_smul]
        rfl)
      (oplax_right_unitality := fun M ↦ by
        ext m
        dsimp
        rw [MonoidalCategory.rightUnitor_inv_apply]
        erw [AlgebraTensorModule.distribBaseChange_tmul,
          MonoidalCategory.whiskerLeft_apply,
          AlgebraTensorModule.rid_tmul]
        rw [one_smul]
        rfl))

set_option backward.defeqAttrib.useBackward true in
lemma extendScalars_ε :
    letI := f.toAlgebra
    dsimp% ε (extendScalars f) = (AlgebraTensorModule.rid R S S).toModuleIso.inv := rfl

set_option backward.defeqAttrib.useBackward true in
lemma extendScalars_η :
    letI := f.toAlgebra
    dsimp% η (extendScalars f) = (AlgebraTensorModule.rid R S S).toModuleIso.hom := rfl

set_option backward.defeqAttrib.useBackward true in
lemma extendScalars_μ (M₁ M₂ : ModuleCat R) :
    letI := f.toAlgebra
    dsimp% μ (extendScalars f) M₁ M₂ =
      (AlgebraTensorModule.distribBaseChange R S M₁ M₂).toModuleIso.inv :=
  rfl

set_option backward.defeqAttrib.useBackward true in
lemma extendScalars_δ (M₁ M₂ : ModuleCat R) :
    letI := f.toAlgebra
    dsimp% δ (extendScalars f) M₁ M₂ =
      (AlgebraTensorModule.distribBaseChange R S M₁ M₂).toModuleIso.hom :=
  rfl

@[simp]
lemma extendScalars_δ_tmul (M₁ M₂ : ModuleCat R) (m₁ : M₁) (m₂ : M₂) :
    letI := f.toAlgebra
    dsimp% δ (extendScalars f) M₁ M₂ (((1 : S) ⊗ₜ[R] (m₁ ⊗ₜ[R] m₂) :)) =
      ((1 : S) ⊗ₜ[R] m₁) ⊗ₜ[S] ((1 : S) ⊗ₜ[R] m₂) := rfl

noncomputable instance : (restrictScalars f).LaxMonoidal :=
  (extendRestrictScalarsAdj f).rightAdjointLaxMonoidal

@[simp]
lemma restrictScalars_η (r : R) :
    ε (restrictScalars f) r = f r := by
  let := f.toAlgebra
  dsimp [Adjunction.rightAdjointLaxMonoidal_ε]
  rw [extendRestrictScalarsAdj_homEquiv_apply, extendScalars_η]
  erw [AlgebraTensorModule.rid_tmul]
  rw [RingHom.smul_toAlgebra, mul_one]

set_option backward.isDefEq.respectTransparency false in
@[simp]
lemma restrictScalars_μ_tmul (M₁ M₂ : ModuleCat S) (m₁ : M₁) (m₂ : M₂) :
    dsimp% μ (restrictScalars f) M₁ M₂ (m₁ ⊗ₜ m₂) = m₁ ⊗ₜ m₂ := by
  dsimp [Adjunction.rightAdjointLaxMonoidal_μ]
  rw [extendRestrictScalarsAdj_homEquiv_apply]
  dsimp
  rw [extendScalars_δ_tmul, tensorHom_tmul,
    extendRestrictScalarsAdj_counit_app_apply_one_tmul,
    extendRestrictScalarsAdj_counit_app_apply_one_tmul]

end ModuleCat
