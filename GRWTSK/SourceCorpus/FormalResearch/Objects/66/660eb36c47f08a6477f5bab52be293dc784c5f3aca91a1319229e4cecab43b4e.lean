import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.OperatorPullback
import Mathematics.SemiLocalDefect.ResidueDeflection.Graph

/-!
# Fixed-Hilbert polar trace system

The graph cut supplies the safe-arc predicate.  Packet covariance and packet
norm transport are proof fields, not consequences of graph scheduling.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

structure PolarTraceSystem
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    (Hilbert : Type uHilbert)
    (Test : Type uTest)
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert] where
  defect :
    graph.Node → HilbertEnd Hilbert
  defect_positive :
    ∀ node,
      (defect node).IsPositive
  transport :
    Arc graph → HilbertEnd Hilbert
  packet :
    PacketTraceModel graph Hilbert Test
  packetCovariant :
    ∀ arc operator test,
      cut.safeArc arc = true →
        packet.energy arc.head operator test =
          packet.energy arc.tail
            (operatorPullback
              (transport arc) operator)
            test
  packetNormTransport :
    ∀ arc test,
      cut.safeArc arc = true →
        packet.packetNormSq arc.head test ≤
          ‖transport arc‖ ^ 2 *
            packet.packetNormSq arc.tail test
  digest : CertificateDigest

def PolarTraceSystem.packetEnergy
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (node : graph.Node)
    (test : Test) : ℝ :=
  system.packet.energy node
    (system.defect node) test

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
