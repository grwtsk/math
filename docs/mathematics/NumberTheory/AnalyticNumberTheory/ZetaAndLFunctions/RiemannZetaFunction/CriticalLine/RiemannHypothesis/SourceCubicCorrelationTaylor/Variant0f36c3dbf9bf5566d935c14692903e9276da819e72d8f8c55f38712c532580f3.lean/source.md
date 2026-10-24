# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCubicCorrelationTaylor.Variant0f36c3dbf9bf5566d935c14692903e9276da819e72d8f8c55f38712c532580f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3fdca46dff3d1f6ea2d70f31497b9934b34a7f9` · SHA-256 `dc4c261d27f7102400a277d5fef3281748f5cab7efa2c2fcff45efbff0c99c34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GlobalTaylorBound.Variant0c18d84d04149c5ac1a85dab53037cfa7c8601a05f8c69604e84060307884a51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c18d84d04149c5ac1a85dab53037cfa7c8601a05f8c69604e84060307884a51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.GlobalTaylorBound.Variant0c18d84d04149c5ac1a85dab53037cfa7c8601a05f8c69604e84060307884a51","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0c18d84d04149c5ac1a85dab53037cfa7c8601a05f8c69604e84060307884a51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T170807Z-1791306487076474000/SourceCubicCorrelationTaylor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualFourthCorrelationCalibration
import Mathlib.Analysis.Calculus.Taylor

/-!
Actual-source cubic Taylor remainder, with all real displacements retained.
The source is the unchanged normalized explicitSecondDerivative correlation.
This analytic estimate supplies no uniform signed arithmetic witness.
Research direction: grwtsk contributors. Proof construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GlobalTaylorBound.Variant0c18d84d04149c5ac1a85dab53037cfa7c8601a05f8c69604e84060307884a51

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
    <;> ring
  rw [he] at h
  have hy4 : |y| ^ 4 = y ^ 4 := by
    rw [show (4 : ℕ) = 2 * 2 from rfl, pow_mul, pow_mul, sq_abs]
  norm_num only [Nat.reduceAdd, Nat.factorial, Nat.cast_ofNat] at h
  simpa only [cubicCorrelationRemainder, hy4] using h

end
end FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor
```
