# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PrimeFilterContractionGuard.Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d304043ce381f5d4de0e1e13501bc5b7ab79a84f` · SHA-256 `593b4adfb45100e2ead7e1c328ea8b6f900d16269a6c8d294e935d163ddf67c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Frequency.Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Frequency.Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168","mathematical_subject":"Analysis.Calculus","original_sha256":"480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/PrimeFilterContractionGuard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Analysis.Real.Pi.Bounds


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Frequency.Variant480b2a3abc8f55767a872bb6002b4f79dbe5a5700d7917392900fecd6d16a168

set_option autoImplicit false

namespace PrimeFilterContractionGuardScratch

noncomputable section

def frequency : ℝ := Real.pi / Real.log 2

def oscillatoryRemainder (q : ℝ) : ℝ :=
  Real.cos (frequency * Real.log q) / Real.sqrt q

theorem frequency_pos : 0 < frequency :=
  div_pos Real.pi_pos (Real.log_pos (by norm_num))

theorem remainder_abs_le (q : ℝ) (hq : 0 < q) :
    |oscillatoryRemainder q| ≤ 1 / Real.sqrt q := by
  rw [oscillatoryRemainder, abs_div, abs_of_pos (Real.sqrt_pos.mpr hq)]
  exact div_le_div_of_nonneg_right (Real.abs_cos_le_one _) (Real.sqrt_nonneg _)

theorem remainder_hasDerivAt (q : ℝ) (hq : 0 < q) :
    HasDerivAt oscillatoryRemainder
      ((-frequency * Real.sin (frequency * Real.log q) -
        Real.cos (frequency * Real.log q) / 2) / (q * Real.sqrt q)) q := by
  have hs : Real.sqrt q ≠ 0 := (Real.sqrt_pos.mpr hq).ne'
  have hd := ((((hasDerivAt_id q).log hq.ne').const_mul frequency).cos).div
    ((hasDerivAt_id q).sqrt hq.ne') hs
  apply hd.congr_deriv
  dsimp only [id_eq]
  field_simp [hq.ne', hs]
  rw [Real.sq_sqrt hq.le]
  ring

theorem remainder_derivative_abs_le (q : ℝ) (hq : 0 < q) :
    |deriv oscillatoryRemainder q| ≤
      (frequency + 1 / 2) / (q * Real.sqrt q) := by
  rw [(remainder_hasDerivAt q hq).deriv, abs_div,
    abs_of_pos (mul_pos hq (Real.sqrt_pos.mpr hq))]
  apply div_le_div_of_nonneg_right _ (by positivity)
  calc
    _ ≤ |-frequency * Real.sin (frequency * Real.log q)| +
        |Real.cos (frequency * Real.log q) / 2| := abs_sub _ _
    _ = frequency * |Real.sin (frequency * Real.log q)| +
        |Real.cos (frequency * Real.log q)| / 2 := by
      rw [abs_mul, abs_neg, abs_of_pos frequency_pos, abs_div,
        abs_of_pos (show (0 : ℝ) < 2 by norm_num)]
    _ ≤ frequency * 1 + 1 / 2 :=
      add_le_add (mul_le_mul_of_nonneg_left (Real.abs_sin_le_one _) frequency_pos.le)
        (div_le_div_of_nonneg_right (Real.abs_cos_le_one _) (by norm_num))
    _ = _ := by ring

theorem derivative_coefficient_le : frequency + 1 / 2 ≤ 28 := by
  have hl : (1 / 2 : ℝ) ≤ Real.log 2 := by
    have h := Real.one_sub_inv_le_log_of_pos (show (0 : ℝ) < 2 by norm_num)
    norm_num at h ⊢
    exact h
  have hfreq : frequency < 8 := by
    unfold frequency
    apply (div_lt_iff₀ (Real.log_pos (by norm_num : (1 : ℝ) < 2))).mpr
    nlinarith [Real.pi_lt_four]
  linarith

theorem remainder_derivative_abs_le_twenty_eight (q : ℝ) (hq : 0 < q) :
    |deriv oscillatoryRemainder q| ≤ 28 / (q * Real.sqrt q) :=
  (remainder_derivative_abs_le q hq).trans
    (div_le_div_of_nonneg_right derivative_coefficient_le (by positivity))

theorem value_one : oscillatoryRemainder 1 = 1 := by
  simp [oscillatoryRemainder]

theorem value_two : oscillatoryRemainder 2 = -1 / Real.sqrt 2 := by
  have hlog : Real.log 2 ≠ 0 := (Real.log_pos (by norm_num : (1 : ℝ) < 2)).ne'
  simp [oscillatoryRemainder, frequency, hlog]

theorem prime_two_filter_value :
    oscillatoryRemainder 1 - 2 * oscillatoryRemainder 2 = 1 + Real.sqrt 2 := by
  rw [value_one, value_two]
  have hs : Real.sqrt 2 ≠ 0 := (Real.sqrt_pos.mpr (by norm_num : (0 : ℝ) < 2)).ne'
  field_simp
  nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)]

theorem prime_two_filter_not_contractive :
    ¬ |oscillatoryRemainder 1 - 2 * oscillatoryRemainder 2| ≤ 1 := by
  rw [prime_two_filter_value, abs_of_pos (by positivity)]
  have hs : 0 < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  linarith

theorem decay_exponents_do_not_force_contraction :
    ∃ E : ℝ → ℝ,
      (∀ q : ℝ, 0 < q → DifferentiableAt ℝ E q) ∧
      (∀ q : ℝ, 0 < q → |E q| ≤ 1 / Real.sqrt q) ∧
      (∀ q : ℝ, 0 < q → |deriv E q| ≤ 28 / (q * Real.sqrt q)) ∧
      ¬ |E 1 - 2 * E 2| ≤ 1 :=
  ⟨oscillatoryRemainder, fun q hq ↦ (remainder_hasDerivAt q hq).differentiableAt,
    remainder_abs_le, remainder_derivative_abs_le_twenty_eight,
    prime_two_filter_not_contractive⟩

end
end PrimeFilterContractionGuardScratch
```
