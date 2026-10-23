/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

This file specializes the generic reciprocal Abel estimate to the authentic
finite cyclic declarations in `CoreGrowingShiftEndpointCyclicCoordinates`.
It does not import the arithmetic endpoint kernel or the unverified full leaf.
-/
import GRWTSK.NumberTheory.CharacterSums.FiniteCyclicReciprocalAbel
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicCoordinates

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Reciprocal-weight Dirichlet--Abel estimate in the exact original endpoint
coordinates.  The phase, doubled modulus, and circular distance are the
original declarations, not replacement aliases. -/
theorem coreGrowingShiftEndpointTransverseNatCharacter_reciprocal_Ico_norm_le
    (j A B R : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hA : 1 ≤ A)
    (hAB : A < B)
    (hu : u ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        coreGrowingShiftEndpointTransverseNatCharacter j u n /
          (((n + R : ℕ) : ℂ))‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 *
          (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ) *
          (((A + R : ℕ) : ℝ))) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter,
    coreGrowingShiftEndpointTransverseCircularDistance,
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicCircularDistance] using
    GRWTSK.NumberTheory.CharacterSums.norm_sum_stdAddChar_neg_div_nat_add_Ico_le_circularDistance
      (q := coreGrowingShiftEndpointDoubledFourierModulus j)
      u A B R hA hAB hu

/-- Literal harmonic-interval specialization matching the summand used by
`coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier`:

`character j u n * ((n + R : ℂ)⁻¹)` on `Ico (A + 1) B`.

The original arithmetic owner instantiates `A` with its affine-tail lower
endpoint and `R` with its effective shift.  This theorem handles the original
`A < B` condition exactly: when `B = A + 1`, the literal interval is empty. -/
theorem coreGrowingShiftEndpointTransverseTailHarmonicLiteral_norm_le
    (j A B R : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hAB : A < B)
    (hu : u ≠ 0) :
    ‖∑ n ∈ Finset.Ico (A + 1) B,
        coreGrowingShiftEndpointTransverseNatCharacter j u n *
          (((n + R : ℕ) : ℂ))⁻¹‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 *
          (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ) *
          ((((A + 1) + R : ℕ) : ℝ))) := by
  by_cases hstrict : A + 1 < B
  · simpa [div_eq_mul_inv] using
      coreGrowingShiftEndpointTransverseNatCharacter_reciprocal_Ico_norm_le
        j (A + 1) B R u (by omega) hstrict hu
  · have hEq : B = A + 1 := by omega
    subst B
    simp only [Finset.Ico_self, Finset.sum_empty, norm_zero]
    have hd0 :
        coreGrowingShiftEndpointTransverseCircularDistance j u ≠ 0 := by
      intro hd
      exact hu
        ((coreGrowingShiftEndpointTransverseCircularDistance_eq_zero_iff j u).mp
          hd)
    have hd :
        (0 : ℝ) <
          (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ) := by
      exact_mod_cast Nat.pos_of_ne_zero hd0
    positivity

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
