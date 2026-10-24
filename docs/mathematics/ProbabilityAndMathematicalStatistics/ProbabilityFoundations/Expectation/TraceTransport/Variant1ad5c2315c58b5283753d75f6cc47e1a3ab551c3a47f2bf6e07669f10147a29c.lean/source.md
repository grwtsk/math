# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.TraceTransport.Variant1ad5c2315c58b5283753d75f6cc47e1a3ab551c3a47f2bf6e07669f10147a29c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63906672a9ffa4c04c3862ce11cc4e714b92b0d0` · SHA-256 `1ad5c2315c58b5283753d75f6cc47e1a3ab551c3a47f2bf6e07669f10147a29c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.PhaseRepresentation
import Mathematics.SemiLocalDefect.ResidueDeflection.PolarizedSheaf
import Mathematics.SemiLocalDefect.Trace.Packet

/-!
# Covariant transport of defect packets

Trace conservation is derived from an explicit `T* D T` covariance law.  The
phase representation, positive-amplitude channel, packet covariance, and total
transport coupling remain distinct certificate fields.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

universe uTest

def operatorConjugate
    {model : OperatorModel}
    (operations :
      Hardy.OperatorComposition model)
    (transport operator : model.Operator) :
    model.Operator :=
  operations.compose
    (operations.adjoint transport)
    (operations.compose operator transport)

structure PolarTraceSystem
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    (model : OperatorModel)
    (Test : Type uTest) where
  polarized : PolarizedTransport cut
  phaseRepresentation :
    PhaseOperatorRepresentation model
  phaseOperator :
    Arc graph → model.Operator
  phase_realized :
    ∀ arc,
      phaseOperator arc =
        phaseRepresentation.operator
          (polarized.phase.phase arc)
  transportOperator :
    Arc graph → model.Operator
  transportCoupling : Prop
  transportCouplingProof :
    transportCoupling
  defect :
    graph.Node → model.Operator
  defect_selfAdjoint :
    ∀ node,
      model.SelfAdjoint (defect node)
  packet :
    graph.Node →
      Trace.DefectPacket model Test
  packetCovariance : Prop
  packetCovarianceProof :
    packetCovariance
  transportTraceLaw :
    ∀ arc test,
      (packet arc.head).energy test
          (defect arc.head) =
        (packet arc.tail).energy test
          (operatorConjugate
            phaseRepresentation.operations
            (transportOperator arc)
            (defect arc.head))

def polarPacketEnergy
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test)
    (node : graph.Node)
    (test : Test) : ℝ :=
  (system.packet node).energy test
    (system.defect node)

structure ExactTraceCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test) where
  covariance :
    ∀ arc,
      operatorConjugate
          system.phaseRepresentation.operations
          (system.transportOperator arc)
          (system.defect arc.head) =
        system.defect arc.tail

theorem traceConserved_on_arc
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test)
    (certificate :
      ExactTraceCompensation system)
    (arc : Arc graph)
    (test : Test) :
    polarPacketEnergy system arc.head test =
      polarPacketEnergy system arc.tail test := by
  unfold polarPacketEnergy
  rw [system.transportTraceLaw arc test,
    certificate.covariance arc]

theorem traceConserved_on_path
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test)
    (certificate :
      ExactTraceCompensation system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test) :
    polarPacketEnergy system target test =
      polarPacketEnergy system source test := by
  induction path with
  | nil =>
      rfl
  | cons arc rest induction =>
      exact induction.trans
        (traceConserved_on_arc
          system certificate arc test)

end Mathematics.SemiLocalDefect.ResidueDeflection
```
