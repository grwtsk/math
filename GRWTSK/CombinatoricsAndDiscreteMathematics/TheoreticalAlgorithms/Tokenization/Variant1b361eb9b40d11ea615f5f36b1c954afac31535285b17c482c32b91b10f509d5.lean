import Mathematics.SemanticTokenization.SpanFamily

/-! # Ordered, disjoint, region-covering structural tokenizations -/

namespace Mathematics.SemanticTokenization

def Span.ContainsPosition
    {text : TextCarrier}
    (span : Span text)
    (position : Nat) : Prop :=
  span.start ≤ position ∧ position < span.stop

def Covers
    {text : TextCarrier}
    (tokens ignored : List (Span text))
    (region : Span text) : Prop :=
  ∀ position,
    region.ContainsPosition position →
      ∃! span : Span text,
        span ∈ tokens ++ ignored ∧
          span.ContainsPosition position

structure Tokenization (text : TextCarrier) where
  region : Span text
  spans : List (Span text)
  ignored : List (Span text)
  spans_nonempty : spans ≠ []
  ordered :
    spans.Pairwise
      (fun left right => left.stop ≤ right.start)
  disjoint :
    spans.Pairwise
      (fun left right =>
        left.stop ≤ right.start ∨
          right.stop ≤ left.start)
  within_region :
    ∀ span ∈ spans ++ ignored,
      region.start ≤ span.start ∧
        span.stop ≤ region.stop
  covers : Covers spans ignored region

theorem Tokenization.has_token
    {text : TextCarrier}
    (tokenization : Tokenization text) :
    ∃ span, span ∈ tokenization.spans := by
  cases spansEquation : tokenization.spans with
  | nil =>
      exact False.elim
        (tokenization.spans_nonempty spansEquation)
  | cons head tail =>
      exact ⟨head, by simp⟩

end Mathematics.SemanticTokenization
