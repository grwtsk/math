import Mathlib.Data.NNReal.Basic
import Surface.ContinuousAssurance.ProgressiveEvidence
import Surface.ContinuousAssurance.WorldModel.Governance
import Surface.ContinuousAssurance.WorldModel.Presheaf
import Surface.ContinuousAssurance.WorldModel.Translation

/-!
# Governed finite world-model surgery

Site selection creates only a candidate.  A surgery value additionally carries
an exact finite locus, boundary compatibility, complement invariance, typed
replacement and dependency updates, authority non-promotion, a version
transition, independent review, and exact authorization.  Numerical energy
nonincrease is not a field and is not claimed generically.
-/

namespace Surface.ContinuousAssurance.WorldModel

universe uCell uModel uBefore uAfter

/-- A selected analytic site is finite evidence, not authorization. -/
structure AnalyticSurgicalSite (Cell Model : Type*) [DecidableEq Model] where
  identity : ArtifactIdentity
  carrierCell : Cell
  activeModels : Finset Model
  obstructionDegree : Nat
  obstructionRef : Option ArtifactIdentity
  localEnergy : NNReal
  threshold : NNReal
  selectorPolicy : ArtifactIdentity
  authority : AuthorityClass
  evidence : ProgressiveEvidence
  openObligations : List ArtifactIdentity

/-- Exact finite attaching boundary. -/
structure FiniteBoundary (Cell : Type*) [DecidableEq Cell] where
  cells : Finset Cell
  identity : ArtifactIdentity

/-- Checked compatibility of the replacement along its boundary. -/
structure BoundaryCompatibilityCertificate where
  boundaryIdentity : ArtifactIdentity
  compatible : Prop
  proof : compatible
  evidence : ArtifactIdentity

/-- The pre/post sections coincide outside the selected finite locus. -/
structure ComplementInvarianceCertificate
    (Cell Section : Type*) [DecidableEq Cell] where
  selected : Finset Cell
  before : Cell → Section
  after : Cell → Section
  unchanged : ∀ cell, cell ∉ selected → after cell = before cell

/-- Typed local replacement; domain and codomain are not erased. -/
structure LocalModelReplacement (Before After : Type*) where
  replace : Before → After
  identity : ArtifactIdentity
  sourceVersion : ArtifactIdentity
  targetVersion : ArtifactIdentity
  versionChanged : sourceVersion ≠ targetVersion

structure DependencyUpdate where
  declaration : ArtifactIdentity
  oldDependencies : List ArtifactIdentity
  newDependencies : List ArtifactIdentity
  replayEvidence : Option ArtifactIdentity

structure AuthorityNonPromotionCertificate where
  source : AuthorityClass
  target : AuthorityClass
  preserved : target = source

structure VersionTransitionRecord where
  oldRegistryRoot : ArtifactIdentity
  newRegistryRoot : ArtifactIdentity
  changedObjects : List ArtifactIdentity
  newVersions : List ArtifactIdentity
  changedObjectsVersioned : changedObjects.length = newVersions.length

structure RollbackCertificate where
  record : RollbackRecord
  ready : Prop
  readinessEvidence : ready

/-- One fully governed local surgery. -/
structure WorldModelSurgery
    (Cell : Type uCell) (Model : Type uModel)
    (Before : Type uBefore) (After : Type uAfter)
    [DecidableEq Cell] [DecidableEq Model] where
  identity : ArtifactIdentity
  proposal : ArtifactIdentity
  patch : ArtifactIdentity
  sourceDigest : ArtifactIdentity
  activeRegionIdentity : ArtifactIdentity
  reductionTrace : ArtifactIdentity
  preCarrier : CommunicationCarrier.{uCell}
  postCarrier : CommunicationCarrier.{uCell}
  preCarrierCells : preCarrier.Cell ≃ Cell
  postCarrierCells : postCarrier.Cell ≃ Cell
  preSite : FiniteCommunicationSite.{uCell}
  postSite : FiniteCommunicationSite.{uCell}
  prePresheaf : FiniteWorldModelPresheaf.{uBefore, uCell} preSite
  postPresheaf : FiniteWorldModelPresheaf.{uBefore, uCell} postSite
  selectedSite : Finset Cell
  candidate : AnalyticSurgicalSite Cell Model
  candidateCellSelected : candidate.carrierCell ∈ selectedSite
  beforeSections : Cell → Before
  afterSections : Cell → Before
  attachingBoundary : FiniteBoundary Cell
  boundaryComparison : BoundaryCompatibilityCertificate
  boundaryIdentityMatches :
    boundaryComparison.boundaryIdentity = attachingBoundary.identity
  unchangedComplement : ComplementInvarianceCertificate Cell Before
  complementUsesSections :
    unchangedComplement.selected = selectedSite ∧
    unchangedComplement.before = beforeSections ∧
    unchangedComplement.after = afterSections
  localReplacement : LocalModelReplacement Before After
  translationUpdates : List (AnyModelTranslation.{uBefore, uAfter})
  proofDependencyUpdates : List DependencyUpdate
  authorityPreservation : AuthorityNonPromotionCertificate
  versionTransition : VersionTransitionRecord
  rollback : Option RollbackCertificate
  newObligations : List ObligationRecord
  gluingCondition : Prop
  review : SurgeryReviewRecord
  authorization : SurgeryAuthorizationRecord
  reviewMatchesProposal : review.proposal = proposal
  authorizationReviewMatches : authorization.review = review
  authorizationExact :
    authorization.Authorizes proposal patch sourceDigest
      activeRegionIdentity reductionTrace
  reviewIndependent : review.proposer ≠ review.reviewer

namespace WorldModelSurgery

variable {Cell Model Before After : Type*}
  [DecidableEq Cell] [DecidableEq Model]

/-- The selected locus is finite and exact. -/
theorem selected_site_finite
    (surgery : WorldModelSurgery Cell Model Before After) :
    Set.Finite {cell | cell ∈ surgery.selectedSite} := by
  exact Set.finite_mem_finset surgery.selectedSite

/-- The complement is unchanged by construction. -/
theorem complement_unchanged
    (surgery : WorldModelSurgery Cell Model Before After)
    (cell : Cell)
    (outside : cell ∉ surgery.selectedSite) :
    surgery.afterSections cell = surgery.beforeSections cell := by
  have selected := surgery.complementUsesSections.1
  have beforeEq := surgery.complementUsesSections.2.1
  have afterEq := surgery.complementUsesSections.2.2
  rw [← afterEq, ← beforeEq]
  exact surgery.unchangedComplement.unchanged cell (by simpa [selected] using outside)

/-- Boundary compatibility is explicit checked evidence. -/
theorem boundary_compatible
    (surgery : WorldModelSurgery Cell Model Before After) :
    surgery.boundaryComparison.compatible :=
  surgery.boundaryComparison.proof

/-- Boundary evidence is tied to the exact attaching boundary. -/
theorem boundary_certificate_matches
    (surgery : WorldModelSurgery Cell Model Before After) :
    surgery.boundaryComparison.boundaryIdentity =
      surgery.attachingBoundary.identity :=
  surgery.boundaryIdentityMatches

/-- The analytic candidate's carrier cell lies in the selected exact locus. -/
theorem candidate_cell_selected
    (surgery : WorldModelSurgery Cell Model Before After) :
    surgery.candidate.carrierCell ∈ surgery.selectedSite :=
  surgery.candidateCellSelected

/-- Changed local objects receive a distinct target version. -/
theorem local_replacement_changes_version
    (surgery : WorldModelSurgery Cell Model Before After) :
    surgery.localReplacement.sourceVersion ≠
      surgery.localReplacement.targetVersion :=
  surgery.localReplacement.versionChanged

/-- Surgery cannot promote authority. -/
theorem authority_nonpromotion
    (surgery : WorldModelSurgery Cell Model Before After) :
    surgery.authorityPreservation.target =
      surgery.authorityPreservation.source :=
  surgery.authorityPreservation.preserved

/-- Review independence is part of the exact surgery value. -/
theorem review_is_independent
    (surgery : WorldModelSurgery Cell Model Before After) :
    surgery.review.proposer ≠ surgery.review.reviewer :=
  surgery.reviewIndependent

/-- Authorization is based on the same independent review stored by surgery. -/
theorem authorization_uses_surgery_review
    (surgery : WorldModelSurgery Cell Model Before After) :
    surgery.authorization.review = surgery.review :=
  surgery.authorizationReviewMatches

/-- Human authorization binds the exact patch and complete surgery pins. -/
theorem authorization_binds_exact_patch
    (surgery : WorldModelSurgery Cell Model Before After) :
    surgery.authorization.patch = surgery.patch :=
  surgery.authorizationExact.2.1

end WorldModelSurgery

/-- Distinct typed reasons a candidate cannot be adopted. -/
inductive SurgeryFailure
  | boundaryMismatch (evidence : ArtifactIdentity)
  | complementMutation (evidence : ArtifactIdentity)
  | proofDependencyRegression (evidence : ArtifactIdentity)
  | failedGluing (evidence : ArtifactIdentity)
  | staleReview (evidence : ArtifactIdentity)
  | staleAuthorization (evidence : ArtifactIdentity)
  | rollbackNotReady (evidence : ArtifactIdentity)
  deriving DecidableEq, Repr

/-- Adoption requires all semantic and governance gates. -/
structure AdoptableSurgery
    (Cell Model Before After : Type*)
  [DecidableEq Cell] [DecidableEq Model] where
  surgery : WorldModelSurgery Cell Model Before After
  gluingProof : surgery.gluingCondition
  proofDependenciesValid : Prop
  dependencyProof : proofDependenciesValid
  rollbackReady : Prop
  rollbackProof : rollbackReady

/-- Failed gluing blocks construction of an adoptable wrapper. -/
theorem failed_gluing_blocks_adoption
    {Cell Model Before After : Type*}
    [DecidableEq Cell] [DecidableEq Model]
    (surgery : WorldModelSurgery Cell Model Before After)
    (failed : ¬ surgery.gluingCondition) :
    ¬ ∃ adopted : AdoptableSurgery Cell Model Before After,
        adopted.surgery = surgery := by
  rintro ⟨adopted, rfl⟩
  exact failed adopted.gluingProof

/-- Rollback is not inferred merely from a surgery value. -/
theorem rollback_requires_explicit_evidence
    {Cell Model Before After : Type*}
    [DecidableEq Cell] [DecidableEq Model]
    (surgery : WorldModelSurgery Cell Model Before After)
    (missing : surgery.rollback = none) :
    ¬ ∃ rollback : RollbackCertificate, surgery.rollback = some rollback := by
  rintro ⟨rollback, present⟩
  rw [missing] at present
  contradiction

end Surface.ContinuousAssurance.WorldModel
