import Mathematics.Operational.Priority
import Mathematics.Surgery.Boundary

/-!
# Beacon preservation across surgery

Continuation past a surgery boundary is represented only by a certificate that
maps every source beacon to the target beacon carrying its injectively
continued external label.  Without such a certificate the only decision is to
stop.
-/

namespace Mathematics.Operational

universe u v w z

/-- Proof that surgery preserves every beacon and its external label role. -/
structure BeaconPreservationCertificate
    (sourceBeacon : SourceLabel → SourceState)
    (targetBeacon : TargetLabel → TargetState)
    (surgery : SourceState → TargetState) where
  sourceBeacon_injective : Function.Injective sourceBeacon
  targetBeacon_injective : Function.Injective targetBeacon
  labelContinuation : SourceLabel ↪ TargetLabel
  preserves :
    ∀ label,
      surgery (sourceBeacon label) =
        targetBeacon (labelContinuation label)

/--
The surgery-boundary decision: continue with a complete preservation proof, or
stop.  There is deliberately no uncertified continuation constructor.
-/
inductive BeaconBoundaryDecision
    (boundary : Surgery.BoundaryObservation)
    (sourceBeacon : SourceLabel → SourceState)
    (targetBeacon : TargetLabel → TargetState)
    (surgery : SourceState → TargetState)
    where
  | continue
      (certificate :
        BeaconPreservationCertificate
          sourceBeacon targetBeacon surgery)
  | stop

/-- A fixed-beacon surgery is the identity-label special case. -/
def fixedBeaconCertificate
    (beacon : Label → State)
    (surgery : State → State)
    (beaconInjective : Function.Injective beacon)
    (fixed : ∀ label, surgery (beacon label) = beacon label) :
    BeaconPreservationCertificate beacon beacon surgery where
  sourceBeacon_injective := beaconInjective
  targetBeacon_injective := beaconInjective
  labelContinuation := Function.Embedding.refl Label
  preserves := fixed

/-- Certified label continuation prevents two source labels from being merged. -/
theorem BeaconPreservationCertificate.labels_not_merged
    {sourceBeacon : SourceLabel → SourceState}
    {targetBeacon : TargetLabel → TargetState}
    {surgery : SourceState → TargetState}
    (certificate :
      BeaconPreservationCertificate
        sourceBeacon targetBeacon surgery)
    {left right : SourceLabel}
    (sameTargetLabel :
      certificate.labelContinuation left =
        certificate.labelContinuation right) :
    left = right :=
  certificate.labelContinuation.injective sameTargetLabel

/-- Certified surgery cannot merge two source beacons into one target state. -/
theorem BeaconPreservationCertificate.beacons_not_merged
    {sourceBeacon : SourceLabel → SourceState}
    {targetBeacon : TargetLabel → TargetState}
    {surgery : SourceState → TargetState}
    (certificate :
      BeaconPreservationCertificate
        sourceBeacon targetBeacon surgery)
    {left right : SourceLabel}
    (merged :
      surgery (sourceBeacon left) =
        surgery (sourceBeacon right)) :
    left = right := by
  rw [certificate.preserves, certificate.preserves] at merged
  exact
    certificate.labelContinuation.injective
      (certificate.targetBeacon_injective merged)

end Mathematics.Operational
