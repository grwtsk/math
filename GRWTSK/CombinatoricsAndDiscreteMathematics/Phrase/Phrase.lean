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
