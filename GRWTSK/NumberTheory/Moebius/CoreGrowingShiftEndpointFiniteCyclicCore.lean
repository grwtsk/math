/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Finite cyclic endpoint supplier with transparent forwarding to its original coordinates.

The original finite cyclic data are owned by CoreGrowingShiftEndpointCyclicCoordinates.
This module specializes generic finite estimates through transparent aliases.
-/
import GRWTSK.NumberTheory.CharacterSums.FiniteCyclicIntervalDistance
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicCoordinates

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The original endpoint Fourier window length, isolated from its kernel
owner. -/
abbrev coreGrowingShiftEndpointFiniteCyclicFourierModulus (j : ℕ) : ℕ :=
  coreGrowingShiftEndpointFourierModulus j

/-- The original doubled endpoint modulus, isolated from the endpoint kernel
stack. -/
abbrev coreGrowingShiftEndpointFiniteCyclicDoubledModulus (j : ℕ) : ℕ :=
  coreGrowingShiftEndpointDoubledFourierModulus j

instance coreGrowingShiftEndpointFiniteCyclicDoubledModulus_neZero (j : ℕ) :
    NeZero (coreGrowingShiftEndpointFiniteCyclicDoubledModulus j) :=
  coreGrowingShiftEndpointDoubledFourierModulus_neZero j

/-- Minimal finite cyclic endpoint coordinate. -/
abbrev CoreGrowingShiftEndpointFiniteCyclicIndex (j : ℕ) :=
  CoreGrowingShiftEndpointDoubledFourierIndex j

/-- Exact negative phase used by the right-endpoint branch. -/
abbrev coreGrowingShiftEndpointFiniteCyclicNegativePhase
    (j n : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) : ℂ :=
  coreGrowingShiftEndpointTransverseNatCharacter j t n

/-- Exact positive-character finite-difference multiplier. -/
abbrev coreGrowingShiftEndpointFiniteCyclicMultiplier
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) : ℂ :=
  coreGrowingShiftEndpointTransverseMultiplier j t

/-- Exact circular distance used by the endpoint transverse split. -/
abbrev coreGrowingShiftEndpointFiniteCyclicDistance
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) : ℕ :=
  coreGrowingShiftEndpointTransverseCircularDistance j t

/-- Dictionary from the isolated endpoint phase to the generic supplier. -/
theorem coreGrowingShiftEndpointFiniteCyclicNegativePhase_eq
    (j n : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) :
    coreGrowingShiftEndpointFiniteCyclicNegativePhase j n t =
      ZMod.stdAddChar
        (-((n : CoreGrowingShiftEndpointFiniteCyclicIndex j) * t)) := rfl

/-- Dictionary from the isolated endpoint multiplier to the generic supplier. -/
theorem coreGrowingShiftEndpointFiniteCyclicMultiplier_eq
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) :
    coreGrowingShiftEndpointFiniteCyclicMultiplier j t =
      ZMod.stdAddChar t - 1 := rfl

/-- Dictionary from the isolated endpoint distance to the generic supplier. -/
theorem coreGrowingShiftEndpointFiniteCyclicDistance_eq
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) :
    coreGrowingShiftEndpointFiniteCyclicDistance j t =
      min t.val (-t).val := rfl

/-- Actual inverse-multiplier estimate in the isolated endpoint coordinates. -/
theorem coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_distance
    {j : ℕ}
    {t : CoreGrowingShiftEndpointFiniteCyclicIndex j}
    (ht : t ≠ 0) :
    ‖(coreGrowingShiftEndpointFiniteCyclicMultiplier j t)⁻¹‖ ≤
      (coreGrowingShiftEndpointFiniteCyclicDoubledModulus j : ℝ) /
        (4 * (coreGrowingShiftEndpointFiniteCyclicDistance j t : ℝ)) := by
  simpa [coreGrowingShiftEndpointFiniteCyclicMultiplier,
    coreGrowingShiftEndpointFiniteCyclicDistance,
    coreGrowingShiftEndpointTransverseMultiplier,
    coreGrowingShiftEndpointTransverseCircularDistance,
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicCircularDistance] using
    GRWTSK.NumberTheory.CharacterSums.norm_inv_stdAddChar_sub_one_le_circularDistance
      (q := coreGrowingShiftEndpointFiniteCyclicDoubledModulus j) ht

/-- Actual unweighted interval estimate in the isolated endpoint coordinates. -/
theorem coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_distance
    (j A B : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        coreGrowingShiftEndpointFiniteCyclicNegativePhase j n t‖ ≤
      (coreGrowingShiftEndpointFiniteCyclicDoubledModulus j : ℝ) /
        (2 * (coreGrowingShiftEndpointFiniteCyclicDistance j t : ℝ)) := by
  simpa [coreGrowingShiftEndpointFiniteCyclicNegativePhase,
    coreGrowingShiftEndpointFiniteCyclicDistance,
    coreGrowingShiftEndpointTransverseNatCharacter,
    coreGrowingShiftEndpointTransverseCircularDistance,
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicCircularDistance] using
    GRWTSK.NumberTheory.CharacterSums.norm_sum_stdAddChar_neg_Ico_le_circularDistance
      (q := coreGrowingShiftEndpointFiniteCyclicDoubledModulus j)
      t A B hA ht

/-- Uniform isolated endpoint estimate beyond a circular cutoff. -/
theorem coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_regularCutoff
    (j A B L : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j)
    (hA : 1 ≤ A)
    (ht : t ≠ 0)
    (hL : L < coreGrowingShiftEndpointFiniteCyclicDistance j t) :
    ‖∑ n ∈ Finset.Ico A B,
        coreGrowingShiftEndpointFiniteCyclicNegativePhase j n t‖ ≤
      (coreGrowingShiftEndpointFiniteCyclicDoubledModulus j : ℝ) /
        (2 * (((L + 1 : ℕ) : ℝ))) := by
  simpa [coreGrowingShiftEndpointFiniteCyclicNegativePhase,
    coreGrowingShiftEndpointFiniteCyclicDistance,
    coreGrowingShiftEndpointTransverseNatCharacter,
    coreGrowingShiftEndpointTransverseCircularDistance,
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicCircularDistance] using
    GRWTSK.NumberTheory.CharacterSums.norm_sum_stdAddChar_neg_Ico_le_regularCutoff
      (q := coreGrowingShiftEndpointFiniteCyclicDoubledModulus j)
      t A B L hA ht hL

/-- At zero transverse frequency the isolated interval is its exact
cardinality; no inverse-multiplier argument applies. -/
theorem coreGrowingShiftEndpointFiniteCyclicInterval_zero
    (j A B : ℕ) :
    (∑ n ∈ Finset.Ico A B,
      coreGrowingShiftEndpointFiniteCyclicNegativePhase j n
        (0 : CoreGrowingShiftEndpointFiniteCyclicIndex j)) =
      ((Finset.Ico A B).card : ℂ) := by
  exact GRWTSK.NumberTheory.CharacterSums.sum_stdAddChar_neg_Ico_zero
      (q := coreGrowingShiftEndpointFiniteCyclicDoubledModulus j) A B

/-- Norm-one phase-matched coefficients destroy the unweighted cancellation.
This is the exact obstruction to importing arbitrary centered-fiber or
squarefree-gcd weights from coefficientwise norm control alone. -/
theorem coreGrowingShiftEndpointFiniteCyclic_phaseMatchedWeights
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j)
    (S : Finset ℕ) :
    (∀ n : ℕ,
      ‖ZMod.stdAddChar
        ((n : CoreGrowingShiftEndpointFiniteCyclicIndex j) * t)‖ = 1) ∧
      (∑ n ∈ S,
        ZMod.stdAddChar
            ((n : CoreGrowingShiftEndpointFiniteCyclicIndex j) * t) *
          coreGrowingShiftEndpointFiniteCyclicNegativePhase j n t) =
        (S.card : ℂ) := by
  simpa [coreGrowingShiftEndpointFiniteCyclicNegativePhase,
    coreGrowingShiftEndpointTransverseNatCharacter] using
    GRWTSK.NumberTheory.CharacterSums.stdAddChar_phase_matched_weights
      (q := coreGrowingShiftEndpointFiniteCyclicDoubledModulus j) t S

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
