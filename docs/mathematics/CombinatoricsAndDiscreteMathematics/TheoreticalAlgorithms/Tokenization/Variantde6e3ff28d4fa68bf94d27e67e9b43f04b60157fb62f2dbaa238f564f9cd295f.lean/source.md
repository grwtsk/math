# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tokenization.Variantde6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `149624126f03fa1999879c6df814ee805941c204` · SHA-256 `de6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
