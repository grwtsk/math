import FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
The actual diagonal remainder has a polynomial budget. This is solely the
ratio class (1,1); it makes no assertion about the off-diagonal classes or
the complete signed pairing.
-/

set_option autoImplicit false

namespace DiagonalRemainderBudgetScratch

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

/-- The literal Möbius square coefficient lies between zero and one. -/
theorem moebius_square_le_one (g : ℕ) :
    (ArithmeticFunction.moebius g : ℝ) ^ 2 ≤ 1 := by
  have h : |(ArithmeticFunction.moebius g : ℝ)| ≤ 1 := by
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := g))
  have hp := sq_abs (ArithmeticFunction.moebius g : ℝ)
  nlinarith [abs_nonneg (ArithmeticFunction.moebius g : ℝ)]

/-- The exact harmonic sum up to the source square-root cutoff is at most 1+A. -/
theorem source_harmonic_sum_le (A : ℝ) (hA : 1 ≤ A) :
    (∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (g : ℝ)⁻¹) ≤ 1 + A := by
  have h := harmonic_floor_le_one_add_log (Real.exp A)
    (Real.one_le_exp_iff.mpr (by linarith))
  simpa only [Real.log_exp, harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv,
    Rat.cast_natCast] using h

/-- The complete actual diagonal remainder has this polynomial bound, with every μ(g)^2 retained. -/
theorem diagonal_remainder_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
      ThetaRemainder.thetaRemainder A (g ^ 2)| ≤
      (24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))) * (1 + A) := by
  let K : ℝ := 24 + 28 * Real.sqrt (65 / 3) / A + 8 * (65 / (3 * A ^ 2))
  have hA0 : 0 < A := by linarith
  have hK : 0 ≤ K := by dsimp [K]; positivity
  have hterm (g : ℕ) (hg : g ∈ Icc 1 ⌊Real.exp A⌋₊) :
      |(ArithmeticFunction.moebius g : ℝ) ^ 2 *
        ThetaRemainder.thetaRemainder A (g ^ 2)| ≤ K / (g : ℝ) := by
    have hg1 := (mem_Icc.mp hg).1
    have hg0 : (0 : ℝ) < g := by exact_mod_cast (show 0 < g by omega)
    have hg2 : 1 ≤ g ^ 2 := by nlinarith
    have hR := ThetaKernelEstimate.thetaRemainder_abs_le A (g ^ 2) hA hg2
    simp only [Nat.cast_pow, Real.sqrt_sq_eq_abs, abs_of_nonneg hg0.le] at hR
    rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
    exact (mul_le_mul_of_nonneg_left hR (sq_nonneg _)).trans
      (mul_le_of_le_one_left (div_nonneg hK hg0.le) (moebius_square_le_one g))
  calc
    _ ≤ ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊,
        |(ArithmeticFunction.moebius g : ℝ) ^ 2 *
          ThetaRemainder.thetaRemainder A (g ^ 2)| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, K / (g : ℝ) := sum_le_sum hterm
    _ = K * ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (g : ℝ)⁻¹ := by
      simp only [div_eq_mul_inv, mul_sum]
    _ ≤ K * (1 + A) := mul_le_mul_of_nonneg_left (source_harmonic_sum_le A hA) hK

end
end DiagonalRemainderBudgetScratch

#print axioms DiagonalRemainderBudgetScratch.moebius_square_le_one
#print axioms DiagonalRemainderBudgetScratch.source_harmonic_sum_le
#print axioms DiagonalRemainderBudgetScratch.diagonal_remainder_abs_le
