import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.All

/-!
# Arithmetic trace correspondence

The arithmetic functional is decomposed into a main term, packet energy, and
three separately visible residuals.  This identity is the only authority edge
from arithmetic data into the fixed-Hilbert packet model.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic

open Mathematics.GraphAccess

universe uHilbert uPacketTest uArithmeticTest

structure ArithmeticTraceCorrespondence
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest) where
  ArithmeticTest :
    graph.Node → Type uArithmeticTest
  transportTest :
    ∀ arc : Arc graph,
      ArithmeticTest arc.tail →
        ArithmeticTest arc.head
  packetCode :
    ∀ node,
      ArithmeticTest node → PacketTest
  packetCode_transport :
    ∀ arc test,
      packetCode arc.head
          (transportTest arc test) =
        packetCode arc.tail test
  arithmeticTrace :
    ∀ node,
      ArithmeticTest node → ℝ
  mainTerm :
    ∀ node,
      ArithmeticTest node → ℝ
  regularizationResidual :
    ∀ node,
      ArithmeticTest node → ℝ
  bitfieldResidual :
    ∀ node,
      ArithmeticTest node → ℝ
  correspondenceResidual :
    ∀ node,
      ArithmeticTest node → ℝ
  traceIdentity :
    ∀ node test,
      arithmeticTrace node test =
        mainTerm node test +
          system.packetEnergy node
            (packetCode node test) +
          regularizationResidual node test +
          bitfieldResidual node test +
          correspondenceResidual node test
  digest : CertificateDigest

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
