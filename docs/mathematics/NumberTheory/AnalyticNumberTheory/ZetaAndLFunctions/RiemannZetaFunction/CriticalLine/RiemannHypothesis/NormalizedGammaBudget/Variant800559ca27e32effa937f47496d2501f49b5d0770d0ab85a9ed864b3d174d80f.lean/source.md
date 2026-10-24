# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NormalizedGammaBudget.Variant800559ca27e32effa937f47496d2501f49b5d0770d0ab85a9ed864b3d174d80f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b758682ba01e501403f8c06b13ae215b177a3d81` · SHA-256 `800559ca27e32effa937f47496d2501f49b5d0770d0ab85a9ed864b3d174d80f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import QuarterDigammaEndpoint
import ActualGammaBudget

/-! Scratch #146/#313: exact paper endpoint, unchanged Fourier G, actual budget.
Neither G nor the independently specified constant is defined by the desired
equality. Direction: grwtsk contributors. Scratch assembly: OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.NormalizedGammaBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization BridgeAdmissibility
open ActualCommonMeanZeroSide

def paperEndpoint : ℝ := -Real.eulerMascheroniConstant -
  3*Real.log 2 - Real.pi/2 - Real.log Real.pi

theorem actual_endpoint_eq_paper : -archimedeanConstant = paperEndpoint := by
  unfold archimedeanConstant paperEndpoint
  rw [QuarterDigammaEndpoint.actual_quarter_real_value]
  ring

theorem sourceGammaValue_identity {A : ℝ} (hA : 1 ≤ A) :
    sourceGammaValue A = paperEndpoint +
      2*(∫ t : ℝ in Set.Ioi 0,
        ArchimedeanKernel.weightedDeficit (sourceCorrelation explicitSecondDerivative A) t) := by
  rw [← actual_endpoint_eq_paper]
  exact ActualGammaBudget.sourceGammaValue_identity hA

/-- Actual Gamma correction budget at the paper's exact normalized endpoint. -/
theorem sourceGammaValue_budget {A : ℝ} (hA : 1 ≤ A) :
    paperEndpoint ≤ sourceGammaValue A ∧ sourceGammaValue A ≤ paperEndpoint+390/A^2 := by
  rw [← actual_endpoint_eq_paper]
  exact ActualGammaBudget.sourceGammaValue_budget hA

#print axioms paperEndpoint
#print axioms actual_endpoint_eq_paper
#print axioms sourceGammaValue_identity
#print axioms sourceGammaValue_budget
end ContinuousResearch.NormalizedGammaBudget
```
