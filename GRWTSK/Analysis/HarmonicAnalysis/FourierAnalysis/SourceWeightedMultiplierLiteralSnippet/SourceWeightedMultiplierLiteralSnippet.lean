noncomputable section
open MeasureTheory FourierTransform Complex
open SourceWeightedMultiplierScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceFilterDelta HalfLineExtension

example (ε h t : ℝ) : boundaryMultiplier ε h t =
    (1 / 2 + (t : ℂ) * I) * boundaryFilter ε h t := rfl

example (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖boundaryMultiplier ε h t‖ ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) :=
  boundaryMultiplier_norm_le ε h t hε hsmall hh

variable (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)

example (f : FullH) :
    MemLp (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) 2 volume :=
  frequencyProduct_memLp ε h hε hsmall hh f

example : FullH →L[ℂ] FullH := frequencyMultiplier ε h hε hsmall hh

example (f : FullH) : frequencyMultiplier ε h hε hsmall hh f =ᵐ[volume]
    (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) :=
  frequencyMultiplier_ae ε h hε hsmall hh f

example : sourceMultiplier ε h hε hsmall hh =
    fourierInvCLM ℂ FullH ∘L frequencyMultiplier ε h hε hsmall hh ∘L fourierCLM ℂ FullH := rfl

example (f : FullH) : (𝓕 (sourceMultiplier ε h hε hsmall hh f) : FullH) =ᵐ[volume]
    (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * (𝓕 f : FullH) ξ) :=
  sourceMultiplier_fourier_ae ε h hε hsmall hh f

example (f : FullH) :
    ‖sourceMultiplier ε h hε hsmall hh f‖ ≤ ((4 / 3 : ℝ) * Real.exp (1 / 4)) * ‖f‖ :=
  sourceMultiplier_norm_le ε h hε hsmall hh f

end
