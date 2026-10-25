# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Locality.FiniteRuleTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3b7396e50342f63b9b5df2b1cb162de4e305a5b` · SHA-256 `0b281bb077863fc8806c79ef39469163e32715185aa5032dc7bf8bed9cb18bff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.FiniteRuleSystems
import Mathlib.Data.Finset.Union

/-!
# CCC exact alternative-support replay and a locality obstruction

The executable read footprint is the conservative union of every currently
eligible provider's declared reads, including providers unused by a particular
derivation. Providers, routes, inventory, and both withdrawal sets stay fixed.
Matching this footprint transports the original certified rule implications
and replays each grounded conclusion at the future snapshot.

This recorded-to-fresh replay is weaker than the arbitrary-left/right locality
field of RevisionCertificate. Honest provider certificates and a grounded
current conclusion do not in general produce that stronger certificate with
the provider-read union. The Boolean hostile fixture proves this distinction.
No evidence admission, authentication, or effect authority is supplied.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.AlternativeLocality

universe u v w x

section Replay

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w} {Provider : Type x}
  [DecidableEq Artifact]
  {Target : SourceSnapshot Artifact Revision → Claim → Prop}

/-- Executable conservative footprint of a fixed finite provider set. -/
def providerReadUnion (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (eligible : Finset Provider) : Finset Artifact :=
  eligible.biUnion (fun provider ↦ (providers provider).certificate.reads)

theorem mem_providerReadUnion
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (eligible : Finset Provider) (artifact : Artifact) :
    artifact ∈ providerReadUnion providers eligible ↔
      ∃ provider ∈ eligible, artifact ∈ (providers provider).certificate.reads := by
  exact Finset.mem_biUnion

theorem provider_read_agreement
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (eligible : Finset Provider) {current future : SourceSnapshot Artifact Revision}
    (agreement : SnapshotAgreesOn (providerReadUnion providers eligible) current future)
    {provider : Provider} (admitted : provider ∈ eligible) :
    SnapshotAgreesOn (providers provider).certificate.reads current future := by
  intro artifact member
  exact agreement artifact ((mem_providerReadUnion providers eligible artifact).mpr
    ⟨provider, admitted, member⟩)

variable [DecidableEq Revision] [DecidableEq Claim] [DecidableEq Provider]

/-- Includes all currently eligible provider reads; it is not a minimal chosen-route footprint. -/
def eligibleReadUnion (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    (current : SourceSnapshot Artifact Revision) : Finset Artifact :=
  providerReadUnion providers
    (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current)

/-- Freshness of each original rule certificate is preserved with fixed withdrawal state. -/
theorem currently_eligible_preserved
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    {current future : SourceSnapshot Artifact Revision}
    (agreement : SnapshotAgreesOn
      (eligibleReadUnion providers inventory withdrawnProviders withdrawnClaims current)
      current future) :
    eligibleProviders providers inventory withdrawnProviders withdrawnClaims current ⊆
      eligibleProviders providers inventory withdrawnProviders withdrawnClaims future := by
  intro provider admitted
  rcases (mem_eligibleProviders providers inventory withdrawnProviders withdrawnClaims
    current provider).mp admitted with ⟨registered, providerActive, claimActive, fresh⟩
  apply (mem_eligibleProviders providers inventory withdrawnProviders withdrawnClaims
    future provider).mpr
  refine ⟨registered, providerActive, claimActive, ?_⟩
  exact snapshot_agrees_trans fresh
    (provider_read_agreement providers _ agreement admitted)

/-- Transport the actual conditional implication, rather than just its current conclusion. -/
theorem eligible_rule_transport
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    {current future : SourceSnapshot Artifact Revision}
    (agreement : SnapshotAgreesOn
      (eligibleReadUnion providers inventory withdrawnProviders withdrawnClaims current)
      current future) {provider : Provider}
    (admitted : provider ∈
      eligibleProviders providers inventory withdrawnProviders withdrawnClaims current) :
    (∀ prerequisite ∈ (providers provider).route.premises, Target future prerequisite) →
      Target future (providers provider).route.conclusion := by
  have fresh := ((mem_eligibleProviders providers inventory withdrawnProviders withdrawnClaims
    current provider).mp admitted).2.2.2
  exact (providers provider).certificate.locality current future
    (provider_read_agreement providers _ agreement admitted)
    ((providers provider).certificate.current_target fresh)

/-- Grounded finite derivations replay recursively from transported original rule implications. -/
theorem grounded_replay_target
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    {current future : SourceSnapshot Artifact Revision}
    (agreement : SnapshotAgreesOn
      (eligibleReadUnion providers inventory withdrawnProviders withdrawnClaims current)
      current future) {claim : Claim}
    (supported : GroundedSupport (fun provider ↦ (providers provider).route)
      (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current) claim) :
    Target future claim := by
  apply grounded_target (fun provider ↦ (providers provider).route)
    (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current)
    (Target future)
  · intro provider admitted
    exact eligible_rule_transport providers inventory withdrawnProviders withdrawnClaims
      agreement admitted
  · exact supported

variable [Fintype Claim]

theorem computed_support_preserved
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    {current future : SourceSnapshot Artifact Revision}
    (agreement : SnapshotAgreesOn
      (eligibleReadUnion providers inventory withdrawnProviders withdrawnClaims current)
      current future) :
    supportedClaims (fun provider ↦ (providers provider).route)
        (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current) ⊆
      supportedClaims (fun provider ↦ (providers provider).route)
        (eligibleProviders providers inventory withdrawnProviders withdrawnClaims future) :=
  supportedClaims_mono _
    (currently_eligible_preserved providers inventory withdrawnProviders withdrawnClaims agreement)

/-- Current computed support plus footprint agreement gives the exact future
target; this does not perform evidence admission. -/
theorem computed_support_replay_target
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    {current future : SourceSnapshot Artifact Revision}
    (agreement : SnapshotAgreesOn
      (eligibleReadUnion providers inventory withdrawnProviders withdrawnClaims current)
      current future) {claim : Claim}
    (supported : claim ∈ supportedClaims (fun provider ↦ (providers provider).route)
      (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current)) :
    Target future claim :=
  grounded_replay_target providers inventory withdrawnProviders withdrawnClaims agreement
    ((mem_supportedClaims_iff _ _ claim).mp supported)

end Replay

namespace HostileFixture

/-- Artifact false is a; artifact true is b. Claim false is P; claim true is Q. -/
def target (snapshot : SourceSnapshot Bool Bool) (claim : Bool) : Prop :=
  if claim then snapshot false = true ∨ snapshot true = true else snapshot false = true

def routes (provider : Bool) : ProofRoute Bool where
  conclusion := provider
  premises := if provider then {false} else ∅

def recorded : SourceSnapshot Bool Bool := fun _ ↦ true

/-- P has a genuine one-read ground certificate. P→Q is an honest tautological
conditional rule, whose own target has empty semantic read footprint. -/
def providers (provider : Bool) : CertifiedProofRoute Bool Bool Bool target where
  route := routes provider
  certificate := {
    recorded := recorded
    reads := if provider then ∅ else {false}
    proved := by
      intro _
      cases provider <;> simp [routes, target, recorded]
    locality := by
      intro left right agreement proved premises
      cases provider with
      | false =>
        have previous : left false = true := by
          apply proved
          intro prerequisite member
          simp [routes] at member
        exact (agreement false (by simp)).trans previous
      | true =>
        have prerequisite : right false = true := premises false (by simp [routes])
        exact Or.inl prerequisite }

theorem all_providers_eligible :
    eligibleProviders providers Finset.univ ∅ ∅ recorded = Finset.univ := by
  ext provider
  simp [eligibleProviders, providers, RevisionCertificate.Fresh, SnapshotAgreesOn]

theorem footprint_exact : eligibleReadUnion providers Finset.univ ∅ ∅ recorded = {false} := by
  unfold eligibleReadUnion
  rw [all_providers_eligible]
  ext artifact
  cases artifact <;> simp [providerReadUnion, providers]

theorem grounded_P :
    GroundedSupport (fun provider ↦ (providers provider).route)
      (eligibleProviders providers Finset.univ ∅ ∅ recorded) false := by
  apply GroundedSupport.via false
  · rw [all_providers_eligible]
    exact Finset.mem_univ _
  · intro prerequisite member
    simp [providers, routes] at member

theorem grounded_Q :
    GroundedSupport (fun provider ↦ (providers provider).route)
      (eligibleProviders providers Finset.univ ∅ ∅ recorded) true := by
  apply GroundedSupport.via true
  · rw [all_providers_eligible]
    exact Finset.mem_univ _
  · intro prerequisite member
    have equal : prerequisite = false := by simpa [providers, routes] using member
    simpa only [equal] using grounded_P

theorem computed_Q : true ∈ supportedClaims (fun provider ↦ (providers provider).route)
    (eligibleProviders providers Finset.univ ∅ ∅ recorded) :=
  (mem_supportedClaims_iff _ _ true).mpr grounded_Q

def hostileLeft : SourceSnapshot Bool Bool := fun artifact ↦ artifact

def hostileRight : SourceSnapshot Bool Bool := fun _ ↦ false

theorem hostile_pair_agrees : SnapshotAgreesOn
    (eligibleReadUnion providers Finset.univ ∅ ∅ recorded) hostileLeft hostileRight := by
  rw [footprint_exact]
  intro artifact member
  have equal : artifact = false := by simpa using member
  subst artifact
  rfl

/-- Arbitrary-left/right Q locality fails despite valid original provider localities. -/
theorem global_conclusion_locality_fails : ¬ (∀ left right : SourceSnapshot Bool Bool,
    SnapshotAgreesOn (eligibleReadUnion providers Finset.univ ∅ ∅ recorded) left right →
      target left true → target right true) := by
  intro locality
  have impossible := locality hostileLeft hostileRight hostile_pair_agrees
    (by simp [target, hostileLeft])
  simp [target, hostileRight] at impossible

/-- No genuine Q certificate can declare exactly this provider-read union. -/
theorem no_union_revision_certificate : ¬ ∃ certificate :
    RevisionCertificate Bool Bool (fun snapshot ↦ target snapshot true),
      certificate.reads = eligibleReadUnion providers Finset.univ ∅ ∅ recorded := by
  rintro ⟨certificate, reads⟩
  apply global_conclusion_locality_fails
  intro left right agreement proved
  apply certificate.locality left right _ proved
  rw [reads]
  exact agreement

/-- The hostile pair is outside the recorded freshness class; safe replay does not assert it. -/
theorem hostile_left_not_fresh : ¬ SnapshotAgreesOn
    (eligibleReadUnion providers Finset.univ ∅ ∅ recorded) recorded hostileLeft := by
  rw [footprint_exact]
  intro agreement
  have impossible := agreement false (by simp)
  simp [recorded, hostileLeft] at impossible

/-- Changing the unread b token preserves the recorded grounded Q target by actual replay. -/
theorem safe_unread_change_replay : target (fun artifact ↦ !artifact) true := by
  apply computed_support_replay_target providers Finset.univ ∅ ∅ (current := recorded)
  · rw [footprint_exact]
    intro artifact member
    have equal : artifact = false := by simpa using member
    subst artifact
    rfl
  · exact computed_Q

end HostileFixture

end GRWTSK.ProofHorizon.CorkscrewChamberCap.AlternativeLocality
```
