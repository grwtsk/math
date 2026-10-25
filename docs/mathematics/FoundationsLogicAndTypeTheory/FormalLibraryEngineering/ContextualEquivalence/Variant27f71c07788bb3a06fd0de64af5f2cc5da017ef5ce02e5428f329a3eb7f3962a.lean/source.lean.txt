-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactContextualEquivalenceCertificate.Variantfeacb41b7e8151dfa73ef40a83eda0fbcd6d12b7fbda0e25a972b456632a20ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"feacb41b7e8151dfa73ef40a83eda0fbcd6d12b7fbda0e25a972b456632a20ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ExactContextualEquivalenceCertificate.Variantfeacb41b7e8151dfa73ef40a83eda0fbcd6d12b7fbda0e25a972b456632a20ff","mathematical_subject":"Foundations.Unclassified","original_sha256":"feacb41b7e8151dfa73ef40a83eda0fbcd6d12b7fbda0e25a972b456632a20ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/ContextualEquivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Concept

/-! # Exact and tolerable contextual equivalence remain distinct -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactContextualEquivalenceCertificate.Variantfeacb41b7e8151dfa73ef40a83eda0fbcd6d12b7fbda0e25a972b456632a20ff

namespace Mathematics.SemanticTokenization

structure ExactContextualEquivalenceCertificate
    (text : TextCarrier)
    (left right : ConceptProfile text) where
  context_exact :
    left.context.contextId = right.context.contextId
  core_meaning_exact :
    left.coreMeaning.meaningId =
      right.coreMeaning.meaningId
  protected_features_exact :
    left.protectedFeatures.features =
      right.protectedFeatures.features
  evidence : EvidenceBundle text

structure TolerableContextualEquivalenceCertificate
    (text : TextCarrier)
    (left right : ConceptProfile text) where
  tolerance : Nat
  observedDistance : Nat
  within_tolerance :
    observedDistance ≤ tolerance
  protectedFeaturePolicyId : StableId
  evidence : EvidenceBundle text

inductive EquivalenceStrength
  | exact
  | tolerable
  deriving DecidableEq, Repr

def EquivalenceStrength.mayDefineQuotient :
    EquivalenceStrength → Bool
  | .exact => true
  | .tolerable => false

@[simp] theorem approximate_relation_not_quotient_without_equivalence :
    EquivalenceStrength.tolerable.mayDefineQuotient = false :=
  rfl

theorem exact_core_meaning_trans
    {text : TextCarrier}
    {left middle right : ConceptProfile text}
    (first :
      ExactContextualEquivalenceCertificate text left middle)
    (second :
      ExactContextualEquivalenceCertificate text middle right) :
    left.coreMeaning.meaningId =
      right.coreMeaning.meaningId :=
  first.core_meaning_exact.trans second.core_meaning_exact

end Mathematics.SemanticTokenization
