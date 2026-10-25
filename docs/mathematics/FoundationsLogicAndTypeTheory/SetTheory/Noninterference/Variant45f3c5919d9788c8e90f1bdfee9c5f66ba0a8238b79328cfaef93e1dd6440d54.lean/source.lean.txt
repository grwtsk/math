import Mathematics.StratifiedBoundary.Presentation.StratifiedNode

/-!
# Presentation/ordinal noninterference
-/

namespace Mathematics.StratifiedBoundary

structure CertifiedStratifiedPresentationChange
    (before after : StratifiedPresentationNode) where
  persistentIdentity :
    after.persistentIdentity = before.persistentIdentity
  ordinalProfile :
    after.ordinalProfileRef = before.ordinalProfileRef
  ordinalSemantics :
    after.normalizedStratumRef = before.normalizedStratumRef
  proposalOnly : Bool := true
  proposalOnly_exact : proposalOnly = true

theorem presentation_change_does_not_change_ordinal_semantics
    {before after : StratifiedPresentationNode}
    (change :
      CertifiedStratifiedPresentationChange before after) :
    after.normalizedStratumRef =
      before.normalizedStratumRef :=
  change.ordinalSemantics

end Mathematics.StratifiedBoundary
