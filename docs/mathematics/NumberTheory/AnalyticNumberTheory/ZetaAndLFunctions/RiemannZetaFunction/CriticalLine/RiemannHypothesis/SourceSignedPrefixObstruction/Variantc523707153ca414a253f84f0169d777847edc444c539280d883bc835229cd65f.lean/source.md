# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSignedPrefixObstruction.Variantc523707153ca414a253f84f0169d777847edc444c539280d883bc835229cd65f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c29ed5a58613ca4c296b6492d9f7045d9b7fb4dc` · SHA-256 `c523707153ca414a253f84f0169d777847edc444c539280d883bc835229cd65f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveTriangularConsumer
import Mathlib.Tactic

/-!
An actual signed-row obstruction to a one-sided Abel attempt.
The attempted inequality was that centering forces every long prefix nonpositive.
At the unchanged real source scale A = 7/4, U = floor(A^2) = 3, its prefixes
already have both signs. No statement about the compensated target is inferred.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceSignedPrefixObstruction
open ArithmeticFunction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateVaughanIdentity EstimateBetaCentering
noncomputable section

def centeredPrefix (A : ℝ) (k : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n

theorem actual_cutoff : vaughanCutoff (7 / 4 : ℝ) = 3 := by
  norm_num [vaughanCutoff]

theorem actual_alpha : alpha 3 = (1 / 6 : ℝ) := by
  have h2 : moebius 2 = -1 := moebius_apply_prime Nat.prime_two
  have h3 : moebius 3 = -1 := moebius_apply_prime (by norm_num)
  norm_num [alpha, Finset.sum_Icc_succ_top, h2, h3]

theorem centered_beta_short_examples :
    centeredBeta 3 4 = (1 / 6 : ℝ) ∧
    centeredBeta 3 5 = (-5 / 6 : ℝ) ∧
    centeredBeta 3 6 = (7 / 6 : ℝ) := by
  have h2 : moebius 2 = -1 := moebius_apply_prime Nat.prime_two
  have h3 : moebius 3 = -1 := moebius_apply_prime (by norm_num)
  have hb (n : ℕ) (hn : 0 < n) : beta 3 n =
      (if n = 1 then 1 else 0) -
        ∑ d ∈ Finset.Icc 1 3, if d ∣ n then (moebius d : ℝ) else 0 := by
    rw [beta_eq_delta_sub_short, short_divisor_sum_eq_indicator 3 n hn]
  norm_num [centeredBeta, actual_alpha, hb 4 (by norm_num), hb 5 (by norm_num),
    hb 6 (by norm_num), Finset.sum_Icc_succ_top, h2, h3]

theorem actual_prefix_values :
    centeredPrefix (7 / 4 : ℝ) 4 = 1 / 6 ∧
    centeredPrefix (7 / 4 : ℝ) 5 = -2 / 3 ∧
    centeredPrefix (7 / 4 : ℝ) 6 = 1 / 2 := by
  norm_num [centeredPrefix, actual_cutoff, Finset.sum_Ioc_succ_top,
    centered_beta_short_examples.1, centered_beta_short_examples.2.1,
    centered_beta_short_examples.2.2]

theorem centering_does_not_force_nonpositive_prefix :
    ¬ (∀ A : ℝ, 1 ≤ A → ∀ k : ℕ, vaughanCutoff A ≤ k → centeredPrefix A k ≤ 0) := by
  intro h
  have hv := h (7 / 4) (by norm_num) 4 (by rw [actual_cutoff]; norm_num)
  rw [actual_prefix_values.1] at hv
  norm_num at hv

theorem centering_does_not_force_nonnegative_prefix :
    ¬ (∀ A : ℝ, 1 ≤ A → ∀ k : ℕ, vaughanCutoff A ≤ k → 0 ≤ centeredPrefix A k) := by
  intro h
  have hv := h (7 / 4) (by norm_num) 5 (by rw [actual_cutoff]; norm_num)
  rw [actual_prefix_values.2.1] at hv
  norm_num at hv

end
end FormalResearch.RiemannHypothesis.SourceSignedPrefixObstruction
```
