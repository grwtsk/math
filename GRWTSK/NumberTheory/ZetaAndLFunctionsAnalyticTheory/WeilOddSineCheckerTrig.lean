/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerRounding
import Mathlib.Analysis.Calculus.Taylor
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

/-!
# Sine and cosine enclosures for the original radius-one checker

The sign-preserving integer division and thirteen-term loop are the ones
in `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`, lines 71–82.
At the reduced argument, the last unused parity coefficient vanishes.
The Lagrange remainder therefore has order 26 for cosine and 27 for sine.
Integer division centers the reduction interval using twice the upper
bound for π, and integer periods of the true trigonometric functions
leave only the error from this approximate period.

These estimates justify individual trigonometric calls. The native
coefficient, gamma, and complete rectangle enclosures are separate.
Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false

open Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerRounding

/-- True function chosen by the checker's sine flag. -/
noncomputable def trigValue (sine : Bool) : ℝ → ℝ := if sine then Real.sin else Real.cos

/-- Upper π numerator from the original integer checker. -/
def piUpper : ℤ := 3141592653590

private def tau : ℤ := 2 * piUpper

/-- The actual integer period count used in the checker. -/
def periodTurns (x : ℤ) : ℤ := (x + tau / 2) / tau

/-- The actual reduced integer argument used in the checker. -/
def reducedArgument (x : ℤ) : ℤ := x - periodTurns x * tau

/-- Signed fixed-point trigonometric value of the original checker. -/
def integerTrig (sine : Bool) (x : ℤ) : ℤ := reducedTrigSum sine (reducedArgument x)

private noncomputable def taylorPolynomial (sine : Bool) (z : ℝ) : ℝ :=
  ∑ k ∈ Finset.range 13, (-1 : ℝ) ^ k * z ^ degree sine k / ((degree sine k).factorial : ℝ)

private theorem sum_range_double (f : ℕ → ℝ) (n : ℕ) :
    (∑ k ∈ Finset.range (2 * n), f k) =
      ∑ k ∈ Finset.range n, (f (2 * k) + f (2 * k + 1)) := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [show 2 * (n + 1) = 2 * n + 1 + 1 by omega,
        Finset.sum_range_succ, Finset.sum_range_succ, ih, Finset.sum_range_succ]
      ring

private theorem taylorWithinEval_eq_polynomial (sine : Bool) {z : ℝ} (hz : 0 ≠ z) :
    taylorWithinEval (trigValue sine) (degree sine 13 - 1) (uIcc 0 z) 0 z =
      taylorPolynomial sine z := by
  have hderiv (k : ℕ) :
      iteratedDerivWithin k (trigValue sine) (uIcc 0 z) 0 =
        iteratedDeriv k (trigValue sine) 0 :=
    iteratedDerivWithin_eq_iteratedDeriv (uniqueDiffOn_uIcc hz)
      (by
        cases sine
        · exact Real.contDiff_cos.contDiffAt
        · exact Real.contDiff_sin.contDiffAt)
      left_mem_uIcc
  rw [taylor_within_apply]
  simp only [hderiv, sub_zero, smul_eq_mul]
  cases sine with
  | false =>
      change (∑ k ∈ Finset.range (2 * 13),
          (k.factorial : ℝ)⁻¹ * z ^ k * iteratedDeriv k Real.cos 0) = _
      rw [sum_range_double]
      unfold taylorPolynomial
      apply Finset.sum_congr rfl
      intro k _
      simp [degree, Pi.mul_apply, div_eq_mul_inv]
      ring
  | true =>
      change (∑ k ∈ Finset.range (2 * 13 + 1),
          (k.factorial : ℝ)⁻¹ * z ^ k * iteratedDeriv k Real.sin 0) = _
      rw [Finset.sum_range_succ, sum_range_double]
      simp only [Real.iteratedDeriv_even_sin, Pi.mul_apply, Real.sin_zero, mul_zero, add_zero]
      unfold taylorPolynomial
      apply Finset.sum_congr rfl
      intro k _
      simp [degree, Pi.mul_apply, div_eq_mul_inv]
      ring

private theorem abs_trigValue_sub_polynomial_le (sine : Bool) (z : ℝ) :
    |trigValue sine z - taylorPolynomial sine z| ≤
      |z| ^ degree sine 13 / ((degree sine 13).factorial : ℝ) := by
  by_cases hz : 0 = z
  · subst z
    cases sine <;> norm_num [trigValue, taylorPolynomial, degree, Finset.sum_range_succ]
  · have hf : ContDiffOn ℝ ((degree sine 13 - 1 : ℕ) + 1) (trigValue sine) (uIcc 0 z) := by
      cases sine
      · exact Real.contDiff_cos.contDiffOn
      · exact Real.contDiff_sin.contDiffOn
    obtain ⟨w, _, hw⟩ := taylor_mean_remainder_lagrange_iteratedDeriv hz hf
    have hidx : (degree sine 13 - 1) + 1 = degree sine 13 := by cases sine <;> decide
    rw [taylorWithinEval_eq_polynomial sine hz, sub_zero, hidx] at hw
    have hderiv : |iteratedDeriv (degree sine 13) (trigValue sine) w| ≤ 1 := by
      cases sine
      · exact Real.abs_iteratedDeriv_cos_le_one _ _
      · exact Real.abs_iteratedDeriv_sin_le_one _ _
    have hfact : (0 : ℝ) ≤ ((degree sine 13).factorial : ℝ) := by positivity
    rw [hw, abs_div, abs_mul, abs_pow, abs_of_nonneg hfact]
    exact div_le_div_of_nonneg_right (mul_le_of_le_one_left (by positivity) hderiv) hfact

private theorem real_scale_pos : (0 : ℝ) < (scale : ℝ) := by norm_num [scale]

/-- Taylor truncation contributes fewer than twelve scaled units for cosine
and two for sine. The polynomial is the comparison polynomial of the integer loop. -/
theorem abs_scaledTaylorSum_sub_scaled_trigValue_lt (sine : Bool) (y : ℤ)
    (hy : |(y : ℝ)| ≤ 4 * (scale : ℝ)) :
    |scaledTaylorSum sine y - (scale : ℝ) * trigValue sine ((y : ℝ) / (scale : ℝ))| <
      (if sine then 2 else 12) := by
  let z := (y : ℝ) / (scale : ℝ)
  have hz : |z| ≤ 4 := by
    change |(y : ℝ) / (scale : ℝ)| ≤ 4
    rw [abs_div, abs_of_pos real_scale_pos]
    exact (div_le_iff₀ real_scale_pos).2 hy
  have hpoly : scaledTaylorSum sine y = (scale : ℝ) * taylorPolynomial sine z := by
    simp only [scaledTaylorSum, scaledTaylorTerm, taylorPolynomial, Finset.mul_sum, z]
  rw [hpoly, ← mul_sub, abs_mul, abs_of_pos real_scale_pos, abs_sub_comm]
  calc
    _ ≤ (scale : ℝ) * (|z| ^ degree sine 13 / ((degree sine 13).factorial : ℝ)) :=
      mul_le_mul_of_nonneg_left (abs_trigValue_sub_polynomial_le sine z) real_scale_pos.le
    _ ≤ (scale : ℝ) * ((4 : ℝ) ^ degree sine 13 / ((degree sine 13).factorial : ℝ)) :=
      mul_le_mul_of_nonneg_left
        (div_le_div_of_nonneg_right (pow_le_pow_left₀ (abs_nonneg _) hz _) (by positivity))
        real_scale_pos.le
    _ < _ := by cases sine <;> norm_num [scale, degree, Nat.factorial]

private theorem reducedArgument_bounds (x : ℤ) :
    -piUpper ≤ reducedArgument x ∧ reducedArgument x < piUpper := by
  have hhalf : tau / 2 = piUpper := by decide
  have hpos : 0 < tau := by decide
  have hq := Int.ediv_mul_add_emod (x + piUpper) tau
  have h0 := Int.emod_nonneg (x + piUpper) hpos.ne'
  have h1 := Int.emod_lt_of_pos (x + piUpper) hpos
  have hred : reducedArgument x = (x + piUpper) % tau - piUpper := by
    unfold reducedArgument periodTurns
    rw [hhalf]
    linarith
  rw [hred]
  have ht : tau = 2 * piUpper := rfl
  constructor <;> linarith

/-- The reduced argument satisfies the literal checker's strict range assertion. -/
theorem reducedArgument_abs_lt (x : ℤ) : |reducedArgument x| < 4 * scale := by
  have ⟨h0, h1⟩ := reducedArgument_bounds x
  have hpi : piUpper < 4 * scale := by norm_num [piUpper, scale]
  exact abs_lt.2 ⟨by linarith, by linarith⟩

/-- The checker's allowed inputs satisfy its turn-count assertion. -/
theorem periodTurns_abs_le (x : ℤ) (hx : |x| ≤ 512 * scale) :
    |periodTurns x| ≤ 82 := by
  have hred := reducedArgument_bounds x
  have hx' : x = reducedArgument x + periodTurns x * tau := by unfold reducedArgument; ring
  rw [abs_le] at hx ⊢
  norm_num [piUpper, scale, tau] at hx hred hx'
  omega

private theorem abs_tau_sub_true_period_lt :
    |(tau : ℝ) - (scale : ℝ) * (2 * Real.pi)| < 2 := by
  rw [abs_lt]
  constructor <;> norm_num [tau, piUpper, scale] <;>
    linarith [Real.pi_gt_d20, Real.pi_lt_d20]

private theorem trigValue_add_int_period (sine : Bool) (x : ℝ) (n : ℤ) :
    trigValue sine (x + (n : ℝ) * (2 * Real.pi)) = trigValue sine x := by
  cases sine
  · exact Real.cos_add_int_mul_two_pi x n
  · exact Real.sin_add_int_mul_two_pi x n

private theorem abs_trigValue_sub_le (sine : Bool) (x y : ℝ) :
    |trigValue sine x - trigValue sine y| ≤ |x - y| := by
  cases sine
  · exact Real.abs_cos_sub_cos_le x y
  · exact Real.abs_sin_sub_sin_le x y

/-- The approximate period accounts for at most 164 scaled units
throughout the argument range used by the original checker. -/
theorem abs_scaled_trigValue_sub_reduced_le (sine : Bool) (x : ℤ) (hx : |x| ≤ 512 * scale) :
    |(scale : ℝ) * trigValue sine ((x : ℝ) / (scale : ℝ)) -
      (scale : ℝ) * trigValue sine ((reducedArgument x : ℝ) / (scale : ℝ))| ≤ 164 := by
  let y := (reducedArgument x : ℝ) / (scale : ℝ)
  let j := periodTurns x
  let z := (x : ℝ) / (scale : ℝ)
  have hturn : |(j : ℝ)| ≤ 82 := by exact_mod_cast periodTurns_abs_le x hx
  have hcast : (x : ℝ) = (reducedArgument x : ℝ) + (j : ℝ) * (tau : ℝ) := by
    exact_mod_cast (show x = reducedArgument x + j * tau by
      dsimp [j, reducedArgument]
      ring)
  have hphase : (scale : ℝ) * (z - (y + (j : ℝ) * (2 * Real.pi))) =
      (j : ℝ) * ((tau : ℝ) - (scale : ℝ) * (2 * Real.pi)) := by
    dsimp [z, y]
    rw [hcast]
    field_simp [real_scale_pos.ne']
    ring
  change |(scale : ℝ) * trigValue sine z - (scale : ℝ) * trigValue sine y| ≤ _
  rw [← mul_sub, abs_mul, abs_of_pos real_scale_pos]
  calc
    _ = (scale : ℝ) * |trigValue sine z - trigValue sine (y + (j : ℝ) * (2 * Real.pi))| := by
      rw [trigValue_add_int_period]
    _ ≤ (scale : ℝ) * |z - (y + (j : ℝ) * (2 * Real.pi))| :=
      mul_le_mul_of_nonneg_left (abs_trigValue_sub_le sine _ _) real_scale_pos.le
    _ = |(j : ℝ)| * |(tau : ℝ) - (scale : ℝ) * (2 * Real.pi)| := by
      simpa only [abs_mul, abs_of_pos real_scale_pos] using congrArg abs hphase
    _ ≤ 82 * 2 :=
      mul_le_mul hturn abs_tau_sub_true_period_lt.le (abs_nonneg _) (by norm_num)
    _ = 164 := by norm_num

/-- Certified trigonometric enclosure in the original integer units. -/
theorem abs_integerTrig_sub_scaled_trigValue_lt (sine : Bool) (x : ℤ)
    (hx : |x| ≤ 512 * scale) :
    |(integerTrig sine x : ℝ) - (scale : ℝ) * trigValue sine ((x : ℝ) / (scale : ℝ))| < 212 := by
  let y := reducedArgument x
  let a := (integerTrig sine x : ℝ)
  let b := scaledTaylorSum sine y
  let c := (scale : ℝ) * trigValue sine ((y : ℝ) / (scale : ℝ))
  let d := (scale : ℝ) * trigValue sine ((x : ℝ) / (scale : ℝ))
  have hy : |(y : ℝ)| < 4 * (scale : ℝ) := by exact_mod_cast reducedArgument_abs_lt x
  have hab : |a - b| < 36 :=
    abs_reducedTrigSum_sub_scaledTaylorSum_lt sine y hy.le
  have hbc : |b - c| < 12 := (abs_scaledTaylorSum_sub_scaled_trigValue_lt sine y hy.le).trans_le
    (by cases sine <;> norm_num)
  have hcd : |c - d| ≤ 164 := by
    rw [abs_sub_comm]
    exact abs_scaled_trigValue_sub_reduced_le sine x hx
  change |a - d| < 212
  linarith [abs_sub_le a b c, abs_sub_le a c d]

/-- A trigonometric call supplies the unscaled enclosure used in the sinc and
native prime midpoint prices. -/
theorem abs_integerTrig_div_scale_sub_trigValue_lt (sine : Bool) (x : ℤ)
    (hx : |x| ≤ 512 * scale) :
    |(integerTrig sine x : ℝ) / (scale : ℝ) - trigValue sine ((x : ℝ) / (scale : ℝ))| <
      212 / (scale : ℝ) := by
  let z := trigValue sine ((x : ℝ) / (scale : ℝ))
  change |(integerTrig sine x : ℝ) / (scale : ℝ) - z| < _
  have hdiv : (integerTrig sine x : ℝ) / (scale : ℝ) - z =
      ((integerTrig sine x : ℝ) - (scale : ℝ) * z) / (scale : ℝ) := by
    rw [sub_div, mul_comm (scale : ℝ), mul_div_cancel_right₀ _ real_scale_pos.ne']
  rw [hdiv, abs_div, abs_of_pos real_scale_pos]
  exact div_lt_div_of_pos_right (abs_integerTrig_sub_scaled_trigValue_lt sine x hx) real_scale_pos

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerRounding
