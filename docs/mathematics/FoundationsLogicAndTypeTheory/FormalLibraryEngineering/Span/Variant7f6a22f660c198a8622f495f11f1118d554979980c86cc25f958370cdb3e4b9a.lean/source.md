# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Span.Variant7f6a22f660c198a8622f495f11f1118d554979980c86cc25f958370cdb3e4b9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5dcdd7ea80eb5c733eaab9289449552139a33f0` · SHA-256 `7f6a22f660c198a8622f495f11f1118d554979980c86cc25f958370cdb3e4b9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.TextCarrier

/-! # Source-identity-indexed half-open spans -/

namespace Mathematics.SemanticTokenization

structure Span (text : TextCarrier) where
  start : Nat
  stop : Nat
  start_lt_stop : start < stop
  stop_le_length : stop ≤ text.length

def Span.Valid {text : TextCarrier} (span : Span text) : Prop :=
  span.start < span.stop ∧ span.stop ≤ text.length

theorem Span.valid {text : TextCarrier} (span : Span text) :
    span.Valid :=
  ⟨span.start_lt_stop, span.stop_le_length⟩

theorem Span.nonempty {text : TextCarrier} (span : Span text) :
    span.start ≠ span.stop :=
  Nat.ne_of_lt span.start_lt_stop

def Span.SameCoordinates
    {text : TextCarrier}
    (left right : Span text) : Prop :=
  left.start = right.start ∧ left.stop = right.stop

theorem Span.sameCoordinates_refl
    {text : TextCarrier}
    (span : Span text) :
    span.SameCoordinates span :=
  ⟨rfl, rfl⟩

end Mathematics.SemanticTokenization
```
