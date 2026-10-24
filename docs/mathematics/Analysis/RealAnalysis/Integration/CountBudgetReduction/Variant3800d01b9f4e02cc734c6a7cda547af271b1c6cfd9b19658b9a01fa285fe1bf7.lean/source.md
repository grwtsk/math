# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CountBudgetReduction.Variant3800d01b9f4e02cc734c6a7cda547af271b1c6cfd9b19658b9a01fa285fe1bf7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc38be2e6cc9ce74bdf022de11f5cecc982d6c03` · SHA-256 `28a0ed9803010e7a93cd99bec914a7cbc03fba36d350d2eab3365bf27b96991f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CountUpperKernel.Variant40dadc8a2ec1a2e2acfc941ad419c8ba0d604c26daa5e66011fc611817d0b07e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40dadc8a2ec1a2e2acfc941ad419c8ba0d604c26daa5e66011fc611817d0b07e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CountUpperKernel.Variant40dadc8a2ec1a2e2acfc941ad419c8ba0d604c26daa5e66011fc611817d0b07e","mathematical_subject":"Analysis.Integration","original_sha256":"40dadc8a2ec1a2e2acfc941ad419c8ba0d604c26daa5e66011fc611817d0b07e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/count-audit/finite-wrapper-independent-review/replica/scratch/common_mean_stieltjes_20261004/CountBudgetReduction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_stieltjes_20261004.ActualStieltjes
import scratch.common_mean_stieltjes_20261004.CountErrorEnvelope

/-!
Exact conditional reduction of the corrected count to the archived sixth-tail
budget. The remaining real-variable moments are explicitly named premises;
the actual count integral and strict Stieltjes convergence are already proved.
Originating direction: grwtsk contributors. Lean assistance: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.CountUpperKernel.Variant40dadc8a2ec1a2e2acfc941ad419c8ba0d604c26daa5e66011fc611817d0b07e

set_option autoImplicit false
set_option maxHeartbeats 1000000
noncomputable section
namespace CommonMeanStieltjes
open MeasureTheory Set CommonMeanScratch

def countUpperKernel (T t : ℝ) : ℝ :=
  zeroCountMain t/t^7 + correctedBellottiWongError T/t^7 +
    ((11200/100000 : ℝ)+(12567/100000 : ℝ)/Real.log T)*Real.log (t/T)/t^7

theorem count_upper_kernel_bound (hBW : CorrectedBellottiWongCount)
    (T t : ℝ) (hT : Real.exp 1 ≤ T) (ht : T ≤ t) :
    actualPositiveZeroCount t/t^7 ≤ countUpperKernel T t := by
  have htp : 0 < t := (Real.exp_pos 1).trans_le (hT.trans ht)
  have he := div_le_div_of_nonneg_right (corrected_count_upper_of_external hBW T t hT ht)
    (pow_nonneg htp.le 7)
  simpa only [countUpperKernel, add_div] using he

theorem count_main_endpoint (T : ℝ) (hT : 0 < T) :
    zeroCountMain T = T/(2*Real.pi)*(Real.log (T/(2*Real.pi))-1) := by
  have he : T/(2*Real.pi*Real.exp 1) = (T/(2*Real.pi))/Real.exp 1 := by ring
  unfold zeroCountMain
  rw [he, Real.log_div (div_ne_zero hT.ne' (by positivity)) (Real.exp_ne_zero 1), Real.log_exp]

theorem corrected_count_budget_of_integral_moments
    (T : ℝ) (hT : Real.exp 1 ≤ T) (hBW : CorrectedBellottiWongCount)
    (hmain : IntegrableOn (fun t : ℝ => zeroCountMain t/t^7) (Ioi T))
    (hmainEval : (∫ t : ℝ in Ioi T, zeroCountMain t/t^7) =
      (1/(2*Real.pi))*((Real.log (T/(2*Real.pi))-1)/(5*T^5)+1/(25*T^5)))
    (hpower : IntegrableOn (fun t : ℝ => 1/t^7) (Ioi T))
    (hpowerEval : (∫ t : ℝ in Ioi T, 1/t^7) = 1/(6*T^6))
    (hlog : IntegrableOn (fun t : ℝ => Real.log (t/T)/t^7) (Ioi T))
    (hlogEval : (∫ t : ℝ in Ioi T, Real.log (t/T)/t^7) = 1/(36*T^6)) :
    -actualPositiveZeroCount T/T^6 +
      6*(∫ t : ℝ in Ioi T, actualPositiveZeroCount t/t^7) ≤
        positiveSixthPowerCountEnvelope T := by
  have hp : 0 < T := (Real.exp_pos 1).trans_le hT
  have hs : 3/2 ≤ T := by linarith [Real.add_one_le_exp (1 : ℝ)]
  let K : ℝ := (11200/100000 : ℝ)+(12567/100000 : ℝ)/Real.log T
  have herror : IntegrableOn (fun t : ℝ => correctedBellottiWongError T*(1/t^7)) (Ioi T) :=
    hpower.const_mul _
  have hlogK : IntegrableOn (fun t : ℝ => K*(Real.log (t/T)/t^7)) (Ioi T) := hlog.const_mul K
  have hsum : IntegrableOn (fun t : ℝ => zeroCountMain t/t^7 +
      correctedBellottiWongError T*(1/t^7)+K*(Real.log (t/T)/t^7)) (Ioi T) :=
    (hmain.add herror).add hlogK
  have hupper : IntegrableOn (countUpperKernel T) (Ioi T) := by
    apply hsum.congr_fun _ measurableSet_Ioi
    intro t _
    dsimp only [countUpperKernel, K]
    ring
  have hupperEval : (∫ t : ℝ in Ioi T, countUpperKernel T t) =
      (1/(2*Real.pi))*((Real.log (T/(2*Real.pi))-1)/(5*T^5)+1/(25*T^5)) +
        correctedBellottiWongError T/(6*T^6)+K/(36*T^6) := by
    have he : (fun t : ℝ => countUpperKernel T t) =
        (fun t : ℝ => zeroCountMain t/t^7+correctedBellottiWongError T*(1/t^7)+
          K*(Real.log (t/T)/t^7)) := by
      funext t
      dsimp only [countUpperKernel, K]
      ring
    rw [he]
    have hadd := integral_add (hmain.add herror) hlogK
    simp only [Pi.add_apply] at hadd
    rw [hadd]
    have hadd' := integral_add hmain herror
    rw [hadd', integral_const_mul, integral_const_mul, hmainEval, hpowerEval, hlogEval]
    ring
  have hi := setIntegral_mono_on (actual_positive_count_seventh_integrable T hs)
    hupper measurableSet_Ioi (fun t ht => count_upper_kernel_bound hBW T t hT ht.le)
  have hend : -actualPositiveZeroCount T/T^6 ≤
      -zeroCountMain T/T^6 + correctedBellottiWongError T/T^6 := by
    have he := div_le_div_of_nonneg_right
      (corrected_count_endpoint_lower_of_external hBW T hT) (pow_nonneg hp.le 6)
    rw [sub_div] at he
    simp only [neg_div]
    linarith
  calc
    -actualPositiveZeroCount T/T^6 + 6*(∫ t : ℝ in Ioi T, actualPositiveZeroCount t/t^7) ≤
        -zeroCountMain T/T^6 + correctedBellottiWongError T/T^6 +
          6*(∫ t : ℝ in Ioi T, countUpperKernel T t) := by linarith
    _ = positiveSixthPowerCountEnvelope T := by
      rw [hupperEval, count_main_endpoint T hp]
      unfold positiveSixthPowerCountEnvelope K
      field_simp
      ring

end CommonMeanStieltjes
```
