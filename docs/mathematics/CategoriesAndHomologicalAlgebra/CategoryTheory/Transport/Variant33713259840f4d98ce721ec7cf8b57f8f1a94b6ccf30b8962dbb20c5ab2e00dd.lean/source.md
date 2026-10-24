# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Transport.Variant33713259840f4d98ce721ec7cf8b57f8f1a94b6ccf30b8962dbb20c5ab2e00dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48a15add8575b5a0656fc2204c3f64816c55495b` · SHA-256 `51f2714c8cf23f4ffbb6e282420114ca6c5d7ca84d87535f14867e747e040399`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Transport.Variant2d2d013d783c8d8c2a82e4a013338c0004a08e794ad2d629c823c6045728aece","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d2d013d783c8d8c2a82e4a013338c0004a08e794ad2d629c823c6045728aece","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Transport.Variant2d2d013d783c8d8c2a82e4a013338c0004a08e794ad2d629c823c6045728aece","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2d2d013d783c8d8c2a82e4a013338c0004a08e794ad2d629c823c6045728aece","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Transport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Monoidal.NaturalTransformation


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Transport.Variant2d2d013d783c8d8c2a82e4a013338c0004a08e794ad2d629c823c6045728aece

#align_import category_theory.monoidal.transport from "leanprover-community/mathlib"@"31529827d0f68d1fbd429edc393a928f677f4aba"

/-!
# Transport a monoidal structure along an equivalence.

When `C` and `D` are equivalent as categories,
we can transport a monoidal structure on `C` along the equivalence,
obtaining a monoidal structure on `D`.

We then upgrade the original functor and its inverse to monoidal functors
with respect to the new monoidal structure on `D`.
-/


universe v₁ v₂ u₁ u₂

noncomputable section

open CategoryTheory

open CategoryTheory.Category

open CategoryTheory.MonoidalCategory

namespace CategoryTheory.Monoidal

variable {C : Type u₁} [Category.{v₁} C] [MonoidalCategory.{v₁} C]

variable {D : Type u₂} [Category.{v₂} D]

-- porting note: it was @[simps {attrs := [`_refl_lemma]}]
/-- Transport a monoidal structure along an equivalence of (plain) categories.
-/
@[simps]
def transport (e : C ≌ D) : MonoidalCategory.{v₂} D where
  tensorObj X Y := e.functor.obj (e.inverse.obj X ⊗ e.inverse.obj Y)
  whiskerLeft := fun X _ _ f ↦ e.functor.map (e.inverse.obj X ◁ e.inverse.map f)
  whiskerRight := fun f X ↦ e.functor.map (e.inverse.map f ▷ e.inverse.obj X)
  tensorHom_def := by simp [tensorHom_def]
  tensorHom f g := e.functor.map (e.inverse.map f ⊗ e.inverse.map g)
  tensorUnit' := e.functor.obj (𝟙_ C)
  associator X Y Z :=
    e.functor.mapIso
      (((e.unitIso.app _).symm ⊗ Iso.refl _) ≪≫
        α_ (e.inverse.obj X) (e.inverse.obj Y) (e.inverse.obj Z) ≪≫ (Iso.refl _ ⊗ e.unitIso.app _))
  leftUnitor X :=
    e.functor.mapIso (((e.unitIso.app _).symm ⊗ Iso.refl _) ≪≫ λ_ (e.inverse.obj X)) ≪≫
      e.counitIso.app _
  rightUnitor X :=
    e.functor.mapIso ((Iso.refl _ ⊗ (e.unitIso.app _).symm) ≪≫ ρ_ (e.inverse.obj X)) ≪≫
      e.counitIso.app _
  triangle X Y := by
    dsimp
    simp only [Iso.hom_inv_id_app_assoc, comp_tensor_id, Equivalence.unit_inverse_comp, assoc,
      Equivalence.inv_fun_map, comp_id, Functor.map_comp, id_tensor_comp, e.inverse.map_id]
    simp only [← e.functor.map_comp]
    congr 2
    slice_lhs 2 3 =>
      rw [← id_tensor_comp]
      simp
    rw [Category.id_comp, ← associator_naturality_assoc, triangle]
  pentagon W X Y Z := by
    dsimp
    simp only [Iso.hom_inv_id_app_assoc, comp_tensor_id, assoc, Equivalence.inv_fun_map,
      Functor.map_comp, id_tensor_comp, e.inverse.map_id]
    simp only [← e.functor.map_comp]
    congr 2
    slice_lhs 4 5 =>
      rw [← comp_tensor_id, Iso.hom_inv_id_app]
      dsimp
      rw [tensor_id]
    simp only [Category.id_comp, Category.assoc]
    slice_lhs 5 6 =>
      rw [← id_tensor_comp, Iso.hom_inv_id_app]
      dsimp
      rw [tensor_id]
    simp only [Category.id_comp, Category.assoc]
    slice_rhs 2 3 => rw [id_tensor_comp_tensor_id, ← tensor_id_comp_id_tensor]
    slice_rhs 1 2 => rw [← tensor_id, ← associator_naturality]
    slice_rhs 3 4 => rw [← tensor_id, associator_naturality]
    slice_rhs 2 3 => rw [← pentagon]
    simp only [Category.assoc]
    congr 2
    slice_lhs 1 2 => rw [associator_naturality]
    simp only [Category.assoc]
    congr 1
    slice_lhs 1 2 =>
      rw [← id_tensor_comp, ← comp_tensor_id, Iso.hom_inv_id_app]
      dsimp
      rw [tensor_id, tensor_id]
    simp only [Category.id_comp, Category.assoc]
  leftUnitor_naturality f := by
    dsimp
    simp only [Functor.map_comp, Functor.map_id, Category.assoc]
    erw [← e.counitIso.hom.naturality]
    simp only [Functor.comp_map, ← e.functor.map_comp_assoc]
    congr 2
    rw [id_tensor_comp_tensor_id_assoc, ← tensor_id_comp_id_tensor_assoc,
      leftUnitor_naturality]
  rightUnitor_naturality f := by
    dsimp
    simp only [Functor.map_comp, Functor.map_id, Category.assoc]
    erw [← e.counitIso.hom.naturality]
    simp only [Functor.comp_map, ← e.functor.map_comp_assoc]
    congr 2
    erw [tensor_id_comp_id_tensor_assoc, ← id_tensor_comp_tensor_id_assoc,
      rightUnitor_naturality]
  associator_naturality f₁ f₂ f₃ := by
    dsimp
    simp only [Equivalence.inv_fun_map, Functor.map_comp, Category.assoc]
    simp only [← e.functor.map_comp]
    congr 1
    conv_lhs => rw [← tensor_id_comp_id_tensor]
    slice_lhs 2 3 => rw [id_tensor_comp_tensor_id, ← tensor_id_comp_id_tensor, ← tensor_id]
    simp only [Category.assoc]
    slice_lhs 3 4 => rw [associator_naturality]
    conv_lhs => simp only [comp_tensor_id]
    slice_lhs 3 4 =>
      rw [← comp_tensor_id, Iso.hom_inv_id_app]
      dsimp
      rw [tensor_id]
    simp only [Category.id_comp, Category.assoc]
    slice_lhs 2 3 => rw [associator_naturality]
    simp only [Category.assoc]
    congr 2
    slice_lhs 1 1 => rw [← tensor_id_comp_id_tensor]
    slice_lhs 2 3 => rw [← id_tensor_comp, tensor_id_comp_id_tensor]
    slice_lhs 1 2 => rw [tensor_id_comp_id_tensor]
    conv_rhs =>
      congr
      · skip
      · rw [← id_tensor_comp_tensor_id, id_tensor_comp]
    simp only [Category.assoc]
    slice_rhs 1 2 =>
      rw [← id_tensor_comp, Iso.hom_inv_id_app]
      dsimp
      rw [tensor_id]
    simp only [Category.id_comp, Category.assoc]
    conv_rhs => rw [id_tensor_comp]
    slice_rhs 2 3 => rw [id_tensor_comp_tensor_id, ← tensor_id_comp_id_tensor]
    slice_rhs 1 2 => rw [id_tensor_comp_tensor_id]
#align category_theory.monoidal.transport CategoryTheory.Monoidal.transport

/-- A type synonym for `D`, which will carry the transported monoidal structure. -/
@[nolint unusedArguments]
def Transported (_ : C ≌ D) := D
#align category_theory.monoidal.transported CategoryTheory.Monoidal.Transported

instance (e : C ≌ D) : Category (Transported e) := (inferInstance : Category D)

instance (e : C ≌ D) : MonoidalCategory (Transported e) :=
  transport e

instance (e : C ≌ D) : Inhabited (Transported e) :=
  ⟨𝟙_ _⟩

section

attribute [local simp] transport_tensorUnit'

section

attribute [local simp]
  transport_tensorHom transport_associator transport_leftUnitor transport_rightUnitor

/--
We can upgrade `e.functor` to a lax monoidal functor from `C` to `D` with the transported structure.
-/
@[simps]
def laxToTransported (e : C ≌ D) : LaxMonoidalFunctor C (Transported e) where
  toFunctor := e.functor
  ε := 𝟙 (e.functor.obj (𝟙_ C))
  μ X Y := e.functor.map (e.unitInv.app X ⊗ e.unitInv.app Y)
  μ_natural f g := by
    dsimp
    rw [Equivalence.inv_fun_map, Equivalence.inv_fun_map, tensor_comp, Functor.map_comp,
      tensor_comp, ← e.functor.map_comp, ← e.functor.map_comp, ← e.functor.map_comp,
      assoc, assoc, ← tensor_comp, Iso.hom_inv_id_app, Iso.hom_inv_id_app, ← tensor_comp]
    dsimp
    rw [comp_id, comp_id]
  associativity X Y Z := by
    dsimp
    rw [Equivalence.inv_fun_map, Equivalence.inv_fun_map, Functor.map_comp,
      Functor.map_comp, assoc, assoc, e.inverse.map_id, e.inverse.map_id,
      comp_tensor_id, id_tensor_comp, Functor.map_comp, assoc, id_tensor_comp,
      comp_tensor_id, ← e.functor.map_comp, ← e.functor.map_comp, ← e.functor.map_comp,
      ← e.functor.map_comp, ← e.functor.map_comp, ← e.functor.map_comp, ← e.functor.map_comp]
    congr 2
    slice_lhs 3 3 => rw [← tensor_id_comp_id_tensor]
    slice_lhs 2 3 =>
      rw [← comp_tensor_id, Iso.hom_inv_id_app]
      dsimp
      rw [tensor_id]
    rw [id_comp]
    slice_rhs 2 3 =>
      rw [←id_tensor_comp, Iso.hom_inv_id_app]
      dsimp
      rw [tensor_id]
    rw [id_comp]
    conv_rhs => rw [← id_tensor_comp_tensor_id _ (e.unitInv.app X)]
    dsimp only [Functor.comp_obj]
    slice_rhs 3 4 =>
      rw [← id_tensor_comp, Iso.hom_inv_id_app]
      dsimp
      rw [tensor_id]
    simp only [associator_conjugation, ←tensor_id, ←tensor_comp, Iso.inv_hom_id,
      Iso.inv_hom_id_assoc, assoc, id_comp, comp_id]
  left_unitality X := by
    dsimp
    rw [e.inverse.map_id, e.inverse.map_id, tensor_id, Functor.map_comp, assoc,
      Equivalence.counit_app_functor, ← e.functor.map_comp, ← e.functor.map_comp,
      ← e.functor.map_comp, ← e.functor.map_comp, ← leftUnitor_naturality,
      ← tensor_comp_assoc, comp_id, id_comp, id_comp]
    rfl
  right_unitality X := by
    dsimp
    rw [Functor.map_comp, assoc, e.inverse.map_id, e.inverse.map_id, tensor_id,
      Functor.map_id, id_comp, Equivalence.counit_app_functor, ← e.functor.map_comp,
      ← e.functor.map_comp, ← e.functor.map_comp, ← rightUnitor_naturality,
      ← tensor_comp_assoc, id_comp, comp_id]
    rfl
#align category_theory.monoidal.lax_to_transported CategoryTheory.Monoidal.laxToTransported

end

/-- We can upgrade `e.functor` to a monoidal functor from `C` to `D` with the transported structure.
-/
@[simps]
def toTransported (e : C ≌ D) : MonoidalFunctor C (Transported e) where
  toLaxMonoidalFunctor := laxToTransported e
  ε_isIso := by
    dsimp
    infer_instance
  μ_isIso X Y := by
    dsimp
    infer_instance
#align category_theory.monoidal.to_transported CategoryTheory.Monoidal.toTransported

end

instance (e : C ≌ D) : IsEquivalence (toTransported e).toFunctor := by
  dsimp
  infer_instance

/-- We can upgrade `e.inverse` to a monoidal functor from `D` with the transported structure to `C`.
-/
@[simps!]
def fromTransported (e : C ≌ D) : MonoidalFunctor (Transported e) C :=
  monoidalInverse (toTransported e)
#align category_theory.monoidal.from_transported CategoryTheory.Monoidal.fromTransported

/-- The unit isomorphism upgrades to a monoidal isomorphism. -/
@[simps! hom inv]
def transportedMonoidalUnitIso (e : C ≌ D) :
    LaxMonoidalFunctor.id C ≅ laxToTransported e ⊗⋙ (fromTransported e).toLaxMonoidalFunctor :=
  asIso (monoidalUnit (toTransported e))
#align category_theory.monoidal.transported_monoidal_unit_iso CategoryTheory.Monoidal.transportedMonoidalUnitIso

/-- The counit isomorphism upgrades to a monoidal isomorphism. -/
@[simps! hom inv]
def transportedMonoidalCounitIso (e : C ≌ D) :
    (fromTransported e).toLaxMonoidalFunctor ⊗⋙ laxToTransported e ≅
      LaxMonoidalFunctor.id (Transported e) :=
  asIso (monoidalCounit (toTransported e))
#align category_theory.monoidal.transported_monoidal_counit_iso CategoryTheory.Monoidal.transportedMonoidalCounitIso

end CategoryTheory.Monoidal
```
