# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Idiom.Variant2fa65e8271b5a2a8186cd905547d9e1aa47b665dc33e383d5f59b10cfd3bd252

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95eca3960ca6125bab36d96de915b8cc2698b60b` · SHA-256 `17c368e5bda9b27f4ddda95692eb94438ac17c69fc3fb7f5085088db4e7817f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProtectedDifference.Variant1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProtectedDifference.Variant1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Idiom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Concept
import Mathematics.SemanticTokenization.Reading

/-!
# Idiom certificates
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProtectedDifference.Variant1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71

namespace Mathematics.SemanticTokenization

inductive ProtectedDifference
  | denotation
  | argumentStructure
  | entailment
  | conventionalTargetConcept
  | substitutionBehavior
  | registerRestriction
  | pragmaticEffect
deriving DecidableEq, Repr

structure NoncompositionalityWitness
    {cut : EvidenceCut}
    {phrase : PhraseCandidate cut}
    (literal : LiteralReading cut phrase)
    (contextual : ContextualReading cut phrase) where
  differences : Finset ProtectedDifference
  differences_nonempty : differences.Nonempty
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty

structure IdiomRestrictions where
  domains : Finset String
  registers : Finset String
  grammaticalRestrictions : Finset String
  pragmaticRestrictions : Finset String
deriving Repr

structure IdiomVariant where
  surface : String
  evidence : Finset EvidenceId
deriving DecidableEq, Repr

structure IdiomCertificate
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  contextual : ContextualReading cut phrase
  literal : LiteralReading cut phrase
  noncompositionality :
    NoncompositionalityWitness literal contextual
  coreConcept : ConceptId
  restrictions : IdiomRestrictions
  variants : Finset IdiomVariant
  conventionalityEvidence : Finset EvidenceId
  conventionalityEvidence_nonempty :
    conventionalityEvidence.Nonempty
  distinguishedFromMetaphor : Prop
  distinguishedFromCollocation : Prop

end Mathematics.SemanticTokenization
```
