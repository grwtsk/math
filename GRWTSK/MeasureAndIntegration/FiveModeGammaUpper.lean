import scratch.common_mean_20261004.FiveModeActualDictionary
import scratch.common_mean_20261004.FiveModeGammaConstant
import FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility
import FormalResearch.RiemannHypothesis.SourceDerivativeEnergy

/-!
Actual-source gamma upper budget. Originating direction: grwtsk contributors.
Proof assistance: OpenAI Codex. This analytic budget supplies no arithmetic witness.
-/
set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open MeasureTheory
open scoped FourierTransform
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization BridgeAdmissibility CorrelationRegularity
open FormalResearch.Analysis.ReciprocalKernel

/-- The actual source constant, with its original digamma value and sign. -/
def sourceA0 : ℝ := -archimedeanConstant

/-- A sharper quadratic budget retaining the source's quarter endpoint. -/
theorem actual_multiplier_quadratic_upper (ω : ℝ) :
    archimedeanMultiplier ω ≤ sourceA0 + 18 * ω^2 := by
  have hsum := (AdmissionSource.quarter_series ω).tsum_eq
  have hk := (kernel_sum_bounds (ω/2) (1/4) (by norm_num)).2
  rw [hsum] at hk
  have he : (1 + (ω/2)^2 * ((1/4:ℝ)⁻¹)^2) = 1+4*ω^2 := by norm_num; ring
  rw [he] at hk
  have hlog := Real.log_le_sub_one_of_pos (by positivity : 0 < 1+4*ω^2)
  have hkernel : kernel (ω/2) (1/4) ≤ 16*ω^2 := by
    unfold kernel
    apply (div_le_iff₀ (by positivity : (0:ℝ) < 1/4*((1/4)^2+(ω/2)^2))).2
    nlinarith [sq_nonneg ω, sq_nonneg (ω^2)]
  dsimp [sourceA0]
  linarith

/-- L² norm and actual pointwise square mass agree for a concrete L² representative. -/
theorem lp_norm_square_mass (f : Lp ℂ 2 (volume : Measure ℝ)) :
    ‖f‖^2 = ∫ x : ℝ, Complex.normSq (f x) := by
  calc
    ‖f‖^2 = Complex.re (inner ℂ f f) := norm_sq_eq_re_inner (𝕜 := ℂ) f
    _ = Complex.re (∫ x : ℝ, inner ℂ (f x) (f x)) := by rw [L2.inner_def]
    _ = ∫ x : ℝ, Complex.re (inner ℂ (f x) (f x)) := (integral_re (𝕜 := ℂ) (L2.integrable_inner f f)).symm
    _ = _ := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun x => by
        change RCLike.re (inner ℂ (f x) (f x)) = _
        rw [inner_self_eq_norm_sq]
        exact Complex.sq_norm (f x))

/-- General integrable L² Plancherel, for the actual Bochner Fourier transform. -/
theorem standard_fourier_square_mass (f : ℝ → ℂ) (hf : Integrable f)
    (hL : MemLp f 2) :
    Integrable (fun ξ : ℝ => Complex.normSq (𝓕 f ξ)) ∧
    (∫ ξ : ℝ, Complex.normSq (𝓕 f ξ)) = ∫ x : ℝ, Complex.normSq (f x) := by
  let F : Lp ℂ 2 (volume : Measure ℝ) := hL.toLp f
  have hF : (F : ℝ → ℂ) =ᵐ[volume] f := hL.coeFn_toLp
  have hFi : Integrable (F : ℝ → ℂ) := (integrable_congr hF).mpr hf
  have hFourier : ((𝓕 F : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume] 𝓕 f := by
    refine (FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility.fourier_coe_ae F hFi).trans ?_
    exact Filter.Eventually.of_forall (Real.fourier_congr_ae hF)
  have hsq : Integrable (fun ξ : ℝ => Complex.normSq ((𝓕 F : Lp ℂ 2 (volume : Measure ℝ)) ξ)) := by
    have hm := (memLp_two_iff_integrable_sq_norm (Lp.aestronglyMeasurable (𝓕 F))).mp
      (Lp.memLp (𝓕 F))
    simpa only [Complex.sq_norm] using hm
  have hsqae : (fun ξ : ℝ => Complex.normSq ((𝓕 F : Lp ℂ 2 (volume : Measure ℝ)) ξ)) =ᵐ[volume]
      (fun ξ : ℝ => Complex.normSq (𝓕 f ξ)) := hFourier.fun_comp Complex.normSq
  refine ⟨(integrable_congr hsqae).mp hsq, ?_⟩
  calc
    _ = ∫ ξ : ℝ, Complex.normSq ((𝓕 F : Lp ℂ 2 (volume : Measure ℝ)) ξ) :=
      integral_congr_ae hsqae.symm
    _ = ‖𝓕 F‖^2 := (lp_norm_square_mass (𝓕 F)).symm
    _ = ‖F‖^2 := by rw [Lp.norm_fourier_eq]
    _ = ∫ x : ℝ, Complex.normSq (F x) := lp_norm_square_mass F
    _ = _ := integral_congr_ae (hF.fun_comp Complex.normSq)

/-- The angular convention contributes exactly 2π for any integrable real L² input. -/
theorem angular_fourier_square_mass (f : ℝ → ℝ) (hf : Integrable f)
    (hsq : Integrable (fun x : ℝ => (f x)^2)) :
    Integrable (fun ω : ℝ => Complex.normSq (sourceFourier f ω)) ∧
    (∫ ω : ℝ, Complex.normSq (sourceFourier f ω)) =
      (2*Real.pi) * ∫ x : ℝ, (f x)^2 := by
  have hfC : Integrable (fun x : ℝ => (f x : ℂ)) := Complex.ofRealCLM.integrable_comp hf
  have hL : MemLp (fun x : ℝ => (f x : ℂ)) 2 :=
    (memLp_two_iff_integrable_sq_norm hfC.aestronglyMeasurable).mpr (by
      simpa only [Complex.norm_real, Real.norm_eq_abs, sq_abs] using hsq)
  have h := standard_fourier_square_mass (fun x : ℝ => (f x : ℂ)) hfC hL
  simp_rw [SourcePlancherel.standardFourier_eq_sourceFourier] at h
  have hn : -(2*Real.pi) ≠ 0 := neg_ne_zero.mpr (by positivity)
  refine ⟨(integrable_comp_mul_left_iff _ hn).mp h.1, ?_⟩
  have he := h.2
  simp only [Complex.normSq_ofReal, ← pow_two] at he
  rw [Measure.integral_comp_mul_left
    (fun ω : ℝ => Complex.normSq (sourceFourier f ω)) (-(2*Real.pi)), smul_eq_mul,
    abs_inv, abs_neg, abs_of_pos (by positivity : 0 < 2*Real.pi)] at he
  have hp : (2*Real.pi) ≠ 0 := by positivity
  calc
    _ = (2*Real.pi) * ((2*Real.pi)⁻¹ * ∫ ω : ℝ, Complex.normSq (sourceFourier f ω)) := by
      rw [← mul_assoc, mul_inv_cancel₀ hp, one_mul]
    _ = _ := by rw [he]

/-- Actual first-derivative Parseval; ordinary C¹ and integrable derivative suffice. -/
theorem actual_derivative_parseval (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ω : ℝ => ω^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ω)) ∧
    (∫ ω : ℝ, ω^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ω)) =
      (2*Real.pi) * ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2 := by
  have hp : 0 < A := by linarith
  have h := angular_fourier_square_mass
    (deriv (normalizedTest explicitSecondDerivative A))
    (BridgeFourier.actual_derivative_integrable A hA)
    (FormalResearch.RiemannHypothesis.SourceDerivativeEnergy.actual_derivative_square_integrable hp)
  have he (ω : ℝ) : Complex.normSq
      (sourceFourier (deriv (normalizedTest explicitSecondDerivative A)) ω) =
      ω^2 * Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω) := by
    rw [BridgeFourier.sourceFourier_deriv _ (normalizedTest_integrable A hp)
      ((normalizedTest_contDiff A hp).differentiable (by norm_num))
      (BridgeFourier.actual_derivative_integrable A hA), Complex.normSq_mul]
    simp [Complex.normSq_mul, Complex.normSq_neg, Complex.normSq_ofReal, pow_two]
  simp_rw [he] at h
  exact h

/-- The full gamma integral is controlled by the actual source derivative energy. -/
theorem actual_gamma_upper_by_energy (A : ℝ) (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤ sourceA0 +
      18 * ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2 := by
  have hmass := BridgeFourier.actual_fourier_square_integrable A hA
  have henergy := actual_derivative_parseval A hA
  have hbudget : Integrable (fun ω : ℝ => sourceA0 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ω) +
      18 * (ω^2 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) ω))) :=
    (hmass.const_mul sourceA0).add (henergy.1.const_mul 18)
  have hi := integral_mono (AdmissionSource.archimedean_integrability A hA) hbudget
    (fun ω => by
      dsimp only [archimedeanIntegrand]
      have h := mul_le_mul_of_nonneg_right (actual_multiplier_quadratic_upper ω)
        (Complex.normSq_nonneg (sourceFourier (normalizedTest explicitSecondDerivative A) ω))
      nlinarith)
  rw [integral_add (hmass.const_mul sourceA0) (henergy.1.const_mul 18),
    integral_const_mul, integral_const_mul, SourcePlancherel.actual_source_fourier_mass A hA,
    henergy.2] at hi
  unfold archimedeanValue
  apply (div_le_iff₀ (by positivity : (0:ℝ) < 2*Real.pi)).2
  nlinarith

/-- Original requested gamma budget, with the original normalization and no external premise. -/
theorem actual_gamma_upper (A : ℝ) (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤ sourceA0 + 390/A^2 := by
  have he := FormalResearch.RiemannHypothesis.SourceDerivativeEnergy.actual_derivative_energy_upper hA
  have hp : 0 < A^2 := by positivity
  have hbudget : 18 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) ≤
      390/A^2 := by
    apply (le_div_iff₀ hp).2
    nlinarith
  linarith [actual_gamma_upper_by_energy A hA]

/-- Exact scale-dependent residual transport. The full matrix lower bound remains explicit. -/
theorem actual_residual_scale_upper_of_matrix_lower (A D : ℝ) (hA : 1 ≤ A)
    (hbound : -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A))) :
    EstimateMertensResidual.mertensResidual A ≤ sourceA0/2 + 195/A^2 + D/2 := by
  have hq := hbound
  rw [actual_source_matrix_dictionary A hA, sourceQuadraticValue] at hq
  have hres : EstimateMertensResidual.mertensResidual A =
      primePowerContribution explicitSecondDerivative A := by
    rw [EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment A hA]
    exact (EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA).symm
  rw [hres]
  have hg := actual_gamma_upper A hA
  rw [show 390/A^2 = 2*(195/A^2) by ring] at hg
  linarith

/-- The independently proved actual digamma bound fixes the source constant's sign. -/
theorem sourceA0_lt_neg_four : sourceA0 < (-4 : ℝ) :=
  actual_gamma_constant_lt_neg_four

/-- Existing coarse residual target, with the gamma premises now proved. -/
theorem actual_residual_upper_with_gamma_proved (A D : ℝ) (hA : 1 ≤ A)
    (hbound : -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A))) :
    EstimateMertensResidual.mertensResidual A ≤ 195 + D/2 :=
  actual_residual_upper_of_matrix_lower A D sourceA0 hA hbound (actual_gamma_upper A hA)
    (by linarith [sourceA0_lt_neg_four])

end CommonMeanScratch
