-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualCriticalRelativeAbsLePntBudget.Variant91420702b19866f2d81a3f815a75c2ffe7e3a37f4780a75b46f68adc0f73511b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91420702b19866f2d81a3f815a75c2ffe7e3a37f4780a75b46f68adc0f73511b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualCriticalRelativeAbsLePntBudget.Variant91420702b19866f2d81a3f815a75c2ffe7e3a37f4780a75b46f68adc0f73511b","mathematical_subject":"Analysis.Integration","original_sha256":"91420702b19866f2d81a3f815a75c2ffe7e3a37f4780a75b46f68adc0f73511b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T172033Z-1791307233899293000/ActualCriticalPntConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCriticalPntBudget

/-!
An actual-source quantitative consumer for an explicitly supplied PNT envelope.
The input is about the independently specified actual Chebyshev relative error.
The resulting absolute budget is proved growing, so no uniform arithmetic
witness is inferred. AI attribution: OpenAI Codex independent research.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualCriticalRelativeAbsLePntBudget.Variant91420702b19866f2d81a3f815a75c2ffe7e3a37f4780a75b46f68adc0f73511b

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation
open OmegaResearch.CriticalRelativePairing

noncomputable section

/-- Explicit actual PNT control gives this genuine, quantitatively growing absolute budget. -/
theorem actual_criticalRelative_abs_le_pnt_budget (A c M : ℝ) (hA : 4 ≤ A)
    (hc : 0 ≤ c) (_hM : 0 ≤ M)
    (herr : ∀ t : ℝ, 0 < t → |relativePsiError t| ≤ M * Real.exp (-c * Real.sqrt t)) :
    |criticalRelativePairing A| ≤ M * actualCriticalPntAbsoluteBudget A c := by
  have hAi : 1 ≤ A := by linarith
  have hi := criticalKernel_integrable (A := A) hAi
  have hg := (actualCriticalPntAbsoluteIntegrand_integrable A c hA hc).const_mul M
  change |∫ t in Ioi (0 : ℝ), criticalKernel A t| ≤ _
  calc
    _ ≤ ∫ t in Ioi (0 : ℝ), |criticalKernel A t| := abs_integral_le_integral_abs
    _ ≤ ∫ t in Ioi (0 : ℝ), M * actualCriticalPntAbsoluteIntegrand A c t := by
      apply integral_mono_ae hi.abs hg
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      have he : |criticalKernel A t| = |relativePsiError t| * |baselineLogKernel A t| := by
        unfold criticalKernel baselineLogKernel
        rw [abs_mul, abs_mul, abs_mul, abs_of_pos (Real.exp_pos _)]
        ring
      rw [he, actualCriticalPntAbsoluteIntegrand]
      have hb := mul_le_mul_of_nonneg_right (herr t ht) (abs_nonneg (baselineLogKernel A t))
      simpa only [mul_assoc] using hb
    _ = _ := by rw [integral_const_mul, actualCriticalPntAbsoluteBudget]

end
end RH16IndependentChallengeNext
