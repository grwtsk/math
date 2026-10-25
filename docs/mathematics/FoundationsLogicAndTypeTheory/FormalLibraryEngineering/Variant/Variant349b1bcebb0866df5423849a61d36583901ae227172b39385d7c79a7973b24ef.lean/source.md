# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Variant.Variant349b1bcebb0866df5423849a61d36583901ae227172b39385d7c79a7973b24ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34cd73bb01a5e8d63de788fbe6ffdc0f02e363e8` · SHA-256 `349b1bcebb0866df5423849a61d36583901ae227172b39385d7c79a7973b24ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

inductive Stage where
  | hc0Scope
  | hc1ProjectiveCarrier
  | hc2PrefixToHodge
  | hc3ChowExhaustion
  | hc4CycleClassNaturality
  | hc5aFixedClass
  | hc5bFixedVariety
  | hc5cUniversal
  deriving DecidableEq, Repr

inductive Status where
  | scopeCertified
  | projectiveCarrierCertified
  | rationalHodgeClassCertified
  | cycleCandidateOnly
  | fixedClassCycleMatched
  | prefixComparisonFaithful
  | fixedVarietySurjective
  | universalRationalProjectiveHc
  | refuted
  | unknown
  | unavailable
  | invalid
  deriving DecidableEq, Repr

def hodgeConjectureStatus : Status → Bool
  | .fixedClassCycleMatched => true
  | .fixedVarietySurjective => true
  | .universalRationalProjectiveHc => true
  | .refuted => true
  | _ => false

def variantAllowsStatus (variant : Variant) (status : Status) : Bool :=
  !hodgeConjectureStatus status || variant == .rationalProjective

example : variantAllowsStatus .integralProjective .universalRationalProjectiveHc = false := by
  decide

example : variantAllowsStatus .rationalProjective .fixedClassCycleMatched = true := by
  decide

end NoeoueueHodgeGate
```
