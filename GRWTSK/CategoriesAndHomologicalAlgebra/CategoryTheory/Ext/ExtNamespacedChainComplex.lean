-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ext.Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Ext.Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/Ext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Adam Topaz
-/
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.Algebra.Homology.Opposite
import Mathlib.CategoryTheory.Abelian.LeftDerived
import Mathlib.CategoryTheory.Abelian.Opposite
import Mathlib.CategoryTheory.Abelian.Projective.Resolution
import Mathlib.CategoryTheory.Linear.Yoneda

/-!
# Ext

We define `Ext R C n : Cᵒᵖ ⥤ C ⥤ Module R` for any `R`-linear abelian category `C`
by (left) deriving in the first argument of the bifunctor `(X, Y) ↦ ModuleCat.of R (unop X ⟶ Y)`.

## Implementation

TODO (@joelriou): When the derived category enters mathlib, the Ext groups shall be
redefined using morphisms in the derived category, and then it will be possible to
compute `Ext` using both projective or injective resolutions.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ext.Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df

noncomputable section

open CategoryTheory Limits

variable (R : Type*) [Ring R] (C : Type*) [Category C] [Abelian C] [Linear R C]
  [EnoughProjectives C]

/-- `Ext R C n` is defined by deriving in
the first argument of `(X, Y) ↦ ModuleCat.of R (unop X ⟶ Y)`
(which is the second argument of `linearYoneda`).
-/

def Ext (n : ℕ) : Cᵒᵖ ⥤ C ⥤ ModuleCat R :=
  Functor.flip
    { obj := fun Y => (((linearYoneda R C).obj Y).rightOp.leftDerived n).leftOp
      -- Porting note: if we use dot notation for any of
      -- `NatTrans.leftOp` / `NatTrans.rightOp` / `NatTrans.leftDerived`
      -- then `aesop_cat` can not discharge the `map_id` and `map_comp` goals.
      -- This should be investigated further.
      map := fun f =>
        NatTrans.leftOp (NatTrans.leftDerived (NatTrans.rightOp ((linearYoneda R C).map f)) n) }

open ZeroObject

variable {R C}

/-- Given a chain complex `X` and an object `Y`, this is the cochain complex
which in degree `i` consists of the module of morphisms `X.X i ⟶ Y`. -/
@[simps! X d]
def ChainComplex.linearYonedaObj {α : Type*} [AddRightCancelSemigroup α] [One α]
    (X : ChainComplex C α) (A : Type*) [Ring A] [Linear A C] (Y : C) :
    CochainComplex (ModuleCat A) α :=
  ((((linearYoneda A C).obj Y).rightOp.mapHomologicalComplex _).obj X).unop

namespace CategoryTheory

namespace ProjectiveResolution

variable {X : C} (P : ProjectiveResolution X)

/-- `Ext` can be computed using a projective resolution. -/
def isoExt (n : ℕ) (Y : C) : ((Ext R C n).obj (Opposite.op X)).obj Y ≅
    (P.complex.linearYonedaObj R Y).homology n :=
  (P.isoLeftDerivedObj ((linearYoneda R C).obj Y).rightOp n).unop.symm ≪≫
    (HomologicalComplex.homologyUnop _ _).symm

end ProjectiveResolution

end CategoryTheory

/-- If `X : C` is projective and `n : ℕ`, then `Ext^(n + 1) X Y ≅ 0` for any `Y`. -/
lemma isZero_Ext_succ_of_projective (X Y : C) [Projective X] (n : ℕ) :
    IsZero (((Ext R C (n + 1)).obj (Opposite.op X)).obj Y) := by
  refine IsZero.of_iso ?_ ((ProjectiveResolution.self X).isoExt (n + 1) Y)
  rw [← HomologicalComplex.exactAt_iff_isZero_homology, HomologicalComplex.exactAt_iff]
  refine ShortComplex.exact_of_isZero_X₂ _ ?_
  dsimp
  rw [IsZero.iff_id_eq_zero]
  ext (x : _ ⟶ _)
  obtain rfl : x = 0 := (HomologicalComplex.isZero_single_obj_X
    (ComplexShape.down ℕ) 0 X (n + 1) (by simp)).eq_of_src _ _
  rfl
