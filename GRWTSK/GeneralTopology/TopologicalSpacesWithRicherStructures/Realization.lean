import Mathematics.Attention.Observation
import Mathematics.TensorNetwork.Recovery

/-!
# Certified biaxial realization profile

The profile is an optional semantic realization observation.  It can guide
acquisition but cannot construct proof, arithmetic, symmetry, or mutation
authority.
-/

namespace Mathematics.Attention

open Mathematics.TensorNetwork

structure BiaxialAttentionRealizationProfile where
  tokenCount : Nat
  depthCount : Nat
  immutableCutDigest : String
  modelSnapshotDigest : String
  dataTransitionDigest : String
  depthRetrievalDigest : String
  blockCondensationDigest : String
  interchangeDigest : String
  exactSemanticSidecarDigest : String
  mpsFactorizationDigest : Option String
  decoderObservationDigest : String
  observationSet : AttentionObservationSet
  semanticObservation : AttentionSemanticObservationCertificate
  errorBudget : AttentionErrorBudget

def BiaxialAttentionRealizationProfile.Certified
    (profile : BiaxialAttentionRealizationProfile) : Prop :=
  0 < profile.tokenCount ∧
  0 < profile.depthCount ∧
  profile.immutableCutDigest ≠ "" ∧
  profile.modelSnapshotDigest ≠ "" ∧
  profile.dataTransitionDigest ≠ "" ∧
  profile.depthRetrievalDigest ≠ "" ∧
  profile.blockCondensationDigest ≠ "" ∧
  profile.interchangeDigest ≠ "" ∧
  profile.exactSemanticSidecarDigest ≠ "" ∧
  profile.decoderObservationDigest ≠ "" ∧
  profile.semanticObservation.Certified ∧
  profile.semanticObservation.exactSemanticSidecarDigest =
    profile.exactSemanticSidecarDigest ∧
  profile.semanticObservation.decoderObservationDigest =
    profile.decoderObservationDigest ∧
  0 ≤ profile.errorBudget.total

inductive BiaxialAttentionObservationResult
  | observed
      (profile : BiaxialAttentionRealizationProfile)
      (certificate : profile.Certified)
  | witnessMissing
      (immutableCutDigest : String)
  | rejectedObservation
      (reason : String)

def observeBiaxialAttention
    (profile : Option BiaxialAttentionRealizationProfile)
    (certificate :
      ∀ selected ∈ profile, selected.Certified) :
    BiaxialAttentionObservationResult :=
  match profile with
  | none => .witnessMissing ""
  | some selected => .observed selected (certificate selected rfl)

theorem observe_biaxial_attention_total
    (profile : Option BiaxialAttentionRealizationProfile)
    (certificate :
      ∀ selected ∈ profile, selected.Certified) :
    ∃ result,
      result = observeBiaxialAttention profile certificate :=
  ⟨observeBiaxialAttention profile certificate, rfl⟩

structure BiaxialReplayCertificate
    (SemanticState : Type)
    [MetricSpace SemanticState] where
  source : SemanticState
  replay : SemanticState
  profile : BiaxialAttentionRealizationProfile
  profileCertified : profile.Certified
  semanticBound :
    dist replay source ≤ profile.errorBudget.total

theorem exact_biaxial_replay_of_zero_budget
    {SemanticState : Type}
    [MetricSpace SemanticState]
    (certificate : BiaxialReplayCertificate SemanticState)
    (zeroBudget : certificate.profile.errorBudget.total = 0) :
    certificate.replay = certificate.source := by
  apply dist_eq_zero.mp
  apply le_antisymm
  · simpa [zeroBudget] using certificate.semanticBound
  · exact dist_nonneg

end Mathematics.Attention
