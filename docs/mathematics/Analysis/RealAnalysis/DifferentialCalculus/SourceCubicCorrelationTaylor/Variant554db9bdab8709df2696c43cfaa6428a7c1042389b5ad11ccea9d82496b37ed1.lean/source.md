# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCubicCorrelationTaylor.Variant554db9bdab8709df2696c43cfaa6428a7c1042389b5ad11ccea9d82496b37ed1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97382ce307b21e025f7e3de562b0ba5842cd5b42` · SHA-256 `554db9bdab8709df2696c43cfaa6428a7c1042389b5ad11ccea9d82496b37ed1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
        (hf.of_le (by exact_mod_cast (Nat.le_of_lt (Finset.mem_range.mp hk)))).contDiffAt
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
    ring
  rw [he] at h
  have hy4 : |y| ^ 4 = y ^ 4 := by
    rw [show (4 : ℕ) = 2 * 2 from rfl, pow_mul, pow_mul, sq_abs]
  norm_num only [Nat.reduceAdd, Nat.factorial, Nat.cast_ofNat] at h
  simpa only [cubicCorrelationRemainder, hy4] using h

/-- The derivative of the cubic jet is the full quadratic derivative jet. -/
theorem cubicCorrelationJet_hasDerivAt (A a y : ℝ) :
    HasDerivAt (cubicCorrelationJet A a)
      (deriv (sourceCorrelation explicitSecondDerivative A) a +
        y * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) a +
        y ^ 2 / 2 * deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) a) y := by
  have h := (((hasDerivAt_const y (sourceCorrelation explicitSecondDerivative A a)).add
    ((hasDerivAt_id y).mul_const (deriv (sourceCorrelation explicitSecondDerivative A) a))).add
    (((hasDerivAt_pow 2 y).div_const 2).mul_const
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) a))).add
    (((hasDerivAt_pow 3 y).div_const 6).mul_const
      (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) a))
  convert h using 1 <;> simp only [cubicCorrelationJet, Nat.cast_ofNat, pow_one]
  ring

/-- Actual differentiation of the entire cubic remainder preserves all signed jets. -/
theorem cubicCorrelationRemainder_hasDerivAt (A a y : ℝ) (hA : 0 < A) :
    HasDerivAt (cubicCorrelationRemainder A a)
      (deriv (sourceCorrelation explicitSecondDerivative A) (a + y) -
        (deriv (sourceCorrelation explicitSecondDerivative A) a +
          y * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) a +
          y ^ 2 / 2 * deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) a)) y := by
  have hc := ((actual_correlation_contDiff_four A hA).differentiable (by norm_num) (a + y)).hasDerivAt
  exact (hc.comp y ((hasDerivAt_id y).const_add a)).sub
    (cubicCorrelationJet_hasDerivAt A a y)

/-- The derivative remainder has the exact third-power bound on both sides of the base point. -/
theorem cubicCorrelationRemainder_deriv_abs_le (A a y : ℝ) (hA : 91 ≤ A) :
    |deriv (cubicCorrelationRemainder A a) y| ≤ 67 / A ^ 4 * |y| ^ 3 / 6 := by
  have hc := actual_correlation_contDiff_four A (by linarith)
  have hd : ContDiff ℝ 3 (deriv (sourceCorrelation explicitSecondDerivative A)) := hc.deriv'
  have hb : ∀ t, |iteratedDeriv 3 (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
      67 / A ^ 4 := by
    intro t
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      actual_correlation_iterated_fourth_abs_le_sixty_seven A t hA
  have h := global_taylor_bound 2 hd (67 / A ^ 4) a y hb
  have he : taylorWithinEval (deriv (sourceCorrelation explicitSecondDerivative A))
      2 univ a (a + y) =
        deriv (sourceCorrelation explicitSecondDerivative A) a +
          y * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) a +
          y ^ 2 / 2 * deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) a := by
    simp [taylorWithinEval_succ, taylor_within_zero_eval, iteratedDeriv_succ,
      iteratedDeriv_zero]
    ring
  rw [he] at h
  rw [(cubicCorrelationRemainder_hasDerivAt A a y (by linarith)).deriv]
  norm_num only [Nat.reduceAdd, Nat.factorial, Nat.cast_ofNat] at h
  exact h

end
end FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor
```
