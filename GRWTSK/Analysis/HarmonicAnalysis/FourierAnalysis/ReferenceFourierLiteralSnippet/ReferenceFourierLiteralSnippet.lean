open MeasureTheory FourierTransform Set Complex
open ReferenceFourierScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineExtension

example : zeroExtension referenceVector =ᵐ[volume]
    (Ioi (0 : ℝ)).indicator (fun t : ℝ => Complex.exp (-(t : ℂ))) :=
  reference_zeroExtension_ae

example : Integrable ((zeroExtension referenceVector : FullH) : ℝ → ℂ) :=
  reference_zeroExtension_integrable

example (ξ : ℝ) : (𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ =
    1 / (1 + ((2 * Real.pi * ξ : ℝ) : ℂ) * I) := reference_zeroExtension_fourier ξ

example (ξ : ℝ) : ‖(𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ‖ ^ 2 =
    (1 + (2 * Real.pi * ξ) ^ 2)⁻¹ := reference_zeroExtension_fourier_norm_sq ξ

example : Integrable (fun ξ : ℝ =>
    ‖(𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ‖ ^ 2) ∧
    (∫ ξ : ℝ, ‖(𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ‖ ^ 2) =
      (1 / 2 : ℝ) := reference_zeroExtension_fourier_square_integral
