import Surface.ContinuousAssurance.Authorization
import Surface.ContinuousAssurance.ReductiveSelectionTrace

/-!
# Candidate surgical-site plans and governance bindings

Selection produces only a candidate locus.  It constructs no patch, review,
authorization, or accepted source change.  The optional patch identity and its
complete configuration/registry/trace binding must subsequently pass the
existing independent-review and human-authorization structures.
-/

universe u

namespace Surface.ContinuousAssurance

/-- Exact content-addressed policy inputs bound into a plan proposal. -/
structure SurgicalPlanDigestBinding where
  identity : ArtifactIdentity
  configDigest : EvidenceDigest
  registryDigest : EvidenceDigest
  traceDigest : EvidenceDigest
  deriving DecidableEq, Repr

/-- Length-prefixed component used by the deterministic policy-digest text. -/
def surgicalPolicyDigestComponent (digest : EvidenceDigest) : String :=
  toString digest.value.length ++ ":" ++ digest.value

/--
Canonical text bound by review and authorization for one exact
config/registry/trace tuple.  This is a structural Lean encoding, not a claim
that Lean computed or validated an external cryptographic hash.
-/
def surgicalPolicyDigest
    (configDigest registryDigest traceDigest : EvidenceDigest) : String :=
  "config[" ++ surgicalPolicyDigestComponent configDigest ++ "]" ++
    "registry[" ++ surgicalPolicyDigestComponent registryDigest ++ "]" ++
    "trace[" ++ surgicalPolicyDigestComponent traceDigest ++ "]"

/--
The complete immutable governance subject for one proposed surgical patch.
Review and authorization records are attached to this value, so proposal,
snapshot, patch, and all three content digests cannot be varied independently.
-/
structure SurgicalGovernanceBinding where
  planIdentity : ArtifactIdentity
  proposal : ProposalIdentity
  configBoundSnapshot : SubjectIdentity
  patch : PatchIdentity
  configDigest : EvidenceDigest
  registryDigest : EvidenceDigest
  traceDigest : EvidenceDigest
  deriving DecidableEq, Repr

/-- A finite candidate locus produced from one exact reduction trace. -/
structure SurgicalSiteCandidatePlan
    (State : Type u)
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece) where
  identity : ArtifactIdentity
  selectionTrace : ReductiveSiteSelectionTrace State decomposition objective
  selectedSites : Finset decomposition.Piece
  selected_eq : selectedSites = selectionTrace.finalCandidates
  digestBinding : SurgicalPlanDigestBinding
  config_digest_exact :
    digestBinding.configDigest = selectionTrace.rootConfigDigest
  registry_digest_exact :
    digestBinding.registryDigest = selectionTrace.theoremRegistryDigest
  trace_digest_exact : digestBinding.traceDigest = selectionTrace.digest
  policy_digest_exact :
    digestBinding.identity.digest =
      surgicalPolicyDigest digestBinding.configDigest
        digestBinding.registryDigest digestBinding.traceDigest
  configBoundSnapshot : SubjectIdentity
  snapshot_config_digest_exact :
    configBoundSnapshot.sourceModuleDigest = digestBinding.configDigest.value
  snapshot_registry_digest_exact :
    configBoundSnapshot.declarationSetDigest =
      digestBinding.registryDigest.value
  snapshot_trace_digest_exact :
    configBoundSnapshot.importClosureDigest = digestBinding.traceDigest.value
  proposedPatch : Option PatchIdentity
  knownLosses : List String
  unresolvedObligations : List ArtifactIdentity

namespace SurgicalSiteCandidatePlan

/-- Candidate-plan identity is also its proposal identity. -/
def proposalIdentity
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (plan : SurgicalSiteCandidatePlan State decomposition objective) :
    ProposalIdentity :=
  plan.identity

/-- Exact scope certificate for a later patch implementation. -/
structure PatchScope
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (plan : SurgicalSiteCandidatePlan State decomposition objective) where
  patchIdentity : PatchIdentity
  proposed_patch_exact : plan.proposedPatch = some patchIdentity
  modifiedSites : Finset decomposition.Piece
  modified_subset_selected : modifiedSites ⊆ plan.selectedSites

/-- Construct the exact governance subject determined by a plan and its patch scope. -/
def governanceBinding
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (plan : SurgicalSiteCandidatePlan State decomposition objective)
    (scope : plan.PatchScope) : SurgicalGovernanceBinding :=
  { planIdentity := plan.digestBinding.identity
    proposal := plan.proposalIdentity
    configBoundSnapshot := plan.configBoundSnapshot
    patch := scope.patchIdentity
    configDigest := plan.digestBinding.configDigest
    registryDigest := plan.digestBinding.registryDigest
    traceDigest := plan.digestBinding.traceDigest }

/-- Scope certification never expands the selected-site set. -/
theorem PatchScope.within_selection
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    {plan : SurgicalSiteCandidatePlan State decomposition objective}
    (scope : plan.PatchScope) :
    scope.modifiedSites ⊆ plan.selectedSites :=
  scope.modified_subset_selected

end SurgicalSiteCandidatePlan

/-- Independent review of the exact immutable candidate plan. -/
structure ReviewedSurgicalSitePlan
    (State : Type u)
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece) where
  plan : SurgicalSiteCandidatePlan State decomposition objective
  patchScope : plan.PatchScope
  binding : SurgicalGovernanceBinding
  binding_exact : binding = plan.governanceBinding patchScope
  review : ReviewRecord
  reviewBindsPlan : review.proposal = binding.proposal
  reviewBindsConfigSnapshot :
    review.request.snapshot = binding.configBoundSnapshot
  reviewBindsPolicyDigest :
    review.request.target.statementDigest = binding.planIdentity.digest

namespace ReviewedSurgicalSitePlan

/-- SEL-04: review records do not modify the candidate locus. -/
theorem selected_sites_unchanged
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective) :
    reviewed.plan.selectedSites =
      reviewed.plan.selectionTrace.finalCandidates :=
  reviewed.plan.selected_eq

/-- Independent review is bound to the exact source/config snapshot. -/
theorem review_binds_config_snapshot
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective) :
    reviewed.review.request.snapshot = reviewed.plan.configBoundSnapshot := by
  rw [reviewed.reviewBindsConfigSnapshot, reviewed.binding_exact]
  rfl

/-- The reviewed governance subject names the exact proposal emitted by the plan. -/
theorem review_binds_proposal
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective) :
    reviewed.review.proposal = reviewed.plan.proposalIdentity := by
  rw [reviewed.reviewBindsPlan, reviewed.binding_exact]
  rfl

/-- The reviewed governance subject names exactly the proposed patch. -/
theorem review_binds_proposed_patch
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective) :
    reviewed.plan.proposedPatch = some reviewed.binding.patch := by
  rw [reviewed.binding_exact]
  exact reviewed.patchScope.proposed_patch_exact

/-- Review is tied to the exact root-configuration digest in the plan. -/
theorem review_binds_config_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective) :
    reviewed.binding.configDigest =
      reviewed.plan.selectionTrace.rootConfigDigest := by
  rw [reviewed.binding_exact]
  exact reviewed.plan.config_digest_exact

/-- Review is tied to the exact theorem-registry digest in the plan. -/
theorem review_binds_registry_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective) :
    reviewed.binding.registryDigest =
      reviewed.plan.selectionTrace.theoremRegistryDigest := by
  rw [reviewed.binding_exact]
  exact reviewed.plan.registry_digest_exact

/-- Review is tied to the exact completed reduction-trace digest in the plan. -/
theorem review_binds_trace_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective) :
    reviewed.binding.traceDigest = reviewed.plan.selectionTrace.digest := by
  rw [reviewed.binding_exact]
  exact reviewed.plan.trace_digest_exact

/-- Review's statement digest is the canonical config/registry/trace binding. -/
theorem review_binds_policy_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective) :
    reviewed.review.request.target.statementDigest =
      surgicalPolicyDigest reviewed.binding.configDigest
        reviewed.binding.registryDigest reviewed.binding.traceDigest := by
  rw [reviewed.reviewBindsPolicyDigest, reviewed.binding_exact]
  exact reviewed.plan.policy_digest_exact

/-- The reviewed snapshot carries the exact root-configuration digest. -/
theorem review_snapshot_binds_config_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective) :
    reviewed.review.request.snapshot.sourceModuleDigest =
      reviewed.binding.configDigest.value := by
  rw [reviewed.reviewBindsConfigSnapshot, reviewed.binding_exact]
  exact reviewed.plan.snapshot_config_digest_exact

/-- The reviewed snapshot carries the exact theorem-registry digest. -/
theorem review_snapshot_binds_registry_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective) :
    reviewed.review.request.snapshot.declarationSetDigest =
      reviewed.binding.registryDigest.value := by
  rw [reviewed.reviewBindsConfigSnapshot, reviewed.binding_exact]
  exact reviewed.plan.snapshot_registry_digest_exact

/-- The reviewed snapshot carries the exact reduction-trace digest. -/
theorem review_snapshot_binds_trace_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective) :
    reviewed.review.request.snapshot.importClosureDigest =
      reviewed.binding.traceDigest.value := by
  rw [reviewed.reviewBindsConfigSnapshot, reviewed.binding_exact]
  exact reviewed.plan.snapshot_trace_digest_exact

/-- Review validity for an exact config, registry, and trace digest tuple. -/
def ValidForDigests
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective)
    (config registry trace : EvidenceDigest) : Prop :=
  reviewed.plan.digestBinding.configDigest = config ∧
    reviewed.plan.digestBinding.registryDigest = registry ∧
    reviewed.plan.digestBinding.traceDigest = trace

/-- A changed config digest invalidates a prior review binding. -/
theorem changed_config_invalidates_review
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective)
    (config registry trace : EvidenceDigest)
    (changed : reviewed.plan.digestBinding.configDigest ≠ config) :
    ¬ reviewed.ValidForDigests config registry trace := by
  intro valid
  exact changed valid.1

/-- A changed theorem registry invalidates a prior review binding. -/
theorem changed_registry_invalidates_review
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (reviewed : ReviewedSurgicalSitePlan State decomposition objective)
    (config registry trace : EvidenceDigest)
    (changed : reviewed.plan.digestBinding.registryDigest ≠ registry) :
    ¬ reviewed.ValidForDigests config registry trace := by
  intro valid
  exact changed valid.2.1

end ReviewedSurgicalSitePlan

/-- Human authorization of one exact reviewed plan and proposed patch. -/
structure AuthorizedSurgicalSitePlan
    (State : Type u)
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece) where
  reviewed : ReviewedSurgicalSitePlan State decomposition objective
  authorization : AuthorizationRecord
  authorizationBindsPlan :
    authorization.proposal = reviewed.binding.proposal
  authorizationBindsReview : authorization.review = reviewed.review
  authorizationBindsPatch :
    authorization.patch = reviewed.binding.patch
  authorizationBindsConfigSnapshot :
    authorization.request.snapshot = reviewed.binding.configBoundSnapshot
  authorizationBindsPolicyDigest :
    authorization.request.target.statementDigest =
      reviewed.binding.planIdentity.digest

namespace AuthorizedSurgicalSitePlan

/-- Every authorized patch is statically scoped to the reviewed selection. -/
theorem patch_modifies_only_selected_sites
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.reviewed.patchScope.modifiedSites ⊆
      authorized.reviewed.plan.selectedSites :=
  authorized.reviewed.patchScope.modified_subset_selected

/-- The scoped patch is exactly the patch proposed by the reviewed plan. -/
theorem patch_scope_binds_proposed_patch
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.reviewed.plan.proposedPatch =
      some authorized.reviewed.binding.patch :=
  authorized.reviewed.review_binds_proposed_patch

/-- Authorization names the same exact proposal as the reviewed binding. -/
theorem authorization_binds_proposal
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.authorization.proposal =
      authorized.reviewed.plan.proposalIdentity := by
  rw [authorized.authorizationBindsPlan, authorized.reviewed.binding_exact]
  rfl

/-- Authorization names the same exact config-bound snapshot as the review. -/
theorem authorization_binds_config_snapshot
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.authorization.request.snapshot =
      authorized.reviewed.plan.configBoundSnapshot := by
  rw [authorized.authorizationBindsConfigSnapshot,
    authorized.reviewed.binding_exact]
  rfl

/-- Authorization names exactly the proposed patch in the reviewed plan. -/
theorem authorization_binds_proposed_patch
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.reviewed.plan.proposedPatch =
      some authorized.authorization.patch := by
  rw [authorized.authorizationBindsPatch]
  exact authorized.patch_scope_binds_proposed_patch

/-- Authorization retains the reviewed root-configuration digest exactly. -/
theorem authorization_binds_config_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.reviewed.binding.configDigest =
      authorized.reviewed.plan.selectionTrace.rootConfigDigest :=
  authorized.reviewed.review_binds_config_digest

/-- Authorization retains the reviewed theorem-registry digest exactly. -/
theorem authorization_binds_registry_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.reviewed.binding.registryDigest =
      authorized.reviewed.plan.selectionTrace.theoremRegistryDigest :=
  authorized.reviewed.review_binds_registry_digest

/-- Authorization retains the reviewed reduction-trace digest exactly. -/
theorem authorization_binds_trace_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.reviewed.binding.traceDigest =
      authorized.reviewed.plan.selectionTrace.digest :=
  authorized.reviewed.review_binds_trace_digest

/-- Authorization is bound to the canonical config/registry/trace policy text. -/
theorem authorization_binds_policy_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.authorization.request.target.statementDigest =
      surgicalPolicyDigest authorized.reviewed.binding.configDigest
        authorized.reviewed.binding.registryDigest
        authorized.reviewed.binding.traceDigest := by
  rw [authorized.authorizationBindsPolicyDigest,
    authorized.reviewed.binding_exact]
  exact authorized.reviewed.plan.policy_digest_exact

/-- Authorization's snapshot carries the exact root-configuration digest. -/
theorem authorization_snapshot_binds_config_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.authorization.request.snapshot.sourceModuleDigest =
      authorized.reviewed.binding.configDigest.value := by
  rw [authorized.authorizationBindsConfigSnapshot,
    authorized.reviewed.binding_exact]
  exact authorized.reviewed.plan.snapshot_config_digest_exact

/-- Authorization's snapshot carries the exact theorem-registry digest. -/
theorem authorization_snapshot_binds_registry_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.authorization.request.snapshot.declarationSetDigest =
      authorized.reviewed.binding.registryDigest.value := by
  rw [authorized.authorizationBindsConfigSnapshot,
    authorized.reviewed.binding_exact]
  exact authorized.reviewed.plan.snapshot_registry_digest_exact

/-- Authorization's snapshot carries the exact reduction-trace digest. -/
theorem authorization_snapshot_binds_trace_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.authorization.request.snapshot.importClosureDigest =
      authorized.reviewed.binding.traceDigest.value := by
  rw [authorized.authorizationBindsConfigSnapshot,
    authorized.reviewed.binding_exact]
  exact authorized.reviewed.plan.snapshot_trace_digest_exact

/-- SEL-06: the authorized proposal retains the exact config digest. -/
theorem patch_bound_to_config_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.reviewed.plan.digestBinding.configDigest =
      authorized.reviewed.plan.selectionTrace.rootConfigDigest :=
  authorized.reviewed.plan.config_digest_exact

/-- SEL-07: the authorized proposal retains the exact registry digest. -/
theorem patch_bound_to_registry_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.reviewed.plan.digestBinding.registryDigest =
      authorized.reviewed.plan.selectionTrace.theoremRegistryDigest :=
  authorized.reviewed.plan.registry_digest_exact

/-- SEL-08: the authorized proposal retains the exact reduction-trace digest. -/
theorem patch_bound_to_trace_digest
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective) :
    authorized.reviewed.plan.digestBinding.traceDigest =
      authorized.reviewed.plan.selectionTrace.digest :=
  authorized.reviewed.plan.trace_digest_exact

/-- Authorization does not discharge a mathematical obligation. -/
theorem authorization_does_not_discharge_mathematical_obligation
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (_authorized : AuthorizedSurgicalSitePlan State decomposition objective)
    (obligation : Prop)
    (proof : obligation) : obligation :=
  proof

/-- A different trace digest cannot satisfy this plan's exact trace binding. -/
theorem stale_trace_cannot_match_plan
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (authorized : AuthorizedSurgicalSitePlan State decomposition objective)
    (otherTrace : ReductiveSiteSelectionTrace State decomposition objective)
    (changed : otherTrace.digest ≠ authorized.reviewed.plan.selectionTrace.digest) :
    otherTrace.digest ≠ authorized.reviewed.plan.digestBinding.traceDigest := by
  intro equal
  apply changed
  rw [← authorized.patch_bound_to_trace_digest]
  exact equal

end AuthorizedSurgicalSitePlan

/-- Selection deliberately emits no review record. -/
def reductiveSelectionReview
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (_plan : SurgicalSiteCandidatePlan State decomposition objective) :
    Option ReviewRecord :=
  none

/-- Selection deliberately emits no authorization record. -/
def reductiveSelectionAuthorization
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (_plan : SurgicalSiteCandidatePlan State decomposition objective) :
    Option AuthorizationRecord :=
  none

/-- Selection deliberately emits no accepted source change. -/
def reductiveSelectionAcceptedSourceChange
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (_plan : SurgicalSiteCandidatePlan State decomposition objective) :
    Option AcceptedSourceChange :=
  none

/-- Candidate selection cannot manufacture a status-indexed proof certificate. -/
def reductiveSelectionClaimCertificate
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (_plan : SurgicalSiteCandidatePlan State decomposition objective)
    (proposition : Prop)
    (status : ClaimStatus) :
    Option (ClaimCertificate proposition status) :=
  none

/-- Candidate selection cannot bridge external attestation data to a theorem. -/
def reductiveSelectionCertifiedBridge
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (_plan : SurgicalSiteCandidatePlan State decomposition objective)
    (attestation : Attestation)
    (conclusion : Prop) :
    Option (CertifiedBridge attestation conclusion) :=
  none

/--
Reductive site selection classifies sites, not claims.  Passing a claim status
through the selection boundary therefore returns that exact status.
-/
def reductiveSelectionClaimStatus
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (_plan : SurgicalSiteCandidatePlan State decomposition objective)
    (status : ClaimStatus) : ClaimStatus :=
  status

@[simp]
theorem reductive_selection_does_not_construct_review
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (plan : SurgicalSiteCandidatePlan State decomposition objective) :
    reductiveSelectionReview plan = none :=
  rfl

@[simp]
theorem reductive_selection_does_not_construct_authorization
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (plan : SurgicalSiteCandidatePlan State decomposition objective) :
    reductiveSelectionAuthorization plan = none :=
  rfl

@[simp]
theorem reductive_selection_does_not_construct_accepted_source_change
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (plan : SurgicalSiteCandidatePlan State decomposition objective) :
    reductiveSelectionAcceptedSourceChange plan = none :=
  rfl

@[simp]
theorem reductive_selection_does_not_construct_claim_certificate
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (plan : SurgicalSiteCandidatePlan State decomposition objective)
    (proposition : Prop)
    (status : ClaimStatus) :
    reductiveSelectionClaimCertificate plan proposition status = none :=
  rfl

@[simp]
theorem reductive_selection_does_not_construct_certified_bridge
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (plan : SurgicalSiteCandidatePlan State decomposition objective)
    (attestation : Attestation)
    (conclusion : Prop) :
    reductiveSelectionCertifiedBridge plan attestation conclusion = none :=
  rfl

/-- Reductive selection cannot promote or otherwise reclassify a claim. -/
@[simp]
theorem reductive_selection_preserves_claim_status
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (plan : SurgicalSiteCandidatePlan State decomposition objective)
    (status : ClaimStatus) :
    reductiveSelectionClaimStatus plan status = status :=
  rfl

/-- Selection deliberately exposes no proof that the objective requires surgery. -/
def candidateRequirementProof
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (_plan : SurgicalSiteCandidatePlan State decomposition objective)
    (_state : State)
    (_site : decomposition.Piece) :
    Option { _unit : Unit // objective.requiresModification _state _site } :=
  none

/-- Candidate membership is not an eliminator for the surgical objective. -/
@[simp]
theorem candidate_status_does_not_prove_surgery_required
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (plan : SurgicalSiteCandidatePlan State decomposition objective)
    (state : State)
    (site : decomposition.Piece)
    (_selected : site ∈ plan.selectedSites) :
    candidateRequirementProof plan state site = none :=
  rfl

end Surface.ContinuousAssurance
