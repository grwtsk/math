import SourceRawPsiPrimitiveAdapter
import SourceCesaroPrimitiveConsumer

/-!
Concrete application of the full closed-psi adapter to the independent actual
Cesaro source. The full signed Xi kernel, true gamma and complementary term are
retained. Research direction: grwtsk contributors. AI construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceFullXiCesaroConsumer

open RH16CesaroPrimitive RH16ActualPsiNegativeBlock
open SourceActualPrimitiveFiniteConsumer SourceRawPsiPrimitiveAdapter
open SourceActualPsiInverseSquare SourceMangoldtAbel
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

/-- A future complete Xi-kernel arithmetic witness instantiates the existing all-real consumer. -/
theorem estimate_of_literal_full_Xi_kernel_budget (M : ℝ) (hM : 0 ≤ M)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |shiftedPsiFullPrimitive t| ≤ M * (t - Real.log 2)) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_actual_cesaro_global M hM
  intro t ht
  rw [actualCesaroPrimitive_eq_literalXiKernel t ht]
  exact hG t ht

end FormalResearch.RiemannHypothesis.SourceFullXiCesaroConsumer
