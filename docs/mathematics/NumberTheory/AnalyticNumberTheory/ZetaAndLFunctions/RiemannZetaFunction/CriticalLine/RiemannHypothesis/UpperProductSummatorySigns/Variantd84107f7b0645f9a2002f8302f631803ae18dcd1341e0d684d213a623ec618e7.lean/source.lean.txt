import ProductFiberSigns
import UpperProductFiniteSigns
import FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryAbel
import Mathlib.Analysis.Complex.ExponentialBounds

set_option autoImplicit false

namespace UpperProductSummatorySignsScratch
open Finset FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryAbel
noncomputable section

/-- The original signed coefficient is one Liouville sign times a nonnegative fiber. -/
theorem upperProductCoefficient_sign (N n : ℕ) :
    upperProductCoefficient N n =
      (-1 : ℝ)^ArithmeticFunction.cardFactors n *
        ∑ i ∈ Ioc (N/2) N, ∑ j ∈ Ioc (N/2) N, if i*j=n then
          (ArithmeticFunction.moebius i : ℝ)^2*(ArithmeticFunction.moebius j : ℝ)^2 else 0 :=
  ProductFiberSignsScratch.fixed_product_fiber_sign _ _ _

/-- At N=10 the complete signed cumulative product sum is positive at 36. -/
theorem upperProductSummatory_10_36 : upperProductSummatory 10 36 = 1 := by
  rw [upperProductSummatory_eq_rectangle_cutoff 10 36 (by norm_num)]
  have h : ∀ i j : ℕ, ((i*j:ℕ):ℝ) ≤ 36 ↔ i*j ≤ 36 := by
    intro i j
    exact_mod_cast (Iff.rfl : i*j≤36 ↔ i*j≤36)
  simpa only [Nat.reduceDiv, h] using UpperProductFiniteSignsScratch.upper_cutoff_36

/-- At N=10 the same complete signed cumulative product sum is negative at 42. -/
theorem upperProductSummatory_10_42 : upperProductSummatory 10 42 = -1 := by
  rw [upperProductSummatory_eq_rectangle_cutoff 10 42 (by norm_num)]
  have h : ∀ i j : ℕ, ((i*j:ℕ):ℝ) ≤ 42 ↔ i*j ≤ 42 := by
    intro i j
    exact_mod_cast (Iff.rfl : i*j≤42 ↔ i*j≤42)
  simpa only [Nat.reduceDiv, h] using UpperProductFiniteSignsScratch.upper_cutoff_42

/-- Positivity fails for the actual coefficient summatory function; no kernel sign is inferred. -/
theorem not_upperProductSummatory_nonneg :
    ¬∀ (N : ℕ) (x : ℝ), 2≤N → 0≤x → 0≤upperProductSummatory N x := by
  intro h
  have hb := h 10 42 (by norm_num) (by norm_num)
  rw [upperProductSummatory_10_42] at hb
  norm_num at hb

/-- The negative cumulative value occurs at an admissible actual scale, inside channel two. -/
theorem actual_signed_cumulative_negative_in_two_channel :
    ∃ A : ℝ, 1 ≤ A ∧ 2*42 < Real.exp (2*A) ∧
      upperProductSummatory ⌊Real.exp A⌋₊ 42 < 0 := by
  refine ⟨Real.log 10, ?_, ?_, ?_⟩
  · apply (Real.le_log_iff_exp_le (by norm_num : (0:ℝ)<10)).mpr
    exact Real.exp_one_lt_three.le.trans (by norm_num)
  · rw [two_mul (Real.log 10), Real.exp_add, Real.exp_log (by norm_num)]
    norm_num
  · rw [Real.exp_log (by norm_num)]
    norm_num only [Nat.floor_natCast, upperProductSummatory_10_42]

end
end UpperProductSummatorySignsScratch
