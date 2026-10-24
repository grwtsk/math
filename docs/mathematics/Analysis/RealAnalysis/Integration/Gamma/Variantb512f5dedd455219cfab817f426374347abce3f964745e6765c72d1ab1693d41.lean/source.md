# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Gamma.Variantb512f5dedd455219cfab817f426374347abce3f964745e6765c72d1ab1693d41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffe83d5ff475a8afdadffb62499859a1b782da93` · SHA-256 `c08a8f2aeb7754462311e499d792b6f894b160853eed091b0f539729302c0535`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegralRpowMulExpNegRpow.Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegralRpowMulExpNegRpow.Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada","mathematical_subject":"Analysis.Integration","original_sha256":"cf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Integral/Gamma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["root_references_require_identity_review","same_file_root_reference_mapping","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot
-/
import Mathlib.Analysis.SpecialFunctions.PolarCoord
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic

/-!
# Integrals involving the Gamma function

In this file, we collect several integrals over `ℝ` or `ℂ` that evaluate in terms of the
`Real.Gamma` function.

-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegralRpowMulExpNegRpow.Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada

open Real Set MeasureTheory MeasureTheory.Measure

section real

theorem integral_rpow_mul_exp_neg_rpow {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    ∫ x in Ioi (0 : ℝ), x ^ q * exp (- x ^ p) = (1 / p) * Gamma ((q + 1) / p) := by
  calc
    _ = ∫ (x : ℝ) in Ioi 0, (1 / p * x ^ (1 / p - 1)) • ((x ^ (1 / p)) ^ q * exp (-x)) := by
      rw [← integral_comp_rpow_Ioi _ (one_div_ne_zero (ne_of_gt hp)),
        abs_eq_self.mpr (le_of_lt (one_div_pos.mpr hp))]
      refine setIntegral_congr_fun measurableSet_Ioi (fun _ hx => ?_)
      rw [← rpow_mul (le_of_lt hx) _ p, one_div_mul_cancel (ne_of_gt hp), rpow_one]
    _ = ∫ (x : ℝ) in Ioi 0, 1 / p * exp (-x) * x ^ (1 / p - 1 + q / p) := by
      simp_rw [smul_eq_mul, mul_assoc]
      refine setIntegral_congr_fun measurableSet_Ioi (fun _ hx => ?_)
      rw [← rpow_mul (le_of_lt hx), div_mul_eq_mul_div, one_mul, rpow_add hx]
      ring_nf
    _ = (1 / p) * Gamma ((q + 1) / p) := by
      rw [Gamma_eq_integral (div_pos (neg_lt_iff_pos_add.mp hq) hp)]
      simp_rw [show 1 / p - 1 + q / p = (q + 1) / p - 1 by field_simp; ring, ← integral_const_mul,
        ← mul_assoc]

theorem integral_rpow_mul_exp_neg_mul_rpow {p q b : ℝ} (hp : 0 < p) (hq : -1 < q) (hb : 0 < b) :
    ∫ x in Ioi (0 : ℝ), x ^ q * exp (- b * x ^ p) =
      b ^ (-(q + 1) / p) * (1 / p) * Gamma ((q + 1) / p) := by
  calc
    _ = ∫ x in Ioi (0 : ℝ), b ^ (-p⁻¹ * q) * ((b ^ p⁻¹ * x) ^ q * rexp (-(b ^ p⁻¹ * x) ^ p)) := by
      refine setIntegral_congr_fun measurableSet_Ioi (fun _ hx => ?_)
      rw [mul_rpow _ (le_of_lt hx), mul_rpow _ (le_of_lt hx), ← rpow_mul, ← rpow_mul,
        inv_mul_cancel₀, rpow_one, mul_assoc, ← mul_assoc, ← rpow_add, neg_mul p⁻¹, neg_add_cancel,
        rpow_zero, one_mul, neg_mul]
      all_goals positivity
    _ = (b ^ p⁻¹)⁻¹ * ∫ x in Ioi (0 : ℝ), b ^ (-p⁻¹ * q) * (x ^ q * rexp (-x ^ p)) := by
      rw [integral_comp_mul_left_Ioi (fun x => b ^ (-p⁻¹ * q) * (x ^ q * exp (- x ^ p))) 0,
        mul_zero, smul_eq_mul]
      all_goals positivity
    _ = b ^ (-(q + 1) / p) * (1 / p) * Gamma ((q + 1) / p) := by
      rw [integral_const_mul, integral_rpow_mul_exp_neg_rpow _ hq, mul_assoc, ← mul_assoc,
        ← rpow_neg_one, ← rpow_mul, ← rpow_add]
      · congr; ring
      all_goals positivity

theorem integral_exp_neg_rpow {p : ℝ} (hp : 0 < p) :
    ∫ x in Ioi (0 : ℝ), exp (- x ^ p) = Gamma (1 / p + 1) := by
  convert (integral_rpow_mul_exp_neg_rpow hp neg_one_lt_zero) using 1
  · simp_rw [rpow_zero, one_mul]
  · rw [zero_add, Gamma_add_one (one_div_ne_zero (ne_of_gt hp))]

theorem integral_exp_neg_mul_rpow {p b : ℝ} (hp : 0 < p) (hb : 0 < b) :
    ∫ x in Ioi (0 : ℝ), exp (- b * x ^ p) = b ^ (- 1 / p) * Gamma (1 / p + 1) := by
  convert (integral_rpow_mul_exp_neg_mul_rpow hp neg_one_lt_zero hb) using 1
  · simp_rw [rpow_zero, one_mul]
  · rw [zero_add, Gamma_add_one (one_div_ne_zero (ne_of_gt hp)), mul_assoc]

end real

section complex

theorem Complex.integral_rpow_mul_exp_neg_rpow {p q : ℝ} (hp : 1 ≤ p) (hq : -2 < q) :
    ∫ x : ℂ, ‖x‖ ^ q * rexp (- ‖x‖ ^ p) = (2 * π / p) * Real.Gamma ((q + 2) / p) := by
  calc
    _ = ∫ x in Ioi (0 : ℝ) ×ˢ Ioo (-π) π, x.1 * (|x.1| ^ q * rexp (-|x.1| ^ p)) := by
      rw [← Complex.integral_comp_polarCoord_symm, polarCoord_target]
      simp_rw [Complex.norm_polarCoord_symm, smul_eq_mul]
    _ = (∫ x in Ioi (0 : ℝ), x * |x| ^ q * rexp (-|x| ^ p)) * ∫ _ in Ioo (-π) π, 1 := by
      rw [← setIntegral_prod_mul, volume_eq_prod]
      simp_rw [mul_one]
      congr! 2; ring
    _ = 2 * π * ∫ x in Ioi (0 : ℝ), x * |x| ^ q * rexp (-|x| ^ p) := by
      simp_rw [integral_const, measureReal_restrict_apply MeasurableSet.univ, Set.univ_inter,
        volume_real_Ioo_of_le (a := -π) (b := π) (by linarith [pi_nonneg]),
        sub_neg_eq_add, ← two_mul, smul_eq_mul, mul_one, mul_comm]
    _ = 2 * π * ∫ x in Ioi (0 : ℝ), x ^ (q + 1) * rexp (-x ^ p) := by
      congr 1
      refine setIntegral_congr_fun measurableSet_Ioi (fun x hx => ?_)
      rw [mem_Ioi] at hx
      rw [abs_eq_self.mpr hx.le, rpow_add hx, rpow_one]
      ring
    _ = (2 * Real.pi / p) * Real.Gamma ((q + 2) / p) := by
      rw [_root_.GRWTSK.Analysis.RealAnalysis.Integration.IntegralRpowMulExpNegRpow.Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.integral_rpow_mul_exp_neg_rpow (by linarith) (by linarith), add_assoc,
        one_add_one_eq_two]
      ring

theorem Complex.integral_rpow_mul_exp_neg_mul_rpow {p q b : ℝ} (hp : 1 ≤ p) (hq : -2 < q)
    (hb : 0 < b) :
    ∫ x : ℂ, ‖x‖ ^ q * rexp (- b * ‖x‖ ^ p) = (2 * π / p) *
      b ^ (-(q + 2) / p) * Real.Gamma ((q + 2) / p) := by
  calc
    _ = ∫ x in Ioi (0 : ℝ) ×ˢ Ioo (-π) π, x.1 * (|x.1| ^ q * rexp (- b * |x.1| ^ p)) := by
      rw [← Complex.integral_comp_polarCoord_symm, polarCoord_target]
      simp_rw [Complex.norm_polarCoord_symm, smul_eq_mul]
    _ = (∫ x in Ioi (0 : ℝ), x * |x| ^ q * rexp (- b * |x| ^ p)) * ∫ _ in Ioo (-π) π, 1 := by
      rw [← setIntegral_prod_mul, volume_eq_prod]
      simp_rw [mul_one]
      congr! 2; ring
    _ = 2 * π * ∫ x in Ioi (0 : ℝ), x * |x| ^ q * rexp (- b * |x| ^ p) := by
      simp_rw [integral_const, measureReal_restrict_apply MeasurableSet.univ, Set.univ_inter,
        volume_real_Ioo_of_le (a := -π) (b := π) (by linarith [pi_nonneg]),
        sub_neg_eq_add, ← two_mul, smul_eq_mul, mul_one, mul_comm]
    _ = 2 * π * ∫ x in Ioi (0 : ℝ), x ^ (q + 1) * rexp (-b * x ^ p) := by
      congr 1
      refine setIntegral_congr_fun measurableSet_Ioi (fun x hx => ?_)
      rw [mem_Ioi] at hx
      rw [abs_eq_self.mpr hx.le, rpow_add hx, rpow_one]
      ring
    _ = (2 * π / p) * b ^ (-(q + 2) / p) * Real.Gamma ((q + 2) / p) := by
      rw [_root_.GRWTSK.Analysis.RealAnalysis.Integration.IntegralRpowMulExpNegRpow.Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.integral_rpow_mul_exp_neg_mul_rpow (by linarith) (by linarith) hb, add_assoc,
        one_add_one_eq_two]
      ring

theorem Complex.integral_exp_neg_rpow {p : ℝ} (hp : 1 ≤ p) :
    ∫ x : ℂ, rexp (- ‖x‖ ^ p) = π * Real.Gamma (2 / p + 1) := by
  convert (integral_rpow_mul_exp_neg_rpow hp (by linarith : (-2 : ℝ) < 0)) using 1
  · simp_rw [rpow_zero, one_mul]
  · rw [zero_add, Real.Gamma_add_one (div_ne_zero two_ne_zero (by linarith))]
    ring

theorem Complex.integral_exp_neg_mul_rpow {p b : ℝ} (hp : 1 ≤ p) (hb : 0 < b) :
    ∫ x : ℂ, rexp (- b * ‖x‖ ^ p) = π * b ^ (-2 / p) * Real.Gamma (2 / p + 1) := by
  convert (integral_rpow_mul_exp_neg_mul_rpow hp (by linarith : (-2 : ℝ) < 0)) hb using 1
  · simp_rw [rpow_zero, one_mul]
  · rw [zero_add, Real.Gamma_add_one (div_ne_zero two_ne_zero (by linarith))]
    ring

end complex
```
