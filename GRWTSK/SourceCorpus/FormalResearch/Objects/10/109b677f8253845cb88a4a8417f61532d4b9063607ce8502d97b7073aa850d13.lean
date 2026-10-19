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
