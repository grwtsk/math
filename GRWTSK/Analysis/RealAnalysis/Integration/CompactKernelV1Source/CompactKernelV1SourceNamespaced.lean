-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ForwardHalfKernel.Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ForwardHalfKernel.Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2","mathematical_subject":"Analysis.Integration","original_sha256":"a29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle6/continuous-half/compact-kernel-v1-source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
import Mathlib.MeasureTheory.Integral.Prod

/-! # Scratch: actual continuous-half source transport -/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ForwardHalfKernel.Varianta29e5251b2de04b44a9184fd0a78e284198977e26974632cd3c301fb54e186b2

namespace FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy

open MeasureTheory Set Function
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

noncomputable section

/-- Compact two-variable kernel of the literal negative half moment. -/
def forwardHalfKernel (A : ℝ) (p : ℝ × ℝ) : ℝ :=
  Real.exp (-p.1 / 2) * normalizedTest explicitSecondDerivative A p.2 *
    normalizedTest explicitSecondDerivative A (p.2 + p.1)

/-- Continuity uses the actual zero-extended source. -/
theorem forwardHalfKernel_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (forwardHalfKernel A) := by
  unfold forwardHalfKernel
  have hc := (normalizedTest_contDiff A hA).continuous
  exact ((Real.continuous_exp.comp (continuous_fst.neg.div_const 2)).mul
    (hc.comp continuous_snd)).mul (hc.comp (continuous_snd.add continuous_fst))

/-- Its compact rectangle follows from both source factors, including the moving seam. -/
theorem forwardHalfKernel_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (forwardHalfKernel A) := by
  refine exists_compact_iff_hasCompactSupport.mp
    ⟨(Icc (-(2 * A)) (2 * A)) ×ˢ (Icc (-A) A), isCompact_Icc.prod isCompact_Icc, ?_⟩
  rintro ⟨t,x⟩ hp
  dsimp only [forwardHalfKernel]
  by_cases hx : A ≤ |x|
  · rw [normalizedTest_zero_of_le_abs A x hA hx]
    ring
  · have hx' : x ∈ Icc (-A) A := abs_le.mp (le_of_lt (lt_of_not_ge hx))
    have ht : t ∉ Icc (-(2 * A)) (2 * A) := fun ht ↦ hp ⟨ht, hx'⟩
    have hxt : A ≤ |x + t| := by
      have hbounds := abs_le.mp (le_of_lt (lt_of_not_ge hx))
      simp only [mem_Icc, not_and_or, not_le] at ht
      rcases ht with ht | ht
      · rw [abs_of_nonpos (by linarith : x + t ≤ 0)]
        linarith
      · exact (show A ≤ x + t by linarith).trans (le_abs_self _)
    rw [normalizedTest_zero_of_le_abs A (x + t) hA hxt]
    ring

/-- Every Fubini premise is an actual integrability theorem. -/
theorem forwardHalfKernel_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (forwardHalfKernel A) (volume.prod volume) :=
  (forwardHalfKernel_continuous hA).integrable_of_hasCompactSupport
    (forwardHalfKernel_hasCompactSupport hA)

/-- Freeze the plus-shift convention using the proved even autocorrelation. -/
theorem sourceCorrelation_eq_plus_shift (A t : ℝ) :
    sourceCorrelation explicitSecondDerivative A t =
      ∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x + t) := by
  simpa only [sourceCorrelation, sub_neg_eq_add] using
    (sourceCorrelation_even A t).symm

/-- The whole negative half interval is swapped without absolute arithmetic estimates. -/
theorem negativeSmoothMoment_eq_forward_integral {A : ℝ} (hA : 0 < A) :
    negativeSmoothMoment A = ∫ x : ℝ, ∫ t in 0..2*A, forwardHalfKernel A (t,x) := by
  unfold negativeSmoothMoment
  simp_rw [sourceCorrelation_eq_plus_shift, ← integral_const_mul]
  have hi : Integrable (Function.uncurry (fun t x : ℝ ↦ forwardHalfKernel A (t,x)))
      ((volume.restrict (uIoc 0 (2*A))).prod volume) := by
    exact (forwardHalfKernel_integrable hA).mono_measure
      (Measure.prod_mono Measure.restrict_le_self le_rfl)
  simpa only [forwardHalfKernel, Function.uncurry, mul_assoc] using
    intervalIntegral_integral_swap hi

end FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
