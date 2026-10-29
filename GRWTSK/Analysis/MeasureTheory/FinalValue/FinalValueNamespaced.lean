-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.LaplaceRescale.Variant74040010b66e1876ba7d883032e9a4691e49e4f6a264b6ec70b45acc69ebc865","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74040010b66e1876ba7d883032e9a4691e49e4f6a264b6ec70b45acc69ebc865","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.LaplaceRescale.Variant74040010b66e1876ba7d883032e9a4691e49e4f6a264b6ec70b45acc69ebc865","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"74040010b66e1876ba7d883032e9a4691e49e4f6a264b6ec70b45acc69ebc865","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass26/centering/FinalValue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic

/-! A genuine one-sided Abelian final-value lemma. No unweighted L1 premise
is supplied for the bounded input. Direction grwtsk contributors;
focused research proof OpenAI Codex. -/

namespace GRWTSK.Analysis.MeasureTheory.LaplaceRescale.Variant74040010b66e1876ba7d883032e9a4691e49e4f6a264b6ec70b45acc69ebc865

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
  · field_simp
  · rw [div_eq_mul_inv, mul_comm]

theorem bounded_final_value {r : ℝ → ℝ} {C L : ℝ}
    (hr : Measurable r)
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
    have he' : (∫ u in Ioi (0 : ℝ), Real.exp (-u)) = 1 := by
      simpa only [neg_one_mul, mul_zero, Real.exp_zero, neg_div, div_neg,
        div_one, neg_neg] using he
    rw [he', one_mul]
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
