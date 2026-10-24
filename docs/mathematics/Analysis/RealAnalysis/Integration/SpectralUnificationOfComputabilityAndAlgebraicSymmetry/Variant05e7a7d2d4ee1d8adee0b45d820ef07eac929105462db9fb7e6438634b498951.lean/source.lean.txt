import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroLogarithmicCore

/-!
# The exact logarithmic energy is controlled by H¹ energy

The source frequency moment is the Fourier square of the actual global
derivative. Genuine L² and integral membership are explicit before the
logarithmic weight is compared with its quadratic majorant. Plancherel retains
the source normalization on both the value and derivative terms.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroLogarithmicEstimate

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroFourierL2 ZeroLogarithmicCore

noncomputable section

/-- An L² global derivative gives genuine integrability of the exact frequency-square moment. -/
theorem frequency_moment_integrable (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume)
    (hd2 : MemLp (deriv f) 2 volume) :
    Integrable (fun ξ ↦ ξ ^ 2 * Complex.normSq (sourceFourier f ξ)) volume := by
  simpa only [← normSq_sourceFourier_deriv f hf1 hd hdi] using
    sourceFourier_normSq_integrable (deriv f) hdi hd2

/-- The normalized angular-frequency moment equals the squared full-line derivative norm. -/
theorem frequency_moment_plancherel (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume)
    (hd2 : MemLp (deriv f) 2 volume) :
    (∫ ξ, ξ ^ 2 * Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi) =
      ∫ x, deriv f x ^ 2 := by
  simpa only [← normSq_sourceFourier_deriv f hf1 hd hdi] using
    sourceFourier_plancherel (deriv f) hdi hd2

/-- The quadratic Fourier majorant has a genuine integral under the H¹ premises. -/
theorem quadratic_integrand_integrable (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) (hd : Differentiable ℝ f)
    (hdi : Integrable (deriv f) volume) (hd2 : MemLp (deriv f) 2 volume) :
    Integrable (fun ξ ↦ (1 + 2 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)) volume := by
  apply ((sourceFourier_normSq_integrable f hf1 hf2).add
    ((frequency_moment_integrable f hf1 hd hdi hd2).const_mul 2)).congr
  exact Filter.Eventually.of_forall fun ξ ↦ by dsimp; ring

/-- The exact source logarithmic energy is bounded by the value energy plus twice its
global derivative energy; all Fourier and physical-space integrals are genuine. -/
theorem logarithmicEnergy_le_h1 (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) (hd : Differentiable ℝ f)
    (hdi : Integrable (deriv f) volume) (hd2 : MemLp (deriv f) 2 volume) :
    logarithmicEnergy f ≤ (∫ x, f x ^ 2) + 2 * ∫ x, deriv f x ^ 2 := by
  have hvalue := sourceFourier_normSq_integrable f hf1 hf2
  have hmoment := frequency_moment_integrable f hf1 hd hdi hd2
  have hquadratic := quadratic_integrand_integrable f hf1 hf2 hd hdi hd2
  have hbound : (∫ ξ, logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)) ≤
      ∫ ξ, (1 + 2 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ) :=
    integral_mono (logarithmic_integrable f hf1 hd hdi) hquadratic
      (fun ξ ↦ mul_le_mul_of_nonneg_right (logarithmicWeight_le_quadratic ξ)
        (Complex.normSq_nonneg _))
  have hsplit : (∫ ξ, (1 + 2 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)) =
      (∫ ξ, Complex.normSq (sourceFourier f ξ)) +
        2 * ∫ ξ, ξ ^ 2 * Complex.normSq (sourceFourier f ξ) := by
    simp_rw [add_mul, one_mul, mul_assoc]
    rw [integral_add hvalue (hmoment.const_mul 2), integral_const_mul]
  calc
    logarithmicEnergy f ≤
        (∫ ξ, (1 + 2 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi) :=
      div_le_div_of_nonneg_right hbound (by positivity)
    _ = (∫ x, f x ^ 2) + 2 * ∫ x, deriv f x ^ 2 := by
      rw [hsplit, add_div, mul_div_assoc, sourceFourier_plancherel f hf1 hf2,
        frequency_moment_plancherel f hf1 hd hdi hd2]

end
end ZeroLogarithmicEstimate
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
