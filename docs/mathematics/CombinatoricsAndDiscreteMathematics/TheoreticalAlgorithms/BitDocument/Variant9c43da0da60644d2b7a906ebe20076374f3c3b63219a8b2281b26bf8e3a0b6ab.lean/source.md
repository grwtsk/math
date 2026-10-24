# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BitDocument.Variant9c43da0da60644d2b7a906ebe20076374f3c3b63219a8b2281b26bf8e3a0b6ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e72b184bfc77f5d6b134d8bf013776241f3f833e` · SHA-256 `9c43da0da60644d2b7a906ebe20076374f3c3b63219a8b2281b26bf8e3a0b6ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Codec.Source

/-!
# Canonical bit-document semantics

This is the provider-neutral semantic layer shared by runtime correspondence
tests.  It fixes prefix and payload bit order and the single final-LF framing;
resource limits and successful UTF-8 decoding remain explicit witnesses.
-/

namespace BitMatrix.Codec

/-- A byte sequence paired with the exact Lean string whose UTF-8 encoding it is. -/
structure Utf8Payload where
  bytes : Array UInt8
  text : String
  encoding : text.toUTF8.data = bytes

/-- Least-significant-bit-first unsigned length prefix. -/
def lengthPrefixDigits (width length : Nat) : List Bool :=
  (List.range width).map (Nat.testBit length)

/-- Most-significant-bit-first digits of one byte. -/
def byteDigitsMSB (byte : UInt8) : List Bool :=
  (List.range 8).map fun index =>
    Nat.testBit byte.toNat (7 - index)

/-- Most-significant-bit-first payload digits, preserving byte order. -/
def payloadDigitsMSB (payload : Utf8Payload) : List Bool :=
  payload.bytes.toList.flatMap byteDigitsMSB

/-- Digit-level syntax; serialization adds the mandatory final LF byte. -/
structure BitDocument where
  digits : List Bool
  deriving DecidableEq, Repr

/-- Convert one Boolean digit to canonical ASCII. -/
def digitByte : Bool → UInt8
  | false => 48
  | true => 49

/-- Canonical ASCII serialization with exactly one final LF. -/
def BitDocument.serialize (document : BitDocument) : List UInt8 :=
  document.digits.map digitByte ++ [10]

/-- Canonical encoder for a fixed prefix width. -/
def encodeBitDocument (prefixWidth : Nat) (payload : Utf8Payload) : BitDocument :=
  ⟨lengthPrefixDigits prefixWidth payload.bytes.size ++ payloadDigitsMSB payload⟩

/-- Exact declarative encode/decode relation. -/
def EncodeDecodeRelation
    (prefixWidth : Nat)
    (payload : Utf8Payload)
    (document : BitDocument) : Prop :=
  document = encodeBitDocument prefixWidth payload

/--
A successful fail-closed decode witness.  The explicit maximum is part of the
relation; length agreement and UTF-8 validity are supplied by the exact payload
and canonical re-encoding rather than inferred from an example.
-/
structure DecodeWitness
    (prefixWidth explicitMaximum : Nat)
    (document : BitDocument) where
  payload : Utf8Payload
  withinExplicitMaximum : payload.bytes.size ≤ explicitMaximum
  exactEncoding : EncodeDecodeRelation prefixWidth payload document

@[simp]
theorem lengthPrefixDigits_length (width length : Nat) :
    (lengthPrefixDigits width length).length = width := by
  simp [lengthPrefixDigits]

@[simp]
theorem byteDigitsMSB_length (byte : UInt8) :
    (byteDigitsMSB byte).length = 8 := by
  simp [byteDigitsMSB]

@[simp]
theorem serialize_final_lf (document : BitDocument) :
    document.serialize.getLast? = some 10 := by
  simp [BitDocument.serialize]

theorem decodeWitness_declared_length_matches
    {prefixWidth explicitMaximum : Nat}
    {document : BitDocument}
    (witness : DecodeWitness prefixWidth explicitMaximum document) :
    document.digits =
      lengthPrefixDigits prefixWidth witness.payload.bytes.size ++
        payloadDigitsMSB witness.payload := by
  simpa [EncodeDecodeRelation, encodeBitDocument] using
    congrArg BitDocument.digits witness.exactEncoding

end BitMatrix.Codec
```
