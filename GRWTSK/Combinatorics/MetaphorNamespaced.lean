-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MetaphorMapping.Variantc8e56ac0a5e8ec4113d7544907a5922234d9d10dfd376fee501de4091317c5a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8e56ac0a5e8ec4113d7544907a5922234d9d10dfd376fee501de4091317c5a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MetaphorMapping.Variantc8e56ac0a5e8ec4113d7544907a5922234d9d10dfd376fee501de4091317c5a2","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c8e56ac0a5e8ec4113d7544907a5922234d9d10dfd376fee501de4091317c5a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Metaphor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Idiom

/-!
# Metaphor and mixed-reading certificates
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MetaphorMapping.Variantc8e56ac0a5e8ec4113d7544907a5922234d9d10dfd376fee501de4091317c5a2

namespace Mathematics.SemanticTokenization

structure MetaphorMapping where
  sourceDomain : ConceptDomain
  targetDomain : ConceptDomain
  mappingId : String
  mappingDigest : Digest
deriving Repr

structure MetaphorCertificate
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  contextual : ContextualReading cut phrase
  mapping : MetaphorMapping
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  targetNotInferredFromSingleToken : Prop

structure MixedReadingCertificate
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  layers : Finset ReadingClass
  layers_nonempty : layers.Nonempty
  includesAtLeastTwo : 2 ≤ layers.card
  interpretations : Array (CertifiedInterpretation cut)
  sameSource : Prop
  sameContext : Prop

end Mathematics.SemanticTokenization
