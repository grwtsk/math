import OAI.LinearAlgebra.SpectralBooks.PriceOrdinary
import OAI.LinearAlgebra.SpectralBooks.ScalarRestriction

/-!
# Spectral bounds from the suppliers of a signed network sum

Local attribution: grwtsk contributors.

Each summand can have its own resource tensor. Coefficient scaling and the
fold from a direct sum bind the inequality to the exact coefficient observable.
-/

namespace GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.SignedTensorNetworkSum

open OAI.LinearAlgebra.SpectralBooks
open SiteTensor
open scoped BigOperators NNReal

universe v

/-- A signed combination of independently supplied tensors is a restriction
of the direct sum of their suppliers. The site set and final format are common. -/
theorem signed_sum_restricts_suppliers {I F J : Type*} [Fintype I] [Nonempty I]
    [Field F] [Fintype J] {A : I → Type v} [∀ i, Fintype (A i)]
    (T : J → (∀ i, A i) → F) (weight : J → F) (S : J → TensorClass.{v} I F)
    (hS : ∀ j, ofCoeffs (T j) ≤ S j) :
    ofCoeffs (∑ j, weight j • T j) ≤ ∑ j, S j := by
  classical
  have hTerm (j : J) : ofCoeffs (weight j • T j) ≤ S j :=
    (ofRaw_le_iff.mpr (scalar_mul_restricts (weight j) (T j))).trans (hS j)
  refine (ordinary_sum_le (fun j => weight j • T j)).trans ?_
  generalize (Finset.univ : Finset J) = indices
  induction indices using Finset.induction_on with
  | empty => simp
  | insert j indices hj ih =>
    rw [Finset.sum_insert hj, Finset.sum_insert hj]
    exact SiteTensor.add_mono (hTerm j) ih

/-- The exact signed observable has spectral value bounded by the sum of the
supplier values at a single synchronized spectral point. -/
theorem signed_sum_value_le_suppliers {I F J : Type*} [Fintype I] [Nonempty I]
    [Field F] [Fintype J] {A : I → Type v} [∀ i, Fintype (A i)]
    (φ : normalizedSpectrum ((· ≤ ·) : TensorClass.{v} I F → _ → Prop))
    (T : J → (∀ i, A i) → F) (weight : J → F) (S : J → TensorClass.{v} I F)
    (hS : ∀ j, ofCoeffs (T j) ≤ S j) :
    coeffValue φ (∑ j, weight j • T j) ≤ ∑ j, φ.val (S j) := by
  classical
  have h := φ.2.2.2.2.2 _ _ (signed_sum_restricts_suppliers T weight S hS)
  change coeffValue φ (∑ j, weight j • T j) ≤ normalizedSpectrum.toRingHom φ (∑ j, S j) at h
  rw [map_sum] at h
  exact h

end GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.SignedTensorNetworkSum
