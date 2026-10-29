-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ModeInterior.Variant05ace2e9d5682a1d735a9143709c66c4147b7e4b62b768820f523521bc49419b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05ace2e9d5682a1d735a9143709c66c4147b7e4b62b768820f523521bc49419b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ModeInterior.Variant05ace2e9d5682a1d735a9143709c66c4147b7e4b62b768820f523521bc49419b","mathematical_subject":"Analysis.Integration","original_sha256":"05ace2e9d5682a1d735a9143709c66c4147b7e4b62b768820f523521bc49419b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeGammaAdmission.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeMatrix
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

/-!
Fixed-radius gamma admission for the actual five interval Legendre modes.
Originating mathematical direction, theorem selection, corrections and evaluation:
grwtsk contributors. Scratch formalization assistance: OpenAI Codex.
Endpoint exponentials are retained in the integration-by-parts identity. The
frequency budgets depend on A; no uniform arithmetic witness is asserted.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ModeInterior.Variant05ace2e9d5682a1d735a9143709c66c4147b7e4b62b768820f523521bc49419b

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeAdmissibility BridgeFourier BridgeMultiplier

/-- Polynomial interior only; the endpoint jumps are handled separately. -/
def modeInterior (A : ℝ) (i : Fin 5) (x : ℝ) : ℝ :=
  Real.sqrt (modeWeight i / (2*A)) * mode i (x/A)

theorem modeInterior_contDiff (A : ℝ) (i : Fin 5) :
    ContDiff ℝ 2 (modeInterior A i) := by
  fin_cases i <;> unfold modeInterior mode <;> norm_num [legendre] <;> fun_prop

theorem mode_integrable (A : ℝ) (i : Fin 5) : Integrable (normalizedMode A i) := by
  exact integrable_zeroExtension _ (modeInterior_contDiff A i).continuous (-A) A

theorem mode_fourier_continuous (A : ℝ) (i : Fin 5) : Continuous (modeFourier A i) :=
  sourceFourier_continuous (mode_integrable A i)

theorem modeFourier_eq_interval (A : ℝ) (hA : 0 < A) (i : Fin 5) (ω : ℝ) :
    modeFourier A i ω = ∫ x in (-A)..A,
      (modeInterior A i x : ℂ) * Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ)) := by
  unfold modeFourier sourceFourier
  have heq : (fun x : ℝ => (normalizedMode A i x : ℂ) *
      Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))) =
      (Icc (-A) A).indicator (fun x : ℝ => (modeInterior A i x : ℂ) *
        Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))) := by
    classical
    funext x
    by_cases hx : x ∈ Icc (-A) A <;> simp [normalizedMode, modeInterior, hx]
  rw [heq, integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -A ≤ A)]

/-- Both nonzero mode endpoint traces occur explicitly. -/
theorem mode_fourier_integration_by_parts (A : ℝ) (hA : 0 < A)
    (i : Fin 5) (ω : ℝ) :
    (Complex.I * (ω : ℂ)) * modeFourier A i ω =
      (modeInterior A i A : ℂ) * Complex.exp (Complex.I * (ω : ℂ) * (A : ℂ)) -
      (modeInterior A i (-A) : ℂ) * Complex.exp (Complex.I * (ω : ℂ) * (-A : ℂ)) -
      ∫ x in (-A)..A, ((deriv (modeInterior A i) x : ℝ) : ℂ) *
        Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ)) := by
  have hc := modeInterior_contDiff A i
  have hd : Differentiable ℝ (modeInterior A i) := hc.differentiable (by norm_num)
  have hdc : Continuous (deriv (modeInterior A i)) := hc.continuous_deriv (by norm_num)
  have hg (x : ℝ) : HasDerivAt
      (fun y : ℝ => Complex.exp (Complex.I * (ω : ℂ) * (y : ℂ)))
      ((Complex.I * (ω : ℂ)) * Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))) x := by
    simpa only [id_eq, mul_one, mul_comm] using
      ((((hasDerivAt_id (x : ℂ)).const_mul (Complex.I * (ω : ℂ))).cexp).comp_ofReal)
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := -A) (b := A)
    (fun x _ => (hd x).hasDerivAt.ofReal_comp)
    (fun x _ => hg x)
    ((Complex.continuous_ofReal.comp hdc).intervalIntegrable (-A) A)
    ((show Continuous (fun x : ℝ => (Complex.I * (ω : ℂ)) *
      Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ))) from by fun_prop).intervalIntegrable (-A) A)
  have heq : (fun x : ℝ => (modeInterior A i x : ℂ) *
      ((Complex.I * (ω : ℂ)) * Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ)))) =
      (fun x : ℝ => (Complex.I * (ω : ℂ)) *
        ((modeInterior A i x : ℂ) * Complex.exp (Complex.I * (ω : ℂ) * (x : ℂ)))) := by
    funext x
    ring
  rw [heq, intervalIntegral.integral_const_mul, ← modeFourier_eq_interval A hA i ω] at hibp
  simpa only [Complex.ofReal_neg] using hibp

/-- Independently specified fixed-radius derivative-plus-trace budget. -/
def modeFrequencyBudget (A : ℝ) (i : Fin 5) : ℝ :=
  ‖modeInterior A i A‖ + ‖modeInterior A i (-A)‖ +
    ∫ x in (-A)..A, ‖deriv (modeInterior A i) x‖

theorem mode_fourier_frequency_bound (A : ℝ) (hA : 0 < A) (i : Fin 5) (ω : ℝ) :
    |ω| * ‖modeFourier A i ω‖ ≤ modeFrequencyBudget A i := by
  rw [show |ω| * ‖modeFourier A i ω‖ =
    ‖(Complex.I * (ω : ℂ)) * modeFourier A i ω‖ by simp]
  rw [mode_fourier_integration_by_parts A hA i ω]
  unfold modeFrequencyBudget
  apply (norm_sub_le _ _).trans
  apply add_le_add
  · apply (norm_sub_le _ _).trans
    simp [Complex.norm_exp]
  · apply (intervalIntegral.norm_integral_le_integral_norm (by linarith : -A ≤ A)).trans
    apply le_of_eq
    apply intervalIntegral.integral_congr
    intro x _
    simp [Complex.norm_exp]

/-- Finite Fourier square mass for each fixed radius, including frequency zero. -/
theorem mode_fourier_square_integrable (A : ℝ) (hA : 0 < A) (i : Fin 5) :
    Integrable (fun ω : ℝ => Complex.normSq (modeFourier A i ω)) := by
  have hm : AEStronglyMeasurable (fun ω : ℝ => Complex.normSq (modeFourier A i ω)) :=
    (Complex.continuous_normSq.comp (mode_fourier_continuous A i)).aestronglyMeasurable
  apply (integrable_inv_one_add_sq.const_mul
    ((∫ x : ℝ, ‖normalizedMode A i x‖) ^ 2 + (modeFrequencyBudget A i) ^ 2)).mono' hm
  filter_upwards [] with ω
  rw [Real.norm_eq_abs, abs_of_nonneg (Complex.normSq_nonneg _),
    Complex.normSq_eq_norm_sq, ← div_eq_mul_inv]
  apply (le_div_iff₀ (by positivity : 0 < 1 + ω ^ 2)).2
  have hn := norm_nonneg (modeFourier A i ω)
  have hb := sourceFourier_norm_le (normalizedMode A i) ω
  have hd := mode_fourier_frequency_bound A hA i ω
  have hb0 : 0 ≤ ∫ x : ℝ, ‖normalizedMode A i x‖ := integral_nonneg (fun x => norm_nonneg _)
  have hd0 : 0 ≤ modeFrequencyBudget A i :=
    (mul_nonneg (abs_nonneg ω) hn).trans hd
  have hb2 := (sq_le_sq₀ hn hb0).2 hb
  have hd2 := (sq_le_sq₀ (mul_nonneg (abs_nonneg ω) hn) hd0).2 hd
  simp only [mul_pow, sq_abs] at hd2
  change ‖modeFourier A i ω‖ ^ 2 ≤ _ at hb2
  nlinarith

/-- Logarithmic Fourier energy of the interval modes, using the retained trace budget. -/
theorem mode_logarithmic_fourier_integrable (A : ℝ) (hA : 0 < A) (i : Fin 5) :
    Integrable (fun ω : ℝ => Real.log (1 + 4 * ω ^ 2) *
      Complex.normSq (modeFourier A i ω)) := by
  have hi : Integrable (fun ω : ℝ => (1 + ω ^ 2) ^ (-(3 / 4 : ℝ))) := by
    convert (integrable_rpow_neg_one_add_norm_sq
      (E := ℝ) (μ := volume) (r := (3 / 2 : ℝ)) (by norm_num)) using 1
    ext ω
    simp [Real.norm_eq_abs, sq_abs]
    norm_num
  have hc := mode_fourier_continuous A i
  have hm : AEStronglyMeasurable
      (fun ω : ℝ => Real.log (1 + 4 * ω ^ 2) * Complex.normSq (modeFourier A i ω)) := by
    apply Continuous.aestronglyMeasurable
    exact ((show Continuous (fun ω : ℝ => 1 + 4 * ω ^ 2) by fun_prop).log
      (by intro ω; positivity)).mul (Complex.continuous_normSq.comp hc)
  apply (hi.const_mul (16 * ((∫ x : ℝ, ‖normalizedMode A i x‖) ^ 2 +
    (modeFrequencyBudget A i) ^ 2))).mono' hm
  filter_upwards [] with ω
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg
    (Real.log_nonneg (by nlinarith [sq_nonneg ω])) (Complex.normSq_nonneg _))]
  rw [Complex.normSq_eq_norm_sq]
  exact log_fourier_majorant ω _ _ _ (norm_nonneg _)
    (sourceFourier_norm_le (normalizedMode A i) ω)
    (mode_fourier_frequency_bound A hA i ω)

/-- The unconditional actual digamma estimate provides a positive energy majorant. -/
def gammaEnergyMajorant (ω : ℝ) : ℝ :=
  |archimedeanConstant| + 4 + Real.log (1 + 4 * ω ^ 2) / 2

theorem gammaEnergyMajorant_nonneg (ω : ℝ) : 0 ≤ gammaEnergyMajorant ω := by
  have hl : 0 ≤ Real.log (1 + 4 * ω ^ 2) :=
    Real.log_nonneg (by nlinarith [sq_nonneg ω])
  unfold gammaEnergyMajorant
  positivity

theorem gamma_energy_majorant_integrable (A : ℝ) (hA : 0 < A) (i : Fin 5) :
    Integrable (fun ω : ℝ => gammaEnergyMajorant ω * Complex.normSq (modeFourier A i ω)) := by
  have h := ((mode_fourier_square_integrable A hA i).const_mul
    (|archimedeanConstant| + 4)).add
      ((mode_logarithmic_fourier_integrable A hA i).div_const 2)
  have heq : (fun ω : ℝ => gammaEnergyMajorant ω * Complex.normSq (modeFourier A i ω)) =
      (fun ω : ℝ => (|archimedeanConstant| + 4) * Complex.normSq (modeFourier A i ω) +
        (Real.log (1 + 4 * ω ^ 2) * Complex.normSq (modeFourier A i ω)) / 2) := by
    funext ω
    dsimp [gammaEnergyMajorant]
    ring
  rw [heq]
  exact h

/-- All 25 full-frequency gamma entries are admitted for each actual positive radius. -/
theorem gamma_entry_integrability (A : ℝ) (hA : 0 < A) : GammaEntryIntegrability A := by
  intro i j
  have hc_i := mode_fourier_continuous A i
  have hc_j := mode_fourier_continuous A j
  have hm : AEStronglyMeasurable (fun ω : ℝ => archimedeanMultiplier ω *
      (modeFourier A i ω * modeFourier A j ω).re) :=
    (archimedeanMultiplier_measurable.mul
      (Complex.continuous_re.comp (hc_i.mul hc_j)).measurable).aestronglyMeasurable
  have hi := gamma_energy_majorant_integrable A hA i
  have hj := gamma_energy_majorant_integrable A hA j
  apply (hi.add hj).mono' hm
  filter_upwards [] with ω
  rw [Real.norm_eq_abs, abs_mul]
  have hp : |(modeFourier A i ω * modeFourier A j ω).re| ≤
      Complex.normSq (modeFourier A i ω) + Complex.normSq (modeFourier A j ω) := by
    apply (Complex.abs_re_le_norm _).trans
    rw [norm_mul, Complex.normSq_eq_norm_sq, Complex.normSq_eq_norm_sq]
    nlinarith [sq_nonneg (‖modeFourier A i ω‖ - ‖modeFourier A j ω‖),
      sq_nonneg ‖modeFourier A i ω‖, sq_nonneg ‖modeFourier A j ω‖]
  calc
    |archimedeanMultiplier ω| * |(modeFourier A i ω * modeFourier A j ω).re| ≤
        gammaEnergyMajorant ω *
          (Complex.normSq (modeFourier A i ω) + Complex.normSq (modeFourier A j ω)) :=
      mul_le_mul (multiplier_abs_le_of_estimate AdmissionSource.multiplier_estimate ω)
        hp (abs_nonneg _) (gammaEnergyMajorant_nonneg ω)
    _ = _ := by simp only [Pi.add_apply]; ring

end CommonMeanScratch
