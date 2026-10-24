import Mathematics.SemanticTokenization.Phrase

/-!
# Proposal-only compositional readings
-/

namespace Mathematics.SemanticTokenization

structure CandidateMeaning where
  meaning : MeaningPayload
  readingClass : ReadingClass
  authoritative : Bool
deriving Repr

structure CompositionRule where
  id : RuleId
  snapshot : SnapshotId
  requiredMetadata : Finset MetadataType
  handlesNegation : Bool
  handlesModality : Bool
  handlesCoordination : Bool
  handlesReference : Bool
  handlesFigurativeOverride : Bool
deriving Repr

def CompositionRuleApplies
    (cut : EvidenceCut)
    (rule : CompositionRule)
    (_phrase : PhraseCandidate cut)
    (inputAssertions : Finset AssertionId) : Prop :=
  rule.snapshot = cut.activeSnapshot ∧
  ∀ assertion ∈ inputAssertions,
    cut.isAcceptedAssertion assertion

structure CompositionCertificate
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  rule : CompositionRule
  inputAssertions : Finset AssertionId
  output : CandidateMeaning
  ruleSnapshotMatches :
    rule.snapshot = cut.activeSnapshot
  inputsAccepted :
    ∀ assertion ∈ inputAssertions,
      cut.isAcceptedAssertion assertion
  structuralApplicability :
    CompositionRuleApplies
      cut rule phrase inputAssertions
  outputNonAuthoritative :
    output.authoritative = false

theorem composition_output_is_candidate
    {cut : EvidenceCut}
    {phrase : PhraseCandidate cut}
    (certificate : CompositionCertificate cut phrase) :
    certificate.output.authoritative = false :=
  certificate.outputNonAuthoritative

end Mathematics.SemanticTokenization
