# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFullXiCesaroConsumer.Variant14d584b735dd659cd6b6e9e9b55a73353355dc4e7fc59d4ec2a255c003258398

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `090685ae0f1f9a9c8fed622b529b33d3008d14a7` · SHA-256 `14d584b735dd659cd6b6e9e9b55a73353355dc4e7fc59d4ec2a255c003258398`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceRawPsiPrimitiveAdapter
import SourceCesaroPrimitiveConsumer
import SourceCurvatureFollowthrough

/-!
Concrete application of the full closed-psi adapter to the independent actual
Cesaro source. The full signed Xi kernel, true gamma and complementary term are
retained. Research direction: grwtsk contributors. AI construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceFullXiCesaroConsumer

open MeasureTheory
open scoped Interval
open RH16CesaroPrimitive RH16ActualPsiNegativeBlock
open SourceActualPrimitiveFiniteConsumer SourceRawPsiPrimitiveAdapter
open SourceActualPsiInverseSquare SourceMangoldtAbel
open SourceFirstAtomSignedWork RH16CurvatureFollowthrough
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- The original independently defined second primitive equals the complete literal Xi kernel. -/
theorem actualCesaroPrimitive_eq_literalXiKernel (t : ℝ) (ht : Real.log 2 ≤ t) :
    actualCesaroPrimitive t = shiftedPsiFullPrimitive t := by
  exact (actual_nested_primitive_eq_finite_readout t ht).trans
    (shiftedPsiFullPrimitive_eq_actualFiniteSecondReadout t ht).symm

/-- Exact source reconstruction retains the full complementary weighted primitive. -/
theorem actualCesaroPrimitive_eq_full_signed_reconstruction (t : ℝ) (ht : Real.log 2 ≤ t) :
    actualCesaroPrimitive t =
      4 * Real.exp (t / 2) * (mangoldtLogError t + Real.eulerMascheroniConstant -
        shiftedActualChebyshev (Real.exp t) / Real.exp t) - shiftedPsiSecondPrimitive t := by
  rw [actualCesaroPrimitive_eq_literalXiKernel t ht, shiftedPsiFullPrimitive_eq t ht]

/-- Same full Xi arithmetic budget, improved curvature constant at the unchanged radius 91. -/
theorem remaining_lower_of_literal_full_Xi_kernel_budget (M A : ℝ) (hM : 0 ≤ M) (hA : 91 ≤ A)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |shiftedPsiFullPrimitive t| ≤ M * (t - Real.log 2)) :
    -((522 / 91 : ℝ) * M) ≤ remainingAtomWork A := by
  apply remaining_lower_of_actual_finite_row_five M A hM hA
  intro t ht
  rw [← shiftedPsiFullPrimitive_eq_actualFiniteSecondReadout t ht]
  exact hG t ht

/-- A future complete Xi-kernel arithmetic witness instantiates the improved all-real consumer. -/
theorem estimate_of_literal_full_Xi_kernel_budget (M : ℝ) (hM : 0 ≤ M)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |shiftedPsiFullPrimitive t| ≤ M * (t - Real.log 2)) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_actual_finite_row_five M hM
  intro t ht
  rw [← shiftedPsiFullPrimitive_eq_actualFiniteSecondReadout t ht]
  exact hG t ht

/-- Exact full signed source pairing retains the PLUS second curvature kernel. -/
theorem signed_pairing_eq_literalXiKernel (A : ℝ) (hA : 1 ≤ A) :
    RH16CesaroSignedPairing.signedCesaroPairing A =
      ∫ t in Real.log 2..2 * A,
        shiftedPsiFullPrimitive t * deriv (deriv (RH16CesaroKernel.cesaroWeight A)) t := by
  unfold RH16CesaroSignedPairing.signedCesaroPairing
  apply intervalIntegral.integral_congr
  intro t ht
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hlt : Real.log 2 ≤ t := ((Set.uIcc_of_le hL) ▸ ht).1
  dsimp only
  rw [actualCesaroPrimitive_eq_literalXiKernel t hlt]

/-- The weaker signed full-kernel alternative requires no absolute primitive bound. -/
theorem estimate_of_literal_full_Xi_signed_pairing (J : ℝ)
    (hpair : ∀ A : ℝ, 91 ≤ A → -J ≤
      ∫ t in Real.log 2..2 * A,
        shiftedPsiFullPrimitive t * deriv (deriv (RH16CesaroKernel.cesaroWeight A)) t) :
    CorrelationAssembly.EstimateObligation := by
  apply RH16CesaroSignedPairing.estimate_of_signed_pairing J
  intro A hA
  rw [signed_pairing_eq_literalXiKernel A (by linarith)]
  exact hpair A hA

end FormalResearch.RiemannHypothesis.SourceFullXiCesaroConsumer
```
