-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NormalMonoidalObject.Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.NormalMonoidalObject.Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Free/Coherence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Monoidal.Free.Basic
import Mathlib.CategoryTheory.Groupoid
import Mathlib.CategoryTheory.DiscreteCategory


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NormalMonoidalObject.Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140

#align_import category_theory.monoidal.free.coherence from "leanprover-community/mathlib"@"f187f1074fa1857c94589cc653c786cadc4c35ff"

/-!
# The monoidal coherence theorem

In this file, we prove the monoidal coherence theorem, stated in the following form: the free
monoidal category over any type `C` is thin.

We follow a proof described by Ilya Beylin and Peter Dybjer, which has been previously formalized
in the proof assistant ALF. The idea is to declare a normal form (with regard to association and
adding units) on objects of the free monoidal category and consider the discrete subcategory of
objects that are in normal form. A normalization procedure is then just a functor
`fullNormalize : FreeMonoidalCategory C ⥤ Discrete (NormalMonoidalObject C)`, where
functoriality says that two objects which are related by associators and unitors have the
same normal form. Another desirable property of a normalization procedure is that an object is
isomorphic (i.e., related via associators and unitors) to its normal form. In the case of the
specific normalization procedure we use we not only get these isomorphisms, but also that they
assemble into a natural isomorphism `𝟭 (FreeMonoidalCategory C) ≅ fullNormalize ⋙ inclusion`.
But this means that any two parallel morphisms in the free monoidal category factor through a
discrete category in the same way, so they must be equal, and hence the free monoidal category
is thin.

## References

* [Ilya Beylin and Peter Dybjer, Extracting a proof of coherence for monoidal categories from a
   proof of normalization for monoids][beylin1996]

-/


universe u

namespace CategoryTheory

open MonoidalCategory

namespace FreeMonoidalCategory

variable {C : Type u}

section

variable (C)

/-- We say an object in the free monoidal category is in normal form if it is of the form
    `(((𝟙_ C) ⊗ X₁) ⊗ X₂) ⊗ ⋯`. -/
-- porting note: removed @[nolint has_nonempty_instance]
inductive NormalMonoidalObject : Type u
  | Unit : NormalMonoidalObject
  | tensor : NormalMonoidalObject → C → NormalMonoidalObject
#align category_theory.free_monoidal_category.normal_monoidal_object CategoryTheory.FreeMonoidalCategory.NormalMonoidalObject

end

local notation "F" => FreeMonoidalCategory

local notation "N" => Discrete ∘ NormalMonoidalObject

local infixr:10 " ⟶ᵐ " => Hom

-- porting note: this was automatic in mathlib 3
instance (x y : N C) : Subsingleton (x ⟶ y) := Discrete.instSubsingletonDiscreteHom _ _

/-- Auxiliary definition for `inclusion`. -/
@[simp]
def inclusionObj : NormalMonoidalObject C → F C
  | NormalMonoidalObject.Unit => Unit
  | NormalMonoidalObject.tensor n a => tensor (inclusionObj n) (of a)
#align category_theory.free_monoidal_category.inclusion_obj CategoryTheory.FreeMonoidalCategory.inclusionObj

/-- The discrete subcategory of objects in normal form includes into the free monoidal category. -/
@[simp]
def inclusion : N C ⥤ F C :=
  Discrete.functor inclusionObj
#align category_theory.free_monoidal_category.inclusion CategoryTheory.FreeMonoidalCategory.inclusion

/-- Auxiliary definition for `normalize`. -/
@[simp]
def normalizeObj : F C → NormalMonoidalObject C → N C
  | Unit, n => ⟨n⟩
  | of X, n => ⟨NormalMonoidalObject.tensor n X⟩
  | tensor X Y, n => normalizeObj Y (normalizeObj X n).as
#align category_theory.free_monoidal_category.normalize_obj CategoryTheory.FreeMonoidalCategory.normalizeObj

@[simp]
theorem normalizeObj_unitor (n : NormalMonoidalObject C) : normalizeObj (𝟙_ (F C)) n = ⟨n⟩ :=
  rfl
#align category_theory.free_monoidal_category.normalize_obj_unitor CategoryTheory.FreeMonoidalCategory.normalizeObj_unitor

@[simp]
theorem normalizeObj_tensor (X Y : F C) (n : NormalMonoidalObject C) :
    normalizeObj (X ⊗ Y) n = normalizeObj Y (normalizeObj X n).as :=
  rfl
#align category_theory.free_monoidal_category.normalize_obj_tensor CategoryTheory.FreeMonoidalCategory.normalizeObj_tensor

section

open Hom

-- porting note: triggers a PANIC "invalid LCNF substitution of free variable
-- with expression CategoryTheory.FreeMonoidalCategory.NormalMonoidalObject.{u}"
-- prevented with an initial call to dsimp...why?
/-- Auxiliary definition for `normalize`. Here we prove that objects that are related by
    associators and unitors map to the same normal form. -/
@[simp]
def normalizeMapAux :
    ∀ {X Y : F C}, (X ⟶ᵐ Y) →
      ((Discrete.functor (normalizeObj X) : _ ⥤ N C) ⟶ Discrete.functor (normalizeObj Y))
  | _, _, Hom.id _ => 𝟙 _
  | _, _, α_hom X Y Z => by dsimp; exact Discrete.natTrans (fun _ => 𝟙 _)
  | _, _, α_inv _ _ _ => by dsimp; exact Discrete.natTrans (fun _ => 𝟙 _)
  | _, _, l_hom _ => by dsimp; exact Discrete.natTrans (fun _ => 𝟙 _)
  | _, _, l_inv _ => by dsimp; exact Discrete.natTrans (fun _ => 𝟙 _)
  | _, _, ρ_hom _ => by dsimp; exact Discrete.natTrans (fun _ => 𝟙 _)
  | _, _, ρ_inv _ => by dsimp; exact Discrete.natTrans (fun _ => 𝟙 _)
  | _, _, (@comp _ _ _ _ f g) => normalizeMapAux f ≫ normalizeMapAux g
  | _, _, (@Hom.tensor _ T _ _ W f g) => by
    dsimp
    exact Discrete.natTrans (fun ⟨X⟩ => (normalizeMapAux g).app (normalizeObj T X) ≫
      (Discrete.functor (normalizeObj W) : _ ⥤ N C).map ((normalizeMapAux f).app ⟨X⟩))
#align category_theory.free_monoidal_category.normalize_map_aux CategoryTheory.FreeMonoidalCategory.normalizeMapAux

end

section

variable (C)

/-- Our normalization procedure works by first defining a functor `F C ⥤ (N C ⥤ N C)` (which turns
    out to be very easy), and then obtain a functor `F C ⥤ N C` by plugging in the normal object
    `𝟙_ C`. -/
@[simp]
def normalize : F C ⥤ N C ⥤ N C where
  obj X := Discrete.functor (normalizeObj X)
  map {X Y} := Quotient.lift normalizeMapAux (by aesop_cat)
#align category_theory.free_monoidal_category.normalize CategoryTheory.FreeMonoidalCategory.normalize

/-- A variant of the normalization functor where we consider the result as an object in the free
    monoidal category (rather than an object of the discrete subcategory of objects in normal
    form). -/
@[simp]
def normalize' : F C ⥤ N C ⥤ F C :=
  normalize C ⋙ (whiskeringRight _ _ _).obj inclusion
#align category_theory.free_monoidal_category.normalize' CategoryTheory.FreeMonoidalCategory.normalize'

/-- The normalization functor for the free monoidal category over `C`. -/
def fullNormalize : F C ⥤ N C where
  obj X := ((normalize C).obj X).obj ⟨NormalMonoidalObject.Unit⟩
  map f := ((normalize C).map f).app ⟨NormalMonoidalObject.Unit⟩
#align category_theory.free_monoidal_category.full_normalize CategoryTheory.FreeMonoidalCategory.fullNormalize

/-- Given an object `X` of the free monoidal category and an object `n` in normal form, taking
    the tensor product `n ⊗ X` in the free monoidal category is functorial in both `X` and `n`. -/
@[simp]
def tensorFunc : F C ⥤ N C ⥤ F C where
  obj X := Discrete.functor fun n => inclusion.obj ⟨n⟩ ⊗ X
  map f := Discrete.natTrans (fun n => 𝟙 _ ⊗ f)
#align category_theory.free_monoidal_category.tensor_func CategoryTheory.FreeMonoidalCategory.tensorFunc

theorem tensorFunc_map_app {X Y : F C} (f : X ⟶ Y) (n) : ((tensorFunc C).map f).app n = 𝟙 _ ⊗ f :=
  rfl
#align category_theory.free_monoidal_category.tensor_func_map_app CategoryTheory.FreeMonoidalCategory.tensorFunc_map_app

theorem tensorFunc_obj_map (Z : F C) {n n' : N C} (f : n ⟶ n') :
    ((tensorFunc C).obj Z).map f = inclusion.map f ⊗ 𝟙 Z := by
  cases n
  cases n'
  rcases f with ⟨⟨h⟩⟩
  dsimp at h
  subst h
  simp

#align category_theory.free_monoidal_category.tensor_func_obj_map CategoryTheory.FreeMonoidalCategory.tensorFunc_obj_map

/-- Auxiliary definition for `normalizeIso`. Here we construct the isomorphism between
    `n ⊗ X` and `normalize X n`. -/
@[simp]
def normalizeIsoApp :
    ∀ (X : F C) (n : N C), ((tensorFunc C).obj X).obj n ≅ ((normalize' C).obj X).obj n
  | of _, _ => Iso.refl _
  | Unit, _ => ρ_ _
  | tensor X _, n =>
    (α_ _ _ _).symm ≪≫ tensorIso (normalizeIsoApp X n) (Iso.refl _) ≪≫ normalizeIsoApp _ _
#align category_theory.free_monoidal_category.normalize_iso_app CategoryTheory.FreeMonoidalCategory.normalizeIsoApp

@[simp]
theorem normalizeIsoApp_tensor (X Y : F C) (n : N C) :
    normalizeIsoApp C (X ⊗ Y) n =
      (α_ _ _ _).symm ≪≫ tensorIso (normalizeIsoApp C X n) (Iso.refl _) ≪≫ normalizeIsoApp _ _ _ :=
  rfl
#align category_theory.free_monoidal_category.normalize_iso_app_tensor CategoryTheory.FreeMonoidalCategory.normalizeIsoApp_tensor

@[simp]
theorem normalizeIsoApp_unitor (n : N C) : normalizeIsoApp C (𝟙_ (F C)) n = ρ_ _ :=
  rfl
#align category_theory.free_monoidal_category.normalize_iso_app_unitor CategoryTheory.FreeMonoidalCategory.normalizeIsoApp_unitor

/-- Auxiliary definition for `normalizeIso`. -/
@[simp]
def normalizeIsoAux (X : F C) : (tensorFunc C).obj X ≅ (normalize' C).obj X :=
  NatIso.ofComponents (normalizeIsoApp C X)
    (by
      rintro ⟨X⟩ ⟨Y⟩ ⟨⟨f⟩⟩
      dsimp at f
      subst f
      dsimp
      simp)
#align category_theory.free_monoidal_category.normalize_iso_aux CategoryTheory.FreeMonoidalCategory.normalizeIsoAux

section

variable {D : Type u} [Category.{u} D] {I : Type u} (f : I → D) (X : Discrete I)

-- TODO: move to discrete_category.lean, decide whether this should be a global simp lemma
@[simp]
theorem discrete_functor_obj_eq_as : (Discrete.functor f).obj X = f X.as :=
  rfl
#align category_theory.free_monoidal_category.discrete_functor_obj_eq_as CategoryTheory.FreeMonoidalCategory.discrete_functor_obj_eq_as

-- TODO: move to discrete_category.lean, decide whether this should be a global simp lemma
@[simp 1100]
theorem discrete_functor_map_eq_id (g : X ⟶ X) : (Discrete.functor f).map g = 𝟙 _ := rfl
#align category_theory.free_monoidal_category.discrete_functor_map_eq_id CategoryTheory.FreeMonoidalCategory.discrete_functor_map_eq_id

end

/-- The isomorphism between `n ⊗ X` and `normalize X n` is natural (in both `X` and `n`, but
    naturality in `n` is trivial and was "proved" in `normalizeIsoAux`). This is the real heart
    of our proof of the coherence theorem. -/
def normalizeIso : tensorFunc C ≅ normalize' C :=
  NatIso.ofComponents (normalizeIsoAux C)
    (by -- porting note: the proof has been mostly rewritten
      rintro X Y f
      induction' f using Quotient.recOn with f; swap; rfl
      induction' f with _ X₁ X₂ X₃ _ _ _ _ _ _ _ _ _ _ _ _ h₁ h₂ X₁ X₂ Y₁ Y₂ f g h₁ h₂
      · simp only [mk_id, Functor.map_id, Category.comp_id, Category.id_comp]
      · ext n
        dsimp
        rw [mk_α_hom, NatTrans.comp_app, NatTrans.comp_app]
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight, Functor.comp]
        simp only [comp_tensor_id, associator_conjugation, tensor_id,
          Category.comp_id]
        simp only [← Category.assoc]
        congr 4
        simp only [Category.assoc, ← cancel_epi (𝟙 (inclusionObj n.as) ⊗ (α_ X₁ X₂ X₃).inv),
          pentagon_inv_assoc (inclusionObj n.as) X₁ X₂ X₃,
          tensor_inv_hom_id_assoc, tensor_id, Category.id_comp, Iso.inv_hom_id,
          Category.comp_id]
      · ext n
        dsimp
        rw [mk_α_inv, NatTrans.comp_app, NatTrans.comp_app]
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight, Functor.comp]
        simp only [Category.assoc, comp_tensor_id, tensor_id, Category.comp_id,
          pentagon_inv_assoc, ← associator_inv_naturality_assoc]
        rfl
      · ext n
        dsimp [Functor.comp]
        rw [mk_l_hom, NatTrans.comp_app, NatTrans.comp_app]
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight, Functor.comp]
        simp only [triangle_assoc_comp_right_assoc, Category.assoc, Category.comp_id]
        rfl
      · ext n
        dsimp [Functor.comp]
        rw [mk_l_inv, NatTrans.comp_app, NatTrans.comp_app]
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight, Functor.comp]
        simp only [triangle_assoc_comp_left_inv_assoc, inv_hom_id_tensor_assoc, tensor_id,
          Category.id_comp, Category.comp_id]
        rfl
      · ext n
        dsimp
        rw [mk_ρ_hom, NatTrans.comp_app, NatTrans.comp_app]
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight, Functor.comp]
        simp only [← (Iso.inv_comp_eq _).2 (rightUnitor_tensor _ _), Category.assoc,
          ← rightUnitor_naturality, Category.comp_id]; rfl
      · ext n
        dsimp
        rw [mk_ρ_inv, NatTrans.comp_app, NatTrans.comp_app]
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight, Functor.comp]
        simp only [← (Iso.eq_comp_inv _).1 (rightUnitor_tensor_inv _ _), rightUnitor_conjugation,
          Category.assoc, Iso.hom_inv_id_assoc, Iso.inv_hom_id_assoc, Iso.inv_hom_id,
          Discrete.functor, Category.comp_id, Function.comp]
      · rw [mk_comp, Functor.map_comp, Functor.map_comp, Category.assoc, h₂, reassoc_of% h₁]
      · ext ⟨n⟩
        replace h₁ := NatTrans.congr_app h₁ ⟨n⟩
        replace h₂ := NatTrans.congr_app h₂ ((Discrete.functor (normalizeObj X₁)).obj ⟨n⟩)
        have h₃ := (normalizeIsoAux _ Y₂).hom.naturality ((normalizeMapAux f).app ⟨n⟩)
        have h₄ : ∀ (X₃ Y₃ : N C) (φ : X₃ ⟶ Y₃), (Discrete.functor inclusionObj).map φ ⊗ 𝟙 Y₂ =
            (Discrete.functor fun n ↦ inclusionObj n ⊗ Y₂).map φ := by
          rintro ⟨X₃⟩ ⟨Y₃⟩ φ
          obtain rfl : X₃ = Y₃ := φ.1.1
          simp only [discrete_functor_map_eq_id, tensor_id]
          rfl
        rw [NatTrans.comp_app, NatTrans.comp_app] at h₁ h₂ ⊢
        dsimp [NatIso.ofComponents, normalizeMapAux, whiskeringRight, whiskerRight,
          Functor.comp, Discrete.natTrans] at h₁ h₂ h₃ ⊢
        rw [mk_tensor, associator_inv_naturality_assoc, ← tensor_comp_assoc, h₁,
          Category.assoc, Category.comp_id, ← @Category.id_comp (F C) _ _ _ (@Quotient.mk _ _ g),
          tensor_comp, Category.assoc, Category.assoc, Functor.map_comp]
        congr 2
        erw [← reassoc_of% h₂]
        rw [← h₃, ← Category.assoc, ← id_tensor_comp_tensor_id, h₄]
        rfl )
#align category_theory.free_monoidal_category.normalize_iso CategoryTheory.FreeMonoidalCategory.normalizeIso

/-- The isomorphism between an object and its normal form is natural. -/
def fullNormalizeIso : 𝟭 (F C) ≅ fullNormalize C ⋙ inclusion :=
  NatIso.ofComponents
  (fun X => (λ_ X).symm ≪≫ ((normalizeIso C).app X).app ⟨NormalMonoidalObject.Unit⟩)
    (by
      intro X Y f
      dsimp
      rw [leftUnitor_inv_naturality_assoc, Category.assoc, Iso.cancel_iso_inv_left]
      exact
        congr_arg (fun f => NatTrans.app f (Discrete.mk NormalMonoidalObject.Unit))
          ((normalizeIso.{u} C).hom.naturality f))
#align category_theory.free_monoidal_category.full_normalize_iso CategoryTheory.FreeMonoidalCategory.fullNormalizeIso

end

/-- The monoidal coherence theorem. -/
instance subsingleton_hom : Quiver.IsThin (F C) := fun X Y =>
  ⟨fun f g => by
    have hfg : (fullNormalize C).map f = (fullNormalize C).map g := Subsingleton.elim _ _
    have hf := NatIso.naturality_2 (fullNormalizeIso.{u} C) f
    have hg := NatIso.naturality_2 (fullNormalizeIso.{u} C) g
    exact hf.symm.trans (Eq.trans (by simp only [Functor.comp_map, hfg]) hg)⟩
#align category_theory.free_monoidal_category.subsingleton_hom CategoryTheory.FreeMonoidalCategory.subsingleton_hom

section Groupoid

section

open Hom

/-- Auxiliary construction for showing that the free monoidal category is a groupoid. Do not use
    this, use `IsIso.inv` instead. -/
def inverseAux : ∀ {X Y : F C}, (X ⟶ᵐ Y) → (Y ⟶ᵐ X)
  | _, _, Hom.id X => id X
  | _, _, α_hom _ _ _ => α_inv _ _ _
  | _, _, α_inv _ _ _ => α_hom _ _ _
  | _, _, ρ_hom _ => ρ_inv _
  | _, _, ρ_inv _ => ρ_hom _
  | _, _, l_hom _ => l_inv _
  | _, _, l_inv _ => l_hom _
  | _, _, comp f g => (inverseAux g).comp (inverseAux f)
  | _, _, Hom.tensor f g => (inverseAux f).tensor (inverseAux g)
#align category_theory.free_monoidal_category.inverse_aux CategoryTheory.FreeMonoidalCategory.inverseAux

end

instance : Groupoid.{u} (F C) :=
  { (inferInstance : Category (F C)) with
    inv := Quotient.lift (fun f => ⟦inverseAux f⟧) (by aesop_cat) }

end Groupoid

end FreeMonoidalCategory

end CategoryTheory
