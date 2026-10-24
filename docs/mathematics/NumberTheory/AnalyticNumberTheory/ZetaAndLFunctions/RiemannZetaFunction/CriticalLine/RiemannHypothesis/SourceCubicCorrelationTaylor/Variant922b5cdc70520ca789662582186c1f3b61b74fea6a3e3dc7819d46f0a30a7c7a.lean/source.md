# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCubicCorrelationTaylor.Variant922b5cdc70520ca789662582186c1f3b61b74fea6a3e3dc7819d46f0a30a7c7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3dc3e02855bdc8f971f169b4bd6af11750326c3` · SHA-256 `922b5cdc70520ca789662582186c1f3b61b74fea6a3e3dc7819d46f0a30a7c7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualFourthCorrelationCalibration
import Mathlib.Analysis.Calculus.Taylor

/-!
Actual-source cubic Taylor remainder, with all real displacements retained.
The source is the unchanged normalized explicitSecondDerivative correlation.
This analytic estimate supplies no uniform signed arithmetic witness.
Research direction: grwtsk contributors. Proof construction: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor

open Set
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open RH16IndependentChallengeNext

noncomputable section

private theorem global_taylor_bound {f : ℝ → ℝ} (n : ℕ) (hf : ContDiff ℝ (n + 1) f)
    (M a y : ℝ) (hM : ∀ t, |iteratedDeriv (n + 1) f t| ≤ M) :
    |f (a + y) - taylorWithinEval f n univ a (a + y)| ≤
      M * |y| ^ (n + 1) / (n + 1).factorial := by
  by_cases hy : y = 0
  · simp [hy]
  have hne : a ≠ a + y := by intro h; apply hy; linarith
  have hu := uniqueDiffOn_uIcc hne
  have hpoly : taylorWithinEval f n (uIcc a (a + y)) a (a + y) =
      taylorWithinEval f n univ a (a + y) := by
    simp only [taylor_within_apply]
    apply Finset.sum_congr rfl
    intro k hk
    rw [iteratedDerivWithin_univ,
      iteratedDerivWithin_eq_iteratedDeriv hu
        (hf.of_le (by exact_mod_cast (Finset.mem_range.mp hk))).contDiffAt
        (left_mem_uIcc)]
  obtain ⟨t, _, ht⟩ := taylor_mean_remainder_lagrange_iteratedDeriv hne hf.contDiffOn
  rw [← hpoly, ht, abs_div, abs_mul, abs_pow]
  simp only [add_sub_cancel_left, Nat.abs_cast]
  exact div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_right (hM t) (by positivity)) (by positivity)

/-- The independently specified cubic jet retains all four signed coefficients. -/
def cubicCorrelationJet (A a y : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A a +
    y * deriv (sourceCorrelation explicitSecondDerivative A) a +
    y ^ 2 / 2 * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) a +
    y ^ 3 / 6 * deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) a

/-- The actual remainder subtracts the entire independently specified cubic jet. -/
def cubicCorrelationRemainder (A a y : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (a + y) - cubicCorrelationJet A a y

/-- The exact fourth-derivative coefficient yields a 24-denominator for every real displacement. -/
theorem cubicCorrelationRemainder_abs_le (A a y : ℝ) (hA : 91 ≤ A) :
    |cubicCorrelationRemainder A a y| ≤ 67 / A ^ 4 * y ^ 4 / 24 := by
  have h := global_taylor_bound 3
    (actual_correlation_contDiff_four A (by linarith)) (67 / A ^ 4) a y
    (fun t => actual_correlation_iterated_fourth_abs_le_sixty_seven A t hA)
  have he : taylorWithinEval (sourceCorrelation explicitSecondDerivative A) 3 univ a (a + y) =
      cubicCorrelationJet A a y := by
    simp [taylorWithinEval_succ, taylor_within_zero_eval, iteratedDeriv_succ,
      iteratedDeriv_zero, cubicCorrelationJet]
    <;> ring
  rw [he] at h
  simpa only [cubicCorrelationRemainder, abs_pow, pow_succ, Nat.factorial] using h

end
end FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor
```
