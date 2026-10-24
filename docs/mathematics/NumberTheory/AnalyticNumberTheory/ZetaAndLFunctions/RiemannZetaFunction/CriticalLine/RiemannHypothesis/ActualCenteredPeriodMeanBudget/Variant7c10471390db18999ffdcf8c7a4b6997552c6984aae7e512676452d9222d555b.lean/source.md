# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCenteredPeriodMeanBudget.Variant7c10471390db18999ffdcf8c7a4b6997552c6984aae7e512676452d9222d555b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef648289b9901cc2626e5eec83192916772ec3f0` · SHA-256 `7c10471390db18999ffdcf8c7a4b6997552c6984aae7e512676452d9222d555b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPeriodicColumnPrimitive

/-!
The literal signed period mean has a cutoff-dependent factor-two budget.
The closed prefix at its actual lower natural cutoff is zero; the unit
divisor's periodic residual is also zero. No uniform-scale arithmetic
witness or independent-main cancellation is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualCenteredPeriodMeanBudget
open ArithmeticFunction SourceActualPeriodicColumnPrimitive
open scoped BigOperators
noncomputable section

/-- The unit period is genuinely zero, including every closed natural seam. -/
theorem actualDivisorPeriodicResidual_one_zero (M : ℕ) :
    actualDivisorPeriodicResidual 1 M = 0 := by
  norm_num [actualDivisorPeriodicResidual]
  exact Nat.mod_one M

/-- A positive divisor residual retains its exact half-period amplitude. -/
theorem actualDivisorPeriodicResidual_abs_le (d M : ℕ) (hd : 1 ≤ d) :
    |actualDivisorPeriodicResidual d M| ≤ ((d : ℝ) - 1) / (2 * d) := by
  have hdR : 0 < (d : ℝ) := by exact_mod_cast (show 0 < d by omega)
  have hr : 0 ≤ ((M % d : ℕ) : ℝ) := by positivity
  have hr' : ((M % d : ℕ) : ℝ) + 1 ≤ (d : ℝ) := by
    exact_mod_cast (show M % d + 1 ≤ d by
      have := Nat.mod_lt M (show 0 < d by omega)
      omega)
  have he : actualDivisorPeriodicResidual d M =
      (2 * ((M % d : ℕ) : ℝ) - (d : ℝ) + 1) / (2 * d) := by
    unfold actualDivisorPeriodicResidual
    field_simp
    ring
  rw [he, abs_div, abs_of_pos (by positivity : 0 < 2 * (d : ℝ))]
  apply (div_le_div_iff_of_pos_right (by positivity : 0 < 2 * (d : ℝ))).2
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- All actual Moebius signs and the zero unit row are kept before taking norms. -/
theorem actual_signed_periodic_residual_abs_le (U M : ℕ) (hU : 1 ≤ U) :
    |∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d M| ≤
      ((U : ℝ) - 1) / 2 := by
  induction U, hU using Nat.le_induction with
  | base => norm_num [actualDivisorPeriodicResidual_one_zero]
  | succ U hU ih =>
    rw [Finset.sum_Icc_succ_top (by omega)]
    have hm : |(moebius (U + 1) : ℝ)| ≤ 1 := by
      exact_mod_cast (abs_moebius_le_one (n := U + 1))
    have hr : |actualDivisorPeriodicResidual (U + 1) M| ≤ (1 / 2 : ℝ) := by
      apply (actualDivisorPeriodicResidual_abs_le (U + 1) M (by omega)).trans
      apply (div_le_iff₀ (by positivity : 0 < 2 * ((U + 1 : ℕ) : ℝ))).2
      push_cast
      linarith
    have hb : |(moebius (U + 1) : ℝ) * actualDivisorPeriodicResidual (U + 1) M| ≤
        (1 / 2 : ℝ) := by
      rw [abs_mul]
      exact (mul_le_mul hm hr (abs_nonneg _) (by norm_num)).trans (by norm_num)
    have ha := abs_add_le
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d M)
      ((moebius (U + 1) : ℝ) * actualDivisorPeriodicResidual (U + 1) M)
    push_cast
    linarith

/-- The actual retained mean has a growing cutoff bound, derived from its closed source prefix. -/
theorem actualCenteredPrefixPeriodMean_abs_le (U : ℕ) (hU : 1 ≤ U) :
    |actualCenteredPrefixPeriodMean U| ≤ ((U : ℝ) - 1) / 2 := by
  have he := actual_closed_prefix_eq_period_mean U U hU le_rfl
  simp only [Finset.Ioc_self, Finset.sum_empty] at he
  have hn : actualCenteredPrefixPeriodMean U =
      -(∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d U) := by
    linarith
  rw [hn, abs_neg]
  exact actual_signed_periodic_residual_abs_le U U hU

end
end FormalResearch.RiemannHypothesis.ActualCenteredPeriodMeanBudget
```
