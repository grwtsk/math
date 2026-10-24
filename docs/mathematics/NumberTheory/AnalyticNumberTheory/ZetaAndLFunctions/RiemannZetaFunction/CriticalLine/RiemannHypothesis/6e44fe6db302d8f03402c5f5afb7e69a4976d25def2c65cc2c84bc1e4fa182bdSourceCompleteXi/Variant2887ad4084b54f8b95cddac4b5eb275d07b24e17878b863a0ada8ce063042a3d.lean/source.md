# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.6e44fe6db302d8f03402c5f5afb7e69a4976d25def2c65cc2c84bc1e4fa182bdSourceCompleteXi.Variant2887ad4084b54f8b95cddac4b5eb275d07b24e17878b863a0ada8ce063042a3d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea89734f3e29cefdcc008fb61feeb7d903a0536c` · SHA-256 `2887ad4084b54f8b95cddac4b5eb275d07b24e17878b863a0ada8ce063042a3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualXiFixedFront
import SourceCompleteXiComplementConsumer
import SourceLeadingCesaroPropagation

/-!
The fixed front is actually bounded and the favorable finite block is actually
applied. Only the complete remaining physical tail receives an open arithmetic
budget. Return through the direct source/prefix consumer and apply the newer
sharp leading calibration at its own radius. Direction and evaluation:
grwtsk contributors. Formal construction: OpenAI Codex assistance.
-/

set_option autoImplicit false
noncomputable section
namespace RH16CompleteXiTail

open MeasureTheory
open RH16ActualXiPositiveBlock RH16ActualXiFixedFront RH16CompleteXiComplement
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.RiemannHypothesis.SourceLeadingCesaroPropagation
open FormalResearch.RiemannHypothesis.SourceLeadingTailBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization

/-- The full retained physical tail, not an absolute tail or a partial head. -/
def completeXiTail (A : ℝ) : ℝ :=
  ∫ y in 7..Real.exp (2 * A), actualTransformedXiBlockDensity A y

/-- The fixed front is paid once; the positive eta margin is retained. -/
def tailAtomBudget (K : ℝ) : ℝ := complementAtomBudget (fixedFrontBudget + K)

/-- Discharge the finite-front portion of the complete-complement hypothesis. -/
theorem complete_complement_lower_of_tail (K A : ℝ) (hA : 40 ≤ A)
    (htail : -K ≤ completeXiTail A) :
    -(fixedFrontBudget + K) ≤ completeXiComplement A := by
  have hf := actual_transformed_front_integral_lower A hA
  unfold completeXiComplement completeXiTail at *
  linarith only [hf, htail]

/-- The actual uniform tail premise would supply the exact requested atom-work witness. -/
theorem atom_witness_of_complete_tail (K R : ℝ)
    (htail : ∀ A : ℝ, R ≤ A → -K ≤ completeXiTail A) :
    ∃ D : ℝ, 0 ≤ D ∧ ∃ Rstar : ℝ, 40 ≤ Rstar ∧
      ∀ A : ℝ, Rstar ≤ A → -D ≤ remainingAtomWork A := by
  refine ⟨tailAtomBudget K, complementAtomBudget_nonneg _, calibratedRadius R, ?_, ?_⟩
  · have h : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
    linarith
  · intro A hA
    apply remaining_lower_of_complete_complement (fixedFrontBudget + K) A
    · exact (le_max_left 91 R).trans hA
    · exact complete_complement_lower_of_tail K A (by
        have h : (91 : ℝ) ≤ A := (le_max_left 91 R).trans hA
        linarith) (htail A ((le_max_right 91 R).trans hA))

/-- The full source return retains the finite prefix through max(91,R). -/
theorem all_real_lower_of_complete_tail (K R : ℝ)
    (htail : ∀ A : ℝ, R ≤ A → -K ≤ completeXiTail A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 * (tailAtomBudget K - 3 / 8 +
          criticalBaselineCorrection (calibratedRadius R))) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_remaining_signed_tail
    (tailAtomBudget K) (calibratedRadius R) (by
      have h : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
      linarith)
  intro A hA
  apply remaining_lower_of_complete_complement (fixedFrontBudget + K) A
  · exact (le_max_left 91 R).trans hA
  · exact complete_complement_lower_of_tail K A (by
      have h : (91 : ℝ) ≤ A := (le_max_left 91 R).trans hA
      linarith) (htail A ((le_max_right 91 R).trans hA))

/-- Conditional #16 proof term; the complete signed tail is not bounded here. -/
theorem estimate_of_complete_tail (K R : ℝ)
    (htail : ∀ A : ℝ, R ≤ A → -K ≤ completeXiTail A) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_lower_of_complete_tail K R htail⟩

/-- Apply the same actual budget to the residual without extra endpoint/ledger losses. -/
theorem residual_upper_of_complete_tail (K R A : ℝ) (hA : calibratedRadius R ≤ A)
    (htail : -K ≤ completeXiTail A) :
    mertensResidual A ≤ tailAtomBudget K - 3 / 8 +
      criticalBaselineCorrection (calibratedRadius R) := by
  apply residual_upper_of_remaining_signed_lower (tailAtomBudget K) (calibratedRadius R) A
  · have h : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
    linarith
  · exact hA
  · apply remaining_lower_of_complete_complement (fixedFrontBudget + K) A
    · exact (le_max_left 91 R).trans hA
    · exact complete_complement_lower_of_tail K A (by
        have h : (91 : ℝ) ≤ A := (le_max_left 91 R).trans hA
        linarith) htail

/-- Reuse the newer sharp leading calibration only on the common valid domain. -/
theorem actual_leading_upper_of_complete_tail (K R A : ℝ)
    (hA : max 25600 (calibratedRadius R) ≤ A) (htail : -K ≤ completeXiTail A) :
    actualLeadingRenormalizedTail A ≤ tailAtomBudget K - 3 / 8 +
      criticalBaselineCorrection (calibratedRadius R) - (riemannZeta (1 / 2)).re +
        3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  exact residual_upper_of_complete_tail K R A ((le_max_right _ _).trans hA) htail

end RH16CompleteXiTail
```
