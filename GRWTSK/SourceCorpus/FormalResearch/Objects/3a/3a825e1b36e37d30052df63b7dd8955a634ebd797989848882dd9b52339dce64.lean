import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
import Mathlib.Analysis.Fourier.FourierTransformDeriv
import Mathlib.Analysis.Complex.RealDeriv
import Mathlib.Analysis.Calculus.Deriv.Support
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Actual Fourier estimates for the first bridge family

The Fourier convention is the one in the immutable RH manuscripts. These are
analytic estimates of the actual constructed test, with no realization premise.
They do not establish a zero-side identity or an RH bridge.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier

open MeasureTheory Set
open scoped ContDiff FourierTransform
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

noncomputable section

/-- Convert the source's positive-exponent, angular-frequency convention exactly. -/
theorem sourceFourier_eq_fourier (f : ℝ → ℝ) (ξ : ℝ) :
    sourceFourier f ξ = 𝓕 (fun x ↦ (f x : ℂ)) (-ξ / (2 * Real.pi)) := by
  rw [Real.fourier_real_eq_integral_exp_smul]
  unfold sourceFourier
  apply integral_congr_ae
  filter_upwards [] with x
  rw [smul_eq_mul]
  have hp : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  push_cast
  rw [mul_comm (f x : ℂ)]
  congr 2
  field_simp

/-- Complex-valued differentiation preserves the actual real derivative. -/
theorem deriv_complexification {f : ℝ → ℝ} (hf : Differentiable ℝ f) :
    deriv (fun x ↦ (f x : ℂ)) = fun x : ℝ ↦ ((deriv f x : ℝ) : ℂ) := by
  funext x
  exact (hf x).hasDerivAt.ofReal_comp.deriv

/-- Absolute integrability of the real function gives its Fourier mass bound. -/
theorem sourceFourier_norm_le (f : ℝ → ℝ) (ξ : ℝ) :
    ‖sourceFourier f ξ‖ ≤ ∫ x, ‖f x‖ := by
  unfold sourceFourier
  apply (norm_integral_le_integral_norm _).trans
  apply le_of_eq
  apply integral_congr_ae
  filter_upwards [] with x
  simp [Complex.norm_exp]

/-- Exact Fourier integration by parts; genuine integrability is explicit. -/
theorem sourceFourier_deriv (f : ℝ → ℝ) (hf : Integrable f)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f)) (ξ : ℝ) :
    sourceFourier (deriv f) ξ = -(Complex.I * (ξ : ℂ)) * sourceFourier f ξ := by
  rw [sourceFourier_eq_fourier, ← deriv_complexification hd]
  have hfc : Integrable (fun x ↦ (f x : ℂ)) := Complex.ofRealCLM.integrable_comp hf
  have hdc : Differentiable ℝ (fun x ↦ (f x : ℂ)) :=
    fun x ↦ (hd x).hasDerivAt.ofReal_comp.differentiableAt
  have hdic : Integrable (deriv (fun x ↦ (f x : ℂ))) := by
    rw [deriv_complexification hd]
    exact Complex.ofRealCLM.integrable_comp hdi
  rw [Real.fourier_deriv hfc hdc hdic]
  simp only [smul_eq_mul]
  rw [← sourceFourier_eq_fourier]
  have hp : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  push_cast
  congr 1
  field_simp

/-- Reciprocal-frequency decay bound, stated without division at frequency zero. -/
theorem sourceFourier_frequency_bound (f : ℝ → ℝ) (hf : Integrable f)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f)) (ξ : ℝ) :
    |ξ| * ‖sourceFourier f ξ‖ ≤ ∫ x, ‖deriv f x‖ := by
  have h := sourceFourier_norm_le (deriv f) ξ
  rw [sourceFourier_deriv f hf hd hdi ξ] at h
  simpa [norm_mul] using h

/-- Genuine integrability gives continuity in the exact source Fourier convention. -/
theorem sourceFourier_continuous {f : ℝ → ℝ} (hf : Integrable f) :
    Continuous (sourceFourier f) := by
  have hfc : Integrable (fun x ↦ (f x : ℂ)) := Complex.ofRealCLM.integrable_comp hf
  have hc : Continuous (𝓕 (fun x ↦ (f x : ℂ))) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ).continuous₂ hfc
  have heq : sourceFourier f = fun ξ ↦ 𝓕 (fun x ↦ (f x : ℂ)) (-ξ / (2 * Real.pi)) :=
    funext (sourceFourier_eq_fourier f)
  rw [heq]
  exact hc.comp (continuous_neg.div_const (2 * Real.pi))

/-- An elementary logarithmic majorant with an integrable inverse-power tail. -/
theorem log_fourier_majorant (ξ n b d : ℝ) (hn : 0 ≤ n) (hnb : n ≤ b)
    (hnd : |ξ| * n ≤ d) :
    Real.log (1 + 4 * ξ ^ 2) * n ^ 2 ≤
      (16 * (b ^ 2 + d ^ 2)) * (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ)) := by
  have hξ := sq_nonneg ξ
  have hy : 0 < 1 + ξ ^ 2 := by positivity
  have hlog : Real.log (1 + 4 * ξ ^ 2) ≤ 4 * Real.log (1 + ξ ^ 2) := by
    have hp : Real.log ((1 + ξ ^ 2) ^ 4) = 4 * Real.log (1 + ξ ^ 2) :=
      Real.log_pow (1 + ξ ^ 2) 4
    rw [← hp]
    apply Real.log_le_log (by positivity)
    nlinarith [sq_nonneg (ξ ^ 2), sq_nonneg (ξ ^ 4)]
  have hpower : (1 + ξ ^ 2) ^ (1 / 4 : ℝ) =
      (1 + ξ ^ 2) * (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ)) := by
    have hp := Real.rpow_add hy (1 : ℝ) (-(3 / 4 : ℝ))
    norm_num at hp
    exact hp
  have hlog' := Real.log_le_rpow_div hy.le (by norm_num : (0 : ℝ) < 1 / 4)
  have hb : 0 ≤ b := hn.trans hnb
  have hd : 0 ≤ d := (mul_nonneg (abs_nonneg ξ) hn).trans hnd
  have hb2 : n ^ 2 ≤ b ^ 2 := by nlinarith
  have hd2 : ξ ^ 2 * n ^ 2 ≤ d ^ 2 := by
    have hnn : 0 ≤ |ξ| * n := mul_nonneg (abs_nonneg ξ) hn
    have hs : (|ξ| * n) ^ 2 ≤ d ^ 2 := sq_le_sq₀ hnn hd |>.2 hnd
    simpa [mul_pow, sq_abs] using hs
  have hm : (1 + ξ ^ 2) * n ^ 2 ≤ b ^ 2 + d ^ 2 := by nlinarith
  calc
    Real.log (1 + 4 * ξ ^ 2) * n ^ 2 ≤
        (16 * (1 + ξ ^ 2) ^ (1 / 4 : ℝ)) * n ^ 2 := by
      apply mul_le_mul_of_nonneg_right _ (sq_nonneg n)
      linarith
    _ = 16 * ((1 + ξ ^ 2) * n ^ 2) *
        (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ)) := by rw [hpower]; ring
    _ ≤ (16 * (b ^ 2 + d ^ 2)) * (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ)) := by
      gcongr

/-- C¹ data with integrable function and derivative have genuine logarithmic Fourier energy. -/
theorem logarithmic_fourier_integrable (f : ℝ → ℝ) (hf : Integrable f)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f)) :
    Integrable (fun ξ ↦ Real.log (1 + 4 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)) := by
  have hi : Integrable (fun ξ : ℝ ↦ (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ))) := by
    convert (integrable_rpow_neg_one_add_norm_sq
      (E := ℝ) (μ := volume) (r := (3 / 2 : ℝ)) (by norm_num)) using 1
    ext ξ
    simp [Real.norm_eq_abs, sq_abs]
    norm_num
  have hc := sourceFourier_continuous hf
  have hm : AEStronglyMeasurable
      (fun ξ ↦ Real.log (1 + 4 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)) := by
    apply Continuous.aestronglyMeasurable
    exact ((show Continuous (fun ξ : ℝ ↦ 1 + 4 * ξ ^ 2) by fun_prop).log
      (by intro ξ; positivity)).mul
      (Complex.continuous_normSq.comp hc)
  apply (hi.const_mul (16 * ((∫ x, ‖f x‖) ^ 2 + (∫ x, ‖deriv f x‖) ^ 2))).mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg
    (Real.log_nonneg (by nlinarith [sq_nonneg ξ])) (Complex.normSq_nonneg _))]
  rw [Complex.normSq_eq_norm_sq]
  exact log_fourier_majorant ξ _ _ _ (norm_nonneg _) (sourceFourier_norm_le f ξ)
    (sourceFourier_frequency_bound f hf hd hdi ξ)

/-- The same derivative estimate gives finite unweighted Fourier square mass. -/
theorem fourier_normSq_integrable (f : ℝ → ℝ) (hf : Integrable f)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f)) :
    Integrable (fun ξ ↦ Complex.normSq (sourceFourier f ξ)) := by
  have hm : AEStronglyMeasurable (fun ξ ↦ Complex.normSq (sourceFourier f ξ)) volume :=
    (Complex.continuous_normSq.comp (sourceFourier_continuous hf)).aestronglyMeasurable
  apply (integrable_inv_one_add_sq.const_mul
    ((∫ x, ‖f x‖) ^ 2 + (∫ x, ‖deriv f x‖) ^ 2)).mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_of_nonneg (Complex.normSq_nonneg _),
    Complex.normSq_eq_norm_sq, ← div_eq_mul_inv]
  apply (le_div_iff₀ (by positivity : 0 < 1 + ξ ^ 2)).2
  have hn := norm_nonneg (sourceFourier f ξ)
  have hb := sourceFourier_norm_le f ξ
  have hd := sourceFourier_frequency_bound f hf hd hdi ξ
  have hb0 : 0 ≤ ∫ x, ‖f x‖ := integral_nonneg (fun x ↦ norm_nonneg _)
  have hd0 : 0 ≤ ∫ x, ‖deriv f x‖ := integral_nonneg (fun x ↦ norm_nonneg _)
  have hb2 := (sq_le_sq₀ hn hb0).2 hb
  have hd2 := (sq_le_sq₀ (mul_nonneg (abs_nonneg ξ) hn) hd0).2 hd
  simp only [mul_pow, sq_abs] at hd2
  nlinarith

/-- The derivative of the actual normalized test is integrable, not merely totalized. -/
theorem actual_derivative_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (deriv (normalizedTest explicitSecondDerivative A)) := by
  have ha : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hc := (contDiff_one_iff_deriv.mp (normalizedTest_contDiff A ha)).2
  exact hc.integrable_of_hasCompactSupport (normalizedTest_hasCompactSupport A ha).deriv

/-- The actual manuscript test satisfies the Fourier decay estimate at every real frequency. -/
theorem actual_fourier_frequency_bound (A : ℝ) (hA : 1 ≤ A) (ξ : ℝ) :
    |ξ| * ‖sourceFourier (normalizedTest explicitSecondDerivative A) ξ‖ ≤
      ∫ x, ‖deriv (normalizedTest explicitSecondDerivative A) x‖ := by
  have ha : 0 < A := lt_of_lt_of_le (by norm_num) hA
  exact sourceFourier_frequency_bound _ (normalizedTest_integrable A ha)
    ((normalizedTest_contDiff A ha).differentiable (by norm_num))
    (actual_derivative_integrable A hA) ξ

/-- The actual source family belongs to the logarithmic Fourier domain at every admitted radius. -/
theorem actual_logarithmic_fourier_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ Real.log (1 + 4 * ξ ^ 2) *
      Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) := by
  have ha : 0 < A := lt_of_lt_of_le (by norm_num) hA
  exact logarithmic_fourier_integrable _ (normalizedTest_integrable A ha)
    ((normalizedTest_contDiff A ha).differentiable (by norm_num))
    (actual_derivative_integrable A hA)

/-- The actual test also has finite unweighted Fourier square mass. -/
theorem actual_fourier_square_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦
      Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) := by
  have ha : 0 < A := lt_of_lt_of_le (by norm_num) hA
  exact fourier_normSq_integrable _ (normalizedTest_integrable A ha)
    ((normalizedTest_contDiff A ha).differentiable (by norm_num))
    (actual_derivative_integrable A hA)

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier
