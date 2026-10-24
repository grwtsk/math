-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StronglyMeasurableThetaTailScratch.Variantf215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.StronglyMeasurableThetaTailScratch.Variantf215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/f2/f215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05--TailMeasurableScratch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaKernel
import Mathlib.MeasureTheory.Integral.Prod


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StronglyMeasurableThetaTailScratch.Variantf215e599128ac299c5fa4298f7a0dfd24efb201abe0411ad0c8cb2f63f6edf05

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set
noncomputable section

theorem stronglyMeasurable_thetaTail_scratch (q : ℕ) : StronglyMeasurable (thetaTail q) := by
  cases q with
  | zero => exact continuous_thetaPhi.stronglyMeasurable
  | succ q =>
    let F : ℝ × ℝ → ℝ := fun p =>
      thetaPhi p.2 * (p.2 - p.1) ^ q / (q.factorial : ℝ)
    have hF : StronglyMeasurable F :=
      (((continuous_thetaPhi.comp continuous_snd).mul
        ((continuous_snd.sub continuous_fst).pow q)).div_const _).stronglyMeasurable
    have hS : MeasurableSet {p : ℝ × ℝ | p.1 ≤ p.2} :=
      measurableSet_le measurable_fst measurable_snd
    have hi := (hF.indicator hS).integral_prod_right' (ν := volume)
    have he (t : ℝ) :
        (fun u => ({p : ℝ × ℝ | p.1 ≤ p.2}.indicator F) (t, u)) =
          (Ici t).indicator (fun u => thetaPhi u * (u - t) ^ q / (q.factorial : ℝ)) := rfl
    simpa only [he, integral_indicator measurableSet_Ici, thetaTail] using hi

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
