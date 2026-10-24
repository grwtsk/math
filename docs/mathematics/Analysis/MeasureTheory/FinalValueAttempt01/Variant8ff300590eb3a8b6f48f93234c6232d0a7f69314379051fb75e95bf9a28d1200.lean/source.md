# Complete source: GRWTSK.Analysis.MeasureTheory.FinalValueAttempt01.Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3360930523e6eef0dc7059ab3874a22534b2e8c` · SHA-256 `7a81f461dd79c96e56519f559af066af8debd97c12c4ae7e91f032b2025040f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.LaplaceRescale.Variantaed81108d6ab49f08ee42abec2574250df40a43e60a33b90c56dd82ab775a8e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aed81108d6ab49f08ee42abec2574250df40a43e60a33b90c56dd82ab775a8e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.LaplaceRescale.Variantaed81108d6ab49f08ee42abec2574250df40a43e60a33b90c56dd82ab775a8e2","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"aed81108d6ab49f08ee42abec2574250df40a43e60a33b90c56dd82ab775a8e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass26/centering/FinalValue-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic

/-! A genuine one-sided Abelian final-value lemma. No unweighted L1 premise
is supplied for the bounded input. Direction grwtsk contributors;
focused research proof OpenAI Codex. -/

namespace GRWTSK.Analysis.MeasureTheory.LaplaceRescale.Variantaed81108d6ab49f08ee42abec2574250df40a43e60a33b90c56dd82ab775a8e2

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.FinalValue
open MeasureTheory Set Filter
open scoped Topology

theorem laplace_rescale (r : ℝ → ℝ) {s : ℝ} (hs : 0 < s) :
    s * (∫ t in Ioi (0 : ℝ), Real.exp (-s*t) * r t) =
      ∫ u in Ioi (0 : ℝ), Real.exp (-u) * r (u/s) := by
  have h := integral_comp_mul_left_Ioi
    (fun t : ℝ => Real.exp (-s*t) * r t) 0 (inv_pos.mpr hs)
  simp only [mul_zero, inv_inv, smul_eq_mul] at h
  rw [← h]
  congr 1
  funext u
  congr 2
  · congr 1
    field_simp
  · rw [div_eq_mul_inv, mul_comm]

theorem bounded_final_value {r : ℝ → ℝ} {C L : ℝ}
    (hr : Measurable r) (hC : 0 ≤ C)
    (hb : ∀ t : ℝ, 0 ≤ t → |r t| ≤ C)
    (ht : Tendsto r atTop (𝓝 L)) :
    Tendsto (fun s : ℝ => s * (∫ t in Ioi (0 : ℝ), Real.exp (-s*t) * r t))
      (𝓝[>] (0 : ℝ)) (𝓝 L) := by
  have hlim : Tendsto (fun s : ℝ =>
      ∫ u in Ioi (0 : ℝ), Real.exp (-u) * r (u/s))
      (𝓝[>] (0 : ℝ))
      (𝓝 (∫ u in Ioi (0 : ℝ), Real.exp (-u) * L)) := by
    apply tendsto_integral_filter_of_dominated_convergence
      (μ := volume.restrict (Ioi (0 : ℝ)))
      (F := fun s u : ℝ => Real.exp (-u) * r (u/s))
      (f := fun u : ℝ => Real.exp (-u) * L)
      (fun u : ℝ => Real.exp (-u) * C)
    · exact Filter.Eventually.of_forall fun s =>
        ((Real.measurable_exp.comp measurable_neg).mul
          (hr.comp (measurable_id.div_const s))).aestronglyMeasurable
    · filter_upwards [self_mem_nhdsWithin] with s hs
      exact ae_restrict_of_forall_mem measurableSet_Ioi fun u hu => by
        rw [norm_mul, Real.norm_eq_abs, Real.norm_eq_abs,
          abs_of_pos (Real.exp_pos _)]
        exact mul_le_mul_of_nonneg_left (hb (u/s) (div_nonneg hu.le hs.le))
          (Real.exp_pos _).le
    · have hi := (integrableOn_exp_mul_Ioi (a := (-1 : ℝ)) (by norm_num) 0).mul_const C
      simpa only [neg_one_mul] using hi
    · exact ae_restrict_of_forall_mem measurableSet_Ioi fun u hu => by
        have huTop : Tendsto (fun s : ℝ => u/s) (𝓝[>] (0 : ℝ)) atTop := by
          simpa only [div_eq_mul_inv] using
            (tendsto_const_mul_atTop_iff_pos tendsto_inv_nhdsGT_zero).mpr hu
        exact tendsto_const_nhds.mul (ht.comp huTop)
  have hunit : (∫ u in Ioi (0 : ℝ), Real.exp (-u) * L) = L := by
    rw [integral_mul_const]
    have he := integral_exp_mul_Ioi (a := (-1 : ℝ)) (by norm_num) 0
    norm_num at he
    simpa only [neg_one_mul, he, one_mul]
  rw [hunit] at hlim
  apply hlim.congr'
  filter_upwards [self_mem_nhdsWithin] with s hs
  exact (laplace_rescale r hs).symm

end ContinuousResearch.FinalValue

#check ContinuousResearch.FinalValue.laplace_rescale
#print ContinuousResearch.FinalValue.laplace_rescale
#print axioms ContinuousResearch.FinalValue.laplace_rescale
#check ContinuousResearch.FinalValue.bounded_final_value
#print ContinuousResearch.FinalValue.bounded_final_value
#print axioms ContinuousResearch.FinalValue.bounded_final_value
```
