-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomCongr.Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HomCongr.Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Conj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.Hom.Equiv.Units.Basic
import Mathlib.CategoryTheory.Endomorphism


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomCongr.Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f

#align_import category_theory.conj from "leanprover-community/mathlib"@"32253a1a1071173b33dc7d6a218cf722c6feb514"

/-!
# Conjugate morphisms by isomorphisms

An isomorphism `α : X ≅ Y` defines
- a monoid isomorphism
  `CategoryTheory.Iso.conj : End X ≃* End Y` by `α.conj f = α.inv ≫ f ≫ α.hom`;
- a group isomorphism `CategoryTheory.Iso.conjAut : Aut X ≃* Aut Y` by
  `α.conjAut f = α.symm ≪≫ f ≪≫ α`.

For completeness, we also define
`CategoryTheory.Iso.homCongr : (X ≅ X₁) → (Y ≅ Y₁) → (X ⟶ Y) ≃ (X₁ ⟶ Y₁)`,
cf. `Equiv.arrowCongr`.
-/


universe v u

namespace CategoryTheory

namespace Iso

variable {C : Type u} [Category.{v} C]

/-- If `X` is isomorphic to `X₁` and `Y` is isomorphic to `Y₁`, then
there is a natural bijection between `X ⟶ Y` and `X₁ ⟶ Y₁`. See also `Equiv.arrowCongr`. -/
def homCongr {X Y X₁ Y₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) : (X ⟶ Y) ≃ (X₁ ⟶ Y₁) where
  toFun f := α.inv ≫ f ≫ β.hom
  invFun f := α.hom ≫ f ≫ β.inv
  left_inv f :=
    show α.hom ≫ (α.inv ≫ f ≫ β.hom) ≫ β.inv = f by
      rw [Category.assoc, Category.assoc, β.hom_inv_id, α.hom_inv_id_assoc, Category.comp_id]
  right_inv f :=
    show α.inv ≫ (α.hom ≫ f ≫ β.inv) ≫ β.hom = f by
      rw [Category.assoc, Category.assoc, β.inv_hom_id, α.inv_hom_id_assoc, Category.comp_id]
#align category_theory.iso.hom_congr CategoryTheory.Iso.homCongr

-- @[simp, nolint simpNF] Porting note: dsimp can not prove this
@[simp]
theorem homCongr_apply {X Y X₁ Y₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) (f : X ⟶ Y) :
    α.homCongr β f = α.inv ≫ f ≫ β.hom := by
  rfl
#align category_theory.iso.hom_congr_apply CategoryTheory.Iso.homCongr_apply

theorem homCongr_comp {X Y Z X₁ Y₁ Z₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) (γ : Z ≅ Z₁) (f : X ⟶ Y)
    (g : Y ⟶ Z) : α.homCongr γ (f ≫ g) = α.homCongr β f ≫ β.homCongr γ g := by simp
#align category_theory.iso.hom_congr_comp CategoryTheory.Iso.homCongr_comp

/- Porting note: removed `@[simp]`; simp can prove this -/
theorem homCongr_refl {X Y : C} (f : X ⟶ Y) : (Iso.refl X).homCongr (Iso.refl Y) f = f := by simp
#align category_theory.iso.hom_congr_refl CategoryTheory.Iso.homCongr_refl

/- Porting note: removed `@[simp]`; simp can prove this -/
theorem homCongr_trans {X₁ Y₁ X₂ Y₂ X₃ Y₃ : C} (α₁ : X₁ ≅ X₂) (β₁ : Y₁ ≅ Y₂) (α₂ : X₂ ≅ X₃)
    (β₂ : Y₂ ≅ Y₃) (f : X₁ ⟶ Y₁) :
    (α₁ ≪≫ α₂).homCongr (β₁ ≪≫ β₂) f = (α₁.homCongr β₁).trans (α₂.homCongr β₂) f := by simp
#align category_theory.iso.hom_congr_trans CategoryTheory.Iso.homCongr_trans

@[simp]
theorem homCongr_symm {X₁ Y₁ X₂ Y₂ : C} (α : X₁ ≅ X₂) (β : Y₁ ≅ Y₂) :
    (α.homCongr β).symm = α.symm.homCongr β.symm :=
  rfl
#align category_theory.iso.hom_congr_symm CategoryTheory.Iso.homCongr_symm

variable {X Y : C} (α : X ≅ Y)

/-- An isomorphism between two objects defines a monoid isomorphism between their
monoid of endomorphisms. -/
def conj : End X ≃* End Y :=
  { homCongr α α with map_mul' := fun f g => homCongr_comp α α α g f }
#align category_theory.iso.conj CategoryTheory.Iso.conj

theorem conj_apply (f : End X) : α.conj f = α.inv ≫ f ≫ α.hom :=
  rfl
#align category_theory.iso.conj_apply CategoryTheory.Iso.conj_apply

@[simp]
theorem conj_comp (f g : End X) : α.conj (f ≫ g) = α.conj f ≫ α.conj g :=
  α.conj.map_mul g f
#align category_theory.iso.conj_comp CategoryTheory.Iso.conj_comp

@[simp]
theorem conj_id : α.conj (𝟙 X) = 𝟙 Y :=
  α.conj.map_one
#align category_theory.iso.conj_id CategoryTheory.Iso.conj_id

@[simp]
theorem refl_conj (f : End X) : (Iso.refl X).conj f = f := by
  rw [conj_apply, Iso.refl_inv, Iso.refl_hom, Category.id_comp, Category.comp_id]
#align category_theory.iso.refl_conj CategoryTheory.Iso.refl_conj

@[simp]
theorem trans_conj {Z : C} (β : Y ≅ Z) (f : End X) : (α ≪≫ β).conj f = β.conj (α.conj f) :=
  homCongr_trans α α β β f
#align category_theory.iso.trans_conj CategoryTheory.Iso.trans_conj

@[simp]
theorem symm_self_conj (f : End X) : α.symm.conj (α.conj f) = f := by
  rw [← trans_conj, α.self_symm_id, refl_conj]
#align category_theory.iso.symm_self_conj CategoryTheory.Iso.symm_self_conj

@[simp]
theorem self_symm_conj (f : End Y) : α.conj (α.symm.conj f) = f :=
  α.symm.symm_self_conj f
#align category_theory.iso.self_symm_conj CategoryTheory.Iso.self_symm_conj

/- Porting note: removed `@[simp]`; simp can prove this -/
theorem conj_pow (f : End X) (n : ℕ) : α.conj (f ^ n) = α.conj f ^ n :=
  α.conj.toMonoidHom.map_pow f n
#align category_theory.iso.conj_pow CategoryTheory.Iso.conj_pow

-- porting note: todo: change definition so that `conjAut_apply` becomes a `rfl`?
/-- `conj` defines a group isomorphisms between groups of automorphisms -/
def conjAut : Aut X ≃* Aut Y :=
  (Aut.unitsEndEquivAut X).symm.trans <| (Units.mapEquiv α.conj).trans <| Aut.unitsEndEquivAut Y
set_option linter.uppercaseLean3 false in
#align category_theory.iso.conj_Aut CategoryTheory.Iso.conjAut

theorem conjAut_apply (f : Aut X) : α.conjAut f = α.symm ≪≫ f ≪≫ α := by aesop_cat
set_option linter.uppercaseLean3 false in
#align category_theory.iso.conj_Aut_apply CategoryTheory.Iso.conjAut_apply

@[simp]
theorem conjAut_hom (f : Aut X) : (α.conjAut f).hom = α.conj f.hom :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.iso.conj_Aut_hom CategoryTheory.Iso.conjAut_hom

@[simp]
theorem trans_conjAut {Z : C} (β : Y ≅ Z) (f : Aut X) :
    (α ≪≫ β).conjAut f = β.conjAut (α.conjAut f) := by
  simp only [conjAut_apply, Iso.trans_symm, Iso.trans_assoc]
set_option linter.uppercaseLean3 false in
#align category_theory.iso.trans_conj_Aut CategoryTheory.Iso.trans_conjAut

/- Porting note: removed `@[simp]`; simp can prove this -/
theorem conjAut_mul (f g : Aut X) : α.conjAut (f * g) = α.conjAut f * α.conjAut g :=
  α.conjAut.map_mul f g
set_option linter.uppercaseLean3 false in
#align category_theory.iso.conj_Aut_mul CategoryTheory.Iso.conjAut_mul

@[simp]
theorem conjAut_trans (f g : Aut X) : α.conjAut (f ≪≫ g) = α.conjAut f ≪≫ α.conjAut g :=
  conjAut_mul α g f
set_option linter.uppercaseLean3 false in
#align category_theory.iso.conj_Aut_trans CategoryTheory.Iso.conjAut_trans

/- Porting note: removed `@[simp]`; simp can prove this -/
theorem conjAut_pow (f : Aut X) (n : ℕ) : α.conjAut (f ^ n) = α.conjAut f ^ n :=
  α.conjAut.toMonoidHom.map_pow f n
set_option linter.uppercaseLean3 false in
#align category_theory.iso.conj_Aut_pow CategoryTheory.Iso.conjAut_pow

/- Porting note: removed `@[simp]`; simp can prove this -/
theorem conjAut_zpow (f : Aut X) (n : ℤ) : α.conjAut (f ^ n) = α.conjAut f ^ n :=
  α.conjAut.toMonoidHom.map_zpow f n
set_option linter.uppercaseLean3 false in
#align category_theory.iso.conj_Aut_zpow CategoryTheory.Iso.conjAut_zpow

end Iso

namespace Functor

universe v₁ u₁

variable {C : Type u} [Category.{v} C] {D : Type u₁} [Category.{v₁} D] (F : C ⥤ D)

theorem map_homCongr {X Y X₁ Y₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) (f : X ⟶ Y) :
    F.map (Iso.homCongr α β f) = Iso.homCongr (F.mapIso α) (F.mapIso β) (F.map f) := by simp
#align category_theory.functor.map_hom_congr CategoryTheory.Functor.map_homCongr

theorem map_conj {X Y : C} (α : X ≅ Y) (f : End X) :
    F.map (α.conj f) = (F.mapIso α).conj (F.map f) :=
  map_homCongr F α α f
#align category_theory.functor.map_conj CategoryTheory.Functor.map_conj

theorem map_conjAut (F : C ⥤ D) {X Y : C} (α : X ≅ Y) (f : Aut X) :
    F.mapIso (α.conjAut f) = (F.mapIso α).conjAut (F.mapIso f) := by
  ext; simp only [mapIso_hom, Iso.conjAut_hom, F.map_conj]
set_option linter.uppercaseLean3 false in
#align category_theory.functor.map_conj_Aut CategoryTheory.Functor.map_conjAut

-- alternative proof: by simp only [Iso.conjAut_apply, F.mapIso_trans, F.mapIso_symm]
end Functor

end CategoryTheory
