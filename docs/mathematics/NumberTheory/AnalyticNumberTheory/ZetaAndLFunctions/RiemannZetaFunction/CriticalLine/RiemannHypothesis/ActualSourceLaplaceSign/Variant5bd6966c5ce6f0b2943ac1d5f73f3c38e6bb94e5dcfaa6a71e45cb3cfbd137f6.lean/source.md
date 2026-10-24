# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSourceLaplaceSign.Variant5bd6966c5ce6f0b2943ac1d5f73f3c38e6bb94e5dcfaa6a71e45cb3cfbd137f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f17be0f56b224a736bca0adae05cdccad59641fe` · SHA-256 `5bd6966c5ce6f0b2943ac1d5f73f3c38e6bb94e5dcfaa6a71e45cb3cfbd137f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualSourceLaplaceMoment

/-!
# Exact square annihilation and actual sixth non-annihilation

The source remains the compact polynomial and its original 1/4 pole factor.
Its positive bump moment makes the unchanged test vanish at 1/2 and strictly
negative at 1/6; the correlation's full weighted moment is therefore zero at
1/2 and positive at 1/6. These are exact actual-source consequences, before
any discrete census or asymptotic coefficient. Human square/sixth distinction
and unchanged-source direction: grwtsk contributors. Local sign consumer:
OpenAI Codex. Earlier qualified formal artifacts retain their origins.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualSourceLaplaceSign
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity ActualSourceLaplaceMoment MeasureTheory Set
noncomputable section
local notation "C" => sourceCorrelation explicitSecondDerivative

theorem actual_bump_interior_positive {A x : ℝ} (hA : 0 < A)
    (hx : x ∈ Ioo (-A) A) : 0 < bumpInterior A x := by
  have hlow : -1 < x / A := (lt_div_iff₀ hA).mpr (by linarith [hx.1])
  have hupp : x / A < 1 := (div_lt_iff₀ hA).mpr (by linarith [hx.2])
  have hbase : 0 < 1 - (x / A) ^ 2 := by
    nlinarith [mul_pos (by linarith : 0 < 1 + x / A) (by linarith : 0 < 1 - x / A)]
  exact div_pos (pow_pos hbase 4) (Real.sqrt_pos.mpr hA)

theorem actual_bump_moment_positive {A : ℝ} (hA : 1 ≤ A) (σ : ℝ) :
    0 < bumpMoment A σ := by
  rw [exact_weighted_bump_interval hA]
  have hc : Continuous (fun x ↦ Real.exp (σ * x) * bumpInterior A x) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (bumpInterior_continuous A)
  exact intervalIntegral.intervalIntegral_pos_of_pos_on (hc.intervalIntegrable _ _)
    (fun x hx ↦ mul_pos (Real.exp_pos _) (actual_bump_interior_positive (by linarith) hx))
    (by linarith)

theorem actual_square_laplace_annihilated {A : ℝ} (hA : 1 ≤ A) :
    testMoment A (1 / 2) = 0 := by
  rw [exact_actual_normalized_laplace_multiplier hA]
  norm_num

theorem actual_sixth_laplace_negative {A : ℝ} (hA : 1 ≤ A) :
    testMoment A (1 / 6) < 0 := by
  rw [exact_actual_normalized_laplace_multiplier hA]
  exact div_neg_of_neg_of_pos
    (mul_neg_of_neg_of_pos (by norm_num) (actual_bump_moment_positive hA _))
    (Real.sqrt_pos.mpr (source_normalization_pos A (by linarith)))

theorem actual_square_correlation_moment_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ t, Real.exp (t / 2) * C A t) = 0 := by
  have h := exact_full_correlation_laplace_square hA (1 / 2)
  rw [actual_square_laplace_annihilated hA] at h
  simpa only [one_div_mul_eq_div, zero_pow (by decide : 2 ≠ 0)] using h

theorem actual_sixth_correlation_moment_positive {A : ℝ} (hA : 1 ≤ A) :
    0 < ∫ t, Real.exp (t / 6) * C A t := by
  have h := exact_full_correlation_laplace_square hA (1 / 6)
  have hn := actual_sixth_laplace_negative hA
  have hp : 0 < (testMoment A (1 / 6)) ^ 2 := sq_pos_of_neg hn
  rw [← h] at hp
  simpa only [one_div_mul_eq_div] using hp

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSourceLaplaceSign
```
