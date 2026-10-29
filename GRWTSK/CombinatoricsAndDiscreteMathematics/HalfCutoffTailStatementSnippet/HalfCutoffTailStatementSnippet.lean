namespace HalfCutoffTailStatementChecks

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

example (Y G : ℕ) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    (∑ g ∈ Ioc Y G, 1 / (g : ℝ)) ≤ 1 := by
  exact HalfCutoffTailScratch.reciprocal_half_cutoff_tail_le Y G hYG hhalf

example (h g : ℕ) :
    Real.sqrt ((h*g^2 : ℕ) : ℝ) = Real.sqrt (h : ℝ) * (g : ℝ) := by
  exact HalfCutoffTailScratch.sqrt_square_scale h g

example (A : ℝ) (h Y G : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |∑ g ∈ Ioc Y G, ThetaRemainder.thetaRemainder A (h*g^2)| ≤
      ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) := by
  exact HalfCutoffTailScratch.thetaRemainder_half_cutoff_tail_abs_le A h Y G hA hh hYG hhalf

end
end HalfCutoffTailStatementChecks
