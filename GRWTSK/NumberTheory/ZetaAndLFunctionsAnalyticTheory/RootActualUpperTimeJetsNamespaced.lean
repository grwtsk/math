-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceJetZeroRight.Variant613e4915801a20a6dd91dde1d048e397a9e3165819b0f1054b50e26467d0e0f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"613e4915801a20a6dd91dde1d048e397a9e3165819b0f1054b50e26467d0e0f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceJetZeroRight.Variant613e4915801a20a6dd91dde1d048e397a9e3165819b0f1054b50e26467d0e0f8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"613e4915801a20a6dd91dde1d048e397a9e3165819b0f1054b50e26467d0e0f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/613e4915801a20a6dd91-RootActualUpperTimeJets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointWorkSupport
import RootActualCovariantWorkKernel

/-!
The true upper TIME boundary is beyond the closed correlation support for
every strict positive column. This does not concern the upper column corner
at lower time, which can remain inside support. No lower trace is discarded.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceJetZeroRight.Variant613e4915801a20a6dd91dde1d048e397a9e3165819b0f1054b50e26467d0e0f8

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualUpperTimeJets
open Set SourcePairing SourceJointWorkSupport SourceActualDoubleMixedKernel
open SourceActualCovariantKernel RootActualCovariantWorkKernel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateSourceMobiusKernel
noncomputable section

private theorem source_jet_zero_right (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    ∀ z : ℝ, 2 * A ≤ z → iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) z = 0 := by
  induction n with
  | zero =>
    intro z hz
    simp only [iteratedDeriv_zero]
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A z (by linarith)
      (hz.trans (le_abs_self z))
  | succ n ih =>
    intro z hz
    have hh : ∀ y ∈ Ici z,
        iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) y = 0 :=
      fun y hy => ih y (hz.trans hy)
    have hd : HasDerivWithinAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
        0 (Ici z) z :=
      (hasDerivWithinAt_const z (Ici z) (0 : ℝ)).congr
        (fun y hy => hh y hy) (hh z self_mem_Ici)
    simpa only [iteratedDeriv_succ] using hd.deriv_eq_zero (uniqueDiffWithinAt_Ici z)

/-- The actual closed upper-time source boundary kills every needed jet through order four. -/
theorem actualUpperTimeJet_zero (A : ℝ) (hA : 1 ≤ A) (n : Fin 5) (s : ℝ)
    (hs : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s) :
    iteratedDeriv (n : ℕ) (sourceCorrelation explicitSecondDerivative A)
      (Real.log (sourceKernelCutoff A : ℝ) + s) = 0 := by
  have hb := actualJointSupportUpper_le_log_sourceCutoff A hA
  unfold actualJointSupportUpper at hb
  exact source_jet_zero_right A hA n _ (by linarith)

/-- The actual original mixed density has a zero upper-time trace. -/
theorem actualMixedDensity_upperTime_zero (A : ℝ) (hA : 1 ≤ A) (s : ℝ)
    (hs : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s) :
    actualLogMixedDensity A (Real.log (sourceKernelCutoff A : ℝ)) s = 0 := by
  have h0 := actualUpperTimeJet_zero A hA ⟨0, by norm_num⟩ s hs
  have h2 := actualUpperTimeJet_zero A hA ⟨2, by norm_num⟩ s hs
  simp only [iteratedDeriv_zero] at h0
  simp only [actualLogMixedDensity, h0, h2, sub_zero, zero_div, mul_zero]

/-- The twisted time-work trace vanishes at that upper-time boundary, not at lower columns. -/
theorem actualTwistedTimeWork_upperTime_zero (A : ℝ) (hA : 1 ≤ A) (s : ℝ)
    (hs : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s) :
    Real.exp (Real.log (sourceKernelCutoff A : ℝ) / 2) * Real.exp (-s / 2) *
      (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A)
        (Real.log (sourceKernelCutoff A : ℝ) + s) -
          iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A)
            (Real.log (sourceKernelCutoff A : ℝ) + s) / 4) = 0 := by
  have h1 := actualUpperTimeJet_zero A hA ⟨1, by norm_num⟩ s hs
  have h3 := actualUpperTimeJet_zero A hA ⟨3, by norm_num⟩ s hs
  simp only [h1, h3, zero_div, sub_zero, mul_zero]

/-- The exact original-work post-adjoint kernel also vanishes at upper time. -/
theorem actualCovariantWork_upperTime_zero (A : ℝ) (hA : 1 ≤ A) (s : ℝ)
    (hs : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s) :
    covariantMixedDerivative (actualLogMixedDensity A)
      (Real.log (sourceKernelCutoff A : ℝ)) s = 0 := by
  rw [actual_covariant_ordinary_work_kernel A (by linarith) _ _]
  have h2 := actualUpperTimeJet_zero A hA ⟨2, by norm_num⟩ s hs
  have h4 := actualUpperTimeJet_zero A hA ⟨4, by norm_num⟩ s hs
  simp only [h2, h4, zero_div, sub_zero, mul_zero]

end
end FormalResearch.RiemannHypothesis.RootActualUpperTimeJets
