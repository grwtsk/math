import Mathematics.Attention.ErrorBudget

/-!
# Non-authoritative attention observations

Attention records are immutable model observations.  Their type has no
constructor for theorem authority, mutation authority, or generation events.
-/

namespace Mathematics.Attention

inductive AttentionObservationKind
  | dataAttentionObserved
  | depthAttentionObserved
  | interchangeMeasured
  | condensationChecked
  | witnessMissing
  deriving DecidableEq, Repr

inductive AttentionObservationAuthority
  | modelObservation
  deriving DecidableEq, Repr

structure AttentionObservation where
  observationId : String
  kind : AttentionObservationKind
  immutableCutDigest : String
  modelSnapshotDigest : String
  payloadDigest : String
  authority : AttentionObservationAuthority
  authorityIsObservation : authority = .modelObservation

def AttentionObservation.Valid
    (observation : AttentionObservation) : Prop :=
  observation.observationId ≠ "" ∧
  observation.immutableCutDigest ≠ "" ∧
  observation.modelSnapshotDigest ≠ "" ∧
  observation.payloadDigest ≠ "" ∧
  observation.authority = .modelObservation

theorem attention_observation_has_no_theorem_authority
    (observation : AttentionObservation) :
    observation.authority =
      AttentionObservationAuthority.modelObservation :=
  observation.authorityIsObservation

structure AttentionObservationSet where
  observations : List AttentionObservation
  identitiesUnique :
    (observations.map (·.observationId)).Nodup
  allValid :
    ∀ observation ∈ observations, observation.Valid

structure AttentionSemanticObservationCertificate where
  exactSemanticSidecarDigest : String
  decoderObservationDigest : String
  protectedObservationSetDigest : String
  semanticErrorBound : ℝ
  semanticErrorNonnegative : 0 ≤ semanticErrorBound
  correspondenceClaim : Prop
  correspondenceCertified : correspondenceClaim

def AttentionSemanticObservationCertificate.Certified
    (certificate : AttentionSemanticObservationCertificate) : Prop :=
  certificate.exactSemanticSidecarDigest ≠ "" ∧
  certificate.decoderObservationDigest ≠ "" ∧
  certificate.protectedObservationSetDigest ≠ "" ∧
  0 ≤ certificate.semanticErrorBound ∧
  certificate.correspondenceClaim

theorem AttentionSemanticObservationCertificate.certified
    (certificate : AttentionSemanticObservationCertificate)
    (sidecarPresent : certificate.exactSemanticSidecarDigest ≠ "")
    (decoderPresent : certificate.decoderObservationDigest ≠ "")
    (observationSetPresent :
      certificate.protectedObservationSetDigest ≠ "") :
    certificate.Certified :=
  ⟨sidecarPresent, decoderPresent, observationSetPresent,
    certificate.semanticErrorNonnegative,
    certificate.correspondenceCertified⟩

end Mathematics.Attention
