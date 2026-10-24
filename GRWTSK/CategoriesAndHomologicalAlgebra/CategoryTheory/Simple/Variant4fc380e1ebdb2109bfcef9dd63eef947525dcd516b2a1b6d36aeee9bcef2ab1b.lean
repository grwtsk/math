-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Simple.Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Simple.Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Simple.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Scott Morrison
-/
import Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms
import Mathlib.CategoryTheory.Limits.Shapes.Kernels
import Mathlib.CategoryTheory.Abelian.Basic
import Mathlib.CategoryTheory.Subobject.Lattice
import Mathlib.Order.Atoms


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Simple.Variantc6250b6a70e3e93f00f1181476780c2c649d05955e1cdb1dd1c41fe9a3980c97

#align_import category_theory.simple from "leanprover-community/mathlib"@"4ed0bcaef698011b0692b93a042a2282f490f6b6"

/-!
# Simple objects

We define simple objects in any category with zero morphisms.
A simple object is an object `Y` such that any monomorphism `f : X ⟶ Y`
is either an isomorphism or zero (but not both).

This is formalized as a `Prop` valued typeclass `Simple X`.

In some contexts, especially representation theory, simple objects are called "irreducibles".

If a morphism `f` out of a simple object is nonzero and has a kernel, then that kernel is zero.
(We state this as `kernel.ι f = 0`, but should add `kernel f ≅ 0`.)

When the category is abelian, being simple is the same as being cosimple (although we do not
state a separate typeclass for this).
As a consequence, any nonzero epimorphism out of a simple object is an isomorphism,
and any nonzero morphism into a simple object has trivial cokernel.

We show that any simple object is indecomposable.
-/


noncomputable section

open CategoryTheory.Limits

namespace CategoryTheory

universe v u

variable {C : Type u} [Category.{v} C]

section

variable [HasZeroMorphisms C]

/-- An object is simple if monomorphisms into it are (exclusively) either isomorphisms or zero. -/
class Simple (X : C) : Prop where
  mono_isIso_iff_nonzero : ∀ {Y : C} (f : Y ⟶ X) [Mono f], IsIso f ↔ f ≠ 0
#align category_theory.simple CategoryTheory.Simple

/-- A nonzero monomorphism to a simple object is an isomorphism. -/
theorem isIso_of_mono_of_nonzero {X Y : C} [Simple Y] {f : X ⟶ Y} [Mono f] (w : f ≠ 0) : IsIso f :=
  (Simple.mono_isIso_iff_nonzero f).mpr w
#align category_theory.is_iso_of_mono_of_nonzero CategoryTheory.isIso_of_mono_of_nonzero

theorem Simple.of_iso {X Y : C} [Simple Y] (i : X ≅ Y) : Simple X :=
  { mono_isIso_iff_nonzero := fun f m => by
      haveI : Mono (f ≫ i.hom) := mono_comp _ _
      constructor
      · intro h w
        have j : IsIso (f ≫ i.hom)
        infer_instance
        rw [Simple.mono_isIso_iff_nonzero] at j
        subst w
        simp at j
      · intro h
        have j : IsIso (f ≫ i.hom) := by
          apply isIso_of_mono_of_nonzero
          intro w
          apply h
          simpa using (cancel_mono i.inv).2 w
        rw [← Category.comp_id f, ← i.hom_inv_id, ← Category.assoc]
        infer_instance }
#align category_theory.simple.of_iso CategoryTheory.Simple.of_iso

theorem Simple.iff_of_iso {X Y : C} (i : X ≅ Y) : Simple X ↔ Simple Y :=
  ⟨fun _ => Simple.of_iso i.symm, fun _ => Simple.of_iso i⟩
#align category_theory.simple.iff_of_iso CategoryTheory.Simple.iff_of_iso

theorem kernel_zero_of_nonzero_from_simple {X Y : C} [Simple X] {f : X ⟶ Y} [HasKernel f]
    (w : f ≠ 0) : kernel.ι f = 0 := by
  classical
    by_contra h
    haveI := isIso_of_mono_of_nonzero h
    exact w (eq_zero_of_epi_kernel f)
#align category_theory.kernel_zero_of_nonzero_from_simple CategoryTheory.kernel_zero_of_nonzero_from_simple

-- See also `mono_of_nonzero_from_simple`, which requires `Preadditive C`.
/-- A nonzero morphism `f` to a simple object is an epimorphism
(assuming `f` has an image, and `C` has equalizers).
-/
theorem epi_of_nonzero_to_simple [HasEqualizers C] {X Y : C} [Simple Y] {f : X ⟶ Y} [HasImage f]
    (w : f ≠ 0) : Epi f := by
  rw [← image.fac f]
  haveI : IsIso (image.ι f) := isIso_of_mono_of_nonzero fun h => w (eq_zero_of_image_eq_zero h)
  apply epi_comp
#align category_theory.epi_of_nonzero_to_simple CategoryTheory.epi_of_nonzero_to_simple

theorem mono_to_simple_zero_of_not_iso {X Y : C} [Simple Y] {f : X ⟶ Y} [Mono f]
    (w : IsIso f → False) : f = 0 := by
  classical
    by_contra h
    exact w (isIso_of_mono_of_nonzero h)
#align category_theory.mono_to_simple_zero_of_not_iso CategoryTheory.mono_to_simple_zero_of_not_iso

theorem id_nonzero (X : C) [Simple.{v} X] : 𝟙 X ≠ 0 :=
  (Simple.mono_isIso_iff_nonzero (𝟙 X)).mp (by infer_instance)
#align category_theory.id_nonzero CategoryTheory.id_nonzero

instance (X : C) [Simple.{v} X] : Nontrivial (End X) :=
  nontrivial_of_ne 1 _ (id_nonzero X)

section

theorem Simple.not_isZero (X : C) [Simple X] : ¬IsZero X := by
  simpa [Limits.IsZero.iff_id_eq_zero] using id_nonzero X
#align category_theory.simple.not_is_zero CategoryTheory.Simple.not_isZero

variable [HasZeroObject C]

open ZeroObject

variable (C)

/-- We don't want the definition of 'simple' to include the zero object, so we check that here. -/
theorem zero_not_simple [Simple (0 : C)] : False :=
  (Simple.mono_isIso_iff_nonzero (0 : (0 : C) ⟶ (0 : C))).mp ⟨⟨0, by aesop_cat⟩⟩ rfl
#align category_theory.zero_not_simple CategoryTheory.zero_not_simple

end

end

-- We next make the dual arguments, but for this we must be in an abelian category.
section Abelian

variable [Abelian C]

/-- In an abelian category, an object satisfying the dual of the definition of a simple object is
    simple. -/
theorem simple_of_cosimple (X : C) (h : ∀ {Z : C} (f : X ⟶ Z) [Epi f], IsIso f ↔ f ≠ 0) :
    Simple X :=
  ⟨fun {Y} f I => by
    classical
      fconstructor
      · intros
        have hx := cokernel.π_of_epi f
        by_contra h
        subst h
        exact (h _).mp (cokernel.π_of_zero _ _) hx
      · intro hf
        suffices Epi f by exact isIso_of_mono_of_epi _
        apply Preadditive.epi_of_cokernel_zero
        by_contra h'
        exact cokernel_not_iso_of_nonzero hf ((h _).mpr h')⟩
#align category_theory.simple_of_cosimple CategoryTheory.simple_of_cosimple

/-- A nonzero epimorphism from a simple object is an isomorphism. -/
theorem isIso_of_epi_of_nonzero {X Y : C} [Simple X] {f : X ⟶ Y} [Epi f] (w : f ≠ 0) : IsIso f :=
  haveI-- `f ≠ 0` means that `kernel.ι f` is not an iso, and hence zero, and hence `f` is a mono.
   : Mono f :=
    Preadditive.mono_of_kernel_zero (mono_to_simple_zero_of_not_iso (kernel_not_iso_of_nonzero w))
  isIso_of_mono_of_epi f
#align category_theory.is_iso_of_epi_of_nonzero CategoryTheory.isIso_of_epi_of_nonzero

theorem cokernel_zero_of_nonzero_to_simple {X Y : C} [Simple Y] {f : X ⟶ Y} (w : f ≠ 0) :
    cokernel.π f = 0 := by
  classical
    by_contra h
    haveI := isIso_of_epi_of_nonzero h
    exact w (eq_zero_of_mono_cokernel f)
#align category_theory.cokernel_zero_of_nonzero_to_simple CategoryTheory.cokernel_zero_of_nonzero_to_simple

theorem epi_from_simple_zero_of_not_iso {X Y : C} [Simple X] {f : X ⟶ Y} [Epi f]
    (w : IsIso f → False) : f = 0 := by
  classical
    by_contra h
    exact w (isIso_of_epi_of_nonzero h)
#align category_theory.epi_from_simple_zero_of_not_iso CategoryTheory.epi_from_simple_zero_of_not_iso

end Abelian

section Indecomposable

variable [Preadditive C] [HasBinaryBiproducts C]

-- There are another three potential variations of this lemma,
-- but as any one suffices to prove `indecomposable_of_simple` we will not give them all.
theorem Biprod.isIso_inl_iff_isZero (X Y : C) : IsIso (biprod.inl : X ⟶ X ⊞ Y) ↔ IsZero Y := by
  rw [biprod.isIso_inl_iff_id_eq_fst_comp_inl, ← biprod.total, add_right_eq_self]
  constructor
  · intro h
    replace h := h =≫ biprod.snd
    simpa [← IsZero.iff_isSplitEpi_eq_zero (biprod.snd : X ⊞ Y ⟶ Y)] using h
  · intro h
    rw [IsZero.iff_isSplitEpi_eq_zero (biprod.snd : X ⊞ Y ⟶ Y)] at h
    rw [h, zero_comp]
#align category_theory.biprod.is_iso_inl_iff_is_zero CategoryTheory.Biprod.isIso_inl_iff_isZero

/-- Any simple object in a preadditive category is indecomposable. -/
theorem indecomposable_of_simple (X : C) [Simple X] : Indecomposable X :=
  ⟨Simple.not_isZero X, fun Y Z i => by
    refine' or_iff_not_imp_left.mpr fun h => _
    rw [IsZero.iff_isSplitMono_eq_zero (biprod.inl : Y ⟶ Y ⊞ Z)] at h
    change biprod.inl ≠ 0 at h
    have : Simple (Y ⊞ Z) := Simple.of_iso i.symm -- Porting note: this instance is needed
    rw [← Simple.mono_isIso_iff_nonzero biprod.inl] at h
    rwa [Biprod.isIso_inl_iff_isZero] at h⟩
#align category_theory.indecomposable_of_simple CategoryTheory.indecomposable_of_simple

end Indecomposable

section Subobject

variable [HasZeroMorphisms C] [HasZeroObject C]

open ZeroObject

open Subobject

instance {X : C} [Simple X] : Nontrivial (Subobject X) :=
  nontrivial_of_not_isZero (Simple.not_isZero X)

instance {X : C} [Simple X] : IsSimpleOrder (Subobject X) where
  eq_bot_or_eq_top := by
    rintro ⟨⟨⟨Y : C, ⟨⟨⟩⟩, f : Y ⟶ X⟩, m : Mono f⟩⟩
    change mk f = ⊥ ∨ mk f = ⊤
    by_cases h : f = 0
    · exact Or.inl (mk_eq_bot_iff_zero.mpr h)
    · refine' Or.inr ((isIso_iff_mk_eq_top _).mp ((Simple.mono_isIso_iff_nonzero f).mpr h))

/-- If `X` has subobject lattice `{⊥, ⊤}`, then `X` is simple. -/
theorem simple_of_isSimpleOrder_subobject (X : C) [IsSimpleOrder (Subobject X)] : Simple X := by
  constructor; intros Y f hf; constructor
  · intro i
    rw [Subobject.isIso_iff_mk_eq_top] at i
    intro w
    rw [← Subobject.mk_eq_bot_iff_zero] at w
    exact IsSimpleOrder.bot_ne_top (w.symm.trans i)
  · intro i
    rcases IsSimpleOrder.eq_bot_or_eq_top (Subobject.mk f) with (h | h)
    · rw [Subobject.mk_eq_bot_iff_zero] at h
      exact False.elim (i h)
    · exact (Subobject.isIso_iff_mk_eq_top _).mpr h
#align category_theory.simple_of_is_simple_order_subobject CategoryTheory.simple_of_isSimpleOrder_subobject

/-- `X` is simple iff it has subobject lattice `{⊥, ⊤}`. -/
theorem simple_iff_subobject_isSimpleOrder (X : C) : Simple X ↔ IsSimpleOrder (Subobject X) :=
  ⟨by
    intro h
    infer_instance, by
    intro h
    exact simple_of_isSimpleOrder_subobject X⟩
#align category_theory.simple_iff_subobject_is_simple_order CategoryTheory.simple_iff_subobject_isSimpleOrder

/-- A subobject is simple iff it is an atom in the subobject lattice. -/
theorem subobject_simple_iff_isAtom {X : C} (Y : Subobject X) : Simple (Y : C) ↔ IsAtom Y :=
  (simple_iff_subobject_isSimpleOrder _).trans
    ((OrderIso.isSimpleOrder_iff (subobjectOrderIso Y)).trans Set.isSimpleOrder_Iic_iff_isAtom)
#align category_theory.subobject_simple_iff_is_atom CategoryTheory.subobject_simple_iff_isAtom

end Subobject

end CategoryTheory
