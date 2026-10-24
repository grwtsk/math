# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Composition.Variant86254ebe146714cea727c27d2175db2f5c18cf796688110845462aa4db95686c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26e3ac437edb6f1c6247b592f6a1dd7973c21a0d` · SHA-256 `86254ebe146714cea727c27d2175db2f5c18cf796688110845462aa4db95686c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
