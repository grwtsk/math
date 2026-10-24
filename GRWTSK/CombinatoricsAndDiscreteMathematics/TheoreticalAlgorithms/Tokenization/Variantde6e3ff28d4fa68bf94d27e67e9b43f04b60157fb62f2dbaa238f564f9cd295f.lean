import Mathematics.SemanticTokenization.SpanFamily

/-!
# Structural tokenizations

Tokenizations certify finite ordering, disjointness, and explicit coverage.
They carry no semantic interpretation.
-/

namespace Mathematics.SemanticTokenization

structure Tokenization (text : TextCarrier) where
  spans : Array (Span text)
  nonempty : 0 < spans.size
  ordered : OrderedSpans spans
  disjoint : PairwiseDisjoint spans
  ignored : Array (IgnoredRegion text)
  covers : Covers spans ignored

namespace Tokenization

variable {text : TextCarrier}

theorem span_valid
    (tokenization : Tokenization text)
    {span : Span text}
    (member : span ∈ tokenization.spans) :
    span.Valid :=
  span.valid

theorem no_overlap (tokenization : Tokenization text) :
    PairwiseDisjoint tokenization.spans :=
  tokenization.disjoint

theorem coverage_sound (tokenization : Tokenization text) :
    Covers tokenization.spans tokenization.ignored :=
  tokenization.covers

end Tokenization

end Mathematics.SemanticTokenization
