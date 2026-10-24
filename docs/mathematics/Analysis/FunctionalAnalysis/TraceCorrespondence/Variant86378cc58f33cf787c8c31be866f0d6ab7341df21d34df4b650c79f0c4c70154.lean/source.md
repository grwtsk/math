# Complete source: GRWTSK.Analysis.FunctionalAnalysis.TraceCorrespondence.Variant86378cc58f33cf787c8c31be866f0d6ab7341df21d34df4b650c79f0c4c70154

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5760858eecbaac5f0aa89f29986f4e7db7777c9b` · SHA-256 `86378cc58f33cf787c8c31be866f0d6ab7341df21d34df4b650c79f0c4c70154`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
