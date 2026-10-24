# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.LogTrigonometric.Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16363fe5ab3972abf4646b194b3f33d1d3d220c1` · SHA-256 `5c2e613e8bf467fa73b1fa0749c2155e9d8950ed47b4381daa28da0644bbdb97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegralLogSinZeroPiEqTwoMulIntegralLogSinZeroPiDivTwo.Variantdc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegralLogSinZeroPiEqTwoMulIntegralLogSinZeroPiDivTwo.Variantdc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280","mathematical_subject":"Analysis.Integration","original_sha256":"dc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/SpecialFunctions/Integrals/LogTrigonometric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Stefan Kebekus. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stefan Kebekus
-/
module

public import Mathlib.Analysis.SpecialFunctions.Integrability.LogMeromorphic

import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv

/-!
# Integral of `log ∘ sin`

This file computes special values of the integral of `log ∘ sin`. Given that the indefinite integral
involves the dilogarithm, this can be seen as computing special values of `Li₂`.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegralLogSinZeroPiEqTwoMulIntegralLogSinZeroPiDivTwo.Variantdc579439df3032941d0386ed53e6bd6117c8237592323f3cc065265aa6cc1280

public section

open Filter Real

open scoped Interval

/-
Helper lemma for `integral_log_sin_zero_pi_div_two`: The integral of `log ∘ sin` on `0 … π` is
double the integral on `0 … π/2`.
-/
private lemma integral_log_sin_zero_pi_eq_two_mul_integral_log_sin_zero_pi_div_two :
    ∫ x in 0..π, log (sin x) = 2 * ∫ x in 0..(π / 2), log (sin x) := by
  rw [← intervalIntegral.integral_add_adjacent_intervals (a := 0) (b := π / 2) (c := π)
    (by apply intervalIntegrable_log_sin) (by apply intervalIntegrable_log_sin)]
  conv =>
    left; right; arg 1
    intro x
    rw [← sin_pi_sub]
  rw [intervalIntegral.integral_comp_sub_left (fun x ↦ log (sin x)), sub_self,
    (by linarith : π - π / 2 = π / 2)]
  ring!

/--
The integral of `log ∘ sin` on `0 … π/2` equals `-log 2 * π / 2`.
-/
theorem integral_log_sin_zero_pi_div_two : ∫ x in 0..(π / 2), log (sin x) = -log 2 * π / 2 := by
  calc ∫ x in 0..(π / 2), log (sin x)
    _ = ∫ x in 0..(π / 2), (log (sin (2 * x)) - log 2 - log (cos x)) := by
      apply intervalIntegral.integral_congr_codiscreteWithin
      apply Filter.codiscreteWithin_mono (by tauto : Ι 0 (π / 2) ⊆ Set.univ)
      have t₀ : sin ⁻¹' {0}ᶜ ∈ Filter.codiscrete ℝ := by
        apply analyticOnNhd_sin.preimage_zero_mem_codiscrete (x := π / 2)
        simp
      have t₁ : cos ⁻¹' {0}ᶜ ∈ Filter.codiscrete ℝ := by
        apply analyticOnNhd_cos.preimage_zero_mem_codiscrete (x := 0)
        simp
      filter_upwards [t₀, t₁] with y h₁y h₂y
      simp_all only [Set.preimage_compl, Set.mem_compl_iff, Set.mem_preimage, Set.mem_singleton_iff,
        sin_two_mul, ne_eq, mul_eq_zero, OfNat.ofNat_ne_zero, or_self, not_false_eq_true, log_mul]
      ring
    _ = (∫ x in 0..(π / 2), log (sin (2 * x))) - π / 2 * log 2
        - ∫ x in 0..(π / 2), log (cos x) := by
      rw [intervalIntegral.integral_sub _ _,
        intervalIntegral.integral_sub _ intervalIntegrable_const,
        intervalIntegral.integral_const]
      · simp
      · simpa using (intervalIntegrable_log_sin (a := 0) (b := π)).comp_mul_left
      · apply IntervalIntegrable.sub _ intervalIntegrable_const
        simpa using (intervalIntegrable_log_sin (a := 0) (b := π)).comp_mul_left
      · exact intervalIntegrable_log_cos
    _ = (∫ x in 0..(π / 2), log (sin (2 * x)))
        - π / 2 * log 2 - ∫ x in 0..(π / 2), log (sin x) := by
      simp [← sin_pi_div_two_sub,
        intervalIntegral.integral_comp_sub_left (fun x ↦ log (sin x)) (π / 2)]
    _ = -log 2 * π / 2 := by
      simp only [intervalIntegral.integral_comp_mul_left (f := fun x ↦ log (sin x)) two_ne_zero,
        mul_zero, (by linarith : 2 * (π / 2) = π),
        integral_log_sin_zero_pi_eq_two_mul_integral_log_sin_zero_pi_div_two, smul_eq_mul, ne_eq,
        OfNat.ofNat_ne_zero, not_false_eq_true, inv_mul_cancel_left₀, sub_sub_cancel_left, neg_mul]
      linarith

/--
The integral of `log ∘ sin` on `0 … π` equals `-log 2 * π`.
-/
theorem integral_log_sin_zero_pi : ∫ x in 0..π, log (sin x) = -log 2 * π := by
  rw [integral_log_sin_zero_pi_eq_two_mul_integral_log_sin_zero_pi_div_two,
    integral_log_sin_zero_pi_div_two]
  ring
```
