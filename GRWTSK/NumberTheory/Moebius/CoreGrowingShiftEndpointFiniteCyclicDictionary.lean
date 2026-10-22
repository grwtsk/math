/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / CURRENT_MAIN_IMPORT_CLOSURE_BLOCKED / NOT_KERNEL_AUDITED.

The current-main import closure of the legacy endpoint owners has pre-existing
hard elaboration failures before this file is reached.  This file records the
exact definitional dictionary only; it does not certify the endpoint stack.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointFiniteCyclicCore
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The isolated Fourier window is definitionally the legacy endpoint window. -/
theorem coreGrowingShiftEndpointFourierModulus_eq_finiteCyclic
    (j : ℕ) :
    coreGrowingShiftEndpointFourierModulus j =
      coreGrowingShiftEndpointFiniteCyclicFourierModulus j := by
  rfl

/-- The isolated doubled modulus is definitionally the legacy doubled modulus. -/
theorem coreGrowingShiftEndpointDoubledFourierModulus_eq_finiteCyclic
    (j : ℕ) :
    coreGrowingShiftEndpointDoubledFourierModulus j =
      coreGrowingShiftEndpointFiniteCyclicDoubledModulus j := by
  rfl

/-- Exact dictionary for the negative phase; the sign and argument order are
unchanged. -/
theorem coreGrowingShiftEndpointTransverseNatCharacter_eq_finiteCyclic
    (j n : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseNatCharacter j t n =
      coreGrowingShiftEndpointFiniteCyclicNegativePhase j n t := by
  rfl

/-- Exact dictionary for the positive-character multiplier. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_eq_finiteCyclic
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseMultiplier j t =
      coreGrowingShiftEndpointFiniteCyclicMultiplier j t := by
  rfl

/-- Exact dictionary for circular distance. -/
theorem coreGrowingShiftEndpointTransverseCircularDistance_eq_finiteCyclic
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseCircularDistance j t =
      coreGrowingShiftEndpointFiniteCyclicDistance j t := by
  rfl

/-- Legacy endpoint inverse multiplier is supplied by the isolated
Mathlib-only finite cyclic theorem. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance_via_finiteCyclic
    {j : ℕ}
    {t : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (ht : t ≠ 0) :
    ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (4 * (coreGrowingShiftEndpointTransverseCircularDistance j t : ℝ)) := by
  simpa [coreGrowingShiftEndpointTransverseMultiplier_eq_finiteCyclic,
    coreGrowingShiftEndpointTransverseCircularDistance_eq_finiteCyclic,
    coreGrowingShiftEndpointDoubledFourierModulus_eq_finiteCyclic] using
    coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_distance
      (j := j) ht

/-- Actual legacy endpoint interval estimate obtained through the isolated
finite cyclic supplier. -/
theorem coreGrowingShiftEndpointTransverseNatCharacter_Ico_norm_le_distance_via_finiteCyclic
    (j A B : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        coreGrowingShiftEndpointTransverseNatCharacter j t n‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 * (coreGrowingShiftEndpointTransverseCircularDistance j t : ℝ)) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter_eq_finiteCyclic,
    coreGrowingShiftEndpointTransverseCircularDistance_eq_finiteCyclic,
    coreGrowingShiftEndpointDoubledFourierModulus_eq_finiteCyclic] using
    coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_distance
      j A B t hA ht

/-- Uniform legacy endpoint interval estimate beyond a circular cutoff. -/
theorem coreGrowingShiftEndpointTransverseNatCharacter_Ico_norm_le_regularCutoff_via_finiteCyclic
    (j A B L : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hA : 1 ≤ A)
    (ht : t ≠ 0)
    (hL : L < coreGrowingShiftEndpointTransverseCircularDistance j t) :
    ‖∑ n ∈ Finset.Ico A B,
        coreGrowingShiftEndpointTransverseNatCharacter j t n‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 * (((L + 1 : ℕ) : ℝ))) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter_eq_finiteCyclic,
    coreGrowingShiftEndpointTransverseCircularDistance_eq_finiteCyclic,
    coreGrowingShiftEndpointDoubledFourierModulus_eq_finiteCyclic] using
    coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_regularCutoff
      j A B L t hA ht hL

/-- The legacy zero transverse fiber remains its exact cardinality. -/
theorem coreGrowingShiftEndpointTransverseNatCharacter_Ico_zero_via_finiteCyclic
    (j A B : ℕ) :
    (∑ n ∈ Finset.Ico A B,
      coreGrowingShiftEndpointTransverseNatCharacter j
        (0 : CoreGrowingShiftEndpointDoubledFourierIndex j) n) =
      ((Finset.Ico A B).card : ℂ) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter_eq_finiteCyclic] using
    coreGrowingShiftEndpointFiniteCyclicInterval_zero j A B

/-- Exact legacy obstruction: coefficientwise norm-one control cannot transfer
unweighted interval cancellation. -/
theorem coreGrowingShiftEndpointTransverse_phaseMatchedWeights_via_finiteCyclic
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (S : Finset ℕ) :
    (∀ n : ℕ,
      ‖ZMod.stdAddChar
        ((n : CoreGrowingShiftEndpointDoubledFourierIndex j) * t)‖ = 1) ∧
      (∑ n ∈ S,
        ZMod.stdAddChar
            ((n : CoreGrowingShiftEndpointDoubledFourierIndex j) * t) *
          coreGrowingShiftEndpointTransverseNatCharacter j t n) =
        (S.card : ℂ) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter_eq_finiteCyclic] using
    coreGrowingShiftEndpointFiniteCyclic_phaseMatchedWeights j t S

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
