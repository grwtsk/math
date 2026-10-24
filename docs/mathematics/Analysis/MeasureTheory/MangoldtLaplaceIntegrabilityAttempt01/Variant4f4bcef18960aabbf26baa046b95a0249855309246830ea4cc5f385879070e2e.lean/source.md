# Complete source: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrabilityAttempt01.Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c356eaa8bd4875677e759ea87f98fe172483a5f` · SHA-256 `39b49897dc73836965e64f06fb084ddac076cc8d10fb3d467abbd7dc1ff9e3c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MangoldtLogPrefixMeasurable.Variant354b4044c190fa1f17e9e97609dcf3d60c44c4dc9fd70fbe9c7e56de8c454d88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"354b4044c190fa1f17e9e97609dcf3d60c44c4dc9fd70fbe9c7e56de8c454d88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MangoldtLogPrefixMeasurable.Variant354b4044c190fa1f17e9e97609dcf3d60c44c4dc9fd70fbe9c7e56de8c454d88","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"354b4044c190fa1f17e9e97609dcf3d60c44c4dc9fd70fbe9c7e56de8c454d88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass22/arithmetic_laurent/MangoldtLaplaceIntegrability-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.MeasureTheory.Function.Floor
import Mathlib.MeasureTheory.Integral.ExpDecay
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-! Genuine Laplace integrability of the actual closed Mangoldt discrepancy.
The actual source is closed-floor weightedMangoldt minus t, plus Euler gamma.
Research direction grwtsk contributors; focused scratch construction OpenAI Codex.
No Ramaré/PNT, unweighted L1, intercept identity or signed source witness. -/

namespace GRWTSK.Analysis.MeasureTheory.MangoldtLogPrefixMeasurable.Variant354b4044c190fa1f17e9e97609dcf3d60c44c4dc9fd70fbe9c7e56de8c454d88

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
  exact (abs_add_le _ _).trans (add_le_add_right (mangoldtLogError_abs_le t ht) _)

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
  simp only [Complex.ofReal_add,mul_add,add_sub_cancel_right]

/-- Below the first atom, including every negative t, the correction is gamma-t. -/
theorem centeredMangoldtError_below_first_atom {t : ℝ} (ht : t < Real.log 2) :
    mangoldtLogError t+Real.eulerMascheroniConstant = Real.eulerMascheroniConstant-t := by
  rw [mangoldtLogError_below_first_atom ht]
  ring

end ContinuousResearch.MangoldtLaplaceIntegrability
```
