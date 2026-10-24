import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier
import Mathlib.Analysis.Fourier.LpSpace
import Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm
import Mathlib.MeasureTheory.Measure.Haar.NormedSpace

/-!
# The source integral Fourier transform on genuine L² data

The ordinary integral transform is identified with Mathlib's L² transform on
their L¹ intersection by testing against smooth compactly supported functions.
Schwartz functions are used only as dual tests; the original function is not
replaced by a Schwartz representative. The source's positive angular-frequency
convention keeps its exact Jacobian and normalization.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroFourierL2

open MeasureTheory Filter
open scoped FourierTransform SchwartzMap ContDiff Topology
open FormalResearch.RiemannHypothesis.SourcePairing

noncomputable section

/-- Fourier Fubini transfers a Schwartz test across the integral transform of L¹ data. -/
theorem integral_test_fourier (f : ℝ → ℂ) (hf : Integrable f volume) (g : 𝓢(ℝ, ℂ)) :
    (∫ x, g x * 𝓕 f x) = ∫ x, 𝓕 g x * f x := by
  symm
  simpa using! VectorFourier.integral_fourierIntegral_smul_eq_flip
    (L := innerₗ ℝ) Real.continuous_fourierChar continuous_inner g.integrable hf

/-- On L¹∩L², the genuine integral transform agrees almost everywhere with the L² isometry. -/
theorem fourier_ae_eq_L2 (f : ℝ → ℂ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) :
    (𝓕 f : ℝ → ℂ) =ᵐ[volume] (𝓕 (hf2.toLp f) : Lp ℂ 2 volume) := by
  have hcontinuous : Continuous (𝓕 f : ℝ → ℂ) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ).continuous₂ hf1
  apply ae_eq_of_integral_contDiff_smul_eq hcontinuous.locallyIntegrable
    ((Lp.memLp (𝓕 (hf2.toLp f))).locallyIntegrable (by norm_num))
  intro g gSmooth gCompact
  have hgCompact : HasCompactSupport (Complex.ofRealCLM ∘ g) := gCompact.comp_left rfl
  have hgSmooth : ContDiff ℝ ∞ (Complex.ofRealCLM ∘ g) := by fun_prop
  let test : 𝓢(ℝ, ℂ) := hgCompact.toSchwartzMap hgSmooth
  calc
    (∫ x, g x • 𝓕 f x) = ∫ x, test x * 𝓕 f x := by
      simp [test, Complex.real_smul]
    _ = ∫ x, 𝓕 test x * f x := integral_test_fourier f hf1 test
    _ = (hf2.toLp f : 𝓢'(ℝ, ℂ)) (𝓕 test) := by
      rw [Lp.toTemperedDistribution_apply]
      apply integral_congr_ae
      filter_upwards [hf2.coeFn_toLp] with x hx
      simp [hx]
    _ = (𝓕 (hf2.toLp f : 𝓢'(ℝ, ℂ))) test := rfl
    _ = Lp.toTemperedDistribution (𝓕 (hf2.toLp f) : Lp ℂ 2 volume) test := by
      rw [Lp.fourier_toTemperedDistribution_eq]
    _ = ∫ x, g x • (𝓕 (hf2.toLp f) : Lp ℂ 2 volume) x := by
      simp [Lp.toTemperedDistribution_apply, test, Complex.real_smul]

/-- The integral Fourier transform of genuine L¹∩L² data belongs to L². -/
theorem fourier_memLp_two (f : ℝ → ℂ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) : MemLp (𝓕 f : ℝ → ℂ) 2 volume :=
  (Lp.memLp (𝓕 (hf2.toLp f))).ae_eq (fourier_ae_eq_L2 f hf1 hf2).symm

/-- The ordinary Fourier square has a genuine finite integral before Plancherel is applied. -/
theorem fourier_norm_sq_integrable (f : ℝ → ℂ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) : Integrable (fun ξ ↦ ‖𝓕 f ξ‖ ^ 2) volume :=
  (fourier_memLp_two f hf1 hf2).norm.integrable_sq

/-- The norm of a genuine complex L² element is the square root of its squared norm integral. -/
theorem norm_toLp_eq_sqrt_integral_norm_sq (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    ‖hf.toLp f‖ = Real.sqrt (∫ x, ‖f x‖ ^ 2) := by
  rw [Lp.norm_toLp, toReal_eLpNorm hf.aestronglyMeasurable,
    lpNorm_eq_integral_norm_rpow_toReal (by norm_num) (by simp) hf.aestronglyMeasurable]
  simp only [ENNReal.toReal_ofNat, Real.rpow_two, Real.sqrt_eq_rpow, one_div]

/-- Plancherel for the genuine integral transform, with explicit L¹ and L² membership. -/
theorem integral_norm_sq_fourier (f : ℝ → ℂ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) : (∫ ξ, ‖𝓕 f ξ‖ ^ 2) = ∫ x, ‖f x‖ ^ 2 := by
  have hfourier := fourier_memLp_two f hf1 hf2
  have heq : hfourier.toLp (𝓕 f) = 𝓕 (hf2.toLp f) := by
    apply Lp.ext
    exact hfourier.coeFn_toLp.trans (fourier_ae_eq_L2 f hf1 hf2)
  have hnorm := congrArg (fun r : ℝ ↦ r ^ 2) (Lp.norm_fourier_eq (hf2.toLp f))
  rw [← heq, norm_toLp_eq_sqrt_integral_norm_sq _ hfourier,
    norm_toLp_eq_sqrt_integral_norm_sq _ hf2] at hnorm
  simpa only [Real.sq_sqrt (integral_nonneg fun _ ↦ sq_nonneg _)] using hnorm

/-- The source Fourier square is integrable with its actual positive angular frequency. -/
theorem sourceFourier_norm_sq_integrable (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) : Integrable (fun ξ ↦ ‖sourceFourier f ξ‖ ^ 2) volume := by
  have hcomplex : Integrable (fun x ↦ (f x : ℂ)) volume :=
    Complex.ofRealCLM.integrable_comp hf1
  have h := (fourier_norm_sq_integrable (fun x ↦ (f x : ℂ)) hcomplex hf2.ofReal).comp_div
    (R := -(2 * Real.pi)) (neg_ne_zero.mpr (mul_ne_zero (by norm_num) Real.pi_ne_zero))
  simpa only [BridgeFourier.sourceFourier_eq_fourier, neg_div, div_neg] using h

/-- The source transform is a genuine L² function, rather than a totalized integral symbol. -/
theorem sourceFourier_memLp_two (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) : MemLp (sourceFourier f) 2 volume :=
  (memLp_two_iff_integrable_sq_norm
    (BridgeFourier.sourceFourier_continuous hf1).aestronglyMeasurable).mpr
    (sourceFourier_norm_sq_integrable f hf1 hf2)

/-- The complex norm-square version of the source energy is also genuinely integrable. -/
theorem sourceFourier_normSq_integrable (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) :
    Integrable (fun ξ ↦ Complex.normSq (sourceFourier f ξ)) volume := by
  simpa only [Complex.normSq_eq_norm_sq] using sourceFourier_norm_sq_integrable f hf1 hf2

/-- Source Plancherel retains both the positive exponent and its exact `1 / (2π)` factor. -/
theorem sourceFourier_plancherel (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) :
    (∫ ξ, Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi) = ∫ x, f x ^ 2 := by
  have hcomplex : Integrable (fun x ↦ (f x : ℂ)) volume :=
    Complex.ofRealCLM.integrable_comp hf1
  have hscale := Measure.integral_comp_div
    (fun ξ : ℝ ↦ ‖𝓕 (fun x ↦ (f x : ℂ)) ξ‖ ^ 2) (-(2 * Real.pi))
  have hpositive : 0 < 2 * Real.pi := by positivity
  have hsource : (∫ ξ, Complex.normSq (sourceFourier f ξ)) =
      (2 * Real.pi) * ∫ ξ, ‖𝓕 (fun x ↦ (f x : ℂ)) ξ‖ ^ 2 := by
    simpa only [BridgeFourier.sourceFourier_eq_fourier, Complex.normSq_eq_norm_sq,
      neg_div, div_neg, abs_neg, abs_of_pos hpositive, smul_eq_mul] using hscale
  rw [hsource, integral_norm_sq_fourier (fun x ↦ (f x : ℂ)) hcomplex hf2.ofReal]
  simp only [Complex.norm_real, Real.norm_eq_abs, sq_abs]
  exact mul_div_cancel_left₀ _ hpositive.ne'

/-- The actual global derivative transform gives the exact angular-frequency square moment. -/
theorem normSq_sourceFourier_deriv (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume) (ξ : ℝ) :
    Complex.normSq (sourceFourier (deriv f) ξ) =
      ξ ^ 2 * Complex.normSq (sourceFourier f ξ) := by
  rw [BridgeFourier.sourceFourier_deriv f hf1 hd hdi ξ]
  simp [Complex.normSq_eq_norm_sq, mul_pow]

end
end ZeroFourierL2
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
