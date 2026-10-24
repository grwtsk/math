# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Energy.Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b14b6ffbdea2310937cc272ffca0190d22f16d7d` · SHA-256 `6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Trace.Packet
import Mathematics.SemiLocalDefect.BoundaryCochain

/-!
# Monotone packet energy
-/

namespace Mathematics.SemiLocalDefect.Trace

universe uPrime uTest

def packetEnergy
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (test : Test) : ℝ :=
  packet.energy test (capacity.defect cut)

def packetIncrementEnergy
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (prime : Prime)
    (test : Test) : ℝ :=
  packet.energy test
    (capacity.increment cut prime)

theorem packetEnergy_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (test : Test) :
    0 ≤ packetEnergy capacity packet cut test :=
  packet.nonnegative test _
    (capacity.nonnegative cut)

theorem packetEnergy_monotone
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    {source target : Finset Prime}
    (subset : source ⊆ target)
    (test : Test) :
    packetEnergy capacity packet source test ≤
      packetEnergy capacity packet target test := by
  change
    packet.energy test (capacity.defect source) ≤
      packet.energy test (capacity.defect target)
  apply sub_nonneg.mp
  rw [← packet.map_sub]
  exact packet.nonnegative test _
    (capacity.monotone subset)

theorem packetEnergy_bounded_by_packetNorm
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (test : Test) :
    packetEnergy capacity packet cut test ≤
      packet.packetNormSq test := by
  change
    packet.energy test (capacity.defect cut) ≤
      packet.packetNormSq test
  apply sub_nonneg.mp
  rw [← packet.identity_energy]
  rw [← packet.map_sub]
  exact packet.nonnegative test _
    (capacity.boundedByIdentity cut)

theorem packetIncrementEnergy_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (prime : Prime)
    (test : Test) :
    0 ≤ packetIncrementEnergy
      capacity packet cut prime test :=
  packet.nonnegative test _
    (increment_nonnegative capacity cut prime)

theorem packetIncrementEnergy_eq_difference
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (prime : Prime)
    (test : Test) :
    packetIncrementEnergy capacity packet
        cut prime test =
      packetEnergy capacity packet
          (insert prime cut) test -
        packetEnergy capacity packet cut test := by
  exact packet.map_sub test _ _

def packetPathEnergy
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (path : List Prime)
    (test : Test) : ℝ :=
  packet.energy test
    (boundaryPathSum capacity cut path)

theorem packetPathEnergy_telescope
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (path : List Prime)
    (test : Test) :
    packetPathEnergy capacity packet cut path test =
      packetEnergy capacity packet
          (insertList cut path) test -
        packetEnergy capacity packet cut test := by
  unfold packetPathEnergy packetEnergy
  rw [boundaryPathSum_telescope,
    packet.map_sub]

theorem packetPathEnergy_independent
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    {left right : List Prime}
    (sameEndpoint :
      insertList cut left =
        insertList cut right)
    (test : Test) :
    packetPathEnergy capacity packet cut left test =
      packetPathEnergy capacity packet cut right test := by
  rw [packetPathEnergy_telescope,
    packetPathEnergy_telescope,
    sameEndpoint]

end Mathematics.SemiLocalDefect.Trace
```
