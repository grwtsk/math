# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.HardyDefect.Variant8f1712dba8b09e51811697fa3619ebc7244f1e66ea485780a7ee6873ba1b82a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2819e191d71a512a33f59d3c2a8bb2836e8a737c` · SHA-256 `8f1712dba8b09e51811697fa3619ebc7244f1e66ea485780a7ee6873ba1b82a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Hardy.BlockDecomposition

/-!
# Hardy compression defect realization

Compact positive Hardy defects are not identified with the monotone abstract
capacity until an equality or packet-trace realization is certified.
-/

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime uTest

structure HardyDefectFamily
    (model : OperatorModel)
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  defect : Finset Prime → model.Operator
  selfAdjoint :
    ∀ cut,
      model.SelfAdjoint (defect cut)
  nonnegative :
    ∀ cut,
      model.Nonnegative (defect cut)
  compact : Finset Prime → Prop
  compactProof :
    ∀ cut, compact cut
  digest : RealizationDigest

inductive HardyRealizationLevel
  | operatorEquality
  | packetTraceEquality
  | boundedPacketTraceDefect
deriving DecidableEq, Repr

structure HardyDefectRealization
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (hardy :
      HardyDefectFamily model Prime)
    (Test : Type uTest) where
  level : HardyRealizationLevel
  packetTrace :
    Test → model.Operator → ℝ
  remainder :
    Finset Prime → Test → ℝ
  operatorEquality :
    level = .operatorEquality →
      ∀ cut,
        capacity.defect cut =
          hardy.defect cut
  packetTraceEquality :
    level = .packetTraceEquality →
      ∀ cut test,
        packetTrace test (capacity.defect cut) =
          packetTrace test (hardy.defect cut)
  boundedPacketTraceDefect :
    level = .boundedPacketTraceDefect →
      ∀ cut test,
        packetTrace test (capacity.defect cut) =
          packetTrace test (hardy.defect cut) +
            remainder cut test

end Mathematics.SemiLocalDefect.Hardy
```
