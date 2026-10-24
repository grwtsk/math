# Complete source: GRWTSK.Analysis.SpecialFunctions.CountErrorEnvelope.Variant9eb83002966c147889095473d0d922dc8a91dd9ff8641979c6ed7f94d3624109

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b4165b2d578e4c845e68b3be5d9b46cc8efc9d4` · SHA-256 `edfa66b3022f98405218a850d9885566219a2ff93b135f3abb652c6512734d44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.LoglogTangentUpper.Variant163f91c5d73a59f9d771ec38f6e638b2f3218d5f57edf26f50e2b5ab5bee6add","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"163f91c5d73a59f9d771ec38f6e638b2f3218d5f57edf26f50e2b5ab5bee6add","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.LoglogTangentUpper.Variant163f91c5d73a59f9d771ec38f6e638b2f3218d5f57edf26f50e2b5ab5bee6add","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"163f91c5d73a59f9d771ec38f6e638b2f3218d5f57edf26f50e2b5ab5bee6add","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/count-audit/finite-wrapper-independent-review/replica/scratch/common_mean_stieltjes_20261004/CountErrorEnvelope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeZeroTailInputs
import Mathlib.Analysis.SpecialFunctions.Log.Monotone

/-!
First quantitative calculus step for the literal corrected count error. The
count theorem itself remains a named external premise. The log-log term uses
its tangent bound, retaining both rational coefficients and the endpoint.
This does not assert the remaining improper-integral budget or an arithmetic
witness. Originating direction: grwtsk contributors. Lean assistance: Codex.
-/

namespace GRWTSK.Analysis.SpecialFunctions.LoglogTangentUpper.Variant163f91c5d73a59f9d771ec38f6e638b2f3218d5f57edf26f50e2b5ab5bee6add

set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open CommonMeanScratch

theorem loglog_tangent_upper (T t : ℝ) (hT : 1 < T) (ht : T ≤ t) :
    Real.log (Real.log t) ≤ Real.log (Real.log T) +
      (Real.log t - Real.log T)/Real.log T := by
  have hTp : 0 < T := by linarith
  have htp : 0 < t := hTp.trans_le ht
  have hLT : 0 < Real.log T := Real.log_pos hT
  have hLt : 0 < Real.log t := hLT.trans_le (Real.log_le_log hTp ht)
  have he := Real.log_le_sub_one_of_pos (div_pos hLt hLT)
  rw [Real.log_div hLt.ne' hLT.ne'] at he
  have hd : (Real.log t - Real.log T)/Real.log T =
      Real.log t/Real.log T - 1 := by
    field_simp
  rw [hd]
  linarith

theorem corrected_count_error_tangent_upper (T t : ℝ) (hT : 1 < T) (ht : T ≤ t) :
    correctedBellottiWongError t ≤ correctedBellottiWongError T +
      ((11200/100000 : ℝ) + (12567/100000 : ℝ)/Real.log T) * Real.log (t/T) := by
  have hTp : 0 < T := by linarith
  have htp : 0 < t := hTp.trans_le ht
  have he := mul_le_mul_of_nonneg_left (loglog_tangent_upper T t hT ht)
    (by norm_num : (0 : ℝ) ≤ 12567/100000)
  calc
    correctedBellottiWongError t ≤
        (11200/100000 : ℝ)*Real.log t +
          (12567/100000 : ℝ)*(Real.log (Real.log T) +
            (Real.log t-Real.log T)/Real.log T) + (377417/100000 : ℝ) := by
      unfold correctedBellottiWongError
      linarith
    _ = correctedBellottiWongError T +
        ((11200/100000 : ℝ)+(12567/100000 : ℝ)/Real.log T)*Real.log (t/T) := by
      rw [Real.log_div htp.ne' hTp.ne']
      unfold correctedBellottiWongError
      ring

theorem corrected_count_upper_of_external (hBW : CorrectedBellottiWongCount)
    (T t : ℝ) (hT : Real.exp 1 ≤ T) (ht : T ≤ t) :
    actualPositiveZeroCount t ≤ zeroCountMain t + correctedBellottiWongError T +
      ((11200/100000 : ℝ) + (12567/100000 : ℝ)/Real.log T)*Real.log (t/T) := by
  have h1 : 1 < T := (Real.one_lt_exp_iff.mpr (by norm_num : (0 : ℝ) < 1)).trans_le hT
  have hc := (le_abs_self (actualPositiveZeroCount t-zeroCountMain t)).trans (hBW t (hT.trans ht))
  have he := corrected_count_error_tangent_upper T t h1 ht
  linarith

theorem corrected_count_endpoint_lower_of_external (hBW : CorrectedBellottiWongCount)
    (T : ℝ) (hT : Real.exp 1 ≤ T) :
    zeroCountMain T - correctedBellottiWongError T ≤ actualPositiveZeroCount T := by
  have hc := (neg_abs_le (actualPositiveZeroCount T-zeroCountMain T)).trans' (neg_le_neg (hBW T hT))
  linarith

end CommonMeanStieltjes
```
