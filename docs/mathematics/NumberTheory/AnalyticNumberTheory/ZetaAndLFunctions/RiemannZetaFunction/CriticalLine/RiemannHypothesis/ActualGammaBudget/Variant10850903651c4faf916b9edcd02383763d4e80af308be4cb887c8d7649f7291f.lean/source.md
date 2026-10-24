# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualGammaBudget.Variant10850903651c4faf916b9edcd02383763d4e80af308be4cb887c8d7649f7291f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e5d88b8a434fd4329d621d957a0cfb48bc9095f` · SHA-256 `10850903651c4faf916b9edcd02383763d4e80af308be4cb887c8d7649f7291f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualGammaFourierKernel
import ActualCommonMeanGammaBudget

/-! Scratch #146/#313 assembly: the Fourier representation premise is removed.
The endpoint is the actual −archimedeanConstant; its closed form remains open.
Direction: grwtsk contributors. Scratch assembly: OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualGammaBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization BridgeAdmissibility
open ActualCommonMeanZeroSide

theorem sourceGammaValue_identity {A : ℝ} (hA : 1 ≤ A) :
    sourceGammaValue A = -archimedeanConstant +
      2*(∫ t : ℝ in Set.Ioi 0,
        ArchimedeanKernel.weightedDeficit (sourceCorrelation explicitSecondDerivative A) t) :=
  ActualGammaFourierKernel.actual_sourceGamma_identity hA

/-- Actual Fourier-Gamma bound, all real radii, with its actual quarter endpoint. -/
theorem sourceGammaValue_budget {A : ℝ} (hA : 1 ≤ A) :
    -archimedeanConstant ≤ sourceGammaValue A ∧
      sourceGammaValue A ≤ -archimedeanConstant + 390/A^2 :=
  ActualCommonMeanGammaBudget.actualGamma_budget_from_identity hA
    (sourceGammaValue_identity hA)

#print axioms sourceGammaValue_identity
#print axioms sourceGammaValue_budget
end ContinuousResearch.ActualGammaBudget
```
