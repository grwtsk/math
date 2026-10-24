
namespace FixedLaplaceBoundaryLiteral
open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter FixedLaplaceContinuation MobiusSourceFilterQuotient
open FixedLaplaceBoundaryScratch
noncomputable section
example : Continuous V := V_continuous
example : ContinuousOn actualLaplace {z : ℂ | 0 ≤ z.re} :=
  actualLaplace_continuousOn_closed
example (z : ℂ) (hz : z ≠ 1 / 2) :
    ContinuousAt (fun w : ℂ => W w * riemannZeta (1 / 2 + w)) z :=
  sourceProduct_continuousAt z hz
example (z : ℂ) (hz : 0 ≤ z.re) (hzp : z ≠ 1 / 2) :
    actualLaplace z = W z * riemannZeta (1 / 2 + z) :=
  actualLaplace_eq_product_closed z hz hzp
example (t : ℝ) :
    (∫ u : ℝ in Ioi 0, (FixedSourceKernel.fixedKernel u : ℂ) *
      Complex.exp ((-((t : ℂ) * Complex.I)) * (u : ℂ))) =
      W ((t : ℂ) * Complex.I) * riemannZeta (1 / 2 + (t : ℂ) * Complex.I) :=
  actualLaplace_boundary t
end
end FixedLaplaceBoundaryLiteral
