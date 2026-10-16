/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Order.Closure.FiniteDependencyClosure
import GRWTSK.Logic.Locality.RevisionCertificates

/-!
# Grounded support in finite rule systems

OR support means that one eligible provider suffices. AND support means that
every prerequisite of that provider already has grounded support. Saturation
starts with no supported claims, so cyclic implications cannot bootstrap their
own evidence. The executable finite routine is the least closed set, and its
membership theorem is exact finite derivability, not greatest self-support.

The semantic adapter binds each provider to a snapshot-dependent conditional
rule certificate with an actual proof and semantic locality theorem. Freshness,
provider withdrawal, and whole-claim withdrawal are separate checks. This is
mathematical evidence bookkeeping; it is not an effect permit, a controller
budget consumer, or an automatic replacement for the fixed-route correction
ledger. Complete source discovery and authenticated revision resolution remain
external obligations.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w x

/-- One possible proof route; a claim can have multiple distinct providers. -/
structure ProofRoute (Claim : Type u) where
  conclusion : Claim
  premises : Finset Claim

section FiniteSupport

variable {Claim : Type u} {Provider : Type v}

/-- Grounded support is an inductive derivation with eligible provider rules.
Its recursive premises cannot create an ungrounded cyclic derivation. -/
inductive GroundedSupport (routes : Provider → ProofRoute Claim)
    (eligible : Finset Provider) : Claim → Prop
  | via (provider : Provider) : provider ∈ eligible →
      (∀ prerequisite ∈ (routes provider).premises,
        GroundedSupport routes eligible prerequisite) →
      GroundedSupport routes eligible (routes provider).conclusion

/-- Rule closure requires every prerequisite, and permits any eligible route. -/
def SupportClosed (routes : Provider → ProofRoute Claim) (eligible : Finset Provider)
    (claims : Finset Claim) : Prop :=
  ∀ provider ∈ eligible, (routes provider).premises ⊆ claims →
    (routes provider).conclusion ∈ claims

theorem grounded_mem_of_closed (routes : Provider → ProofRoute Claim)
    (eligible : Finset Provider) (claims : Finset Claim)
    (closed : SupportClosed routes eligible claims) {claim : Claim}
    (supported : GroundedSupport routes eligible claim) : claim ∈ claims := by
  induction supported with
  | via provider admitted _ ih => exact closed provider admitted ih

/-- Soundness is about actual rule implications, not graph labels. -/
theorem grounded_target (routes : Provider → ProofRoute Claim) (eligible : Finset Provider)
    (Target : Claim → Prop)
    (rules : ∀ provider ∈ eligible,
      (∀ prerequisite ∈ (routes provider).premises, Target prerequisite) →
        Target (routes provider).conclusion)
    {claim : Claim} (supported : GroundedSupport routes eligible claim) : Target claim := by
  induction supported with
  | via provider admitted _ ih => exact rules provider admitted ih

variable [Fintype Claim] [DecidableEq Claim]

/-- One executable pass adds conclusions whose complete AND premises are present. -/
def supportStep (routes : Provider → ProofRoute Claim) (eligible : Finset Provider)
    (claims : Finset Claim) : Finset Claim :=
  claims ∪ Finset.univ.filter (fun claim ↦
    ∃ provider ∈ eligible, (routes provider).conclusion = claim ∧
      (routes provider).premises ⊆ claims)

@[simp]
theorem mem_supportStep (routes : Provider → ProofRoute Claim) (eligible : Finset Provider)
    (claims : Finset Claim) (claim : Claim) :
    claim ∈ supportStep routes eligible claims ↔
      claim ∈ claims ∨ ∃ provider ∈ eligible,
        (routes provider).conclusion = claim ∧ (routes provider).premises ⊆ claims := by
  simp [supportStep]

theorem subset_supportStep (routes : Provider → ProofRoute Claim) (eligible : Finset Provider)
    (claims : Finset Claim) : claims ⊆ supportStep routes eligible claims :=
  Finset.subset_union_left

/-- Raw closure from supplied seeds. Semantic acceptance below always starts empty. -/
def routeClosureFrom (routes : Provider → ProofRoute Claim) (eligible : Finset Provider)
    (claims : Finset Claim) : Finset Claim :=
  if _h : supportStep routes eligible claims = claims then claims
  else routeClosureFrom routes eligible (supportStep routes eligible claims)
termination_by Fintype.card Claim - claims.card
decreasing_by
  have strict : claims ⊂ supportStep routes eligible claims :=
    Finset.ssubset_iff_subset_ne.mpr ⟨subset_supportStep routes eligible claims, Ne.symm _h⟩
  have cardinal := Finset.card_lt_card strict
  have bound := Finset.card_le_univ (supportStep routes eligible claims)
  omega

/-- Current accepted support has no unchecked seed claims. -/
def supportedClaims (routes : Provider → ProofRoute Claim) (eligible : Finset Provider) :
    Finset Claim := routeClosureFrom routes eligible ∅

theorem supportStep_eq_iff_closed (routes : Provider → ProofRoute Claim)
    (eligible : Finset Provider) (claims : Finset Claim) :
    supportStep routes eligible claims = claims ↔ SupportClosed routes eligible claims := by
  constructor
  · intro equal provider admitted premises
    rw [← equal]
    exact (mem_supportStep routes eligible claims _).mpr
      (Or.inr ⟨provider, admitted, rfl, premises⟩)
  · intro closed
    apply Finset.Subset.antisymm
    · intro claim member
      rcases (mem_supportStep routes eligible claims claim).mp member with member |
        ⟨provider, admitted, conclusion, premises⟩
      · exact member
      · exact conclusion ▸ closed provider admitted premises
    · exact subset_supportStep routes eligible claims

theorem routeClosureFrom_closed (routes : Provider → ProofRoute Claim)
    (eligible : Finset Provider) (claims : Finset Claim) :
    SupportClosed routes eligible (routeClosureFrom routes eligible claims) := by
  induction claims using routeClosureFrom.induct routes eligible with
  | case1 claims h =>
    rw [routeClosureFrom, dif_pos h]
    exact (supportStep_eq_iff_closed routes eligible claims).mp h
  | case2 claims h ih =>
    rw [routeClosureFrom, dif_neg h]
    exact ih

theorem routeClosureFrom_least (routes : Provider → ProofRoute Claim)
    (eligible : Finset Provider) (claims : Finset Claim) {closedClaims : Finset Claim}
    (contained : claims ⊆ closedClaims) (closed : SupportClosed routes eligible closedClaims) :
    routeClosureFrom routes eligible claims ⊆ closedClaims := by
  induction claims using routeClosureFrom.induct routes eligible with
  | case1 claims h => simpa [routeClosureFrom, h] using contained
  | case2 claims h ih =>
    rw [routeClosureFrom, dif_neg h]
    apply ih
    intro claim member
    rcases (mem_supportStep routes eligible claims claim).mp member with member |
      ⟨provider, admitted, conclusion, premises⟩
    · exact contained member
    · exact conclusion ▸ closed provider admitted (premises.trans contained)

theorem supportedClaims_closed (routes : Provider → ProofRoute Claim)
    (eligible : Finset Provider) :
    SupportClosed routes eligible (supportedClaims routes eligible) :=
  routeClosureFrom_closed routes eligible ∅

theorem supportedClaims_least (routes : Provider → ProofRoute Claim)
    (eligible : Finset Provider) {claims : Finset Claim}
    (closed : SupportClosed routes eligible claims) : supportedClaims routes eligible ⊆ claims :=
  routeClosureFrom_least routes eligible ∅ (Finset.empty_subset _) closed

/-- Exact membership means a grounded inductive derivation, including all premises. -/
theorem mem_supportedClaims_iff (routes : Provider → ProofRoute Claim)
    (eligible : Finset Provider) (claim : Claim) :
    claim ∈ supportedClaims routes eligible ↔ GroundedSupport routes eligible claim := by
  classical
  constructor
  · intro member
    let grounded := Finset.univ.filter (GroundedSupport routes eligible)
    have closed : SupportClosed routes eligible grounded := by
      intro provider admitted premises
      simp only [grounded, Finset.mem_filter, Finset.mem_univ, true_and]
      apply GroundedSupport.via provider admitted
      intro prerequisite premise
      have member := premises premise
      simpa only [grounded, Finset.mem_filter, Finset.mem_univ, true_and] using member
    have derived := supportedClaims_least routes eligible closed member
    simpa only [grounded, Finset.mem_filter, Finset.mem_univ, true_and] using derived
  · exact grounded_mem_of_closed routes eligible _ (supportedClaims_closed routes eligible)

theorem supportedClaims_mono (routes : Provider → ProofRoute Claim)
    {eligible moreEligible : Finset Provider} (more : eligible ⊆ moreEligible) :
    supportedClaims routes eligible ⊆ supportedClaims routes moreEligible := by
  apply supportedClaims_least
  intro provider admitted premises
  exact supportedClaims_closed routes moreEligible provider (more admitted) premises

/-- Without an eligible ground route, no conditional cycle can supply evidence. -/
theorem supportedClaims_empty_of_no_ground (routes : Provider → ProofRoute Claim)
    (eligible : Finset Provider)
    (nonempty : ∀ provider ∈ eligible, (routes provider).premises.Nonempty) :
    supportedClaims routes eligible = ∅ := by
  apply Finset.Subset.antisymm
  · apply supportedClaims_least
    intro provider admitted premises
    rcases nonempty provider admitted with ⟨prerequisite, member⟩
    exact False.elim (Finset.notMem_empty prerequisite (premises member))
  · exact Finset.empty_subset _

end FiniteSupport

/-- A provider stores an actual snapshot-bound conditional proof rule. -/
structure CertifiedProofRoute (Artifact : Type u) (Revision : Type v) (Claim : Type w)
    (Target : SourceSnapshot Artifact Revision → Claim → Prop) where
  route : ProofRoute Claim
  certificate : RevisionCertificate Artifact Revision (fun snapshot ↦
    (∀ prerequisite ∈ route.premises, Target snapshot prerequisite) →
      Target snapshot route.conclusion)

section CertificateSupport

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w} {Provider : Type x}
  [DecidableEq Revision] [DecidableEq Claim] [DecidableEq Provider]

/-- Declared finite revision reads have an executable equality check. -/
instance {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target)
    (current : SourceSnapshot Artifact Revision) : Decidable (certificate.Fresh current) := by
  unfold RevisionCertificate.Fresh SnapshotAgreesOn
  infer_instance

/-- Eligibility neither deletes providers from the archive nor changes their proofs. -/
def eligibleProviders {Target : SourceSnapshot Artifact Revision → Claim → Prop}
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    (current : SourceSnapshot Artifact Revision) : Finset Provider :=
  inventory.filter (fun provider ↦ provider ∉ withdrawnProviders ∧
    (providers provider).route.conclusion ∉ withdrawnClaims ∧
      (providers provider).certificate.Fresh current)

@[simp]
theorem mem_eligibleProviders {Target : SourceSnapshot Artifact Revision → Claim → Prop}
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    (current : SourceSnapshot Artifact Revision) (provider : Provider) :
    provider ∈ eligibleProviders providers inventory withdrawnProviders withdrawnClaims current ↔
      provider ∈ inventory ∧ provider ∉ withdrawnProviders ∧
        (providers provider).route.conclusion ∉ withdrawnClaims ∧
          (providers provider).certificate.Fresh current := by
  simp [eligibleProviders]

variable [Fintype Claim]

/-- A computed claim has a genuine proof of the exact current source target. -/
theorem certified_supported_target {Target : SourceSnapshot Artifact Revision → Claim → Prop}
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    (current : SourceSnapshot Artifact Revision) (claim : Claim)
    (supported : claim ∈ supportedClaims (fun provider ↦ (providers provider).route)
      (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current)) :
    Target current claim := by
  apply grounded_target (fun provider ↦ (providers provider).route)
    (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current)
    (Target current)
  · intro provider admitted
    have fresh := ((mem_eligibleProviders providers inventory withdrawnProviders
      withdrawnClaims current provider).mp admitted).2.2.2
    exact (providers provider).certificate.current_target fresh
  · exact (mem_supportedClaims_iff _ _ claim).mp supported

/-- The mathematical cap grants neither operational authority nor source rights. -/
theorem certified_supported_to_terminal {Target : SourceSnapshot Artifact Revision → Claim → Prop}
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    (current : SourceSnapshot Artifact Revision) (claim : Claim)
    (supported : claim ∈ supportedClaims (fun provider ↦ (providers provider).route)
      (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current)) :
    TerminalCap current (Target current claim) :=
  ⟨certified_supported_target providers inventory withdrawnProviders withdrawnClaims
    current claim supported⟩

/-- Whole-claim withdrawal excludes every alternative provider for that claim. -/
theorem certified_supported_not_withdrawn
    {Target : SourceSnapshot Artifact Revision → Claim → Prop}
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    (current : SourceSnapshot Artifact Revision) (claim : Claim)
    (supported : claim ∈ supportedClaims (fun provider ↦ (providers provider).route)
      (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current)) :
    claim ∉ withdrawnClaims := by
  have grounded := (mem_supportedClaims_iff _ _ claim).mp supported
  cases grounded with
  | via provider admitted _ =>
    exact ((mem_eligibleProviders providers inventory withdrawnProviders
      withdrawnClaims current provider).mp admitted).2.2.1

end CertificateSupport

end GRWTSK.ProofHorizon.CorkscrewChamberCap
