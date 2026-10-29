-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PropositionIdentity.Variant22e3fb3c6aa34dcb66565ef34606856ff8157a4c3cbee026e2f619ba94b50366","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22e3fb3c6aa34dcb66565ef34606856ff8157a4c3cbee026e2f619ba94b50366","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PropositionIdentity.Variant22e3fb3c6aa34dcb66565ef34606856ff8157a4c3cbee026e2f619ba94b50366","mathematical_subject":"Computation.DataStructures","original_sha256":"22e3fb3c6aa34dcb66565ef34606856ff8157a4c3cbee026e2f619ba94b50366","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/InteractiveDevelopment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Claim
import Surface.ContinuousAssurance.ProgressiveEvidence

/-!
# Bounded interactive proof development

The exact target proposition, opaque human category, snapshot, and change kind
belong to `HumanDevelopmentRequest`.  A generated candidate is indexed by that
request and therefore has no fields with which to replace the proposition or
category.  Only proof-body and local-helper requests can inhabit the candidate
type.  A checked candidate additionally contains a Lean
`ClaimCertificate ... .verified` for the exact requested proposition.

The local model is represented only as external response data.  This module
does not formalize process timing: it models the declared deadline and finite
obligation bounds, while timing and cancellation remain executable conformance.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PropositionIdentity.Variant22e3fb3c6aa34dcb66565ef34606856ff8157a4c3cbee026e2f619ba94b50366

namespace Surface.ContinuousAssurance

/-- An exact human-owned proposition and its stable textual identity. -/
structure PropositionIdentity where
  identifier : String
  statementText : String
  statementDigest : String
  proposition : Prop

/-- Opaque identifier selected from the reviewed human category registry. -/
structure CategoryId where
  value : String
  deriving DecidableEq, Repr

/-- Stable identity of a human actor. -/
structure HumanIdentity where
  value : String
  deriving DecidableEq, Repr

/-- Exact identity of the reviewed subject environment. -/
structure SubjectIdentity where
  treeDigest : String
  leanToolchainDigest : String
  lakeManifestDigest : String
  mathlibRevision : String
  sourceModuleDigest : String
  importClosureDigest : String
  declarationSetDigest : String
  deriving DecidableEq, Repr

/-- Human-selected kind of requested source work. -/
inductive ChangeKind
  | proofBodyOnly
  | localLemmaOnly
  | statementProposal
  | definitionProposal
  | interfaceProposal
  | refinementBridgeProposal
  | sourceRefactorProposal
  deriving DecidableEq, Repr

namespace ChangeKind

/-- Exactly the two kinds permitted to enter automated candidate checking. -/
def AutomatedCheckable (kind : ChangeKind) : Prop :=
  kind = .proofBodyOnly ∨ kind = .localLemmaOnly

instance (kind : ChangeKind) : Decidable kind.AutomatedCheckable := by
  unfold AutomatedCheckable
  infer_instance

/-- Public statement proposals cannot enter automated proof checking. -/
theorem statementProposal_not_automated :
    ¬ AutomatedCheckable .statementProposal := by
  decide

/-- Interface proposals cannot enter automated proof checking. -/
theorem interfaceProposal_not_automated :
    ¬ AutomatedCheckable .interfaceProposal := by
  decide

end ChangeKind

/-- All finite proof-game resource bounds supplied by the human request. -/
structure ObligationBounds where
  maximumObligations : Nat
  maximumObligationDepth : Nat
  maximumCandidates : Nat
  maximumLeanChecks : Nat
  maximumCandidateBytes : Nat
  maximumModelOutputTokens : Nat
  deriving DecidableEq, Repr

/-- One immutable human-owned development request. -/
structure HumanDevelopmentRequest where
  identity : HumanRequestIdentity
  target : PropositionIdentity
  category : CategoryId
  snapshot : SubjectIdentity
  sourceModule : String
  changeKind : ChangeKind
  bounds : ObligationBounds
  requestedBy : HumanIdentity

/-- Declared latency contract; execution compliance remains external evidence. -/
structure InteractiveDeadlinePolicy where
  localModelSingleResponseDeadlineMs : Nat
  maximumInteractiveDeadlineMs : Nat
  shutdownGraceMs : Nat
  shutdownGraceBound : shutdownGraceMs ≤ 250

/-- Effective interactive deadline selected from the two reviewed limits. -/
def interactiveDeadline (policy : InteractiveDeadlinePolicy) : Nat :=
  min policy.localModelSingleResponseDeadlineMs
    policy.maximumInteractiveDeadlineMs

theorem interactiveDeadline_le_model
    (policy : InteractiveDeadlinePolicy) :
    interactiveDeadline policy ≤ policy.localModelSingleResponseDeadlineMs :=
  Nat.min_le_left _ _

theorem interactiveDeadline_le_policy
    (policy : InteractiveDeadlinePolicy) :
    interactiveDeadline policy ≤ policy.maximumInteractiveDeadlineMs :=
  Nat.min_le_right _ _

/-- The declared shutdown grace is bounded by the reviewed 250 ms ceiling. -/
theorem shutdownGrace_le_250 (policy : InteractiveDeadlinePolicy) :
    policy.shutdownGraceMs ≤ 250 :=
  policy.shutdownGraceBound

/-- One finite obligation; child obligations are private helper lemmas only. -/
structure ProofObligation (request : HumanDevelopmentRequest) where
  identity : ObligationIdentity
  parent : Option ObligationIdentity
  depth : Nat
  proposition : PropositionIdentity
  propositionText : String
  dependencies : List DeclarationIdentity

/-- A finite list graph carrying explicit node-count and depth bounds. -/
structure ObligationGraph (request : HumanDevelopmentRequest) where
  obligations : List (ProofObligation request)
  root : ProofObligation request
  root_mem : root ∈ obligations
  root_parent : root.parent = none
  root_is_requested_target : root.proposition = request.target
  nodeBound : obligations.length ≤ request.bounds.maximumObligations
  depthBound :
    ∀ obligation, obligation ∈ obligations →
      obligation.depth ≤ request.bounds.maximumObligationDepth

/-- The obligation graph has a finite enumeration within the declared bound. -/
theorem obligationGraph_bounded_and_finite
    {request : HumanDevelopmentRequest}
    (graph : ObligationGraph request) :
    ∃ obligations : List (ProofObligation request),
      obligations = graph.obligations ∧
      obligations.length ≤ request.bounds.maximumObligations :=
  ⟨graph.obligations, rfl, graph.nodeBound⟩

/-- The root of every obligation graph is exactly the human-supplied target. -/
theorem obligationGraph_root_target
    {request : HumanDevelopmentRequest}
    (graph : ObligationGraph request) :
    graph.root.proposition = request.target :=
  graph.root_is_requested_target

/-- Untrusted local-model output retained as data without theorem authority. -/
structure LocalModelOutput where
  identity : ModelResponseIdentity
  modelId : String
  modelDigest : String
  rawStreamDigest : String
  deriving DecidableEq, Repr

/-- There is no sound uniform eliminator from local-model output to a theorem. -/
theorem external_model_output_cannot_establish_proposition :
    ¬ (∀ proposition : Prop, LocalModelOutput → proposition) := by
  intro eliminate
  let output : LocalModelOutput :=
    { identity := ⟨"model-response"⟩
      modelId := "external-local-model"
      modelDigest := "external"
      rawStreamDigest := "external" }
  exact eliminate False output

/--
A proof candidate is indexed by its immutable request.  Its proposition,
category, imports, source module, and snapshot are therefore not model fields.
-/
structure ProofCandidate (request : HumanDevelopmentRequest) where
  identity : CandidateIdentity
  response : ModelResponseIdentity
  proofText : String
  responseByteStart : Nat
  responseByteEnd : Nat
  automated : request.changeKind.AutomatedCheckable

namespace ProofCandidate

/-- Candidate target is projected only from the human request. -/
def requestedProposition
    {request : HumanDevelopmentRequest}
    (_candidate : ProofCandidate request) : PropositionIdentity :=
  request.target

/-- Candidate category is projected only from the human request. -/
def requestedCategory
    {request : HumanDevelopmentRequest}
    (_candidate : ProofCandidate request) : CategoryId :=
  request.category

/-- A generated candidate cannot change the requested proposition. -/
@[simp]
theorem cannot_change_requested_proposition
    {request : HumanDevelopmentRequest}
    (candidate : ProofCandidate request) :
    candidate.requestedProposition = request.target :=
  rfl

/-- A generated candidate cannot change the human-owned category. -/
@[simp]
theorem cannot_change_human_category
    {request : HumanDevelopmentRequest}
    (candidate : ProofCandidate request) :
    candidate.requestedCategory = request.category :=
  rfl

/-- Every generated candidate comes from an automated-checkable request kind. -/
theorem request_kind_is_automated
    {request : HumanDevelopmentRequest}
    (candidate : ProofCandidate request) :
    request.changeKind.AutomatedCheckable :=
  candidate.automated

end ProofCandidate

/-- A Lean-checked candidate for precisely the indexed human request. -/
structure CheckedCandidate where
  request : HumanDevelopmentRequest
  candidate : ProofCandidate request
  checkIdentity : LeanCheckIdentity
  certificate : ClaimCertificate request.target.proposition .verified
  checkedAtLevel : AssuranceLevel := .development
  checkedAtDevelopment : checkedAtLevel = .development

namespace CheckedCandidate

/-- Only the stored Lean verified certificate exposes the requested proof. -/
theorem proof (checked : CheckedCandidate) :
    checked.request.target.proposition :=
  proof_of_verified checked.certificate

/-- Construction exposes the required verified Lean certificate as data. -/
def verifiedCertificate (checked : CheckedCandidate) :
    ClaimCertificate checked.request.target.proposition .verified :=
  checked.certificate

/-- A checked candidate can exist only with a verified Lean certificate. -/
theorem requires_verified_certificate (checked : CheckedCandidate) :
    Nonempty (ClaimCertificate checked.request.target.proposition .verified) :=
  ⟨checked.certificate⟩

/-- Every checked interactive candidate remains at development level. -/
theorem assurance_level (checked : CheckedCandidate) :
    checked.checkedAtLevel = .development :=
  checked.checkedAtDevelopment

end CheckedCandidate

/-- Adoption status is governance data separate from kernel checking. -/
inductive ProjectAdoptionStatus
  | notAuthorized
  | adopted
  deriving DecidableEq, Repr

/-- A checked candidate becomes a review proposal, never an automatic patch. -/
structure DevelopmentProposal where
  identity : ProposalIdentity
  checked : CheckedCandidate
  adoptionStatus : ProjectAdoptionStatus
  notAuthorized : adoptionStatus = .notAuthorized

/-- Construct the governance proposal emitted by interactive checking. -/
def CheckedCandidate.toDevelopmentProposal
    (checked : CheckedCandidate)
    (identity : ProposalIdentity) : DevelopmentProposal :=
  { identity
    checked
    adoptionStatus := .notAuthorized
    notAuthorized := rfl }

/-- A checked candidate does not by itself imply project adoption. -/
theorem checked_candidate_not_project_adoption
    (checked : CheckedCandidate)
    (identity : ProposalIdentity) :
    (checked.toDevelopmentProposal identity).adoptionStatus =
      .notAuthorized :=
  rfl

end Surface.ContinuousAssurance
