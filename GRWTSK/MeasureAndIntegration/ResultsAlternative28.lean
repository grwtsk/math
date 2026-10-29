import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroLogarithmicEstimate

/-!
# Logarithmic convergence of the actual source smoothing

The error is formed from the unnormalized source zero extension and its genuine
global derivative. The source Fourier norm retains its positive exponent and
the factor `1 / (2π)`. All smoothing scales in the family are strictly positive.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroLogarithmicConvergence

open MeasureTheory Set Filter
open scoped Topology ContDiff
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroTestRegularity ZeroSmoothing ZeroSmoothingDerivative ZeroSmoothingL2
open ZeroLogarithmicCore

noncomputable section

/-- The value error is integrable on the entire real line at each positive smoothing scale. -/
theorem testError_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun x ↦ smoothedTest A ε hε x - actualTest A x) :=
  (smoothedTest_integrable A ε hA hε).sub (actualTest_integrable A hA)

/-- Differentiability of the error uses both globally proved zero-extension derivatives. -/
theorem testError_differentiable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Differentiable ℝ (fun x ↦ smoothedTest A ε hε x - actualTest A x) :=
  fun x ↦ ((smoothedTest_hasDerivAt A ε hA hε x).sub
    (actualTest_hasDerivAt A hA x)).differentiableAt

/-- The derivative of the actual value error is genuinely integrable across its support seams. -/
theorem testError_deriv_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (deriv (fun x ↦ smoothedTest A ε hε x - actualTest A x)) := by
  rw [deriv_testError A ε hA hε]
  exact (smoothedTest_deriv_integrable A ε hA hε).sub (actualTest_deriv_integrable A hA)

/-- The global derivative of the actual value error belongs to the full-line L² space. -/
theorem testError_deriv_memLp_two (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    MemLp (deriv (fun x ↦ smoothedTest A ε hε x - actualTest A x)) 2 volume := by
  rw [deriv_testError A ε hA hε]
  exact derivativeError_memLp_two A ε hA hε

/-- The actual unnormalized source function lies in the genuine logarithmic Fourier domain. -/
theorem actualTest_logarithmic_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier (actualTest A) ξ)) :=
  logarithmic_integrable _ (actualTest_integrable A hA)
    (fun x ↦ (actualTest_hasDerivAt A hA x).differentiableAt)
    (actualTest_deriv_integrable A hA)

/-- Every positive-scale smoothing lies in the genuine logarithmic Fourier domain. -/
theorem smoothedTest_logarithmic_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ)) :=
  logarithmic_integrable _ (smoothedTest_integrable A ε hA hε)
    (fun x ↦ (smoothedTest_hasDerivAt A ε hA hε x).differentiableAt)
    (smoothedTest_deriv_integrable A ε hA hε)

/-- The Fourier error has a genuine weighted integral at every positive scale. -/
theorem testError_logarithmic_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq (sourceFourier (fun x ↦ smoothedTest A ε hε x - actualTest A x) ξ)) :=
  logarithmic_integrable _ (testError_integrable A ε hA hε)
    (testError_differentiable A ε hA hε) (testError_deriv_integrable A ε hA hε)

/-- The logarithmic error is bounded by the two actual full-line L² errors. -/
theorem testError_logarithmicEnergy_le (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    logarithmicEnergy (fun x ↦ smoothedTest A ε hε x - actualTest A x) ≤
      (∫ x, (smoothedTest A ε hε x - actualTest A x) ^ 2) +
        2 * ∫ x, (deriv (smoothedTest A ε hε) x - deriv (actualTest A) x) ^ 2 := by
  simpa only [deriv_testError A ε hA hε] using
    ZeroLogarithmicEstimate.logarithmicEnergy_le_h1
      (fun x ↦ smoothedTest A ε hε x - actualTest A x)
      (testError_integrable A ε hA hε) (testError_memLp_two A ε hA hε)
      (testError_differentiable A ε hA hε) (testError_deriv_integrable A ε hA hε)
      (testError_deriv_memLp_two A ε hA hε)

/-- Both proved L² error limits force logarithmic Fourier energy convergence. -/
theorem testError_logarithmicEnergy_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ logarithmicEnergy
      (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x)) l (𝓝 0) := by
  apply squeeze_zero (fun _ ↦ logarithmicEnergy_nonneg _)
    (fun i ↦ testError_logarithmicEnergy_le A (ε i) hA (hε i))
  simpa using (testError_integral_sq_tendsto_zero A hA ε hε hlim).add
    ((derivativeError_integral_sq_tendsto_zero A hA ε hε hlim).const_mul 2)

/-- The source logarithmic norm of the actual smoothing error tends to zero. -/
theorem testError_logarithmicNorm_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ logarithmicNorm
      (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x)) l (𝓝 0) := by
  simpa only [logarithmicNorm, Real.sqrt_zero] using
    (testError_logarithmicEnergy_tendsto_zero A hA ε hε hlim).sqrt

/-- The requested positive-scale Fourier integral tends to zero with the exact source weight. -/
theorem source_logarithmic_fourier_integral_tendsto_zero (A : ℝ) (hA : 1 ≤ A) :
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦
      (∫ ξ : ℝ, (1 + Real.log (1 + 4 * ξ ^ 2) / 2) *
        Complex.normSq (sourceFourier
          (fun x ↦ smoothedTest A ε ε.property x - actualTest A x) ξ)) / (2 * Real.pi))
      positiveScaleAtZero (𝓝 0) := by
  exact testError_logarithmicEnergy_tendsto_zero A hA
    Subtype.val Subtype.property positiveScale_tendsto_zero

/-- Each source norm is bounded by its logarithmic error plus the fixed source norm. -/
theorem smoothedTest_logarithmicNorm_le (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    logarithmicNorm (smoothedTest A ε hε) ≤
      logarithmicNorm (fun x ↦ smoothedTest A ε hε x - actualTest A x) +
        logarithmicNorm (actualTest A) :=
  logarithmicNorm_le_sub_add (smoothedTest_integrable A ε hA hε)
    (actualTest_integrable A hA) (smoothedTest_logarithmic_integrable A ε hA hε)
    (actualTest_logarithmic_integrable A hA) (testError_logarithmic_integrable A ε hA hε)

/-- The original unnormalized test belongs to the fixed support window used for form limits. -/
theorem actualTest_support_common (A : ℝ) (hA : 1 ≤ A) :
    Function.support (actualTest A) ⊆ Icc (-(A + 1)) (A + 1) := by
  intro x hx
  have h := actualTest_support_subset A hA hx
  constructor <;> linarith [h.1, h.2]

/-- Positive scales at most one share the fixed source support window explicitly. -/
theorem smoothedTest_support_common (A ε : ℝ) (hA : 1 ≤ A)
    (hε : 0 < ε) (hε1 : ε ≤ 1) :
    Function.support (smoothedTest A ε hε) ⊆ Icc (-(A + 1)) (A + 1) := by
  intro x hx
  have h := smoothedTest_support_subset A ε hA hε hx
  constructor <;> linarith [h.1, h.2]

end

end ZeroLogarithmicConvergence
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
