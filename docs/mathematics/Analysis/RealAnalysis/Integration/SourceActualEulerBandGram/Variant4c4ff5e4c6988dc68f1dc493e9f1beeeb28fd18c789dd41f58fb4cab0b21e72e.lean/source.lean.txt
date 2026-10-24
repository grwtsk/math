-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SpectrumNeg.Variantfc319f5235009f2ea1fcc0a7a5d9c1d95200479b980f1ce126428678f5463e52","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc319f5235009f2ea1fcc0a7a5d9c1d95200479b980f1ce126428678f5463e52","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SpectrumNeg.Variantfc319f5235009f2ea1fcc0a7a5d9c1d95200479b980f1ce126428678f5463e52","mathematical_subject":"Analysis.Integration","original_sha256":"fc319f5235009f2ea1fcc0a7a5d9c1d95200479b980f1ce126428678f5463e52","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/source-readbacks/owner-ignored-latest-20261007T154040Z/preserved/scratch/rh16-continuation-20261006-challenge-next/SourceActualEulerBandGram-AuthorNative02/SourceActualEulerBandGram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualTiltBandProjection
import SourceActualEulerCentralFrequency

/-!
The literal closed actual Euler head is a reflected physical band pairing.
Fourier orientation, ordinary complex squares, all prime-power coefficients,
and the complete unnormalized state norm are retained. The resulting storage
identity does not assert a signed arithmetic cap or positivity of reflection.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.SpectrumNeg.Variantfc319f5235009f2ea1fcc0a7a5d9c1d95200479b980f1ce126428678f5463e52

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualEulerBandGram
open MeasureTheory Set Filter Complex FourierTransform
open scoped FourierTransform ComplexConjugate ComplexInnerProductSpace InnerProductSpace BigOperators
open SourceReflectionDuality SourceActualTiltEnergy SourceActualTiltL2State
open SourceActualTiltFourierDictionary SourceActualTiltBandProjection
open SourceActualComplexEndpointAsymptotic SourceActualEulerSupportHead
open SourceActualEulerCentralFrequency SourceActualInitialPrimeContour
open SourceActualPrimeBumpDictionary SourceBumpLaplace SourcePairing
open SourceActualRightBumpTail

private theorem spectrum_neg (A ξ : ℝ) :
    actualTiltStandardSpectrum A (-ξ) = conj (actualTiltStandardSpectrum A ξ) := by
  have he : (1 : ℂ) - ((2 * Real.pi * (-ξ) : ℝ) : ℂ) * I =
      conj (1 - ((2 * Real.pi * ξ : ℝ) : ℂ) * I) := by
    simp only [map_sub, map_one, map_mul, Complex.conj_ofReal, Complex.conj_I]
    push_cast
    ring
  unfold actualTiltStandardSpectrum
  rw [he, actualSourceComplexTransform, actualSourceComplexTransform,
    ← intervalIntegral.intervalIntegral_conj]
  apply intervalIntegral.integral_congr
  intro x _
  simp only [map_mul, ← Complex.exp_conj, Complex.conj_ofReal]

private theorem band_neg_mem (T ξ : ℝ) :
    -ξ ∈ actualStandardBand T ↔ ξ ∈ actualStandardBand T := by
  unfold actualStandardBand
  simp only [mem_Icc, neg_div]
  constructor <;> intro h <;> constructor <;> linarith [h.1, h.2]

private theorem phase_eq (u ξ : ℝ) :
    translationPhase u ξ = Complex.exp (-((2 * Real.pi * ξ : ℝ) : ℂ) *
      (u : ℂ) * I) := by
  unfold translationPhase
  rw [Real.fourierChar_apply]
  congr 1
  push_cast
  ring

private theorem spectrum_neg_sq {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    actualTiltStandardSpectrum A (-ξ) ^ 2 =
      actualInitialPrimeMellin A ((3 / 2 : ℂ) +
        ((2 * Real.pi * ξ : ℝ) : ℂ) * I) := by
  rw [actualTiltStandardSpectrum_sq_eq_weight hA]
  simp only [mul_neg, Complex.ofReal_neg, neg_mul, sub_neg_eq_add]
  exact (actualInitialPrimeMellin_eq_bumpMellinWeight hA _).symm

private theorem pairing_integral {A : ℝ} (hA : 1 ≤ A) (T u : ℝ) :
    ⟪actualTiltBandState A T, translation u (reflection (actualTiltBandState A T))⟫_ℂ =
      ∫ ξ in actualStandardBand T,
        translationPhase u ξ * actualTiltStandardSpectrum A (-ξ) ^ 2 := by
  rw [← (Lp.fourierTransformₗᵢ ℝ ℂ).inner_map_map
    (actualTiltBandState A T) (translation u (reflection (actualTiltBandState A T)))]
  rw [fourier_translation, fourier_reflection, actualTiltBandState_fourier_eq, L2.inner_def,
    ← integral_indicator (show MeasurableSet (actualStandardBand T) from measurableSet_Icc)]
  apply integral_congr_ae
  filter_upwards [actualTiltBandSpectrum_coe_ae hA T,
    (LinearIsometryEquiv.neg ℝ (E := ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (actualTiltBandSpectrum_coe_ae hA T),
    translationPhaseMultiplier_coe_ae u (reflection (actualTiltBandSpectrum A T)),
    reflection_coe_ae (actualTiltBandSpectrum A T)] with ξ hcut hcutneg hphase hreflect
  change actualTiltBandSpectrum A T (-ξ) =
    (actualStandardBand T).indicator (actualTiltStandardSpectrum A) (-ξ) at hcutneg
  rw [hcut, hphase, hreflect, hcutneg]
  by_cases hξ : ξ ∈ actualStandardBand T
  · have hn := (band_neg_mem T ξ).mpr hξ
    simp only [indicator_of_mem hξ, indicator_of_mem hn, RCLike.inner_apply']
    rw [← spectrum_neg A ξ]
    ring
  · simp only [indicator_of_notMem hξ, inner_zero_left]

/-- The actual reflected band atom has the exact angular Mellin phase and 2 pi factor. -/
theorem actualTiltBand_reflected_pairing_eq_angular {A T : ℝ}
    (hA : 1 ≤ A) (hT : 0 ≤ T) (u : ℝ) :
    ⟪actualTiltBandState A T, translation u (reflection (actualTiltBandState A T))⟫_ℂ =
      (1 / (2 * Real.pi) : ℂ) * ∫ t in -T..T,
        actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
          Complex.exp (-(t : ℂ) * (u : ℂ) * I) := by
  rw [pairing_integral hA T u]
  unfold actualStandardBand
  rw [integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (show -T / (2 * Real.pi) ≤ T / (2 * Real.pi) by
      apply div_le_div_of_nonneg_right (by linarith) (by positivity))]
  simp_rw [phase_eq, spectrum_neg_sq hA]
  have hid : (fun ξ : ℝ =>
      Complex.exp (-((2 * Real.pi * ξ : ℝ) : ℂ) * (u : ℂ) * I) *
        actualInitialPrimeMellin A ((3 / 2 : ℂ) +
          ((2 * Real.pi * ξ : ℝ) : ℂ) * I)) =
      (fun ξ : ℝ => (fun t : ℝ =>
        actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
          Complex.exp (-(t : ℂ) * (u : ℂ) * I)) (2 * Real.pi * ξ)) := by
    funext ξ
    ring
  rw [hid, intervalIntegral.integral_comp_mul_left _
    (show (2 * Real.pi : ℝ) ≠ 0 by positivity)]
  have ha : 2 * Real.pi * (-T / (2 * Real.pi)) = -T := by field_simp
  have hb : 2 * Real.pi * (T / (2 * Real.pi)) = T := by field_simp
  rw [ha, hb]
  simp only [Complex.real_smul, Complex.ofReal_inv, one_div]

private theorem spectrum_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (actualTiltStandardSpectrum A) := by
  have hh : Continuous (𝓕 (fun x => (actualUnitTilt A x : ℂ))) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ).continuous₂ (actualUnitTilt_complex_integrable hA)
  have he : 𝓕 (fun x => (actualUnitTilt A x : ℂ)) = actualTiltStandardSpectrum A :=
    funext (actualUnitTilt_fourier_eq hA)
  rwa [he] at hh

private theorem mellin_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (fun t : ℝ => actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I)) := by
  have hc := (spectrum_continuous hA).comp
    (show Continuous (fun t : ℝ => -t / (2 * Real.pi)) by fun_prop)
  have he : (fun t : ℝ => actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I)) =
      (fun t : ℝ => actualTiltStandardSpectrum A (-t / (2 * Real.pi)) ^ 2) := by
    funext t
    have hh := spectrum_neg_sq hA (t / (2 * Real.pi))
    have hmul : 2 * Real.pi * (t / (2 * Real.pi)) = t := by field_simp
    simpa only [neg_div, hmul] using hh.symm
  rw [he]
  exact hc.pow 2

private theorem term_phase (n : ℕ) (t : ℝ) (hn : n ≠ 0) :
    LSeries.term actualMangoldtCoefficients ((3 / 2 : ℂ) + (t : ℂ) * I) n =
      ((ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ) *
        Complex.exp (-(t : ℂ) * (Real.log n : ℂ) * I) := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  rw [LSeries.term_of_ne_zero hn, actualMangoldtCoefficients,
    Complex.cpow_def_of_ne_zero (by exact_mod_cast hn)]
  have hlog : Complex.log (n : ℂ) = ((Real.log n : ℝ) : ℂ) :=
    (Complex.ofReal_log hnR.le).symm
  rw [hlog, Real.rpow_def_of_pos hnR, Complex.ofReal_div, Complex.ofReal_exp]
  simp only [div_eq_mul_inv, ← Complex.exp_neg]
  rw [mul_assoc, ← Complex.exp_add]
  congr 1
  congr 1
  push_cast
  ring

private theorem term_density_integrable {A : ℝ} (hA : 1 ≤ A) (n : ℕ) (T : ℝ) :
    IntervalIntegrable (fun t : ℝ =>
      actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
        LSeries.term actualMangoldtCoefficients ((3 / 2 : ℂ) + (t : ℂ) * I) n)
      volume (-T) T := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp only [LSeries.term_zero, mul_zero]
    exact intervalIntegrable_const
  · simp_rw [term_phase n _ hn]
    exact ((mellin_continuous hA).mul (continuous_const.mul
      (show Continuous (fun t : ℝ => Complex.exp (-(t : ℂ) * (Real.log n : ℂ) * I)) by
        fun_prop))).intervalIntegrable _ _

/-- The entire literal closed Euler polynomial becomes a finite actual physical band pairing. -/
theorem actualClosedPrimeHead_eq_weighted_band_pairing {A T : ℝ}
    (hA : 1 ≤ A) (hT : 0 ≤ T) :
    actualClosedPrimeHead A (3 / 2) T =
      ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊ + 1),
        ((if n = 0 then 0 else ArithmeticFunction.vonMangoldt n /
          (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ) *
          ⟪actualTiltBandState A T,
            translation (Real.log n) (reflection (actualTiltBandState A T))⟫_ℂ := by
  unfold actualClosedPrimeHead actualClosedPrimeDirichletPolynomial
  simp_rw [Finset.mul_sum]
  rw [intervalIntegral.integral_finsetSum (fun n _ => term_density_integrable hA n T),
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  rcases eq_or_ne n 0 with rfl | hn
  · simp
  · rw [if_neg hn, actualTiltBand_reflected_pairing_eq_angular hA hT]
    simp_rw [term_phase n _ hn]
    rw [show (fun t : ℝ =>
      actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
        (((ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ) *
          Complex.exp (-(t : ℂ) * (Real.log n : ℂ) * I))) =
      (fun t : ℝ => ((ArithmeticFunction.vonMangoldt n /
        (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ) *
          (actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
            Complex.exp (-(t : ℂ) * (Real.log n : ℂ) * I))) by funext t; ring]
    rw [intervalIntegral.integral_const_mul]
    ring

private theorem reflected_pairing_storage (g : ComplexL2) (u : ℝ) :
    (⟪g, translation u (reflection g)⟫_ℂ).re =
      ‖g‖ ^ 2 - ‖g - translation u (reflection g)‖ ^ 2 / 2 := by
  have hh := norm_sub_sq g (translation u (reflection g))
  rw [(translation u).norm_map, reflection.norm_map] at hh
  nlinarith

/-- The genuine signed head is energy minus the complete reflected storage payment. -/
theorem actualClosedPrimeHead_real_eq_band_storage {A T : ℝ}
    (hA : 1 ≤ A) (hT : 0 ≤ T) :
    (actualClosedPrimeHead A (3 / 2) T).re =
      actualClosedPrimeRightMass A * ‖actualTiltBandState A T‖ ^ 2 -
        (1 / 2) * ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊ + 1),
          (if n = 0 then 0 else ArithmeticFunction.vonMangoldt n /
            (n : ℝ) ^ (3 / 2 : ℝ)) *
            ‖actualTiltBandState A T -
              translation (Real.log n) (reflection (actualTiltBandState A T))‖ ^ 2 := by
  rw [actualClosedPrimeHead_eq_weighted_band_pairing hA hT]
  simp only [Complex.re_sum, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero]
  simp_rw [reflected_pairing_storage]
  unfold actualClosedPrimeRightMass
  rw [Finset.sum_mul, ← Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  ring

end FormalResearch.RiemannHypothesis.SourceActualEulerBandGram
