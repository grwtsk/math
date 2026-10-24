# Complete source: GRWTSK.Analysis.ComplexAnalysis.FiveModeCountConstants.Variantba1d004a6c2390aca9fbb457c8f6cd904f7d0d4450c2b1b0d21d2e39dfe9a393

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e4fe8f5cb4b9443c5a8347b619cbe06712c298f` · SHA-256 `145c7628e2a4f0aefb778d6e494236af07122427874d365df70fd4362aef6a6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.CutoffLogLtTwentyNine.Variantaef6b81c369b1543f4589f0a18a7761b5af1beb7d03212a1f00d4929970a426e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aef6b81c369b1543f4589f0a18a7761b5af1beb7d03212a1f00d4929970a426e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.CutoffLogLtTwentyNine.Variantaef6b81c369b1543f4589f0a18a7761b5af1beb7d03212a1f00d4929970a426e","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"aef6b81c369b1543f4589f0a18a7761b5af1beb7d03212a1f00d4929970a426e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeCountConstants.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeFiniteTailBudget
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
Kernel-checked real logarithmic/rational constants in the finite counting
envelope. This does not instantiate the corrected counting theorem or prove
the strict Stieltjes adapter for actual multiplicity occurrences.
Originating direction: grwtsk contributors. Lean assistance: OpenAI Codex.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.CutoffLogLtTwentyNine.Variantaef6b81c369b1543f4589f0a18a7761b5af1beb7d03212a1f00d4929970a426e

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch

theorem cutoff_log_lt_twenty_nine : Real.log (3000000000000 : ℝ) < 29 := by
  apply (Real.log_lt_iff_lt_exp (by norm_num)).2
  have h : (27/10 : ℝ)^29 < Real.exp (29 : ℝ) := by
    rw [show (29 : ℝ) = (29 : ℕ)*1 by norm_num, Real.exp_nat_mul]
    have he : (27/10 : ℝ) < Real.exp 1 := by linarith [Real.exp_one_gt_d9]
    exact pow_lt_pow_left₀ he (by norm_num) (by norm_num)
  have hrat : (3000000000000 : ℝ) < (27/10 : ℝ)^29 := by norm_num
  exact hrat.trans h

theorem cutoff_log_gt_one : (1 : ℝ) < Real.log 3000000000000 := by
  apply (Real.lt_log_iff_exp_lt (by norm_num)).2
  linarith [Real.exp_one_lt_three]

theorem cutoff_loglog_lt_four : Real.log (Real.log (3000000000000 : ℝ)) < 4 := by
  apply (Real.log_lt_iff_lt_exp (by linarith [cutoff_log_gt_one])).2
  have h : (27/10 : ℝ)^4 < Real.exp (4 : ℝ) := by
    rw [show (4 : ℝ) = (4 : ℕ)*1 by norm_num, Real.exp_nat_mul]
    have he : (27/10 : ℝ) < Real.exp 1 := by linarith [Real.exp_one_gt_d9]
    exact pow_lt_pow_left₀ he (by norm_num) (by norm_num)
  have hrat : (29 : ℝ) < (27/10 : ℝ)^4 := by norm_num
  exact cutoff_log_lt_twenty_nine.trans (hrat.trans h)

theorem corrected_error_cutoff_lt_eight :
    correctedBellottiWongError (3000000000000 : ℝ) < 8 := by
  unfold correctedBellottiWongError
  nlinarith [cutoff_log_lt_twenty_nine, cutoff_loglog_lt_four]

theorem count_envelope_cutoff_le_rational_cap :
    positiveSixthPowerCountEnvelope 3000000000000 ≤ rationalCountCap := by
  have hT : (0 : ℝ) < 3000000000000 := by norm_num
  have hp : (6 : ℝ) < 2*Real.pi := by linarith [Real.pi_gt_three]
  have hp0 : (0 : ℝ) < 2*Real.pi := by positivity
  have hratio : (1 : ℝ) < (3000000000000 : ℝ)/(2*Real.pi) := by
    apply (lt_div_iff₀ hp0).2
    linarith [Real.pi_lt_four]
  have hlogpos : (0 : ℝ) ≤ Real.log ((3000000000000 : ℝ)/(2*Real.pi)) :=
    Real.log_nonneg hratio.le
  have hlog : Real.log ((3000000000000 : ℝ)/(2*Real.pi)) < 29 := by
    have hd : (3000000000000 : ℝ)/(2*Real.pi) ≤ 3000000000000 := by
      apply (div_le_iff₀ hp0).2
      nlinarith
    exact (Real.log_le_log (by positivity) hd).trans_lt cutoff_log_lt_twenty_nine
  have hmain : (Real.log ((3000000000000 : ℝ)/(2*Real.pi))/5+1/25)/(2*Real.pi) ≤
      (146/150 : ℝ) := by
    have hnum : Real.log ((3000000000000 : ℝ)/(2*Real.pi))/5+1/25 ≤ (146/25 : ℝ) := by linarith
    calc
      _ ≤ (146/25 : ℝ)/(2*Real.pi) := div_le_div_of_nonneg_right hnum hp0.le
      _ ≤ (146/25 : ℝ)/6 := by gcongr
      _ = _ := by norm_num
  have herr : 2*correctedBellottiWongError (3000000000000 : ℝ) +
      (11200/100000 : ℝ)/6+(12567/100000 : ℝ)/(6*Real.log 3000000000000) ≤ 17 := by
    have hb : (12567/100000 : ℝ)/(6*Real.log 3000000000000) ≤ (12567/100000 : ℝ)/6 := by
      gcongr
      linarith [cutoff_log_gt_one]
    linarith [corrected_error_cutoff_lt_eight]
  unfold positiveSixthPowerCountEnvelope rationalCountCap
  calc
    _ = (1/(3000000000000 : ℝ)^5)*
      ((Real.log ((3000000000000 : ℝ)/(2*Real.pi))/5+1/25)/(2*Real.pi)) +
      (1/(3000000000000 : ℝ)^6)*
      (2*correctedBellottiWongError 3000000000000+(11200/100000 : ℝ)/6+
        (12567/100000 : ℝ)/(6*Real.log 3000000000000)) := by ring
    _ ≤ (1/(3000000000000 : ℝ)^5)*(146/150) +
      (1/(3000000000000 : ℝ)^6)*17 := by gcongr
    _ = _ := by ring

end CommonMeanScratch
```
