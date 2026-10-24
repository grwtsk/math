# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Reading.Variant9d5a76f41fbe8a01d57f98d5f9bf7333c9c3db9a131bbc6ac0929ae3dd6936b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `812eb531fddf31f1804e68a70aceb6ac68885fd7` · SHA-256 `9d5a76f41fbe8a01d57f98d5f9bf7333c9c3db9a131bbc6ac0929ae3dd6936b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Composition

/-!
# Literal candidates and externally certified contextual readings
-/

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
