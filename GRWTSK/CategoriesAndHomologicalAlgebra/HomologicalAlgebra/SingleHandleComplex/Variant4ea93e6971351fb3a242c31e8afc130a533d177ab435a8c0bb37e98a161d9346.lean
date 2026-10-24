-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.CoefficientModule.Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.CoefficientModule.Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"a407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/SmoothFramedSurgery/SingleHandleComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Homology.SingleHomology
import Mathlib.Algebra.Homology.ShortComplex.ModuleCat

/-!
# The algebraic single-handle chain complex

This module contains the constructive algebraic computation available in
Mathlib independently of smooth gluing.  Over a commutative coefficient ring
`R`, `complex R index` is the chain complex with the regular `R`-module in the
selected handle degree and zero objects elsewhere.  Its homology is canonically
the coefficient module in that degree and is zero in every other degree.

This complex models the relative cellular contribution of one handle.  It
does **not** define the connecting homomorphism in the long exact sequence of
a geometric trace pair.  Identifying a concrete trace with this algebraic
model, including compatibility of its connecting map with an attaching class,
remains the explicit conditional responsibility of
`TraceHomologyComparison`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.CoefficientModule.Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af

namespace Surface.SmoothFramedSurgery.SingleHandleComplex

open CategoryTheory
open CategoryTheory.Limits

/-- The regular coefficient module, regarded as an object of `ModuleCat R`. -/
abbrev coefficientModule (R : Type*) [CommRing R] : ModuleCat R :=
  ModuleCat.of R R

/--
The chain complex concentrated at `index`, with one copy of the regular
coefficient module there.
-/
noncomputable def complex
    (R : Type*) [CommRing R]
    (index : Nat) :
    ChainComplex (ModuleCat R) Nat :=
  (HomologicalComplex.single
    (ModuleCat R) (ComplexShape.down Nat) index).obj
      (coefficientModule R)

/-- The chain object in the selected handle degree is the coefficient module. -/
noncomputable def objectIso
    (R : Type*) [CommRing R]
    (index : Nat) :
    (complex R index).X index ≅ coefficientModule R :=
  HomologicalComplex.singleObjXSelf
    (ComplexShape.down Nat) index (coefficientModule R)

/--
The explicit chain-level identification of the unique nonzero chain group
with the regular coefficient module.  This is deliberately stated before
passing to homology: the single-handle model is not merely known to have the
right cardinality, it is the normalized one-generator chain complex.
-/
noncomputable def chainDegreeLinearEquiv
    (R : Type*) [CommRing R]
    (index : Nat) :
    (complex R index).X index ≃ₗ[R] R :=
  (objectIso R index).toLinearEquiv

/-- The normalized chain generator is the element corresponding to `1 : R`. -/
noncomputable def chainGenerator
    (R : Type*) [CommRing R]
    (index : Nat) :
    (complex R index).X index :=
  (chainDegreeLinearEquiv R index).symm 1

/-- The chosen chain generator is normalized, rather than specified only up to a unit. -/
@[simp]
theorem chainGenerator_normalized
    (R : Type*) [CommRing R]
    (index : Nat) :
    chainDegreeLinearEquiv R index (chainGenerator R index) = 1 :=
  (chainDegreeLinearEquiv R index).apply_symm_apply 1

/-- Every chain object away from the selected handle degree is a zero object. -/
theorem isZero_object_of_ne
    (R : Type*) [CommRing R]
    (index k : Nat)
    (hk : k ≠ index) :
    IsZero ((complex R index).X k) :=
  HomologicalComplex.isZero_single_obj_X
    (ComplexShape.down Nat) index (coefficientModule R) k hk

/-- All differentials in the concentrated single-handle complex are zero. -/
@[simp]
theorem differential_eq_zero
    (R : Type*) [CommRing R]
    (index i j : Nat) :
    (complex R index).d i j = 0 :=
  HomologicalComplex.single_obj_d
    (ComplexShape.down Nat) index (coefficientModule R) i j

/-- The normalized generator is a cycle at chain level because every differential is zero. -/
@[simp]
theorem differential_chainGenerator_eq_zero
    (R : Type*) [CommRing R]
    (index j : Nat) :
    (complex R index).d index j (chainGenerator R index) = 0 := by
  rw [differential_eq_zero]
  rfl

/-- Homology in the handle degree is canonically the coefficient module. -/
noncomputable def homologyIso
    (R : Type*) [CommRing R]
    (index : Nat) :
    (complex R index).homology index ≅ coefficientModule R :=
  HomologicalComplex.singleObjHomologySelfIso
    (ComplexShape.down Nat) index (coefficientModule R)

/-- The categorical homology isomorphism induces an `R`-linear equivalence with `R`. -/
noncomputable def homologyLinearEquiv
    (R : Type*) [CommRing R]
    (index : Nat) :
    (complex R index).homology index ≃ₗ[R] R :=
  (homologyIso R index).toLinearEquiv

/-- The normalized homology generator obtained from the explicit single chain generator. -/
noncomputable def homologyGenerator
    (R : Type*) [CommRing R]
    (index : Nat) :
    (complex R index).homology index :=
  (homologyLinearEquiv R index).symm 1

/-- Homology uses the same normalization: its distinguished class maps to `1 : R`. -/
@[simp]
theorem homologyGenerator_normalized
    (R : Type*) [CommRing R]
    (index : Nat) :
    homologyLinearEquiv R index (homologyGenerator R index) = 1 :=
  (homologyLinearEquiv R index).apply_symm_apply 1

/-- The linear homology equivalence, viewed as an additive equivalence. -/
noncomputable def homologyAddEquiv
    (R : Type*) [CommRing R]
    (index : Nat) :
    (complex R index).homology index ≃+ R :=
  (homologyLinearEquiv R index).toAddEquiv

/-- Homology of the single-handle complex vanishes outside the handle degree. -/
theorem isZero_homology_of_ne
    (R : Type*) [CommRing R]
    (index k : Nat)
    (hk : k ≠ index) :
    IsZero ((complex R index).homology k) :=
  HomologicalComplex.isZero_single_obj_homology
    (ComplexShape.down Nat) index (coefficientModule R) k hk

/-- Every homology class away from the handle degree is the zero class. -/
theorem homology_eq_zero_of_ne
    (R : Type*) [CommRing R]
    (index k : Nat)
    (hk : k ≠ index)
    (x : (complex R index).homology k) :
    x = 0 := by
  letI : Subsingleton ((complex R index).homology k) :=
    ModuleCat.subsingleton_of_isZero
      (isZero_homology_of_ne R index k hk)
  exact Subsingleton.elim x 0

end Surface.SmoothFramedSurgery.SingleHandleComplex
