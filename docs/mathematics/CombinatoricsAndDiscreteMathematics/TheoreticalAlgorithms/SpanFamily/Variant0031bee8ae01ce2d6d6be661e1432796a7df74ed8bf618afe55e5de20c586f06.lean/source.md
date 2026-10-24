# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SpanFamily.Variant0031bee8ae01ce2d6d6be661e1432796a7df74ed8bf618afe55e5de20c586f06

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9363a24ac0d7a7901e49f2fe13f25f015a194199` · SHA-256 `ce708d6444b83618de10e92b6adea185e8688a2b966717944f66fdb8f48f22ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CandidateSpanFamily.Variant6343a92171b0ae18fec9ab6cc51cd6e5eae070d2cf7436ddff9beb7eccc3bd09","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6343a92171b0ae18fec9ab6cc51cd6e5eae070d2cf7436ddff9beb7eccc3bd09","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CandidateSpanFamily.Variant6343a92171b0ae18fec9ab6cc51cd6e5eae070d2cf7436ddff9beb7eccc3bd09","mathematical_subject":"Computation.DataStructures","original_sha256":"6343a92171b0ae18fec9ab6cc51cd6e5eae070d2cf7436ddff9beb7eccc3bd09","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/SpanFamily.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Span

/-! # Finite, explicitly bounded candidate-span families -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CandidateSpanFamily.Variant6343a92171b0ae18fec9ab6cc51cd6e5eae070d2cf7436ddff9beb7eccc3bd09

namespace Mathematics.SemanticTokenization

structure CandidateSpanFamily (text : TextCarrier) where
  generatorRuleId : StableId
  maximumPhraseLength : Nat
  maximum_positive : 0 < maximumPhraseLength
  spans : List (Span text)
  requiredEvidenceSpans : List (Span text)
  required_covered :
    ∀ required ∈ requiredEvidenceSpans,
      ∃ candidate ∈ spans,
        candidate.SameCoordinates required
  within_bound :
    ∀ candidate ∈ spans,
      candidate.stop - candidate.start ≤ maximumPhraseLength

def CandidateSpanFamily.Contains
    {text : TextCarrier}
    (family : CandidateSpanFamily text)
    (span : Span text) : Prop :=
  ∃ candidate ∈ family.spans,
    candidate.SameCoordinates span

theorem CandidateSpanFamily.contains_required
    {text : TextCarrier}
    (family : CandidateSpanFamily text)
    {span : Span text}
    (member : span ∈ family.requiredEvidenceSpans) :
    family.Contains span :=
  family.required_covered span member

end Mathematics.SemanticTokenization
```
