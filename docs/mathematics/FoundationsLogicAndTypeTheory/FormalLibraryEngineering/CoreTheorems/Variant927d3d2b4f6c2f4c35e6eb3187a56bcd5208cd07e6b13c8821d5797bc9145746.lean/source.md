# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoreTheorems.Variant927d3d2b4f6c2f4c35e6eb3187a56bcd5208cd07e6b13c8821d5797bc9145746

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `208ba165381b72d2e6492d97583db3938acb3eca` · SHA-256 `927d3d2b4f6c2f4c35e6eb3187a56bcd5208cd07e6b13c8821d5797bc9145746`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Foundation
import Mathematics.SemiLocalDefect.Trace.Energy

/-!
# Core structural theorems
-/

namespace Mathematics.SemiLocalDefect

universe uPrime uTest

structure PositiveClosedBoundaryCochain
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) where
  positive :
    ∀ cut prime,
      model.Nonnegative
        (capacity.increment cut prime)
  closed :
    ∀ cut left right,
      boundaryCurvature
        capacity cut left right = 0

theorem positiveCapacity_boundaryCochain
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) :
    PositiveClosedBoundaryCochain capacity where
  positive :=
    increment_nonnegative capacity
  closed :=
    boundaryCurvature_eq_zero capacity

structure FinitePacketEnergyBound
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet :
      Trace.DefectPacket model Test) where
  nonnegative :
    ∀ cut test,
      0 ≤ Trace.packetEnergy
        capacity packet cut test
  bounded :
    ∀ cut test,
      Trace.packetEnergy
          capacity packet cut test ≤
        packet.packetNormSq test

theorem positiveCapacity_finiteEnergy
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet :
      Trace.DefectPacket model Test) :
    FinitePacketEnergyBound capacity packet where
  nonnegative :=
    Trace.packetEnergy_nonnegative
      capacity packet
  bounded :=
    Trace.packetEnergy_bounded_by_packetNorm
      capacity packet

end Mathematics.SemiLocalDefect
```
