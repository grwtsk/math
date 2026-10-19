import Mathematics.Relaxation.ElementalState
import Mathematics.Relaxation.Step

/-!
# Monotone elemental relaxation

An admitted step may refine overlays and projections while preserving source
addresses and project-local identities exactly.  Negative and unresolved
evidence may grow but cannot disappear.
-/

namespace Mathematics.Relaxation

structure ElementalStep
    (before after : ElementalState) where
  receipt : StepReceipt
  before_digest_exact :
    receipt.beforeDigest = before.stateDigest
  after_digest_exact :
    receipt.afterDigest = after.stateDigest
  point_universe_preserved :
    before.pointUniverse.universeId =
      after.pointUniverse.universeId
  source_addresses_preserved :
    before.immutableSourceAddressIds =
      after.immutableSourceAddressIds
  local_identity_preserved :
    before.projectLocalPointIds =
      after.projectLocalPointIds
  negative_evidence_monotone :
    ∀ elementId ∈ before.negativeElementIds,
      elementId ∈ after.negativeElementIds
  unresolved_branches_monotone :
    ∀ branchId ∈ before.unknownBranchIds,
      branchId ∈ after.unknownBranchIds

theorem ElementalStep.cannot_erase_negative
    {before after : ElementalState}
    (step : ElementalStep before after)
    {elementId : ElementId}
    (present : elementId ∈ before.negativeElementIds) :
    elementId ∈ after.negativeElementIds :=
  step.negative_evidence_monotone elementId present

theorem ElementalStep.cannot_reidentify_local_points
    {before after : ElementalState}
    (step : ElementalStep before after) :
    before.projectLocalPointIds =
      after.projectLocalPointIds :=
  step.local_identity_preserved

end Mathematics.Relaxation
