import Mathematics.SemanticTokenization.ContextualEquivalence
import Mathematics.SemanticTokenization.Phrase

/-!
# Context-bound substitution and synonymy
-/

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
