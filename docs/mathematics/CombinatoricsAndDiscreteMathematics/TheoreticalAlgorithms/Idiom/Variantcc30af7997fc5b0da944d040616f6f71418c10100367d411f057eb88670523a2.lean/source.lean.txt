-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IdiomProductivity.Variant1836e75f9a4adc78a732bf80a650e16c0ccbaa2fb9e1489f071433a78e731b55","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1836e75f9a4adc78a732bf80a650e16c0ccbaa2fb9e1489f071433a78e731b55","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IdiomProductivity.Variant1836e75f9a4adc78a732bf80a650e16c0ccbaa2fb9e1489f071433a78e731b55","mathematical_subject":"Computation.DataStructures","original_sha256":"1836e75f9a4adc78a732bf80a650e16c0ccbaa2fb9e1489f071433a78e731b55","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Idiom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Composition

/-! # Evidence-bearing idiom records -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IdiomProductivity.Variant1836e75f9a4adc78a732bf80a650e16c0ccbaa2fb9e1489f071433a78e731b55

namespace Mathematics.SemanticTokenization

inductive IdiomProductivity
  | fixed
  | semiProductive
  | productive
  | unknown
  deriving DecidableEq, Repr

structure IdiomCertificate (text : TextCarrier) where
  idiomId : StableId
  phrase : PhraseCandidate text
  context : Context
  conventionalMeaning : MeaningPayload
  domain : StableId
  productivity : IdiomProductivity
  fixednessEvidence : EvidenceBundle text
  substitutionEvidence : EvidenceBundle text
  provenance : List (ProvenancePath text)
  snapshot : SnapshotId
  context_snapshot_exact :
    context.snapshot = snapshot

structure IdiomRecord (text : TextCarrier) where
  certificate : IdiomCertificate text
  readingClass : ReadingClass
  idiomatic :
    readingClass = .idiomatic

theorem IdiomRecord.is_idiomatic
    {text : TextCarrier}
    (record : IdiomRecord text) :
    record.readingClass = .idiomatic :=
  record.idiomatic

end Mathematics.SemanticTokenization
