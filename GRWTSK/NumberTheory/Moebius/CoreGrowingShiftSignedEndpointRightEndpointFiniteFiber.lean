/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #967.

This file isolates the analytic core of the right-endpoint estimate from the
larger support-shear source.  It proves an actual finite-character estimate
and two exact obstructions.  It does not claim that the parent endpoint shear
has elaborated.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- A finite interval sum of the negative transverse character. -/
def coreGrowingShiftEndpointRightEndpointFiniteFiberSum
    (j A B : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  ∑ n ∈ Finset.Ico A B,
    coreGrowingShiftEndpointTransverseNatCharacter j t n

/-- Exact geometric-series identity in the sign convention used by the
endpoint Fourier stack. -/
theorem coreGrowingShiftEndpointRightEndpointFiniteFiber_multiplier_identity
    (j A B : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hA : 1 ≤ A)
    (hAB : A ≤ B) :
    coreGrowingShiftEndpointTransverseMultiplier j t *
        coreGrowingShiftEndpointRightEndpointFiniteFiberSum j A B t =
      coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1) -
        coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1) := by
  unfold coreGrowingShiftEndpointRightEndpointFiniteFiberSum
  induction B, hAB using Nat.le_induction with
  | base => simp
  | succ B hAB ih =>
      rw [Finset.sum_Ico_succ_top hAB, mul_add, ih]
      have hB : 1 ≤ B := le_trans hA hAB
      have hchar :=
        coreGrowingShiftEndpointTransverseNatCharacter_succ_mul
          j t (B - 1)
      have hBm1 : B - 1 + 1 = B := by omega
      rw [hBm1] at hchar
      unfold coreGrowingShiftEndpointTransverseMultiplier
      ring_nf at hchar ⊢
      linear_combination hchar

/-- Every standard additive-character value has norm one. -/
theorem coreGrowingShiftEndpointTransverseNatCharacter_norm
    (j n : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    ‖coreGrowingShiftEndpointTransverseNatCharacter j t n‖ = 1 := by
  unfold coreGrowingShiftEndpointTransverseNatCharacter
  rw [ZMod.stdAddChar_apply]
  simp

/-- Actual off-zero finite-fiber estimate. -/
theorem coreGrowingShiftEndpointRightEndpointFiniteFiber_norm_le
    (j A B : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖coreGrowingShiftEndpointRightEndpointFiniteFiberSum j A B t‖ ≤
      2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ := by
  by_cases hAB : A ≤ B
  · have hm : coreGrowingShiftEndpointTransverseMultiplier j t ≠ 0 :=
      coreGrowingShiftEndpointTransverseMultiplier_ne_zero ht
    have hid :=
      coreGrowingShiftEndpointRightEndpointFiniteFiber_multiplier_identity
        j A B t hA hAB
    have hrewrite :
        coreGrowingShiftEndpointRightEndpointFiniteFiberSum j A B t =
          (coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹ *
            (coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1) -
              coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1)) := by
      calc
        coreGrowingShiftEndpointRightEndpointFiniteFiberSum j A B t =
            1 * coreGrowingShiftEndpointRightEndpointFiniteFiberSum j A B t := by
              ring
        _ = ((coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹ *
              coreGrowingShiftEndpointTransverseMultiplier j t) *
                coreGrowingShiftEndpointRightEndpointFiniteFiberSum
                  j A B t := by
              rw [inv_mul_cancel₀ hm]
        _ = (coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹ *
              (coreGrowingShiftEndpointTransverseMultiplier j t *
                coreGrowingShiftEndpointRightEndpointFiniteFiberSum
                  j A B t) := by ring
        _ = _ := by rw [hid]
    rw [hrewrite, norm_mul]
    calc
      ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ *
          ‖coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1) -
            coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1)‖ ≤
        ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ * 2 := by
          gcongr
          calc
            ‖coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1) -
                coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1)‖ ≤
              ‖coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1)‖ +
                ‖coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1)‖ :=
              norm_sub_le _ _
            _ = 2 := by
              rw [coreGrowingShiftEndpointTransverseNatCharacter_norm,
                coreGrowingShiftEndpointTransverseNatCharacter_norm]
              norm_num
      _ = 2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ := by
        ring
  · have hempty : Finset.Ico A B = ∅ :=
      Finset.Ico_eq_empty_iff.mpr (by omega)
    unfold coreGrowingShiftEndpointRightEndpointFiniteFiberSum
    rw [hempty]
    simp [norm_nonneg]

/-- Circular-distance consequence of the finite-fiber estimate. -/
theorem coreGrowingShiftEndpointRightEndpointFiniteFiber_norm_le_distance
    (j A B : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖coreGrowingShiftEndpointRightEndpointFiniteFiberSum j A B t‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 *
          (coreGrowingShiftEndpointTransverseCircularDistance j t : ℝ)) := by
  calc
    ‖coreGrowingShiftEndpointRightEndpointFiniteFiberSum j A B t‖ ≤
      2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ :=
        coreGrowingShiftEndpointRightEndpointFiniteFiber_norm_le
          j A B t hA ht
    _ ≤ 2 *
        ((coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
          (4 *
            (coreGrowingShiftEndpointTransverseCircularDistance j t : ℝ))) := by
      gcongr
      exact coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance ht
    _ = (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 *
          (coreGrowingShiftEndpointTransverseCircularDistance j t : ℝ)) := by
      have hdNat :
          coreGrowingShiftEndpointTransverseCircularDistance j t ≠ 0 :=
        (coreGrowingShiftEndpointTransverseCircularDistance_eq_zero_iff j t).not.mpr
          ht
      have hd :
          (coreGrowingShiftEndpointTransverseCircularDistance j t : ℝ) ≠ 0 := by
        exact_mod_cast hdNat
      field_simp [hd]
      ring

/-- Diagonal obstruction: the zero-frequency fiber is exactly its cardinality. -/
theorem coreGrowingShiftEndpointRightEndpointFiniteFiber_zero
    (j A B : ℕ) :
    coreGrowingShiftEndpointRightEndpointFiniteFiberSum j A B
        (0 : CoreGrowingShiftEndpointDoubledFourierIndex j) =
      (Finset.Ico A B).card := by
  unfold coreGrowingShiftEndpointRightEndpointFiniteFiberSum
  simp [coreGrowingShiftEndpointTransverseNatCharacter]

/-- Opposite-character coefficient used to demonstrate the norm-only
obstruction. -/
def coreGrowingShiftEndpointRightEndpointOppositeFiberWeight
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (n : ℕ) : ℂ :=
  ZMod.stdAddChar
    ((n : CoreGrowingShiftEndpointDoubledFourierIndex j) * t)

/-- The adversarial coefficient satisfies the strongest pointwise norm-one
bound. -/
theorem coreGrowingShiftEndpointRightEndpointOppositeFiberWeight_norm
    (j n : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    ‖coreGrowingShiftEndpointRightEndpointOppositeFiberWeight j t n‖ = 1 := by
  unfold coreGrowingShiftEndpointRightEndpointOppositeFiberWeight
  rw [ZMod.stdAddChar_apply]
  simp

/-- Exact obstruction to importing centered-fiber or squarefree-gcd weights
from coefficientwise norm control alone. -/
theorem coreGrowingShiftEndpointRightEndpoint_weightedFiber_normOnly_obstruction
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (S : Finset ℕ) :
    (∑ n ∈ S,
      coreGrowingShiftEndpointRightEndpointOppositeFiberWeight j t n *
        coreGrowingShiftEndpointTransverseNatCharacter j t n) =
      S.card := by
  calc
    (∑ n ∈ S,
      coreGrowingShiftEndpointRightEndpointOppositeFiberWeight j t n *
        coreGrowingShiftEndpointTransverseNatCharacter j t n) =
        ∑ _n ∈ S, (1 : ℂ) := by
      apply Finset.sum_congr rfl
      intro n hn
      unfold coreGrowingShiftEndpointRightEndpointOppositeFiberWeight
        coreGrowingShiftEndpointTransverseNatCharacter
      rw [← map_add_eq_mul]
      simp
    _ = S.card := by simp

/-- The collaboration boundary with external centered-fiber and squarefree-gcd
lines. -/
structure RightEndpointFiniteFiberExternalControl where
  exactCoefficientIdentity : Prop
  coefficientNormControl : Prop
  coefficientVariationOrEnergyControl : Prop
  squareSumOrSeparatedFrequencyControl : Prop

/-- A pointwise norm premise alone is deliberately insufficient. -/
def RightEndpointFiniteFiberExternalControl.AnalyticallyUsable
    (d : RightEndpointFiniteFiberExternalControl) : Prop :=
  d.exactCoefficientIdentity ∧
    d.coefficientNormControl ∧
    (d.coefficientVariationOrEnergyControl ∨
      d.squareSumOrSeparatedFrequencyControl)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointRightEndpointFiniteFiber_multiplier_identity
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointRightEndpointFiniteFiber_norm_le
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointRightEndpointFiniteFiber_norm_le_distance
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointRightEndpointFiniteFiber_zero
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointRightEndpoint_weightedFiber_normOnly_obstruction
