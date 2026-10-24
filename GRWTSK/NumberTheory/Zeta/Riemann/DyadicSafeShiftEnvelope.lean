/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftPrimeTermFactorization
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicMellinConvergence
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Dyadic safe-shift source envelope

The pointwise prime-power safe source retains individual oscillatory phases.
The repository already has a source-faithful dyadic von Mangoldt discrepancy
with a complete augmented Green energy.

For an actual nontrivial zero z, evaluate each literal dyadic source block at
the safe plus/minus points. Since both safe real parts are strictly greater than
3/2, the existing finite-stage Mellin readout gives the unconditional envelope

  ||block_X(z±)|| <= X^(-1/2) * sqrt(augmentedEnergy X) * K(z),

where K(z) is the compact test-radius factor.

This theorem uses no AllDyadicEnergyBound and no RH. It identifies the natural
windowed source quantity from which any later stage renormalization should be
derived.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
DYADIC_SAFE_SOURCE_ENVELOPE_DEFINED / ASYMPTOTIC_SCALE_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open CanonicalZeroDivisor
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.MellinReadout
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicMellinConvergence

/-- Both safe shifts lie strictly to the right of 3/2. -/
theorem safeShiftPlus_three_halves_lt_re (z : ZeroPoint) :
    (3 / 2 : ℝ) < (safeShiftPlus z.1).re := by
  have hs := z.2.mem_critical_strip
  simp [safeShiftPlus_re, zeroDefect]
  linarith

theorem safeShiftMinus_three_halves_lt_re (z : ZeroPoint) :
    (3 / 2 : ℝ) < (safeShiftMinus z.1).re := by
  have hs := z.2.mem_critical_strip
  simp [safeShiftMinus_re, zeroDefect]
  linarith

/-- Radius covering both safe test parameters. -/
def safeDyadicRadius (z : ZeroPoint) : ℝ :=
  max ‖safeShiftPlus z.1‖ ‖safeShiftMinus z.1‖

theorem safeDyadicRadius_nonnegative (z : ZeroPoint) :
    0 ≤ safeDyadicRadius z := by
  unfold safeDyadicRadius
  positivity

theorem safeShiftPlus_norm_le_radius (z : ZeroPoint) :
    ‖safeShiftPlus z.1‖ ≤ safeDyadicRadius z :=
  le_max_left _ _

theorem safeShiftMinus_norm_le_radius (z : ZeroPoint) :
    ‖safeShiftMinus z.1‖ ≤ safeDyadicRadius z :=
  le_max_right _ _

/-- Coarse X^(-1/2) Mellin dilation shared by both safe shifts. -/
def safeDyadicHalfWeight (j : ℕ) : ℝ :=
  Real.exp (-(1 / 2 : ℝ) *
    Real.log (dyadicScale j : ℝ))

/-- Finite-stage source envelope from the actual augmented Green energy. -/
def safeDyadicEnergyEnvelope (z : ZeroPoint) (j : ℕ) : ℝ :=
  safeDyadicHalfWeight j *
    (Real.sqrt (augmentedEnergy (dyadicScale j)) *
      Real.sqrt (radiusBudget (safeDyadicRadius z)))

theorem safeDyadicEnergyEnvelope_nonnegative
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeDyadicEnergyEnvelope z j := by
  unfold safeDyadicEnergyEnvelope safeDyadicHalfWeight
  positivity

def safePlusDyadicBlock (z : ZeroPoint) (j : ℕ) : ℂ :=
  dirichletBlock (dyadicScale j) (safeShiftPlus z.1)

def safeMinusDyadicBlock (z : ZeroPoint) (j : ℕ) : ℂ :=
  dirichletBlock (dyadicScale j) (safeShiftMinus z.1)

def safeEvenDyadicBlock (z : ZeroPoint) (j : ℕ) : ℂ :=
  (safePlusDyadicBlock z j + safeMinusDyadicBlock z j) / 2

def safeOddDyadicBlock (z : ZeroPoint) (j : ℕ) : ℂ :=
  (safePlusDyadicBlock z j - safeMinusDyadicBlock z j) / 2

/-- The safe plus block is bounded by the common energy envelope. -/
theorem safePlusDyadicBlock_norm_le
    (z : ZeroPoint) (j : ℕ) :
    ‖safePlusDyadicBlock z j‖ ≤ safeDyadicEnergyEnvelope z j := by
  have hbase :=
    dirichletBlock_norm_bound
      (dyadicScale_pos j)
      (safeDyadicRadius_nonnegative z)
      (safeShiftPlus_norm_le_radius z)
  have hlog :
      0 ≤ Real.log (dyadicScale j : ℝ) :=
    Real.log_nonneg (by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr
        (Nat.ne_of_gt (dyadicScale_pos j))))
  have hre :
      1 - (safeShiftPlus z.1).re ≤ -(1 / 2 : ℝ) := by
    linarith [safeShiftPlus_three_halves_lt_re z]
  have hexp :
      Real.exp ((1 - (safeShiftPlus z.1).re) *
          Real.log (dyadicScale j : ℝ)) ≤
        safeDyadicHalfWeight j := by
    unfold safeDyadicHalfWeight
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right hre hlog
  unfold safePlusDyadicBlock safeDyadicEnergyEnvelope
  exact hbase.trans
    (mul_le_mul_of_nonneg_right hexp
      (mul_nonneg (Real.sqrt_nonneg _)
        (Real.sqrt_nonneg _)))

/-- The safe minus block has the same source envelope. -/
theorem safeMinusDyadicBlock_norm_le
    (z : ZeroPoint) (j : ℕ) :
    ‖safeMinusDyadicBlock z j‖ ≤ safeDyadicEnergyEnvelope z j := by
  have hbase :=
    dirichletBlock_norm_bound
      (dyadicScale_pos j)
      (safeDyadicRadius_nonnegative z)
      (safeShiftMinus_norm_le_radius z)
  have hlog :
      0 ≤ Real.log (dyadicScale j : ℝ) :=
    Real.log_nonneg (by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr
        (Nat.ne_of_gt (dyadicScale_pos j))))
  have hre :
      1 - (safeShiftMinus z.1).re ≤ -(1 / 2 : ℝ) := by
    linarith [safeShiftMinus_three_halves_lt_re z]
  have hexp :
      Real.exp ((1 - (safeShiftMinus z.1).re) *
          Real.log (dyadicScale j : ℝ)) ≤
        safeDyadicHalfWeight j := by
    unfold safeDyadicHalfWeight
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right hre hlog
  unfold safeMinusDyadicBlock safeDyadicEnergyEnvelope
  exact hbase.trans
    (mul_le_mul_of_nonneg_right hexp
      (mul_nonneg (Real.sqrt_nonneg _)
        (Real.sqrt_nonneg _)))

/-- Reflection-even dyadic source remains within the same envelope. -/
theorem safeEvenDyadicBlock_norm_le
    (z : ZeroPoint) (j : ℕ) :
    ‖safeEvenDyadicBlock z j‖ ≤ safeDyadicEnergyEnvelope z j := by
  unfold safeEvenDyadicBlock
  rw [norm_div]
  have hsum :=
    norm_add_le (safePlusDyadicBlock z j) (safeMinusDyadicBlock z j)
  have hp := safePlusDyadicBlock_norm_le z j
  have hm := safeMinusDyadicBlock_norm_le z j
  norm_num
  nlinarith

/-- Reflection-odd dyadic source remains within the same envelope. -/
theorem safeOddDyadicBlock_norm_le
    (z : ZeroPoint) (j : ℕ) :
    ‖safeOddDyadicBlock z j‖ ≤ safeDyadicEnergyEnvelope z j := by
  unfold safeOddDyadicBlock
  rw [norm_div]
  have hsum :=
    norm_sub_le (safePlusDyadicBlock z j) (safeMinusDyadicBlock z j)
  have hp := safePlusDyadicBlock_norm_le z j
  have hm := safeMinusDyadicBlock_norm_le z j
  norm_num
  nlinarith

end GRWTSK.RiemannHypothesis
