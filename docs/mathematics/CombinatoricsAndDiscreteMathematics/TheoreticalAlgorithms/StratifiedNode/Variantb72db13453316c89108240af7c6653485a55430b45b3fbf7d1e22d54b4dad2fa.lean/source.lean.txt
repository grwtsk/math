import Mathematics.StratifiedBoundary.Frontier.OrdinalIndex

/-!
# Stratified presentation node
-/

namespace Mathematics.StratifiedBoundary

structure StratifiedPresentationNode where
  nodeId : String
  persistentIdentity : String
  finiteCutRef : String
  predecessorCutRef : Option String
  ordinalProfileRef : String
  normalizedStratumRef : String
  localRank : Option Nat
  ordinalIndex : Option StratifiedFrontierIndex
  displayedApproximant : Option Nat
  unresolvedLimitObligationRefs : List String
  noRuntimeEnumerationNotice : Bool := true
  noRuntimeEnumerationNotice_exact :
    noRuntimeEnumerationNotice = true

end Mathematics.StratifiedBoundary
