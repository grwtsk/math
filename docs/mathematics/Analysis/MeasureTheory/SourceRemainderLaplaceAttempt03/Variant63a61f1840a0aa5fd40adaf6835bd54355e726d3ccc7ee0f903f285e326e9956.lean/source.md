# Complete source: GRWTSK.Analysis.MeasureTheory.SourceRemainderLaplaceAttempt03.Variant63a61f1840a0aa5fd40adaf6835bd54355e726d3ccc7ee0f903f285e326e9956

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0177d5fb2d9e0d559f1946324da70a32ecc92e13` · SHA-256 `281fe4a27d7f17fa27e01a2e7bacc30306b13b382ec34983044824eca900bd0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ActualRemainder.Variante3c88f5529a36e6a23dae0faad8e1a4a44a3360cfed8e1acf67293cea13a0da3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3c88f5529a36e6a23dae0faad8e1a4a44a3360cfed8e1acf67293cea13a0da3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualRemainder.Variante3c88f5529a36e6a23dae0faad8e1a4a44a3360cfed8e1acf67293cea13a0da3","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e3c88f5529a36e6a23dae0faad8e1a4a44a3360cfed8e1acf67293cea13a0da3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass22/laplace_limit/SourceRemainderLaplace-attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-! Right-boundary Laplace limit for the independently defined actual weighted
Mangoldt remainder. Its genuine unweighted L1 hypothesis remains explicit.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex. -/

namespace GRWTSK.Analysis.MeasureTheory.ActualRemainder.Variante3c88f5529a36e6a23dae0faad8e1a4a44a3360cfed8e1acf67293cea13a0da3

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SourceRemainderLaplace
open MeasureTheory Set Filter Topology
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel

def actualRemainder (t : ℝ) : ℝ :=
  mangoldtLogError t + Real.eulerMascheroniConstant

def actualLaplace (s : ℝ) : ℝ :=
  ∫ t in Ioi (0 : ℝ), Real.exp (-s*t) * actualRemainder t

theorem laplaceWeight_abs_le_one {s t : ℝ} (hs : 0 ≤ s) (ht : 0 ≤ t) :
    |Real.exp (-s*t)| ≤ 1 := by
  rw [abs_of_pos (Real.exp_pos _)]
  apply Real.exp_le_one_iff.mpr
  nlinarith [mul_nonneg hs ht]

theorem actual_weighted_remainder_integrable
    (hI : IntegrableOn actualRemainder (Ioi (0 : ℝ))) {s : ℝ} (hs : 0 ≤ s) :
    IntegrableOn (fun t => Real.exp (-s*t) * actualRemainder t) (Ioi (0 : ℝ)) := by
  exact hI.bdd_mul
    ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).aestronglyMeasurable)
    (ae_restrict_of_forall_mem measurableSet_Ioi fun t ht => by
      simpa only [Real.norm_eq_abs] using laplaceWeight_abs_le_one hs ht.le)

theorem actual_laplace_tendsto_right
    (hI : IntegrableOn actualRemainder (Ioi (0 : ℝ))) :
    Tendsto actualLaplace (𝓝[>] (0 : ℝ))
      (𝓝 (∫ t in Ioi (0 : ℝ), actualRemainder t)) := by
  apply tendsto_integral_filter_of_dominated_convergence
    (μ := volume.restrict (Ioi (0 : ℝ)))
    (F := fun s t : ℝ => Real.exp (-s*t) * actualRemainder t)
    (f := actualRemainder) (fun t => ‖actualRemainder t‖)
  · filter_upwards [self_mem_nhdsWithin] with s hs
    exact (actual_weighted_remainder_integrable hI hs.le).aestronglyMeasurable
  · filter_upwards [self_mem_nhdsWithin] with s hs
    exact ae_restrict_of_forall_mem measurableSet_Ioi fun t ht => by
      rw [norm_mul, Real.norm_eq_abs]
      exact mul_le_of_le_one_left (norm_nonneg _) (laplaceWeight_abs_le_one hs.le ht.le)
  · exact hI.norm
  · exact ae_of_all _ fun t => by
      have hc : Continuous (fun s : ℝ => Real.exp (-s*t) * actualRemainder t) := by
        fun_prop
      simpa only [neg_zero,zero_mul,Real.exp_zero,one_mul] using
        (hc.continuousAt (x := (0 : ℝ))).tendsto.mono_left nhdsWithin_le_nhds

end ContinuousResearch.SourceRemainderLaplace

/- Exact public type, full proof and trusted dependency audits. -/

#check ContinuousResearch.SourceRemainderLaplace.actualRemainder
#print ContinuousResearch.SourceRemainderLaplace.actualRemainder
#print axioms ContinuousResearch.SourceRemainderLaplace.actualRemainder

#check ContinuousResearch.SourceRemainderLaplace.actualLaplace
#print ContinuousResearch.SourceRemainderLaplace.actualLaplace
#print axioms ContinuousResearch.SourceRemainderLaplace.actualLaplace

#check ContinuousResearch.SourceRemainderLaplace.laplaceWeight_abs_le_one
#print ContinuousResearch.SourceRemainderLaplace.laplaceWeight_abs_le_one
#print axioms ContinuousResearch.SourceRemainderLaplace.laplaceWeight_abs_le_one

#check ContinuousResearch.SourceRemainderLaplace.actual_weighted_remainder_integrable
#print ContinuousResearch.SourceRemainderLaplace.actual_weighted_remainder_integrable
#print axioms ContinuousResearch.SourceRemainderLaplace.actual_weighted_remainder_integrable

#check ContinuousResearch.SourceRemainderLaplace.actual_laplace_tendsto_right
#print ContinuousResearch.SourceRemainderLaplace.actual_laplace_tendsto_right
#print axioms ContinuousResearch.SourceRemainderLaplace.actual_laplace_tendsto_right
```
