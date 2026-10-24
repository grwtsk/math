# Complete source: GRWTSK.Analysis.FunctionalAnalysis.TraceInvariance.Varianted5431065a67280847623d74e2a70468c2fbcb751a06db7cd45b2177f289fea7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `092aa4b54093126582836851a613fae294f489b4` · SHA-256 `ed5431065a67280847623d74e2a70468c2fbcb751a06db7cd45b2177f289fea7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic.TransportBudget

/-!
# Exact arithmetic trace invariance

Exact packet compensation is insufficient on its own: every non-packet term
must also be invariant, and the correspondence residual must vanish.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic

open Mathematics.GraphAccess

universe uHilbert uPacketTest uArithmeticTest

structure ExactArithmeticTransport
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest}
    (correspondence :
      ArithmeticTraceCorrespondence system) where
  mainInvariant :
    ∀ arc test,
      cut.safeArc arc = true →
        correspondence.mainTerm arc.head
            (correspondence.transportTest
              arc test) =
          correspondence.mainTerm arc.tail test
  regularizationInvariant :
    ∀ arc test,
      cut.safeArc arc = true →
        correspondence.regularizationResidual
            arc.head
            (correspondence.transportTest
              arc test) =
          correspondence.regularizationResidual
            arc.tail test
  bitfieldInvariant :
    ∀ arc test,
      cut.safeArc arc = true →
        correspondence.bitfieldResidual arc.head
            (correspondence.transportTest
              arc test) =
          correspondence.bitfieldResidual
            arc.tail test
  correspondenceExact :
    ∀ node test,
      correspondence.correspondenceResidual
        node test = 0

theorem arithmeticTrace_invariant_of_exactCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest)
    (correspondence :
      ArithmeticTraceCorrespondence system)
    (traceExact :
      Trace.ExactTraceCompensation system)
    (arithmeticExact :
      ExactArithmeticTransport correspondence)
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail)
    (safe : cut.safeArc arc = true) :
    correspondence.arithmeticTrace arc.head
        (correspondence.transportTest arc test) =
      correspondence.arithmeticTrace
        arc.tail test := by
  apply sub_eq_zero.mp
  change
    correspondence.arithmeticDisplacement
      arc test = 0
  rw [arithmeticDisplacement_eq
    system correspondence arc test safe]
  have mainZero :
      correspondence.transportDifference
          correspondence.mainTerm arc test = 0 :=
    sub_eq_zero.mpr
      (arithmeticExact.mainInvariant
        arc test safe)
  have regularizationZero :
      correspondence.transportDifference
          correspondence.regularizationResidual
          arc test = 0 :=
    sub_eq_zero.mpr
      (arithmeticExact.regularizationInvariant
        arc test safe)
  have bitfieldZero :
      correspondence.transportDifference
          correspondence.bitfieldResidual
          arc test = 0 :=
    sub_eq_zero.mpr
      (arithmeticExact.bitfieldInvariant
        arc test safe)
  have correspondenceZero :
      correspondence.transportDifference
          correspondence.correspondenceResidual
          arc test = 0 := by
    unfold ArithmeticTraceCorrespondence.transportDifference
    rw [
      arithmeticExact.correspondenceExact,
      arithmeticExact.correspondenceExact,
      sub_self
    ]
  rw [
    mainZero,
    regularizationZero,
    bitfieldZero,
    correspondenceZero,
    traceExact.exact arc safe,
    system.packet.energy_zero
  ]
  simp

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
```
