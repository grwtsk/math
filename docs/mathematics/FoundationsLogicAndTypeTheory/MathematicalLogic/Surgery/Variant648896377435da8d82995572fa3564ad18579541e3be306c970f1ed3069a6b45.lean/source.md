# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Surgery.Variant648896377435da8d82995572fa3564ad18579541e3be306c970f1ed3069a6b45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6fec23d110cf1c33a9955397f1fe9763a2ff345` · SHA-256 `0d7a0d352f6eb75606f091b30eb34244eea10ee3532604f6e8d6f530c3631fc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BeaconPreservationCertificate.Variant70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.BeaconPreservationCertificate.Variant70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b","mathematical_subject":"Logic.Foundations","original_sha256":"70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/staged-validation-6c1160a309e689e3/Mathematics/Operational/Surgery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Operational.Priority
import Mathematics.Surgery.Boundary

/-!
# Beacon preservation across surgery

Continuation past a surgery boundary is represented only by a certificate that
maps every source beacon to the target beacon carrying its injectively
continued external label.  Without such a certificate the only decision is to
stop.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BeaconPreservationCertificate.Variant70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b

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
```
