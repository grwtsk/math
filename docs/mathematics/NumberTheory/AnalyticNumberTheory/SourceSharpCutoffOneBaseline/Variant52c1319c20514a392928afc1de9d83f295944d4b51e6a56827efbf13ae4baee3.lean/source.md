# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceSharpCutoffOneBaseline.Variant52c1319c20514a392928afc1de9d83f295944d4b51e6a56827efbf13ae4baee3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2e56f9971491cc349eccce4a188368149f464ab` · SHA-256 `52c1319c20514a392928afc1de9d83f295944d4b51e6a56827efbf13ae4baee3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCutoffOneSharpTail

/-! Apply the explicit cutoff-one ledger to its independently fixed baseline.
Direction and conceptual origin: grwtsk contributors.
Source consumer construction and formalization: OpenAI Codex assistance.
The baseline upper witness remains supplied, as in the established source route. -/
set_option autoImplicit false
noncomputable section
namespace RH16SharpCutoffOneBaseline
open RH16CutoffOneSharpTail RH16ExactOverlapConsumer
open FormalResearch.RiemannHypothesis
open SourcePairing SourceCutoffOneLedger SourceCutoffFlux
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanTranslationGate EstimateTailReduction EstimateMertensResidual

def sharpBaselineResidualBudget (D R : ℝ) : ℝ := max 0 (D + cutoffOneSharpLedgerCost R)

/-- Same real radius as the supplied original baseline; no additional calibration loss. -/
theorem residual_tail_of_baseline (D R : ℝ) (hR : 1 ≤ R)
    (hbaseline : ∀ A : ℝ, R ≤ A → -mainTermAt A 1 (sourceKernelCutoff A) ≤ D) :
    ∀ A : ℝ, R ≤ A → mertensResidual A ≤ sharpBaselineResidualBudget D R := by
  intro A hRA
  have he := residual_eq_cutoffOne_joint_add_error A (hR.trans hRA)
  rw [jointAt_one] at he
  have hl := (abs_le.mp (cutoffOneLedgerError_tail hR hRA)).2
  have hb := hbaseline A hRA
  apply le_trans ?_ (le_max_right _ _)
  linarith

theorem all_real_lower_of_baseline (D R : ℝ) (hR : 1 ≤ R)
    (hbaseline : ∀ A : ℝ, R ≤ A → -mainTermAt A 1 (sourceKernelCutoff A) ≤ D) :
    ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices R,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 - 2 * sharpBaselineResidualBudget D R) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · exact (min_le_right _ _).trans (quadratic_lower_of_residual_upper _ A hA
      (residual_tail_of_baseline D R hR hbaseline A hRA))
  · have hp := prime_contribution_le_finite_budget A R hA (le_of_lt (lt_of_not_ge hRA))
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_left _ _).trans
    unfold sourceQuadraticValue
    linarith

/-- Only the unchanged independent signed baseline is supplied to the literal target. -/
theorem estimate_of_baseline (D R : ℝ) (hR : 1 ≤ R)
    (hbaseline : ∀ A : ℝ, R ≤ A → -mainTermAt A 1 (sourceKernelCutoff A) ≤ D) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail
    ⟨sharpBaselineResidualBudget D R, le_max_left _ _, R, hR,
      residual_tail_of_baseline D R hR hbaseline⟩

end RH16SharpCutoffOneBaseline
```
