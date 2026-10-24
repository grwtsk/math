# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Composition.Variant750c12a5e1f2e771cb6abba1fa7f8fc47e8b0a509de3dec47825f999f3a957f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62fc68a2f6a932623929079ffd9918a892ec8240` · SHA-256 `3b0c22534b22fe9a4f321e164580dbaa707bb8f0bd79a6a62e63c11dcdc12c7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CandidateMeaning.Variant86254ebe146714cea727c27d2175db2f5c18cf796688110845462aa4db95686c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86254ebe146714cea727c27d2175db2f5c18cf796688110845462aa4db95686c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CandidateMeaning.Variant86254ebe146714cea727c27d2175db2f5c18cf796688110845462aa4db95686c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"86254ebe146714cea727c27d2175db2f5c18cf796688110845462aa4db95686c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Composition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Phrase

/-!
# Proposal-only compositional readings
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CandidateMeaning.Variant86254ebe146714cea727c27d2175db2f5c18cf796688110845462aa4db95686c

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
