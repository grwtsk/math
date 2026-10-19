import Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic.TraceCorrespondence
import Mathlib.Tactic.Ring

/-!
# Arithmetic transport differences
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic

open Mathematics.GraphAccess

universe uHilbert uPacketTest uArithmeticTest

def ArithmeticTraceCorrespondence.transportDifference
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
      ArithmeticTraceCorrespondence system)
    (field :
      ∀ node,
        correspondence.ArithmeticTest node →
          ℝ)
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail) :
    ℝ :=
  field arc.head
      (correspondence.transportTest arc test) -
    field arc.tail test

def ArithmeticTraceCorrespondence.arithmeticDisplacement
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
      ArithmeticTraceCorrespondence system)
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail) :
    ℝ :=
  correspondence.arithmeticTrace arc.head
      (correspondence.transportTest arc test) -
    correspondence.arithmeticTrace
      arc.tail test

theorem arithmeticDisplacement_eq
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
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail)
    (safe : cut.safeArc arc = true) :
    correspondence.arithmeticDisplacement
        arc test =
      correspondence.transportDifference
          correspondence.mainTerm arc test +
        system.packet.energy arc.tail
          (system.compensationDefect arc)
          (correspondence.packetCode
            arc.tail test) +
        correspondence.transportDifference
          correspondence.regularizationResidual
          arc test +
        correspondence.transportDifference
          correspondence.bitfieldResidual
          arc test +
        correspondence.transportDifference
          correspondence.correspondenceResidual
          arc test := by
  unfold ArithmeticTraceCorrespondence.arithmeticDisplacement
  rw [
    correspondence.traceIdentity
      arc.head
      (correspondence.transportTest arc test),
    correspondence.traceIdentity arc.tail test,
    correspondence.packetCode_transport arc test
  ]
  have packetDifference :=
    Trace.packetEnergy_difference_eq_compensationDefect
      system arc
      (correspondence.packetCode arc.tail test)
      safe
  rw [← packetDifference]
  unfold ArithmeticTraceCorrespondence.transportDifference
  ring

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
