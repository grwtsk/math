# Complete source: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrabilityAttempt04.Variant18a5d557cb37ae8b7fb7b90eae042ffa9eb30ea6e7d7c322a17e802cc661d3ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9b7fbf2c7cdec6da9cc7836ac87719d040e5503` · SHA-256 `37b0c84a563474bd80401354c639d15a624f418e5f159ca490ef11d285cb41ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MangoldtLogPrefixMeasurable.Variant2382a1a49bbc9e29ac3ffacb2f54ec77522974b8b0839bf36124d0439fcf4286","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2382a1a49bbc9e29ac3ffacb2f54ec77522974b8b0839bf36124d0439fcf4286","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MangoldtLogPrefixMeasurable.Variant2382a1a49bbc9e29ac3ffacb2f54ec77522974b8b0839bf36124d0439fcf4286","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"2382a1a49bbc9e29ac3ffacb2f54ec77522974b8b0839bf36124d0439fcf4286","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass22/arithmetic_laurent/MangoldtLaplaceIntegrability-attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.MeasureTheory.Function.Floor
import Mathlib.MeasureTheory.Integral.ExpDecay
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral

/-! Genuine Laplace integrability of the actual closed Mangoldt discrepancy.
The actual source is closed-floor weightedMangoldt minus t, plus Euler gamma.
Research direction grwtsk contributors; focused scratch construction OpenAI Codex.
No Ramaré/PNT, unweighted L1, intercept identity or signed source witness. -/

namespace GRWTSK.Analysis.MeasureTheory.MangoldtLogPrefixMeasurable.Variant2382a1a49bbc9e29ac3ffacb2f54ec77522974b8b0839bf36124d0439fcf4286

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.MangoldtLaplaceIntegrability
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-- Actual closed-floor prefix is measurable, including every touching atom. -/
theorem mangoldtLogPrefix_measurable : Measurable mangoldtLogPrefix := by
  exact measurable_from_nat.comp (Real.measurable_exp.nat_floor)

/-- Actual error E_Lambda=A_Lambda-t is measurable on the whole real line. -/
theorem mangoldtLogError_measurable : Measurable mangoldtLogError :=
  mangoldtLogPrefix_measurable.sub measurable_id

/-- The centered actual Mertens error keeps the independent Euler constant. -/
theorem centeredMangoldtError_measurable :
    Measurable (fun t : ℝ => mangoldtLogError t+Real.eulerMascheroniConstant) :=
  mangoldtLogError_measurable.add_const _

/-- This is the actual elementary prefix bound; no decay premise is supplied. -/
theorem centeredMangoldtError_bound {t : ℝ} (ht : 0 ≤ t) :
    |mangoldtLogError t+Real.eulerMascheroniConstant| ≤
      Real.log 4+4+Real.log 2+|Real.eulerMascheroniConstant| := by
  exact (abs_add_le _ _).trans (add_le_add (mangoldtLogError_abs_le t ht) le_rfl)

/-- Genuine complex Laplace integrability for every fixed parameter in Re z>0. -/
theorem centeredMangoldtError_laplace_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => Complex.exp (-z*(t:ℂ))*
      ((mangoldtLogError t+Real.eulerMascheroniConstant : ℝ):ℂ)) (Ioi 0) := by
  let B : ℝ := Real.log 4+4+Real.log 2+|Real.eulerMascheroniConstant|
  have hB : 0 ≤ B := by
    dsimp [B]
    have h4 := Real.log_nonneg (by norm_num : (1:ℝ)≤4)
    have h2 := Real.log_nonneg (by norm_num : (1:ℝ)≤2)
    positivity
  have hex : Measurable (fun t : ℝ => Complex.exp (-z*(t:ℂ))) := by fun_prop
  have hr : Measurable (fun t : ℝ =>
      ((mangoldtLogError t+Real.eulerMascheroniConstant : ℝ):ℂ)) :=
    Complex.continuous_ofReal.measurable.comp centeredMangoldtError_measurable
  refine ((exp_neg_integrableOn_Ioi 0 hz).mul_const B).mono'
    (hex.mul hr).aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [norm_mul,Complex.norm_exp]
  simp only [Complex.mul_re,Complex.neg_re,Complex.ofReal_re,Complex.ofReal_im,
    mul_zero,sub_zero,Complex.norm_real,Real.norm_eq_abs]
  exact mul_le_mul_of_nonneg_left (centeredMangoldtError_bound ht.le) (Real.exp_pos _).le

/-- Uncentered actual error is also integrable against the same genuine weight. -/
theorem mangoldtLogError_laplace_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => Complex.exp (-z*(t:ℂ))*(mangoldtLogError t:ℂ))
      (Ioi 0) := by
  have h := (centeredMangoldtError_laplace_integrable hz).sub
    ((integrableOn_exp_mul_complex_Ioi (a:=-z) (by simpa using hz) 0).mul_const
      (Real.eulerMascheroniConstant:ℂ))
  convert! h using 1
  funext t
  simp only [Pi.sub_apply,Complex.ofReal_add,mul_add,add_sub_cancel_right]


/-- Genuine integrability of the retained continuous linear compensation. -/
theorem linear_exponential_integrable {a : ℝ} (ha : 0 < a) :
    IntegrableOn (fun t : ℝ => t*Real.exp (-a*t)) (Ioi 0) := by
  simpa only [Real.rpow_one] using
    (integrableOn_rpow_mul_exp_neg_mul_rpow (p:=(1:ℝ)) (s:=(1:ℝ))
      (by norm_num) (by norm_num) ha)

/-- The literal t compensation is integrable with every actual complex Laplace weight. -/
theorem linear_complex_laplace_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => Complex.exp (-z*(t:ℂ))*(t:ℂ)) (Ioi 0) := by
  refine (integrable_norm_iff (show AEStronglyMeasurable
    (fun t : ℝ => Complex.exp (-z*(t:ℂ))*(t:ℂ)) (volume.restrict (Ioi 0)) from
      (show Continuous (fun t : ℝ => Complex.exp (-z*(t:ℂ))*(t:ℂ)) by fun_prop).aestronglyMeasurable)).mp ?_
  refine (linear_exponential_integrable hz).congr_fun ?_ measurableSet_Ioi
  intro t ht
  simp only [norm_mul,Complex.norm_exp,Complex.mul_re,Complex.neg_re,
    Complex.ofReal_re,Complex.ofReal_im,mul_zero,sub_zero,Complex.norm_real,Real.norm_eq_abs]
  rw [abs_of_pos ht]
  ring

/-- The actual closed prefix itself is genuinely Laplace integrable; not a residual definition. -/
theorem mangoldtLogPrefix_laplace_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => Complex.exp (-z*(t:ℂ))*(mangoldtLogPrefix t:ℂ))
      (Ioi 0) := by
  have h := (mangoldtLogError_laplace_integrable hz).add (linear_complex_laplace_integrable hz)
  convert! h using 1
  funext t
  simp only [Pi.add_apply,mangoldtLogError,Complex.ofReal_sub,mul_sub]
  ring

/-- Below the first atom, including every negative t, the correction is gamma-t. -/
theorem centeredMangoldtError_below_first_atom {t : ℝ} (ht : t < Real.log 2) :
    mangoldtLogError t+Real.eulerMascheroniConstant = Real.eulerMascheroniConstant-t := by
  rw [mangoldtLogError_below_first_atom ht]
  ring

end ContinuousResearch.MangoldtLaplaceIntegrability
```
