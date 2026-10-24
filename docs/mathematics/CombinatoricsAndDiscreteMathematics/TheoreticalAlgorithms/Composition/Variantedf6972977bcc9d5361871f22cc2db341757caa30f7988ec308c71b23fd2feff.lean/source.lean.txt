import Mathematics.SemanticTokenization.Phrase

/-! # Explicit composition rules and literal baselines -/

namespace Mathematics.SemanticTokenization

structure CompositionRule where
  ruleId : StableId
  headSelectionRule : StableId
  argumentBindingRule : StableId
  scopeRule : StableId
  negationRule : StableId
  modalityRule : StableId
  coordinationRule : StableId
  referenceResolutionRule : StableId
  figurativeOverrideRule : StableId
  compose :
    List String → MeaningPayload

structure CompositionCertificate (text : TextCarrier) where
  phrase : PhraseCandidate text
  context : Context
  inputs : List String
  rule : CompositionRule
  meaning : MeaningPayload
  meaning_exact :
    meaning = rule.compose inputs
  evidence : EvidenceBundle text

structure LiteralReading (text : TextCarrier) where
  composition : CompositionCertificate text
  classification : ReadingClass
  literal_or_unknown :
    classification = .literal ∨
      classification = .unknown

theorem CompositionCertificate.output_exact
    {text : TextCarrier}
    (certificate : CompositionCertificate text) :
    certificate.meaning =
      certificate.rule.compose certificate.inputs :=
  certificate.meaning_exact

end Mathematics.SemanticTokenization
