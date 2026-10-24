# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Phrase.Variant0263ddef834c6131f5b27ed6ed5d53cff0843220b134b6c8b8262ade1323fa2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11d5c0e529b9f09a30fa032f1b996b1f281c69c4` · SHA-256 `0263ddef834c6131f5b27ed6ed5d53cff0843220b134b6c8b8262ade1323fa2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.TokenGraph

/-! # Finite ordered phrase candidates and reading classes -/

namespace Mathematics.SemanticTokenization

inductive PhraseConnection
  | surfaceAdjacent
  | certifiedSyntactic (edgeId : StableId)
  deriving DecidableEq, Repr

structure PhraseCandidate (text : TextCarrier) where
  phraseId : StableId
  spans : List (Span text)
  spans_nonempty : spans ≠ []
  ordered :
    spans.Pairwise
      (fun left right => left.start ≤ right.start)
  connection : PhraseConnection

inductive ReadingClass
  | literal
  | technical
  | collocational
  | metaphorical
  | idiomatic
  | mixed
  | unknown
  deriving DecidableEq, Repr

structure ClassifiedReading (text : TextCarrier) where
  readingId : StableId
  phrase : PhraseCandidate text
  context : Context
  readingClass : ReadingClass
  externalReading : ExternalContextualReading text
  context_exact :
    externalReading.context.contextId = context.contextId

end Mathematics.SemanticTokenization
```
