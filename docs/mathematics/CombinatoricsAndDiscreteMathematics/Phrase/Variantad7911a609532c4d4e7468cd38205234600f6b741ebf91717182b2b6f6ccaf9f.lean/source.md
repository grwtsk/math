# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Phrase.Variantad7911a609532c4d4e7468cd38205234600f6b741ebf91717182b2b6f6ccaf9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45837ab36cd22e1df07488610924ef74a716a38f` · SHA-256 `ad7911a609532c4d4e7468cd38205234600f6b741ebf91717182b2b6f6ccaf9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.EvidenceCut

/-!
# Finite phrase candidates and connectivity
-/

namespace Mathematics.SemanticTokenization

inductive PhraseConnectivity
    {text : TextCarrier}
    (spans : Array (Span text))
  | surfaceAdjacent
      (adjacent :
        ∀ index : Fin spans.size,
          index.val + 1 < spans.size →
          (spans[index]).Adjacent
            (spans[⟨index.val + 1, by assumption⟩]))
  | syntacticallyConnected
      (dependencyEvidence : Finset EvidenceId)
      (nonempty : dependencyEvidence.Nonempty)

structure PhraseCandidate
    (cut : EvidenceCut) where
  spans : Array (Span cut.text)
  nonempty : 0 < spans.size
  ordered : OrderedSpans spans
  connectivity : PhraseConnectivity spans
  context : ContextId

theorem phrase_has_source
    {cut : EvidenceCut}
    (phrase : PhraseCandidate cut) :
    ∃ index : Fin phrase.spans.size,
      (phrase.spans[index]).Valid := by
  let index : Fin phrase.spans.size :=
    ⟨0, phrase.nonempty⟩
  exact ⟨index, (phrase.spans[index]).valid⟩

end Mathematics.SemanticTokenization
```
