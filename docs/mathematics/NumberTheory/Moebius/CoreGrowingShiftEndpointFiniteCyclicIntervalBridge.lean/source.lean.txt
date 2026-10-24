/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #967.

This module binds the Mathlib-only finite cyclic interval supplier to the
isolated endpoint modulus, phase, multiplier, and circular distance.  It does
not import the legacy Möbius endpoint closure and makes no claim about the
larger right-endpoint support shear.
-/
import GRWTSK.NumberTheory.CharacterSums.FiniteCyclicInterval
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointFiniteCyclicData

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open GRWTSK.NumberTheory.CharacterSums

/-- The isolated endpoint finite interval sum with the exact negative phase
used by the legacy endpoint stack. -/
def coreGrowingShiftEndpointFiniteCyclicIntervalSum
    (j A B : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) : ℂ :=
  ∑ n ∈ Finset.Ico A B,
    coreGrowingShiftEndpointFiniteCyclicNegativePhase j t n

/-- Exact endpoint dictionary for the negative phase. -/
theorem coreGrowingShiftEndpointFiniteCyclicNegativePhase_eq_stdAddChar
    (j n : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) :
    coreGrowingShiftEndpointFiniteCyclicNegativePhase j t n =
      ZMod.stdAddChar
        (-((n : CoreGrowingShiftEndpointFiniteCyclicIndex j) * t)) :=
  rfl

/-- The generic negative-character interval identity, specialized without any
change of sign or normalization to the endpoint data. -/
theorem coreGrowingShiftEndpointFiniteCyclicInterval_multiplier_identity
    (j A B : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j)
    (hA : 1 ≤ A)
    (hAB : A ≤ B) :
    coreGrowingShiftEndpointFiniteCyclicMultiplier j t *
        coreGrowingShiftEndpointFiniteCyclicIntervalSum j A B t =
      coreGrowingShiftEndpointFiniteCyclicNegativePhase j t (A - 1) -
        coreGrowingShiftEndpointFiniteCyclicNegativePhase j t (B - 1) := by
  simpa [coreGrowingShiftEndpointFiniteCyclicMultiplier,
    coreGrowingShiftEndpointFiniteCyclicIntervalSum,
    coreGrowingShiftEndpointFiniteCyclicNegativePhase] using
    (stdAddChar_neg_Ico_mul t A B hA hAB)

/-- Actual unweighted endpoint interval estimate at every nonzero frequency. -/
theorem coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_invMultiplier
    (j A B : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖coreGrowingShiftEndpointFiniteCyclicIntervalSum j A B t‖ ≤
      2 * ‖(coreGrowingShiftEndpointFiniteCyclicMultiplier j t)⁻¹‖ := by
  simpa [coreGrowingShiftEndpointFiniteCyclicIntervalSum,
    coreGrowingShiftEndpointFiniteCyclicNegativePhase,
    coreGrowingShiftEndpointFiniteCyclicMultiplier] using
    (norm_sum_stdAddChar_neg_Ico_le t A B hA ht)

/-- Combining the checked finite-interval supplier with the isolated Jordan
small-divisor geometry gives an actual endpoint circular-distance bound. -/
theorem coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_distance
    (j A B : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖coreGrowingShiftEndpointFiniteCyclicIntervalSum j A B t‖ ≤
      (coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) /
        (2 * (coreGrowingShiftEndpointFiniteCyclicDistance j t : ℝ)) := by
  let d := coreGrowingShiftEndpointFiniteCyclicDistance j t
  have hd0 : d ≠ 0 := by
    intro hd
    exact ht
      ((coreGrowingShiftEndpointFiniteCyclicDistance_eq_zero_iff j t).mp hd)
  have hd : (0 : ℝ) < (d : ℝ) := by
    exact_mod_cast Nat.pos_of_ne_zero hd0
  calc
    ‖coreGrowingShiftEndpointFiniteCyclicIntervalSum j A B t‖ ≤
        2 * ‖(coreGrowingShiftEndpointFiniteCyclicMultiplier j t)⁻¹‖ :=
      coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_invMultiplier
        j A B t hA ht
    _ ≤ 2 *
        ((coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) /
          (4 * (d : ℝ))) := by
      exact mul_le_mul_of_nonneg_left
        (by simpa [d] using
          coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_distance
            (j := j) (t := t) ht)
        (by norm_num)
    _ = (coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) /
        (2 * (d : ℝ)) := by
      field_simp [ne_of_gt hd]
      ring

/-- Uniform endpoint interval estimate beyond a circular-distance cutoff. -/
theorem coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_cutoff
    (j A B L : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j)
    (hA : 1 ≤ A)
    (hLt : L < coreGrowingShiftEndpointFiniteCyclicDistance j t) :
    ‖coreGrowingShiftEndpointFiniteCyclicIntervalSum j A B t‖ ≤
      (coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) /
        (2 * ((L + 1 : ℕ) : ℝ)) := by
  have ht : t ≠ 0 := by
    intro ht0
    subst t
    simp [coreGrowingShiftEndpointFiniteCyclicDistance] at hLt
  calc
    ‖coreGrowingShiftEndpointFiniteCyclicIntervalSum j A B t‖ ≤
        2 * ‖(coreGrowingShiftEndpointFiniteCyclicMultiplier j t)⁻¹‖ :=
      coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_invMultiplier
        j A B t hA ht
    _ ≤ 2 *
        ((coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) /
          (4 * ((L + 1 : ℕ) : ℝ))) := by
      exact mul_le_mul_of_nonneg_left
        (coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_cutoff
          (j := j) (L := L) (t := t) hLt)
        (by norm_num)
    _ = (coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) /
        (2 * ((L + 1 : ℕ) : ℝ)) := by
      field_simp
      ring

/-- At the zero frequency the endpoint interval sum is exactly its
cardinality, so no inverse-multiplier estimate may include this mode. -/
theorem coreGrowingShiftEndpointFiniteCyclicInterval_zero
    (j A B : ℕ) :
    coreGrowingShiftEndpointFiniteCyclicIntervalSum j A B 0 =
      ((Finset.Ico A B).card : ℂ) := by
  simpa [coreGrowingShiftEndpointFiniteCyclicIntervalSum,
    coreGrowingShiftEndpointFiniteCyclicNegativePhase] using
    (sum_stdAddChar_neg_Ico_zero
      (q := coreGrowingShiftEndpointFiniteCyclicModulus j) A B)

/-- Exact norm-one phase-matched obstruction.  Coefficientwise norm bounds do
not preserve the unweighted finite-character cancellation. -/
theorem coreGrowingShiftEndpointFiniteCyclicInterval_phaseMatched_obstruction
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j)
    (S : Finset ℕ) :
    (∀ n : ℕ,
      ‖ZMod.stdAddChar
        ((n : CoreGrowingShiftEndpointFiniteCyclicIndex j) * t)‖ = 1) ∧
      (∑ n ∈ S,
        ZMod.stdAddChar
            ((n : CoreGrowingShiftEndpointFiniteCyclicIndex j) * t) *
          coreGrowingShiftEndpointFiniteCyclicNegativePhase j t n) =
        (S.card : ℂ) := by
  simpa [coreGrowingShiftEndpointFiniteCyclicNegativePhase] using
    (stdAddChar_phase_matched_weights t S)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointFiniteCyclicInterval_multiplier_identity
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_invMultiplier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_distance
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_cutoff
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointFiniteCyclicInterval_zero
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointFiniteCyclicInterval_phaseMatched_obstruction
