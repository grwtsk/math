# Complete source: GRWTSK.Topology.GeneralTopology.SourceRemainderLaplaceAttempt02.Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d693c720d14961f3be99641dd221d0d6398ffff` · SHA-256 `8e113320cb1d714b58411a25649f5542e760d7efa0f223dcff5585230a3951b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualRemainder.Variantf7ed6cffbf35acd2b3a89aad76e096a12fa471b33104216b06f56ad31266f959","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7ed6cffbf35acd2b3a89aad76e096a12fa471b33104216b06f56ad31266f959","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualRemainder.Variantf7ed6cffbf35acd2b3a89aad76e096a12fa471b33104216b06f56ad31266f959","mathematical_subject":"Topology.GeneralTopology","original_sha256":"f7ed6cffbf35acd2b3a89aad76e096a12fa471b33104216b06f56ad31266f959","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass22/laplace_limit/SourceRemainderLaplace-attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-! Right-boundary Laplace limit for the independently defined actual weighted
Mangoldt remainder. Its genuine unweighted L1 hypothesis remains explicit.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex. -/

namespace GRWTSK.Topology.GeneralTopology.ActualRemainder.Variantf7ed6cffbf35acd2b3a89aad76e096a12fa471b33104216b06f56ad31266f959

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
```
