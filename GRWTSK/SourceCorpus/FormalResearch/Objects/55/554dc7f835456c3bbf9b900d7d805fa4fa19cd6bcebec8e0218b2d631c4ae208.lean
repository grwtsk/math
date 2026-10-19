import FormalResearch.RiemannHypothesis.FullQuadraticObstruction
import Zeta23.GammaFacts.Mu
import Mathlib.Analysis.Complex.ExponentialBounds
open FormalResearch.RiemannHypothesis.SourcePairing
open Filter
open scoped BigOperators
namespace FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit

theorem archimedean_zero_add_four_lt_neg_half : archimedeanMultiplier 0 + 4 < -1 / 2 := by
  let u : ℕ → ℝ := fun n ↦ 1 / ((n : ℝ) + 1) -
    ((n : ℝ) + 1 + 1 / 4) / (((n : ℝ) + 1 + 1 / 4) ^ 2 + 0 ^ 2)
  have hu : Summable u := Zeta23.MuFields.summable_re_terms
    (a := 1 / 4) (by norm_num) (by norm_num) 0
  have hterm (n : ℕ) : u n ≤
      1 / ((n : ℝ) + 1) - 1 / ((n : ℝ) + 2) := by
    dsimp [u]
    have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
    norm_num only [zero_pow (by norm_num : 2 ≠ 0), add_zero]
    apply sub_le_sub_left
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    nlinarith
  have hfinite (N : ℕ) : ∑ n ∈ Finset.range N, u n ≤ 1 := by
    calc
      _ ≤ ∑ n ∈ Finset.range N,
          (1 / ((n : ℝ) + 1) - 1 / ((n : ℝ) + 2)) :=
        Finset.sum_le_sum fun n _ ↦ hterm n
      _ = 1 - 1 / ((N : ℝ) + 1) := by
        simpa only [Nat.cast_add, Nat.cast_zero, Nat.cast_one, zero_add, one_div_one,
          add_assoc, one_add_one_eq_two] using
          Finset.sum_range_sub' (fun n : ℕ ↦ 1 / ((n : ℝ) + 1)) N
      _ ≤ 1 := by
        have hp : 0 ≤ 1 / ((N : ℝ) + 1) := by positivity
        linarith
  have hsum : ∑' n : ℕ, u n ≤ 1 :=
    le_of_tendsto hu.hasSum.tendsto_sum_nat (Eventually.of_forall hfinite)
  have hd := Zeta23.MuFields.re_digamma_vertical (a := 1 / 4)
    (by norm_num) (by norm_num) 0
  have hpi : 1 < Real.log Real.pi :=
    (Real.lt_log_iff_exp_lt Real.pi_pos).mpr (Real.exp_one_lt_three.trans Real.pi_gt_three)
  norm_num at hd
  have hdu : (Complex.digamma (1 / 4)).re =
      -Real.eulerMascheroniConstant - 4 + ∑' n, u n := by
    simpa [u] using hd
  simp only [archimedeanMultiplier, Complex.ofReal_zero, mul_zero, zero_div, add_zero]
  linarith [Real.one_half_lt_eulerMascheroniConstant]
end FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
