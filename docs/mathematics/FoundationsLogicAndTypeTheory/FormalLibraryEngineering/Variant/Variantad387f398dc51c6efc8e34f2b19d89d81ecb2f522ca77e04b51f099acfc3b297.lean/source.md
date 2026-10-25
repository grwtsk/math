# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Variant.Variantad387f398dc51c6efc8e34f2b19d89d81ecb2f522ca77e04b51f099acfc3b297

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0af89e404fb4ac7f96398c2340dd5e251e27e5fb` · SHA-256 `ad387f398dc51c6efc8e34f2b19d89d81ecb2f522ca77e04b51f099acfc3b297`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace NoeoueueHodgeGate

inductive Variant where
  | rationalProjective
  | integralProjective
  | rationalKahler
  | originalGeneralized
  | tateArithmetic
  | motivatedCycle
  deriving DecidableEq, Repr

/-- The formal profile is deliberately finite: it stops at the fixed-class
    packet stage. The fixed-variety and universal statements are not members
    of this type and therefore cannot be submitted to this gate. -/
inductive Stage where
  | hc0Scope
  | hc1ProjectiveCarrier
  | hc2PrefixToHodge
  | hc3ChowExhaustion
  | hc4CycleClassNaturality
  | hc5aFixedClass
  deriving DecidableEq, Repr

inductive Status where
  | scopeCertified
  | projectiveCarrierCertified
  | rationalHodgeClassCertified
  | cycleCandidateOnly
  | fixedClassCycleMatched
  | prefixComparisonFaithful
  | refuted
  | unknown
  | unavailable
  | invalid
  deriving DecidableEq, Repr

def hodgeConjectureStatus : Status → Bool
  | .fixedClassCycleMatched => true
  | .refuted => true
  | _ => false

def variantAllowsStatus (variant : Variant) (status : Status) : Bool :=
  !hodgeConjectureStatus status || variant == .rationalProjective

example : variantAllowsStatus .integralProjective .fixedClassCycleMatched = false := by
  decide

example : variantAllowsStatus .rationalProjective .fixedClassCycleMatched = true := by
  decide

end NoeoueueHodgeGate
```
