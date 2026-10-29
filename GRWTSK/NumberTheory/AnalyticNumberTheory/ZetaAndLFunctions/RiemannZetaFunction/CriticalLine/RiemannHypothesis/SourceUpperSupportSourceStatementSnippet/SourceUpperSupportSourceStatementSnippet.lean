namespace SourceUpperSupportStatementChecks

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 2*x) : SourceSampling.sourceSamplingKernel A x = 0 := by
  exact SourceUpperSupport.sourceSamplingKernel_zero_of_two_mul_ge A x hx hcut

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 2*(q:ℝ)) : ThetaKernelTransport.thetaKernel A q = 0 := by
  exact SourceUpperSupport.thetaKernel_zero_of_two_mul_ge A q hq hcut

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q = SourceSampling.sourceSamplingKernel A q := by
  exact SourceUpperSupport.thetaKernel_eq_sourceSamplingKernel A q hA hq hcut

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 4*x) :
    SourceSampling.sourceSamplingKernel A x =
      (if 2*x < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*x)) else 0) +
      (if 3*x < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*x)) else 0) := by
  exact SourceUpperSupport.sourceSamplingKernel_eq_two_channels A x hx hcut

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q =
      (if 2*(q:ℝ) < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*(q:ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*(q:ℝ))) else 0) +
      (if 3*(q:ℝ) < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*(q:ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*(q:ℝ))) else 0) := by
  exact SourceUpperSupport.thetaKernel_eq_two_channels A q hA hq hcut

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 2*(q:ℝ)) :
    ThetaRemainder.thetaRemainder A q =
      -CorrelationSecondMoment.sourceRankOneCoefficient A / (q:ℝ) := by
  exact SourceUpperSupport.thetaRemainder_eq_neg_rankOne_of_two_mul_ge A q hq hcut

end
end SourceUpperSupportStatementChecks
