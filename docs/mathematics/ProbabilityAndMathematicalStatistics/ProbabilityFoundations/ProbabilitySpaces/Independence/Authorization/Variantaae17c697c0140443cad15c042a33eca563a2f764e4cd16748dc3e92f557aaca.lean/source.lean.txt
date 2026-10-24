import Surface.ContinuousAssurance.Communication

/-!
# Independent review and exact authorization

Kernel checking creates a proposal only.  An accepted source change is indexed
by an explicit independent review and authorization bound to the exact human
request, theorem statement digest, category, snapshot, and patch.  The model is
never a reviewer or authorizer.
-/

namespace Surface.ContinuousAssurance

/-- Human review decision over one exact proposal. -/
inductive ReviewDecision
  | approve
  | reject
  deriving DecidableEq, Repr

/-- Independent review binds one proposal to its human request. -/
structure ReviewRecord where
  identity : ReviewIdentity
  proposal : ProposalIdentity
  request : HumanDevelopmentRequest
  reviewer : HumanIdentity
  decision : ReviewDecision
  reviewerIndependent : reviewer ≠ request.requestedBy

/-- Reviewer independence is enforced by the review record itself. -/
theorem ReviewRecord.reviewer_is_independent
    (review : ReviewRecord) :
    review.reviewer ≠ review.request.requestedBy :=
  review.reviewerIndependent

/-- Authorization for one exact reviewed request and source patch. -/
structure AuthorizationRecord where
  identity : AuthorizationIdentity
  proposal : ProposalIdentity
  review : ReviewRecord
  request : HumanDevelopmentRequest
  authorizer : HumanIdentity
  snapshot : SubjectIdentity
  patch : PatchIdentity
  reviewApproved : review.decision = .approve
  reviewMatchesProposal : review.proposal = proposal
  /-- Full dependent request equality, not merely equality of display digests. -/
  reviewMatchesRequest : review.request = request
  reviewMatchesStatement :
    review.request.target.statementDigest = request.target.statementDigest
  reviewMatchesCategory : review.request.category = request.category
  snapshotMatchesRequest : snapshot = request.snapshot

namespace AuthorizationRecord

/-- Exact authorization predicate for a request, snapshot, and patch. -/
def Authorizes
    (authorization : AuthorizationRecord)
    (proposal : ProposalIdentity)
    (request : HumanDevelopmentRequest)
    (snapshot : SubjectIdentity)
    (patch : PatchIdentity) : Prop :=
  authorization.proposal = proposal ∧
  authorization.request = request ∧
  authorization.snapshot = snapshot ∧
  authorization.patch = patch

/-- An accepted authorization names exactly the supplied proposal. -/
theorem authorizes_binds_proposal
    (authorization : AuthorizationRecord)
    (proposal : ProposalIdentity)
    (request : HumanDevelopmentRequest)
    (snapshot : SubjectIdentity)
    (patch : PatchIdentity)
    (authorizes : authorization.Authorizes proposal request snapshot patch) :
    authorization.proposal = proposal :=
  authorizes.1

/-- An accepted authorization preserves the complete human request value. -/
theorem authorizes_binds_full_request
    (authorization : AuthorizationRecord)
    (proposal : ProposalIdentity)
    (request : HumanDevelopmentRequest)
    (snapshot : SubjectIdentity)
    (patch : PatchIdentity)
    (authorizes : authorization.Authorizes proposal request snapshot patch) :
    authorization.request = request :=
  authorizes.2.1

/-- An accepted authorization names exactly the supplied snapshot. -/
theorem authorizes_binds_snapshot
    (authorization : AuthorizationRecord)
    (proposal : ProposalIdentity)
    (request : HumanDevelopmentRequest)
    (snapshot : SubjectIdentity)
    (patch : PatchIdentity)
    (authorizes : authorization.Authorizes proposal request snapshot patch) :
    authorization.snapshot = snapshot :=
  authorizes.2.2.1

/-- An accepted authorization names exactly the supplied patch. -/
theorem authorizes_binds_patch
    (authorization : AuthorizationRecord)
    (proposal : ProposalIdentity)
    (request : HumanDevelopmentRequest)
    (snapshot : SubjectIdentity)
    (patch : PatchIdentity)
    (authorizes : authorization.Authorizes proposal request snapshot patch) :
    authorization.patch = patch :=
  authorizes.2.2.2

/-- Full request binding entails exact theorem-statement binding. -/
theorem authorizes_binds_statement
    (authorization : AuthorizationRecord)
    (proposal : ProposalIdentity)
    (request : HumanDevelopmentRequest)
    (snapshot : SubjectIdentity)
    (patch : PatchIdentity)
    (authorizes : authorization.Authorizes proposal request snapshot patch) :
    authorization.request.target.statementDigest =
      request.target.statementDigest :=
  congrArg (fun exactRequest => exactRequest.target.statementDigest)
    authorizes.2.1

/-- Full request binding entails exact human-category binding. -/
theorem authorizes_binds_category
    (authorization : AuthorizationRecord)
    (proposal : ProposalIdentity)
    (request : HumanDevelopmentRequest)
    (snapshot : SubjectIdentity)
    (patch : PatchIdentity)
    (authorizes : authorization.Authorizes proposal request snapshot patch) :
    authorization.request.category = request.category :=
  congrArg HumanDevelopmentRequest.category authorizes.2.1

/-- An authorization cannot be reused for a different proposal. -/
theorem cannot_authorize_another_proposal
    (authorization : AuthorizationRecord)
    (proposal : ProposalIdentity)
    (different : authorization.proposal ≠ proposal)
    (request : HumanDevelopmentRequest)
    (snapshot : SubjectIdentity)
    (patch : PatchIdentity) :
    ¬ authorization.Authorizes proposal request snapshot patch := by
  intro authorizes
  exact different authorizes.1

/-- An authorization cannot be reused for a different snapshot. -/
theorem cannot_authorize_another_snapshot
    (authorization : AuthorizationRecord)
    (proposal : ProposalIdentity)
    (request : HumanDevelopmentRequest)
    (snapshot : SubjectIdentity)
    (different : authorization.snapshot ≠ snapshot)
    (patch : PatchIdentity) :
    ¬ authorization.Authorizes proposal request snapshot patch := by
  intro authorizes
  exact different authorizes.2.2.1

/-- An authorization cannot be reused for a different patch. -/
theorem cannot_authorize_another_patch
    (authorization : AuthorizationRecord)
    (proposal : ProposalIdentity)
    (request : HumanDevelopmentRequest)
    (snapshot : SubjectIdentity)
    (patch : PatchIdentity)
    (different : authorization.patch ≠ patch) :
    ¬ authorization.Authorizes proposal request snapshot patch := by
  intro authorizes
  exact different authorizes.2.2.2

/-- An authorization cannot silently change the theorem statement digest. -/
theorem cannot_authorize_another_statement
    (authorization : AuthorizationRecord)
    (proposal : ProposalIdentity)
    (request : HumanDevelopmentRequest)
    (different :
      authorization.request.target.statementDigest ≠
        request.target.statementDigest)
    (snapshot : SubjectIdentity)
    (patch : PatchIdentity) :
    ¬ authorization.Authorizes proposal request snapshot patch := by
  intro authorizes
  exact different (authorization.authorizes_binds_statement
    proposal request snapshot patch authorizes)

/-- An authorization cannot silently change the human category. -/
theorem cannot_authorize_another_category
    (authorization : AuthorizationRecord)
    (proposal : ProposalIdentity)
    (request : HumanDevelopmentRequest)
    (different : authorization.request.category ≠ request.category)
    (snapshot : SubjectIdentity)
    (patch : PatchIdentity) :
    ¬ authorization.Authorizes proposal request snapshot patch := by
  intro authorizes
  exact different (authorization.authorizes_binds_category
    proposal request snapshot patch authorizes)

end AuthorizationRecord

/-- Evidence required before an exact source patch can be accepted. -/
structure AcceptedSourceChange where
  authorization : AuthorizationRecord
  proposal : ProposalIdentity
  request : HumanDevelopmentRequest
  snapshot : SubjectIdentity
  patch : PatchIdentity
  authorized : authorization.Authorizes proposal request snapshot patch

/-- Every accepted source change exposes its complete authorization chain. -/
theorem accepted_source_change_requires_authorization
    (change : AcceptedSourceChange) :
    change.authorization.Authorizes
      change.proposal change.request change.snapshot change.patch :=
  change.authorized

/-- A proposal with no matching authorization cannot become accepted source. -/
theorem unauthorized_proposal_cannot_be_accepted
    (proposal : ProposalIdentity)
    (request : HumanDevelopmentRequest)
    (snapshot : SubjectIdentity)
    (patch : PatchIdentity)
    (unauthorized :
      ∀ authorization : AuthorizationRecord,
        ¬ authorization.Authorizes proposal request snapshot patch) :
    ¬ ∃ change : AcceptedSourceChange,
      change.proposal = proposal ∧
      change.request = request ∧
      change.snapshot = snapshot ∧
      change.patch = patch := by
  intro accepted
  obtain ⟨change, proposalEq, requestEq, snapshotEq, patchEq⟩ := accepted
  subst proposal
  subst request
  subst snapshot
  subst patch
  exact unauthorized change.authorization change.authorized

end Surface.ContinuousAssurance
