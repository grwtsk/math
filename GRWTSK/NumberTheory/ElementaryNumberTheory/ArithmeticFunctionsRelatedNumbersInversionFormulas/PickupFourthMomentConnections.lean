import Mathlib

/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

Finite combinatorial connections for the exact additive fourth-moment
obstruction. No Guo, Chowla, trace-function, or RH theorem is imported.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupFourthMomentConnections

/-- Additive quadruples on a finite index set. -/
def AdditiveQuadruple (I : Finset ℕ) :=
  {q : ℕ × ℕ × ℕ × ℕ // q.1 ∈ I ∧ q.2.1 ∈ I ∧ q.2.2.1 ∈ I ∧
    q.2.2.2 ∈ I ∧ q.1 + q.2.1 = q.2.2.1 + q.2.2.2}

/-- The two permutation diagonals of n₁+n₂=n₃+n₄. -/
def IsPermutationDiagonal (a b c d : ℕ) : Prop :=
  (a = c ∧ b = d) ∨ (a = d ∧ b = c)

/-- Nontrivial additive quadruple: the additive relation holds but the quartet
is not one of the two permutation diagonals. -/
def IsNontrivialAdditiveQuadruple (a b c d : ℕ) : Prop :=
  a + b = c + d ∧ ¬ IsPermutationDiagonal a b c d

theorem additive_quadruple_diagonal_or_nontrivial
    (a b c d : ℕ) (h : a + b = c + d) :
    IsPermutationDiagonal a b c d ∨
      IsNontrivialAdditiveQuadruple a b c d := by
  by_cases hd : IsPermutationDiagonal a b c d
  · exact Or.inl hd
  · exact Or.inr ⟨h, hd⟩

/-- The additive relation can be rewritten as a common shift relation. -/
theorem additive_quadruple_shift_rewrite
    (a b c d : ℕ) (hab : a ≤ c) (h : a + b = c + d) :
    b = d + (c - a) := by
  omega

/-- A bridge from nontrivial additive quadruples to binary correlations must
retain the response weights and every source boundary. This record is an
obligation list, not evidence that the bridge exists. -/
structure BinaryCorrelationFourthMomentBridge where
  commonShiftRepresentation : Prop
  nontrivialQuadruplesCovered : Prop
  permutationDiagonalsPaid : Prop
  responseWeightsPreserved : Prop
  roughMasksPreserved : Prop
  frozenEndpointsPreserved : Prop
  selectedDivisorSignsPreserved : Prop
  sharedPrimeTermsPreserved : Prop
  completeComplementPreserved : Prop
  growingShiftUniformity : Prop
  oneConstantForGrowingFamily : Prop

/-- Requirements for transplanting a growing-shift logarithmic fourth-moment
uncentring argument to the original pickup coefficients c_n(u). -/
structure GrowingShiftFourthMomentBridge where
  exactCoefficientIdentification : Prop
  logarithmicWeightCompatibility : Prop
  responseWeightCompatibility : Prop
  twoTimeIntegralCompatibility : Prop
  dilationCompatibility : Prop
  shortSumCostControlled : Prop
  roughMaskCompatibility : Prop
  selectedDivisorCompatibility : Prop
  frozenEndpointCompatibility : Prop
  growingStageUniformity : Prop
  quantitativeSavingSurvives : Prop

/-- Requirements for a geometric/trace treatment of the complete nontrivial
additive-energy sum. -/
structure AdditiveEnergyTraceBridge where
  integerSourcePreserved : Prop
  additiveConstraintRecovered : Prop
  signedFourPointObservationRecovered : Prop
  responseWeightsRecovered : Prop
  growingComplexityControlled : Prop
  exceptionalFibersPaid : Prop
  quantitativeTraceSaving : Prop

end GRWTSK.NumberTheory.Moebius.PickupFourthMomentConnections
