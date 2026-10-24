-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiSummable.Variant39e17685d7e661f3d45473338318d3d0f0e93d804af4e711f57bc39bcbf2e195","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39e17685d7e661f3d45473338318d3d0f0e93d804af4e711f57bc39bcbf2e195","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiSummable.Variant39e17685d7e661f3d45473338318d3d0f0e93d804af4e711f57bc39bcbf2e195","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"39e17685d7e661f3d45473338318d3d0f0e93d804af4e711f57bc39bcbf2e195","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/39/39e17685d7e661f3d45473338318d3d0f0e93d804af4e711f57bc39bcbf2e195--AnalyticScratch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPositiveLift
import Mathlib.Analysis.Real.Pi.Bounds


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiSummable.Variant39e17685d7e661f3d45473338318d3d0f0e93d804af4e711f57bc39bcbf2e195

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section

theorem thetaPhi_summable (t : ℝ) : Summable (fun m : ℕ => thetaPhiTerm m t) := by
  have h4 := (HurwitzKernelBounds.summable_f_nat 4 1 (Real.exp_pos (4 * t))).mul_left
    (2 * Real.pi ^ 2 * Real.exp (5 * t) * Real.exp (4 * t))
  have h2 := (HurwitzKernelBounds.summable_f_nat 2 1 (Real.exp_pos (4 * t))).mul_left
    (3 * Real.pi * Real.exp (5 * t))
  refine (h4.sub h2).congr ?_
  intro n
  simp only [thetaPhiTerm, HurwitzKernelBounds.f_nat, Nat.cast_add, Nat.cast_one]
  ring

theorem thetaPhiTerm_positive (m : ℕ) {t : ℝ} (ht : 0 ≤ t) : 0 < thetaPhiTerm m t := by
  have hn : (1 : ℝ) ≤ (m + 1 : ℕ) := by exact_mod_cast Nat.succ_le_succ (Nat.zero_le m)
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  have hn2 : 1 ≤ ((m + 1 : ℕ) : ℝ) ^ 2 := one_le_pow₀ hn
  have hne : 1 ≤ ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (4 * t) := by nlinarith [mul_nonneg (sub_nonneg.mpr hn2) (sub_nonneg.mpr he)]
  have hp : 3 < 2 * Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (4 * t) := by
    nlinarith [Real.pi_gt_three, mul_le_mul_of_nonneg_left hne (le_of_lt Real.pi_pos)]
  unfold thetaPhiTerm
  exact mul_pos (mul_pos (mul_pos (mul_pos Real.pi_pos (by positivity))
    (Real.exp_pos _)) (sub_pos.mpr hp)) (Real.exp_pos _)

/-- Every nonnegative coordinate has a strictly positive convergent theta sum. -/
theorem thetaPhi_positive : ThetaPhiPositive := by
  intro t ht
  exact (thetaPhi_summable t).tsum_pos
    (fun m => (thetaPhiTerm_positive m ht).le) 0 (thetaPhiTerm_positive 0 ht)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
