# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ShiftSemantics.Variant36edc2ca026a08b1d0e602e4934bf5dc3ba5951911a6649b60a597bde52dda97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75146fe466dbf46a803f6e7defd09b824d9c41cf` · SHA-256 `36edc2ca026a08b1d0e602e4934bf5dc3ba5951911a6649b60a597bde52dda97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.MobiusOntology.TwistedBitfield

/-!
# Logical shifts and decoder-scoped scaling

A shift is a coordinate operation.  Numerical scaling is available only
through a decoder theorem on a certified no-overflow domain.
-/

namespace Mathematics.MobiusOntology

universe u

def hammingDistance
    (left right : BooleanBitfield width) : Nat :=
  (Finset.univ.filter fun index => left index != right index).card

def zeroFillShift
    (amount width : Nat)
    (bitfield : BooleanBitfield width) :
    BooleanBitfield width :=
  fun index =>
    if inRange : index.val + amount < width then
      bitfield ⟨index.val + amount, inRange⟩
    else
      false

/-- A logical shift carries its exact Hamming-Lipschitz theorem. -/
structure LogicalShift (width : Nat) where
  amount : Nat
  apply : BooleanBitfield width → BooleanBitfield width
  coordinateExact :
    apply = zeroFillShift amount width
  hammingLipschitz : Nat
  hammingBound :
    ∀ left right,
      hammingDistance (apply left) (apply right) ≤
        hammingLipschitz * hammingDistance left right

inductive OverflowBehavior
  | truncation
  | wraparound
  | saturation
  | signChange
  | undefined
  deriving DecidableEq, Repr

structure FixedPointDecoder
    (Value : Type u) (width : Nat) where
  decode : BooleanBitfield width → Value

structure ShiftScaleCertificate
    (Value : Type u) (width : Nat)
    (shift : LogicalShift width)
    (decoder : FixedPointDecoder Value width) where
  noOverflow : BooleanBitfield width → Prop
  scale : Value → Value
  exactOnDomain :
    ∀ bitfield,
      noOverflow bitfield →
        decoder.decode (shift.apply bitfield) =
          scale (decoder.decode bitfield)
  outsideDomain : OverflowBehavior

end Mathematics.MobiusOntology
```
