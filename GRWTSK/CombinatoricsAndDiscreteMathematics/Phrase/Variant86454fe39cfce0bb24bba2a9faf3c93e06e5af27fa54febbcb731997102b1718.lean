-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PhraseConnectivity.Variantad7911a609532c4d4e7468cd38205234600f6b741ebf91717182b2b6f6ccaf9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad7911a609532c4d4e7468cd38205234600f6b741ebf91717182b2b6f6ccaf9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PhraseConnectivity.Variantad7911a609532c4d4e7468cd38205234600f6b741ebf91717182b2b6f6ccaf9f","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ad7911a609532c4d4e7468cd38205234600f6b741ebf91717182b2b6f6ccaf9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Phrase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.EvidenceCut

/-!
# Finite phrase candidates and connectivity
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PhraseConnectivity.Variantad7911a609532c4d4e7468cd38205234600f6b741ebf91717182b2b6f6ccaf9f

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
