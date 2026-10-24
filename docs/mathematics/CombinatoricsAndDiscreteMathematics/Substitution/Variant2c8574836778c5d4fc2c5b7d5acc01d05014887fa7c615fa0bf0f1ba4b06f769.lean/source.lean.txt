-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ReplacementSite.Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ReplacementSite.Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Substitution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.ContextualEquivalence
import Mathematics.SemanticTokenization.Phrase

/-!
# Context-bound substitution and synonymy
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ReplacementSite.Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61

namespace Mathematics.SemanticTokenization

structure ReplacementSite
    (text : TextCarrier) where
  container : Span text
  site : Span text
  contained : container.Contains site

structure SubstitutedText where
  text : TextCarrier
  provenanceDigest : Digest
deriving Repr

structure SubstitutionCertificate
    (cut : EvidenceCut)
    (left right : PhraseCandidate cut) where
  site : ReplacementSite cut.text
  sourceContext : ContextId
  substitutedText : SubstitutedText
  grammaticalValidity : Prop
  protectedProfile : ProtectedFeatureProfile
  tolerance : ToleranceSpecification
  leftMeaning : ConceptProfile cut
  rightMeaning : ConceptProfile cut
  meaningPreserved :
    ExactContextualEquivalent
      protectedProfile leftMeaning rightMeaning ∨
    TolerablyEquivalent
      tolerance leftMeaning rightMeaning
  registerPreserved : Prop
  discourseCommitmentsPreserved : Prop
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  snapshot : SnapshotId
  snapshotMatches :
    snapshot = cut.activeSnapshot

structure ContextualSynonymyCertificate
    (cut : EvidenceCut)
    (left right : PhraseCandidate cut) where
  context : ContextId
  task : TaskId
  tolerance : ToleranceSpecification
  leftProfile : ConceptProfile cut
  rightProfile : ConceptProfile cut
  equivalence :
    TolerablyEquivalent
      tolerance leftProfile rightProfile
  substitution :
    SubstitutionCertificate cut left right

theorem synonymy_requires_substitution
    {cut : EvidenceCut}
    {left right : PhraseCandidate cut}
    (certificate :
      ContextualSynonymyCertificate cut left right) :
    Nonempty (SubstitutionCertificate cut left right) :=
  ⟨certificate.substitution⟩

structure GlobalSynonymyCertificate
    (cut : EvidenceCut)
    (left right : PhraseCandidate cut) where
  contexts : Finset ContextId
  contexts_nonempty : contexts.Nonempty
  completeForDeclaredScope : Prop
  contextualCertificates :
    ∀ context ∈ contexts,
      ContextualSynonymyCertificate cut left right

end Mathematics.SemanticTokenization
