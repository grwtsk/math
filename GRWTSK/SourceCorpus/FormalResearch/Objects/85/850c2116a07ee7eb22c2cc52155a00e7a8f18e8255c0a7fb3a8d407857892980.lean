import Mathematics.SemiLocalDefect.ResidueDeflection.TraceTransport
import Mathlib.Tactic.Ring

/-!
# Bounded residual trace compensation

When exact covariance is unavailable, the failure is represented by an
operator-valued residual with a proof-bearing trace-ideal bound.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

universe uTest

structure ResidualTraceCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test) where
  residual :
    Arc graph → model.Operator
  compensation :
    ∀ arc,
      operatorConjugate
          system.phaseRepresentation.operations
          (system.transportOperator arc)
          (system.defect arc.head) =
        system.defect arc.tail +
          residual arc
  operatorNorm :
    model.Operator → ℝ
  operatorNorm_nonnegative :
    ∀ operator,
      0 ≤ operatorNorm operator
  localBudget :
    Arc graph → ℝ
  localBudget_nonnegative :
    ∀ arc,
      0 ≤ localBudget arc
  residualBound :
    ∀ arc,
      operatorNorm (residual arc) ≤
        localBudget arc
  traceIdealBound :
    ∀ arc test,
      abs
        (
        (system.packet arc.tail).energy
          test (residual arc)
        ) ≤
        operatorNorm (residual arc) *
          (system.packet arc.tail).packetNormSq
            test

theorem residual_packet_identity
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test)
    (certificate :
      ResidualTraceCompensation system)
    (arc : Arc graph)
    (test : Test) :
    polarPacketEnergy system arc.head test -
        polarPacketEnergy system arc.tail test =
      (system.packet arc.tail).energy
        test (certificate.residual arc) := by
  unfold polarPacketEnergy
  rw [system.transportTraceLaw arc test,
    certificate.compensation arc,
    (system.packet arc.tail).map_add]
  ring

theorem residual_packet_bound
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test)
    (certificate :
      ResidualTraceCompensation system)
    (arc : Arc graph)
    (test : Test) :
    abs
      (
      polarPacketEnergy system arc.head test -
        polarPacketEnergy system arc.tail test
      ) ≤
      certificate.localBudget arc *
        (system.packet arc.tail).packetNormSq
          test := by
  rw [residual_packet_identity
    system certificate arc test]
  exact le_trans
    (certificate.traceIdealBound arc test)
    (mul_le_mul_of_nonneg_right
      (certificate.residualBound arc)
      ((system.packet arc.tail).packetNormSq_nonnegative
        test))

end Mathematics.SemiLocalDefect.ResidueDeflection
