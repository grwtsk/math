# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceContractedXiConsequences.Variant4f951bf50db50271e3a0259ddce211e196316120f46c20298c97eb317c5686bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d009062602ac1956fbd805eff31746e9b1f7809` · SHA-256 `4f951bf50db50271e3a0259ddce211e196316120f46c20298c97eb317c5686bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceFullXiOuterContraction
import SourceLeadingCesaroPropagation
import SourceResidualBudget

/-!
Propagate the exact complete finite Xi contraction to the original residual,
an explicit original all-real lower constant, and the sharp leading readout.
The joint signed arithmetic lower witness remains an explicit input.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceContractedXiConsequences
open MeasureTheory
open SourceFullXiOuterContraction SourceLeadingCesaroPropagation
open SourceActualPsiInverseSquare SourcePositiveSampling SourcePairing
open SourceFirstAtomSignedWork RH16ResumeBudget
open RH16ResumeApplication SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization
noncomputable section

theorem residual_upper_of_contracted_Xi (J A : ℝ) (hA : 91 ≤ A)
    (hJ : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    mertensResidual A ≤ J - 3 / 8 + criticalBaselineCorrection 91 := by
  exact residual_upper_of_remaining_signed_lower J 91 A (by norm_num) hA
    (remaining_lower_of_contracted_pairing J A hA hJ)

theorem all_real_lower_of_contracted_Xi (J : ℝ)
    (hJ : ∀ A : ℝ, 91 ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower 91)
        (archimedeanMultiplier 0 - 2 * (J - 3 / 8 + criticalBaselineCorrection 91)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail
    (J - 3 / 8 + criticalBaselineCorrection 91) 91 (by norm_num)
  intro A hA
  exact residual_upper_of_contracted_Xi J A hA (hJ A hA)

theorem actual_leading_upper_of_contracted_Xi (J A : ℝ) (hA : 25600 ≤ A)
    (hJ : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    actualLeadingRenormalizedTail A ≤ J - 3 / 8 + criticalBaselineCorrection 91 -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ hA
  exact residual_upper_of_contracted_Xi J A (by linarith) hJ

end
end FormalResearch.RiemannHypothesis.SourceContractedXiConsequences
```
