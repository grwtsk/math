import Mathematics.SemanticTokenization.Concept

/-! # Exact and tolerable contextual equivalence remain distinct -/

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
