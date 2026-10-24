# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Reading.Variantc39154d8f7ec63f65c1e4d97e95798c22b323386fc2afe6cccb0cd35b4ef530b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f813d33deea5ff64ae8192ab09cf0543af46da56` · SHA-256 `45d5e8182ea2bd06765ee86e7e89f030ed7f734997794d36f3dd69653c56a383`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.LiteralReading.Variant9d5a76f41fbe8a01d57f98d5f9bf7333c9c3db9a131bbc6ac0929ae3dd6936b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d5a76f41fbe8a01d57f98d5f9bf7333c9c3db9a131bbc6ac0929ae3dd6936b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.LiteralReading.Variant9d5a76f41fbe8a01d57f98d5f9bf7333c9c3db9a131bbc6ac0929ae3dd6936b9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9d5a76f41fbe8a01d57f98d5f9bf7333c9c3db9a131bbc6ac0929ae3dd6936b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Reading.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Composition

/-!
# Literal candidates and externally certified contextual readings
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.LiteralReading.Variant9d5a76f41fbe8a01d57f98d5f9bf7333c9c3db9a131bbc6ac0929ae3dd6936b9

namespace Mathematics.SemanticTokenization

structure LiteralReading
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  composition : CompositionCertificate cut phrase
  lexicalEvidence : Finset EvidenceId
  syntacticEvidence : Finset EvidenceId

structure ContextualReading
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  interpretation : CertifiedInterpretation cut
  sourceMatches :
    interpretation.external.source =
      phrase.spans.toList.toFinset
  contextMatches :
    interpretation.external.context =
      phrase.context

theorem certified_interpretation_has_external_source
    {cut : EvidenceCut}
    (interpretation : CertifiedInterpretation cut) :
    ∃ external,
      interpretation.external = external ∧
      AcceptedInterpretation cut external :=
  no_interpretation_without_external_assertion interpretation

theorem model_candidate_not_theorem_authority
    {cut : EvidenceCut}
    {candidate : CandidateInterpretation cut.text}
    (member : candidate ∈ generateCandidates cut) :
    candidate.authoritative = false :=
  generated_candidates_not_certified member

end Mathematics.SemanticTokenization
```
