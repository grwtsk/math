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
