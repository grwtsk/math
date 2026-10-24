# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuantizedEvidence.Variante2942a04638336bec034385ff95fef05cdbdf13ef22e0a57d818a5dee7df8475

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d787d598a1397f44f24209230d3419b2d3436662` · SHA-256 `e2942a04638336bec034385ff95fef05cdbdf13ef22e0a57d818a5dee7df8475`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.AnalyticTarget
import Surface.ContinuousAssurance.Claim
import Surface.ContinuousAssurance.ProgressiveEvidence

/-!
# Quantized evidence without authority promotion

A quantized observation is a derived representation of progressive evidence.
Its bit depth, decomposition, and optional cubical coordinates can retain or
discard distinctions, but cannot strengthen authority, evidence class,
assurance, or claim status.  The record contains no `ClaimCertificate` or
`CertifiedBridge` field.
-/

namespace Surface.ContinuousAssurance

/-- A content-addressed quantized representation with complete source lineage. -/
structure QuantizedObservation where
  identity : ArtifactIdentity
  subject : ArtifactIdentity
  sourceEvidence : ProgressiveEvidence
  profile : QuantizationProfile
  selection : QuantizationSelection profile
  encodedArtifact : ArtifactIdentity
  decomposition : Option ArtifactIdentity
  cubicalDegree : Option Nat
  cubicalCell : Option ArtifactIdentity
  knownLosses : List String
  affectedClaims : List ArtifactIdentity
  recoveryEvidence : List ArtifactIdentity

namespace QuantizedObservation

/-- Authority is projected directly from the immutable source lineage. -/
def authority (observation : QuantizedObservation) : AuthorityClass :=
  observation.sourceEvidence.authority

/-- Evidence-production class is projected directly from the source lineage. -/
def evidenceClass (observation : QuantizedObservation) : EvidenceClass :=
  observation.sourceEvidence.evidenceClass

/-- Assurance is a view of the source evidence, not a function of bit depth. -/
def assurance (observation : QuantizedObservation) : AssuranceLevel :=
  observation.sourceEvidence.level

@[simp]
theorem authority_eq_source
    (observation : QuantizedObservation) :
    observation.authority = observation.sourceEvidence.authority :=
  rfl

@[simp]
theorem evidenceClass_eq_source
    (observation : QuantizedObservation) :
    observation.evidenceClass = observation.sourceEvidence.evidenceClass :=
  rfl

@[simp]
theorem assurance_eq_source
    (observation : QuantizedObservation) :
    observation.assurance = observation.sourceEvidence.level :=
  rfl

/-- Quantization observes a claim status without classifying it again. -/
def observedClaimStatus
    (_observation : QuantizedObservation)
    (status : ClaimStatus) : ClaimStatus :=
  status

/-- Advancing a quantized representation advances only its evidence lineage. -/
def advance
    (observation : QuantizedObservation)
    (identity encodedArtifact : ArtifactIdentity)
    (level : AssuranceLevel)
    (monotone : observation.sourceEvidence.level.AtMost level)
    (materialization : MaterializationRule := .transformed) :
    QuantizedObservation :=
  { observation with
    identity
    sourceEvidence :=
      observation.sourceEvidence.advance
        identity level monotone materialization
    encodedArtifact }

@[simp]
theorem advance_preserves_authority
    (observation : QuantizedObservation)
    (identity encodedArtifact : ArtifactIdentity)
    (level : AssuranceLevel)
    (monotone : observation.sourceEvidence.level.AtMost level)
    (materialization : MaterializationRule := .transformed) :
    (observation.advance identity encodedArtifact level monotone
      materialization).authority = observation.authority :=
  rfl

@[simp]
theorem advance_preserves_evidence_class
    (observation : QuantizedObservation)
    (identity encodedArtifact : ArtifactIdentity)
    (level : AssuranceLevel)
    (monotone : observation.sourceEvidence.level.AtMost level)
    (materialization : MaterializationRule := .transformed) :
    (observation.advance identity encodedArtifact level monotone
      materialization).evidenceClass = observation.evidenceClass :=
  rfl

end QuantizedObservation

/-- Quantization copies rather than recomputes source authority. -/
theorem quantization_preserves_authority
    (observation : QuantizedObservation) :
    observation.authority = observation.sourceEvidence.authority :=
  observation.authority_eq_source

/-- Quantization copies rather than recomputes the evidence class. -/
theorem quantization_preserves_evidence_class
    (observation : QuantizedObservation) :
    observation.evidenceClass = observation.sourceEvidence.evidenceClass :=
  observation.evidenceClass_eq_source

/-- Quantization does not manufacture an assurance-level promotion. -/
theorem quantization_preserves_assurance
    (observation : QuantizedObservation) :
    observation.assurance = observation.sourceEvidence.level :=
  observation.assurance_eq_source

/-- Quantization is the identity on the pre-existing claim classification. -/
@[simp]
theorem quantization_preserves_claim_status
    (observation : QuantizedObservation)
    (status : ClaimStatus) :
    observation.observedClaimStatus status = status :=
  rfl

/--
The quantization API has no bridge output: theorem authority requires the
separate `CertifiedBridge` constructor and an explicit proof.
-/
def quantizationBridgeOutput
    (_observation : QuantizedObservation)
    (attestation : Attestation)
    (conclusion : Prop) :
    Option (CertifiedBridge attestation conclusion) :=
  none

@[simp]
theorem quantization_does_not_construct_certified_bridge
    (observation : QuantizedObservation)
    (attestation : Attestation)
    (conclusion : Prop) :
    quantizationBridgeOutput observation attestation conclusion = none :=
  rfl

end Surface.ContinuousAssurance
```
