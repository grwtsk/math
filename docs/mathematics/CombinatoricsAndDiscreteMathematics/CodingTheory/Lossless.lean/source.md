# Complete source: GRWTSK.Combinatorics.CodingTheory.Lossless

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdec8c7dadd45cda9b5678ea451757364c6684b1` · SHA-256 `e3605638400f59cf7602a34de23ac86969afee61f0655022e3d607a55afcaee1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Certificates.ExactMoment

set_option autoImplicit false

/-!
# Lossless codes retain exact moments

A decoder left inverse is the precise lossless-compression premise. This covers
a verified Huffman codec once its framing and roundtrip have been supplied; it
does not assert that a particular external Huffman implementation is verified,
nor that a code is prefix-free or optimal. A fixed-width digest is not supplied
with a left inverse and does not acquire one from these theorems.
-/

namespace GRWTSK.Combinatorics.CodingTheory

/-- Partial decoding is allowed outside the encoder image. -/
structure Lossless (Source Code : Type*) where
  encode : Source → Code
  decode : Code → Option Source
  roundtrip : ∀ source, decode (encode source) = some source

namespace Lossless

theorem encode_injective {Source Code : Type*} (code : Lossless Source Code) :
    Function.Injective code.encode := by
  intro left right equal
  have decoded := congrArg code.decode equal
  simpa only [code.roundtrip, Option.some.injEq] using decoded

/-- Any accepted decode of an encoded source recovers that very source. -/
theorem decoded_eq_source {Source Code : Type*} (code : Lossless Source Code)
    {source decoded : Source} (readback : code.decode (code.encode source) = some decoded) :
    decoded = source := by
  rw [code.roundtrip] at readback
  exact (Option.some.inj readback).symm

/-- Composing two roundtrips is lossless without an entropy assumption. -/
def comp {Source Middle Code : Type*} (outer : Lossless Middle Code)
    (inner : Lossless Source Middle) : Lossless Source Code where
  encode source := outer.encode (inner.encode source)
  decode encoded := (outer.decode encoded).bind inner.decode
  roundtrip source := by simp only [outer.roundtrip, Option.bind_some, inner.roundtrip]

/-- Bit-level compression cannot merge different exact source checkins. -/
theorem same_checkin_of_encoded_eq {Value Code : Type*}
    (code : Lossless (GRWTSK.Logic.Certificates.ExactMoment.Moment Value) Code)
    {left right : GRWTSK.Logic.Certificates.ExactMoment.Moment Value}
    (equal : code.encode left = code.encode right) : left.checkin = right.checkin :=
  congrArg GRWTSK.Logic.Certificates.ExactMoment.Moment.checkin (code.encode_injective equal)

end Lossless

end GRWTSK.Combinatorics.CodingTheory
```
