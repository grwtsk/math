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
