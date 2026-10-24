-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ForwardHalfKernel.Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ForwardHalfKernel.Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531","mathematical_subject":"Analysis.Integration","original_sha256":"be9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle6/continuous-half/actual-residual-energy-v6-source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import FormalResearch.RiemannHypothesis.SourceCausalEnergy
import Mathlib.MeasureTheory.Integral.Prod

/-! # Scratch: actual continuous-half source transport -/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ForwardHalfKernel.Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531

namespace FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy

open MeasureTheory Set Function
open SourcePairing SourceCausalEnergy SourceFirstPrimeAbel SourceMangoldtAbel
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

/-- Only a nonzero first source factor requires replacing the shifted finite interval by a tail. -/
theorem forwardHalfKernel_interval_eq_tail_pairing {A : ℝ} (hA : 0 < A) (x : ℝ) :
    (∫ t in 0..2*A, forwardHalfKernel A (t,x)) =
      normalizedTest explicitSecondDerivative A x * (Real.exp (x/2) *
        ∫ u in Ici x, Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u) := by
  by_cases hx : normalizedTest explicitSecondDerivative A x = 0
  · simp [forwardHalfKernel, hx]
  have hxx : |x| < A := by
    by_contra h
    exact hx (normalizedTest_zero_of_le_abs A x hA (le_of_not_gt h))
  have hcut : (∫ u in Ici x, Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u) =
      ∫ u in Ioc x (x+2*A), Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u := by
    rw [integral_Ici_eq_integral_Ioi]
    apply setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
      (fun _ hu ↦ hu.1)
    intro u hu
    have hup : x + 2*A < u := lt_of_not_ge (fun hh ↦ hu.2 ⟨hu.1, hh⟩)
    have hux := (abs_lt.mp hxx).1
    rw [normalizedTest_zero_of_le_abs A u hA
      ((show A ≤ u by linarith).trans (le_abs_self u)), mul_zero]
  have hfactor : (fun t : ℝ ↦ forwardHalfKernel A (t,x)) =
      fun t : ℝ ↦ (normalizedTest explicitSecondDerivative A x * Real.exp (x/2)) *
        (Real.exp (-(x+t)/2) * normalizedTest explicitSecondDerivative A (x+t)) := by
    funext t
    have he : Real.exp (-t/2) = Real.exp (x/2) * Real.exp (-(x+t)/2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    dsimp only [forwardHalfKernel]
    rw [he]
    ring
  rw [hfactor, intervalIntegral.integral_const_mul]
  have htranslate := intervalIntegral.integral_comp_add_left
    (fun u : ℝ ↦ Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u) x
    (a := (0 : ℝ)) (b := 2*A)
  rw [htranslate, add_zero, intervalIntegral.integral_of_le (by linarith : x ≤ x+2*A), ← hcut]
  ring

/-- Exact double-integral factorization of the actual negative half moment. -/
theorem negativeSmoothMoment_eq_tail_pairing {A : ℝ} (hA : 0 < A) :
    negativeSmoothMoment A = ∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
      (Real.exp (x/2) * ∫ u in Ici x, Real.exp (-u/2) *
        normalizedTest explicitSecondDerivative A u) := by
  rw [negativeSmoothMoment_eq_forward_integral hA]
  apply integral_congr_ae
  filter_upwards [] with x
  exact forwardHalfKernel_interval_eq_tail_pairing hA x

/-- The original negative half moment is the positive causal source energy. -/
theorem negativeSmoothMoment_eq_half_causal_energy {A : ℝ} (hA : 0 < A) :
    negativeSmoothMoment A = (1/2) * ∫ x : ℝ, causalSourceTail A x ^ 2 := by
  rw [negativeSmoothMoment_eq_tail_pairing hA]
  exact source_mul_causalSourceTail_integral hA

/-- Exact literal normalization of the negative half moment at every positive scale. -/
theorem negativeSmoothMoment_eq_normalized_energy {A : ℝ} (hA : 0 < A) :
    negativeSmoothMoment A =
      (131072/45045 : ℝ)/(2*A^2*sourceNormalization A) +
        (65536/109395 : ℝ)/(8*sourceNormalization A) := by
  rw [negativeSmoothMoment_eq_half_causal_energy hA, causalSourceTail_square_integral hA]
  ring

/-- Exact rational evaluation of the continuous half, without arithmetic assumptions. -/
theorem negativeSmoothMoment_eq_rational {A : ℝ} (hA : 0 < A) :
    negativeSmoothMoment A =
      (14*A^4+272*A^2)/(7*A^4+272*A^2+7344) := by
  rw [negativeSmoothMoment_eq_normalized_energy hA]
  unfold sourceNormalization
  field_simp
  ring

/-- The critical continuous half uses the existing pole cancellation at its recorded scope. -/
theorem criticalContinuousMoment_eq_neg_half_causal_energy {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A = -(1/2) * ∫ x : ℝ, causalSourceTail A x ^ 2 := by
  rw [criticalContinuousMoment_eq_neg_negative A hA,
    negativeSmoothMoment_eq_half_causal_energy (by linarith : 0 < A)]
  ring

/-- Source normalization leaves a literal nonzero negative continuous half. -/
theorem criticalContinuousMoment_eq_rational {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A =
      -(14*A^4+272*A^2)/(7*A^4+272*A^2+7344) := by
  rw [criticalContinuousMoment_eq_neg_negative A hA,
    negativeSmoothMoment_eq_rational (by linarith : 0 < A)]
  ring

/-- The full weighted moment's zero does not imply that either half moment is zero. -/
theorem negativeSmoothMoment_pos {A : ℝ} (hA : 0 < A) :
    0 < negativeSmoothMoment A := by
  rw [negativeSmoothMoment_eq_rational hA]
  positivity

/-- The continuous-half contribution is strictly negative on the original radius domain. -/
theorem criticalContinuousMoment_lt_zero {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A < 0 := by
  rw [criticalContinuousMoment_eq_neg_negative A hA]
  exact neg_neg_of_pos (negativeSmoothMoment_pos (by linarith : 0 < A))

/-- A hostile endpoint to discarding the below-axis continuous contribution. -/
theorem criticalContinuousMoment_ne_zero {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A ≠ 0 := ne_of_lt (criticalContinuousMoment_lt_zero hA)

/-- The continuous term has an exact finite budget; this is not the signed work budget. -/
theorem criticalContinuousMoment_strict_bounds {A : ℝ} (hA : 1 ≤ A) :
    -2 < criticalContinuousMoment A ∧ criticalContinuousMoment A < 0 := by
  refine ⟨?_, criticalContinuousMoment_lt_zero hA⟩
  rw [criticalContinuousMoment_eq_rational hA]
  have hd : 0 < 7*A^4+272*A^2+7344 := by positivity
  apply (lt_div_iff₀ hd).mpr
  nlinarith [sq_nonneg A]

/-- The actual residual retains the entire signed Mangoldt work after source-energy evaluation. -/
theorem mertensResidual_eq_neg_causal_energy_sub_work {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = -(1/2) * (∫ x : ℝ, causalSourceTail A x ^ 2) -
      criticalMangoldtWork A := by
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA,
    criticalContinuousMoment_eq_neg_half_causal_energy hA]

/-- A completely explicit source term accompanies the unchanged arithmetic interaction. -/
theorem mertensResidual_eq_rational_sub_work {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = -(14*A^4+272*A^2)/(7*A^4+272*A^2+7344) -
      criticalMangoldtWork A := by
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA,
    criticalContinuousMoment_eq_rational hA]

/-- The strict source sign improves a conditional bound but supplies no work witness. -/
theorem mertensResidual_lt_neg_work {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A < -criticalMangoldtWork A := by
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA]
  linarith [criticalContinuousMoment_lt_zero hA]

/-- A genuine work lower witness would pass to the original residual with the same constant.
The premise remains the exact open arithmetic theorem. -/
theorem residual_tail_of_Mangoldt_work_tail
    (h : MangoldtWorkTailLowerBound) : MertensResidualTailUpperBound := by
  rcases h with ⟨C, hC, R, hR, hwork⟩
  refine ⟨C, hC, R, hR, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  exact (mertensResidual_lt_neg_work hA).le.trans (by linarith [hwork A hRA])

end

end FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
