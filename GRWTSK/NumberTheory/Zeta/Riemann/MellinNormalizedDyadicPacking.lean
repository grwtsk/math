/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftPackingObstruction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Pre-Gram Mellin-normalized dyadic packing

The raw safe dyadic block satisfies the exact source identity

  dirichletBlock X w
    = exp((1-w) log X) * action X (mellinTest w).

The previous raw-block packing was summable because the known Mellin dilation
forces decay before the final Gram is formed. This module removes that exact
dilation at the source level by using the already-existing unit-interval action
as the dyadic carrier.

This is a source normalization before the Gram. It does not divide by the final
Gram coefficient, the quartic target, or any RH-dependent quantity.

Safe plus/minus/center action blocks are uniformly bounded by the unconditional
Chebyshev action constant. Their even/odd decomposition retains the exact
critical-reflection structure, and the axial/transverse Gram channels again
factor exactly as

  axialActionGram_j      = a^4 * A_j^A,
  transverseActionGram_j = a^2 t^2 * T_j^A.

Unlike the raw-block source, the action-normalized source is not forced by the
known upper bound to have summable total Gram mass.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PRE_GRAM_MELLIN_NORMALIZATION_DEFINED / ACTION_PACKING_DENSITY_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Complex
open CanonicalZeroDivisor
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.VonMangoldt.MellinReadout

def safePlusDyadicAction (z : ZeroPoint) (j : ℕ) : ℂ :=
  action (dyadicScale j) (mellinTest (safeShiftPlus z.1))

def safeMinusDyadicAction (z : ZeroPoint) (j : ℕ) : ℂ :=
  action (dyadicScale j) (mellinTest (safeShiftMinus z.1))

def safeCenterDyadicAction (z : ZeroPoint) (j : ℕ) : ℂ :=
  action (dyadicScale j) (mellinTest (safeShiftCenter z.1))

theorem safePlusDyadicBlock_eq_dilation_mul_action
    (z : ZeroPoint) (j : ℕ) :
    safePlusDyadicBlock z j =
      Complex.exp
          ((1 - safeShiftPlus z.1) *
            (Real.log (dyadicScale j) : ℂ)) *
        safePlusDyadicAction z j := by
  unfold safePlusDyadicBlock safePlusDyadicAction
  exact dirichletBlock_eq_scaled_action (dyadicScale_pos j) _

theorem safeMinusDyadicBlock_eq_dilation_mul_action
    (z : ZeroPoint) (j : ℕ) :
    safeMinusDyadicBlock z j =
      Complex.exp
          ((1 - safeShiftMinus z.1) *
            (Real.log (dyadicScale j) : ℂ)) *
        safeMinusDyadicAction z j := by
  unfold safeMinusDyadicBlock safeMinusDyadicAction
  exact dirichletBlock_eq_scaled_action (dyadicScale_pos j) _

theorem safeCenterDyadicBlock_eq_dilation_mul_action
    (z : ZeroPoint) (j : ℕ) :
    safeCenterDyadicBlock z j =
      Complex.exp
          ((1 - safeShiftCenter z.1) *
            (Real.log (dyadicScale j) : ℂ)) *
        safeCenterDyadicAction z j := by
  unfold safeCenterDyadicBlock safeCenterDyadicAction
  exact dirichletBlock_eq_scaled_action (dyadicScale_pos j) _

theorem safePlusDyadicAction_norm_le
    (z : ZeroPoint) (j : ℕ) :
    ‖safePlusDyadicAction z j‖ ≤ safeChebyshevActionConstant z := by
  unfold safePlusDyadicAction safeChebyshevActionConstant
  exact action_norm_le_chebyshev
    (dyadicScale_pos j)
    (safeDyadicQuarticRadius_nonnegative z)
    (safeShiftPlus_norm_le_quarticRadius z)

theorem safeMinusDyadicAction_norm_le
    (z : ZeroPoint) (j : ℕ) :
    ‖safeMinusDyadicAction z j‖ ≤ safeChebyshevActionConstant z := by
  unfold safeMinusDyadicAction safeChebyshevActionConstant
  exact action_norm_le_chebyshev
    (dyadicScale_pos j)
    (safeDyadicQuarticRadius_nonnegative z)
    (safeShiftMinus_norm_le_quarticRadius z)

theorem safeCenterDyadicAction_norm_le
    (z : ZeroPoint) (j : ℕ) :
    ‖safeCenterDyadicAction z j‖ ≤ safeChebyshevActionConstant z := by
  unfold safeCenterDyadicAction safeChebyshevActionConstant
  exact action_norm_le_chebyshev
    (dyadicScale_pos j)
    (safeDyadicQuarticRadius_nonnegative z)
    (safeShiftCenter_norm_le_quarticRadius z)

def safeEvenDyadicAction (z : ZeroPoint) (j : ℕ) : ℂ :=
  (safePlusDyadicAction z j + safeMinusDyadicAction z j) / 2

def safeOddDyadicAction (z : ZeroPoint) (j : ℕ) : ℂ :=
  (safePlusDyadicAction z j - safeMinusDyadicAction z j) / 2

def safeEvenDefectDyadicAction (z : ZeroPoint) (j : ℕ) : ℂ :=
  safeEvenDyadicAction z j - safeCenterDyadicAction z j

theorem safeEvenDyadicAction_norm_le
    (z : ZeroPoint) (j : ℕ) :
    ‖safeEvenDyadicAction z j‖ ≤ safeChebyshevActionConstant z := by
  unfold safeEvenDyadicAction
  rw [norm_div]
  have hsum :=
    norm_add_le (safePlusDyadicAction z j) (safeMinusDyadicAction z j)
  have hp := safePlusDyadicAction_norm_le z j
  have hm := safeMinusDyadicAction_norm_le z j
  norm_num
  nlinarith

theorem safeOddDyadicAction_norm_le
    (z : ZeroPoint) (j : ℕ) :
    ‖safeOddDyadicAction z j‖ ≤ safeChebyshevActionConstant z := by
  unfold safeOddDyadicAction
  rw [norm_div]
  have hsum :=
    norm_sub_le (safePlusDyadicAction z j) (safeMinusDyadicAction z j)
  have hp := safePlusDyadicAction_norm_le z j
  have hm := safeMinusDyadicAction_norm_le z j
  norm_num
  nlinarith

theorem safeEvenDefectDyadicAction_norm_le_two
    (z : ZeroPoint) (j : ℕ) :
    ‖safeEvenDefectDyadicAction z j‖ ≤
      2 * safeChebyshevActionConstant z := by
  unfold safeEvenDefectDyadicAction
  have hsub :=
    norm_sub_le (safeEvenDyadicAction z j) (safeCenterDyadicAction z j)
  have he := safeEvenDyadicAction_norm_le z j
  have hc := safeCenterDyadicAction_norm_le z j
  nlinarith

theorem safePlusDyadicAction_eq_center_of_zeroDefect
    (z : ZeroPoint) (j : ℕ)
    (ha : zeroDefect z.1 = 0) :
    safePlusDyadicAction z j = safeCenterDyadicAction z j := by
  unfold safePlusDyadicAction safeCenterDyadicAction
  rw [safeShiftPlus_eq_center_of_zeroDefect ha]

theorem safeMinusDyadicAction_eq_center_of_zeroDefect
    (z : ZeroPoint) (j : ℕ)
    (ha : zeroDefect z.1 = 0) :
    safeMinusDyadicAction z j = safeCenterDyadicAction z j := by
  unfold safeMinusDyadicAction safeCenterDyadicAction
  rw [safeShiftMinus_eq_center_of_zeroDefect ha]

def safeAxialDyadicActionPoint
    (z : ZeroPoint) (j : ℕ) : PackingPoint :=
  ⟨(safeEvenDyadicAction z j).re,
    (safeEvenDefectDyadicAction z j).re⟩

def safeTransverseDyadicActionPoint
    (z : ZeroPoint) (j : ℕ) : PackingPoint :=
  ⟨(safeEvenDyadicAction z j).re,
    (safeOddDyadicAction z j).im⟩

def safeAxialDyadicActionPacking
    (z : ZeroPoint) (j : ℕ) : ThreePointPacking :=
  dyadicPackingAt (safeAxialDyadicActionPoint z) j

def safeTransverseDyadicActionPacking
    (z : ZeroPoint) (j : ℕ) : ThreePointPacking :=
  dyadicPackingAt (safeTransverseDyadicActionPoint z) j

def safeAxialDyadicActionGram
    (z : ZeroPoint) (j : ℕ) : ℝ :=
  (safeAxialDyadicActionPacking z j).gramVolume

def safeTransverseDyadicActionGram
    (z : ZeroPoint) (j : ℕ) : ℝ :=
  (safeTransverseDyadicActionPacking z j).gramVolume

def safeQuarticDyadicActionValue
    (z : ZeroPoint) (j : ℕ) : ℝ :=
  safeAxialDyadicActionGram z j +
    3 * safeTransverseDyadicActionGram z j

theorem safeQuarticDyadicActionValue_nonnegative
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeQuarticDyadicActionValue z j := by
  unfold safeQuarticDyadicActionValue
  positivity [
    (safeAxialDyadicActionPacking z j).gramVolume_nonnegative,
    (safeTransverseDyadicActionPacking z j).gramVolume_nonnegative]

def safeAxialDyadicActionNormalizedY
    (z : ZeroPoint) (j : ℕ) : ℝ :=
  if ha : zeroDefect z.1 = 0 then
    0
  else
    (safeEvenDefectDyadicAction z j).re / (zeroDefect z.1)^2

def safeTransverseDyadicActionNormalizedY
    (z : ZeroPoint) (j : ℕ) : ℝ :=
  if ha : zeroDefect z.1 = 0 then
    0
  else
    (safeOddDyadicAction z j).im /
      (zeroDefect z.1 * z.1.im)

theorem safeAxialDyadicAction_y_factor
    (z : ZeroPoint) (j : ℕ) :
    (safeEvenDefectDyadicAction z j).re =
      (zeroDefect z.1)^2 *
        safeAxialDyadicActionNormalizedY z j := by
  by_cases ha : zeroDefect z.1 = 0
  · rw [safeAxialDyadicActionNormalizedY, if_pos ha, ha]
    have hp := safePlusDyadicAction_eq_center_of_zeroDefect z j ha
    have hm := safeMinusDyadicAction_eq_center_of_zeroDefect z j ha
    unfold safeEvenDefectDyadicAction safeEvenDyadicAction
    rw [hp, hm]
    simp
  · rw [safeAxialDyadicActionNormalizedY, if_neg ha]
    field_simp [ha]

theorem safeTransverseDyadicAction_y_factor
    (z : ZeroPoint) (j : ℕ) :
    (safeOddDyadicAction z j).im =
      (zeroDefect z.1 * z.1.im) *
        safeTransverseDyadicActionNormalizedY z j := by
  by_cases ha : zeroDefect z.1 = 0
  · rw [safeTransverseDyadicActionNormalizedY, if_pos ha, ha]
    have hp := safePlusDyadicAction_eq_center_of_zeroDefect z j ha
    have hm := safeMinusDyadicAction_eq_center_of_zeroDefect z j ha
    unfold safeOddDyadicAction
    rw [hp, hm]
    simp
  · rw [safeTransverseDyadicActionNormalizedY, if_neg ha]
    have ht : z.1.im ≠ 0 :=
      CriticalStripHeightDescent.nontrivialZetaZero_im_ne_zero z.2
    field_simp [ha, ht]

def safeAxialDyadicActionNormalizedPoint
    (z : ZeroPoint) (j : ℕ) : PackingPoint :=
  ⟨(safeEvenDyadicAction z j).re,
    safeAxialDyadicActionNormalizedY z j⟩

def safeTransverseDyadicActionNormalizedPoint
    (z : ZeroPoint) (j : ℕ) : PackingPoint :=
  ⟨(safeEvenDyadicAction z j).re,
    safeTransverseDyadicActionNormalizedY z j⟩

def safeAxialDyadicActionNormalizedPacking
    (z : ZeroPoint) (j : ℕ) : ThreePointPacking :=
  dyadicPackingAt (safeAxialDyadicActionNormalizedPoint z) j

def safeTransverseDyadicActionNormalizedPacking
    (z : ZeroPoint) (j : ℕ) : ThreePointPacking :=
  dyadicPackingAt (safeTransverseDyadicActionNormalizedPoint z) j

def safeAxialDyadicActionQuarticCoefficient
    (z : ZeroPoint) (j : ℕ) : ℝ :=
  (safeAxialDyadicActionNormalizedPacking z j).gramVolume

def safeTransverseDyadicActionQuarticCoefficient
    (z : ZeroPoint) (j : ℕ) : ℝ :=
  (safeTransverseDyadicActionNormalizedPacking z j).gramVolume

theorem safeAxialDyadicActionQuarticCoefficient_nonnegative
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeAxialDyadicActionQuarticCoefficient z j :=
  (safeAxialDyadicActionNormalizedPacking z j).gramVolume_nonnegative

theorem safeTransverseDyadicActionQuarticCoefficient_nonnegative
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeTransverseDyadicActionQuarticCoefficient z j :=
  (safeTransverseDyadicActionNormalizedPacking z j).gramVolume_nonnegative

theorem safeAxialDyadicAction_orientedVolume_factor
    (z : ZeroPoint) (j : ℕ) :
    (safeAxialDyadicActionPacking z j).orientedVolume =
      (zeroDefect z.1)^2 *
        (safeAxialDyadicActionNormalizedPacking z j).orientedVolume := by
  apply ThreePointPacking.orientedVolume_eq_mul_of_y_scaled
  · rfl
  · rfl
  · rfl
  · exact safeAxialDyadicAction_y_factor z j
  · exact safeAxialDyadicAction_y_factor z (j+1)
  · exact safeAxialDyadicAction_y_factor z (j+2)

theorem safeTransverseDyadicAction_orientedVolume_factor
    (z : ZeroPoint) (j : ℕ) :
    (safeTransverseDyadicActionPacking z j).orientedVolume =
      (zeroDefect z.1 * z.1.im) *
        (safeTransverseDyadicActionNormalizedPacking z j).orientedVolume := by
  apply ThreePointPacking.orientedVolume_eq_mul_of_y_scaled
  · rfl
  · rfl
  · rfl
  · exact safeTransverseDyadicAction_y_factor z j
  · exact safeTransverseDyadicAction_y_factor z (j+1)
  · exact safeTransverseDyadicAction_y_factor z (j+2)

theorem safeAxialDyadicActionGram_factor
    (z : ZeroPoint) (j : ℕ) :
    safeAxialDyadicActionGram z j =
      (zeroDefect z.1)^4 *
        safeAxialDyadicActionQuarticCoefficient z j := by
  unfold safeAxialDyadicActionGram
    safeAxialDyadicActionQuarticCoefficient ThreePointPacking.gramVolume
  rw [safeAxialDyadicAction_orientedVolume_factor]
  ring

theorem safeTransverseDyadicActionGram_factor
    (z : ZeroPoint) (j : ℕ) :
    safeTransverseDyadicActionGram z j =
      (zeroDefect z.1)^2 * z.1.im^2 *
        safeTransverseDyadicActionQuarticCoefficient z j := by
  unfold safeTransverseDyadicActionGram
    safeTransverseDyadicActionQuarticCoefficient ThreePointPacking.gramVolume
  rw [safeTransverseDyadicAction_orientedVolume_factor]
  ring

theorem safeQuarticDyadicActionValue_factor
    (z : ZeroPoint) (j : ℕ) :
    safeQuarticDyadicActionValue z j =
      (zeroDefect z.1)^4 *
          safeAxialDyadicActionQuarticCoefficient z j +
        3 * (zeroDefect z.1)^2 * z.1.im^2 *
          safeTransverseDyadicActionQuarticCoefficient z j := by
  rw [safeQuarticDyadicActionValue,
    safeAxialDyadicActionGram_factor,
    safeTransverseDyadicActionGram_factor]

end GRWTSK.RiemannHypothesis
