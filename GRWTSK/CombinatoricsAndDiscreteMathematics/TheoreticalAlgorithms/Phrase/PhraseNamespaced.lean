-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PhraseConnection.Variant0263ddef834c6131f5b27ed6ed5d53cff0843220b134b6c8b8262ade1323fa2a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0263ddef834c6131f5b27ed6ed5d53cff0843220b134b6c8b8262ade1323fa2a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PhraseConnection.Variant0263ddef834c6131f5b27ed6ed5d53cff0843220b134b6c8b8262ade1323fa2a","mathematical_subject":"Computation.DataStructures","original_sha256":"0263ddef834c6131f5b27ed6ed5d53cff0843220b134b6c8b8262ade1323fa2a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Phrase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.TokenGraph

/-! # Finite ordered phrase candidates and reading classes -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PhraseConnection.Variant0263ddef834c6131f5b27ed6ed5d53cff0843220b134b6c8b8262ade1323fa2a

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
