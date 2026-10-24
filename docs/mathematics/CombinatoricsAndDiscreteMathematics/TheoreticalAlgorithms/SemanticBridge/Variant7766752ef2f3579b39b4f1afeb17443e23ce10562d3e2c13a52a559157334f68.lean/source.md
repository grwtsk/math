# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SemanticBridge.Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `444798cff8cfd1f4fd8508e39c1a45998b25635e` · SHA-256 `7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.SemanticReceipt
import Mathematics.TensorNetwork.Recovery

/-!
# Exact SEA-to-semantic bridge

The bridge transports one immutable SEA receipt into a semantic context.  Its
certificate is deliberately conjunctive: gauge, recovery, boundary,
dependency, symmetry, authority, and replay claims cannot substitute for one
another.
-/

namespace Mathematics.AbelReynolds

open Mathematics.TensorNetwork

universe u

inductive BridgeDependencyDomain
  | sea
  | semantic
  | bridge
  deriving DecidableEq, Repr

structure BridgeDependency where
  domain : BridgeDependencyDomain
  identifier : String
  deriving DecidableEq, Repr

/-- There is intentionally no constructor from approximate tensors to proof. -/
inductive TensorDerivedSEAProof : Prop

theorem no_tensor_derived_sea_proof :
    ¬ TensorDerivedSEAProof := by
  intro proof
  cases proof

structure SEAContextBridgeCertificate
    {cut : UnifiedCutBinding}
    (sea : UnifiedCandidate cut)
    (semantic : SemanticRecoveryCandidate Context N D) where
  receipt : SEAResultReceipt
  receiptReference : String
  receiptMatches : receipt.Matches cut sea.payload
  sourceReceiptExact :
    semantic.sourceReceiptDigest = receiptReference
  resultReceiptExact :
    semantic.resultReceiptDigest = receiptReference
  extractionClaim : Prop
  extractionCertified : extractionClaim
  gaugeNeutralityClaim : Prop
  gaugeNeutralityCertified : gaugeNeutralityClaim
  recoveryPreservationClaim : Prop
  recoveryPreservationCertified : recoveryPreservationClaim
  boundaryTransportClaim : Prop
  boundaryTransportCertified : boundaryTransportClaim
  dependencySeparationClaim : Prop
  dependencySeparationCertified : dependencySeparationClaim
  symmetryCompatibilityClaim : Prop
  symmetryCompatibilityCertified : symmetryCompatibilityClaim
  authorityNonEscalationClaim : Prop
  authorityNonEscalationCertified : authorityNonEscalationClaim
  replayClaim : Prop
  replayCertified : replayClaim
  dependencies : List BridgeDependency

def CertifiedSEAContextBridge
    {cut : UnifiedCutBinding}
    {sea : UnifiedCandidate cut}
    {semantic : SemanticRecoveryCandidate Context N D}
    (certificate : SEAContextBridgeCertificate sea semantic) : Prop :=
  certificate.receipt.Matches cut sea.payload ∧
  semantic.sourceReceiptDigest = certificate.receiptReference ∧
  semantic.resultReceiptDigest = certificate.receiptReference ∧
  certificate.extractionClaim ∧
  certificate.gaugeNeutralityClaim ∧
  certificate.recoveryPreservationClaim ∧
  certificate.boundaryTransportClaim ∧
  certificate.dependencySeparationClaim ∧
  certificate.symmetryCompatibilityClaim ∧
  certificate.authorityNonEscalationClaim ∧
  certificate.replayClaim

theorem SEAContextBridgeCertificate.certified
    {cut : UnifiedCutBinding}
    {sea : UnifiedCandidate cut}
    {semantic : SemanticRecoveryCandidate Context N D}
    (certificate : SEAContextBridgeCertificate sea semantic) :
    CertifiedSEAContextBridge certificate :=
  ⟨certificate.receiptMatches,
    certificate.sourceReceiptExact,
    certificate.resultReceiptExact,
    certificate.extractionCertified,
    certificate.gaugeNeutralityCertified,
    certificate.recoveryPreservationCertified,
    certificate.boundaryTransportCertified,
    certificate.dependencySeparationCertified,
    certificate.symmetryCompatibilityCertified,
    certificate.authorityNonEscalationCertified,
    certificate.replayCertified⟩

theorem gauge_change_preserves_sea_result
    {cut : UnifiedCutBinding}
    {sea : UnifiedCandidate cut}
    {semantic : SemanticRecoveryCandidate Context N D}
    (certificate : SEAContextBridgeCertificate sea semantic) :
    semantic.resultReceiptDigest = semantic.sourceReceiptDigest := by
  rw [certificate.resultReceiptExact, certificate.sourceReceiptExact]

theorem anchor_rebirth_preserves_sea_receipt
    {cut : UnifiedCutBinding}
    {sea : UnifiedCandidate cut}
    {semantic : SemanticRecoveryCandidate Context N D}
    (certificate : SEAContextBridgeCertificate sea semantic)
    (_mode : semantic.mode = .anchorReborn) :
    semantic.resultReceiptDigest = semantic.sourceReceiptDigest :=
  gauge_change_preserves_sea_result certificate

end Mathematics.AbelReynolds
```
