/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.Analysis.WeakDerivatives.PolynomialBump

/-! # Exact source test for convolution
The actualTest definition below is copied verbatim from math `525b275d6865496f90cf7f175841f172b731ae6b`,
`GRWTSK/Analysis/RealAnalysis/Integration/ZeroSideTargets/Variant86fc70009f49ff3a343acf080f7d4e2d857455209a5acb727d329befcfbf8dc2.lean`,
Git blob `20a1cc51e2bc65f1fc6823720bbf2b04a54acff8`, SHA-256 `86fc70009f49ff3a343acf080f7d4e2d857455209a5acb727d329befcfbf8dc2`.
The five pointwise dependency definitions in canonical CorrelationPairing and
PolynomialBump match their archived SourcePairing/Realization definitions byte
for byte. The test remains unnormalized, with closed-interval zero extension.
The indicator statement retains 0 < A; the L1 statement retains 1 ≤ A.
No H1/logarithmic-norm convergence, smooth explicit formula, zero-sum descent
or RH bridge is supplied. Native compilation/kernel/axiom checks are NOT_RUN.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing.ZeroSideTargets
open GRWTSK.RiemannHypothesis.SourcePairing
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

/-- The exact unnormalized source test, without a realization assumption. -/
def actualTest (A : ℝ) : ℝ → ℝ := dilationTest Realization.explicitSecondDerivative A

/-- The binding preserves the original dilation expression for every real scale. -/
theorem actualTest_eq_dilationTest (A : ℝ) :
    actualTest A = dilationTest Realization.explicitSecondDerivative A := rfl

/-- The existing pointwise source polynomial identity, at positive scale. -/
theorem actualTest_eq_indicator (A : ℝ) (hA : 0 < A) :
    actualTest A = (Set.Icc (-A) A).indicator
      (fun x => Realization.secondInterior A x - Realization.bumpInterior A x / 4) :=
  Realization.explicit_dilationTest_eq_indicator A hA

/-- The existing L1 admission, with its original radius hypothesis retained. -/
theorem actualTest_integrable (A : ℝ) (hA : 1 ≤ A) :
    MeasureTheory.Integrable (actualTest A) MeasureTheory.volume :=
  Realization.explicit_dilationTest_integrable A hA

end
end GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing.ZeroSideTargets
