import Surface.ContinuousAssurance.Claim
import Surface.ContinuousAssurance.Pipeline
import Surface.ContinuousAssurance.Refinement
import Surface.ContinuousAssurance.AnalyticTheoremPolicy
import Surface.ContinuousAssurance.QuantizedEvidence

/-!
# Executable semantics for the abstract assurance stages

This module gives the provider-neutral stages nontrivial, pure Lean semantics.
Runtime certificates are typed data.  Their decidable checker validates only
declared identifiers, the presence of a digest label, reported success, and
provenance metadata; it does not inspect a process, filesystem, Rust
executable, or the bytes named by a digest.

The final section proves a refinement for an explicitly modeled list-based
audit controller.  This is a refinement between two Lean transition systems.
It is deliberately not a bridge from the actual Rust/process execution, whose
submission status remains `rustAuditRuntimeRefinementStatus = .notSubmitted`.
-/

namespace Surface.ContinuousAssurance

/-- No YAML-parser-to-Lean-policy refinement is submitted in this development. -/
def rootConfigurationParserRefinementStatus :
    RuntimeRefinementSubmissionStatus :=
  .notSubmitted

/-- Executable configuration validation remains outside theorem authority. -/
@[simp]
theorem rootConfigurationParserRefinement_notSubmitted :
    rootConfigurationParserRefinementStatus = .notSubmitted :=
  rfl

/-- Optional analysis observes rather than reclassifies an existing claim. -/
theorem optionalAnalysis_preserves_claim_status
    (observation : QuantizedObservation)
    (status : ClaimStatus) :
    observation.observedClaimStatus status = status :=
  quantization_preserves_claim_status observation status

/-! ## Typed runtime-certificate boundary -/

/-- Data offered by an external evaluator to the modeled evidence collector. -/
structure RuntimeCertificate where
  identifier : String
  location : String
  digest : EvidenceDigest
  producer : String
  authority : AuthorityClass
  successful : Bool
  deriving DecidableEq, Repr

namespace RuntimeCertificate

/--
The metadata contract checked before a certificate enters the modeled
controller.  Nonempty names and digests prevent anonymous or unaddressed
evidence, producer and authority must agree with the declared project
boundary, and only a certificate whose reported execution succeeded is
admitted.  This last condition checks submitted certificate data; it does not
verify that the external process actually ran or reported honestly.
-/
def ValidFor (certificate : RuntimeCertificate) (controller : Project) : Prop :=
  certificate.identifier ≠ "" ∧
  certificate.location ≠ "" ∧
  certificate.digest.value ≠ "" ∧
  certificate.producer = controller.identifier ∧
  certificate.authority = controller.executionAuthorityClass ∧
  certificate.successful = true

instance (certificate : RuntimeCertificate) (controller : Project) :
    Decidable (certificate.ValidFor controller) := by
  unfold ValidFor
  infer_instance

/-- Decidable data checker for the modeled certificate contract. -/
def check (controller : Project) (certificate : RuntimeCertificate) : Bool :=
  decide (certificate.ValidFor controller)

/-- Checker acceptance yields only the modeled metadata contract. -/
theorem check_sound
    (controller : Project)
    (certificate : RuntimeCertificate)
    (accepted : certificate.check controller = true) :
    certificate.ValidFor controller := by
  exact of_decide_eq_true accepted

/-- A certificate paired with the proof produced at the typed checker boundary. -/
def AcceptedFor (controller : Project) :=
  {certificate : RuntimeCertificate // certificate.ValidFor controller}

/-- Convert accepted certificate data into one evidence bundle. -/
def toEvidenceBundle
    {controller : Project}
    (accepted : AcceptedFor controller) : EvidenceBundle :=
  { identifier := accepted.val.identifier
    items :=
      [ { identifier := accepted.val.identifier
          location := accepted.val.location
          digest := accepted.val.digest
          origin :=
            { producer := accepted.val.producer
              authority := accepted.val.authority
              evidenceClass := .executableConformance } } ] }

end RuntimeCertificate

/-! ## Evidence collection -/

/-- Evidence collection is an exact map from accepted typed certificates. -/
def collectEvidence
    (controller : Project)
    (certificates : List (RuntimeCertificate.AcceptedFor controller)) :
    List EvidenceBundle :=
  certificates.map RuntimeCertificate.toEvidenceBundle

/-- Exact postcondition of the modeled evidence-collection transition. -/
def CollectEvidencePostcondition
    (controller : Project)
    (certificates : List (RuntimeCertificate.AcceptedFor controller))
    (output : List EvidenceBundle) : Prop :=
  output = collectEvidence controller certificates

/-- The modeled collector satisfies its exact output postcondition. -/
theorem collectEvidencePostcondition
    (controller : Project)
    (certificates : List (RuntimeCertificate.AcceptedFor controller)) :
    CollectEvidencePostcondition controller certificates
      (collectEvidence controller certificates) :=
  rfl

/-! ## Claim classification without authority promotion -/

/-- A classification retains the complete typed claim and its original status. -/
structure ClassifiedClaim where
  source : Claim
  status : ClaimStatus
  status_eq : status = source.status

/-- Classify by projecting the status already enforced by the claim certificate. -/
def classifyClaim (claim : Claim) : ClassifiedClaim :=
  { source := claim
    status := claim.status
    status_eq := rfl }

/-- Classify a complete claim ledger without changing certificate authority. -/
def classifyClaims (claims : List Claim) : List ClassifiedClaim :=
  claims.map classifyClaim

/-- Exact postcondition of modeled claim classification. -/
def ClassifyClaimsPostcondition
    (claims : List Claim)
    (output : List ClassifiedClaim) : Prop :=
  output = classifyClaims claims ∧
  ∀ classified ∈ output, classified.status = classified.source.status

/--
Classification is sound in the precise authority-preserving sense: every
output retains its source claim and exactly the status indexed by that claim's
certificate.  It cannot turn external or conjectural data into verification.
-/
theorem classifyClaimsSound
    (claims : List Claim) :
    ClassifyClaimsPostcondition claims (classifyClaims claims) := by
  constructor
  · rfl
  · intro classified _
    exact classified.status_eq

/-- Classification at a progressive stage is the same authority-preserving map. -/
def classifyClaimsAt
    (_level : AssuranceLevel)
    (claims : List Claim) : List ClassifiedClaim :=
  classifyClaims claims

/-- Raising assurance level cannot promote the classification of any claim. -/
theorem classifyClaimsAt_level_independent
    (earlier later : AssuranceLevel)
    (claims : List Claim) :
    classifyClaimsAt earlier claims = classifyClaimsAt later claims :=
  rfl

/-! ## Gates -/

/-- Gate output paired with the classification on which it was computed. -/
structure ClaimGate where
  classification : ClassifiedClaim
  decision : GateDecision

/--
Only kernel-verified claims pass, refuted claims fail, and every status lacking
an unconditional theorem defers.  In particular, external evidence cannot pass
this modeled proof gate.
-/
def gateDecision : ClaimStatus → GateDecision
  | .verified => .pass
  | .refuted => .fail
  | .conditionallyVerified
  | .conjectural
  | .external
  | .unsubstantiated => .defer

/-- Apply the proof gate to one classified claim. -/
def applyGate (classification : ClassifiedClaim) : ClaimGate :=
  { classification
    decision := gateDecision classification.status }

/-- Apply proof gates pointwise. -/
def applyGates (claims : List ClassifiedClaim) : List ClaimGate :=
  claims.map applyGate

/-- The gate decision has exactly the stated status semantics. -/
theorem gateDecisionSound (status : ClaimStatus) :
    (gateDecision status = .pass ↔ status = .verified) ∧
    (gateDecision status = .fail ↔ status = .refuted) := by
  cases status <;> simp [gateDecision]

/-- Exact postcondition of the modeled gate transition. -/
def ApplyGatesPostcondition
    (claims : List ClassifiedClaim)
    (output : List ClaimGate) : Prop :=
  output = applyGates claims ∧
  ∀ gate ∈ output, gate.decision = gateDecision gate.classification.status

theorem applyGatesPostcondition (claims : List ClassifiedClaim) :
    ApplyGatesPostcondition claims (applyGates claims) := by
  constructor
  · rfl
  · intro gate member
    simp only [applyGates, List.mem_map] at member
    obtain ⟨classification, _, rfl⟩ := member
    rfl

/-! ## Attestation and provenance -/

namespace EvidenceBundle

/-- Every item in a bundle carries the controller's declared provenance. -/
def ValidFor (bundle : EvidenceBundle) (controller : Project) : Prop :=
  ∀ item ∈ bundle.items,
    item.origin.producer = controller.identifier ∧
    item.origin.authority = controller.executionAuthorityClass

end EvidenceBundle

/-- Issue attestation data; this constructor contains no theorem certificate. -/
def issueAttestation
    (controller : Project)
    (identifier location : String)
    (decision : GateDecision)
    (evidence : EvidenceBundle) : ExternalEvidence :=
  { attestation :=
      { identifier
        decision
        evidence
        issuer := controller.identifier }
    location
    owner := controller }

/-- Exact data-output postcondition of modeled attestation issuance. -/
def IssueAttestationPostcondition
    (controller : Project)
    (identifier location : String)
    (decision : GateDecision)
    (evidence : EvidenceBundle)
    (output : ExternalEvidence) : Prop :=
  output = issueAttestation controller identifier location decision evidence

/-- The attestation constructor satisfies its exact data postcondition. -/
theorem issueAttestationPostcondition
    (controller : Project)
    (identifier location : String)
    (decision : GateDecision)
    (evidence : EvidenceBundle) :
    IssueAttestationPostcondition controller identifier location decision evidence
      (issueAttestation controller identifier location decision evidence) :=
  rfl

/--
Well-provenanced input evidence yields coherent attestation metadata.  The
conclusion is only `ProvenanceCoherent`; it does not prove any claim cited by
the attestation.
-/
theorem attestationProvenanceSound
    (controller : Project)
    (identifier location : String)
    (decision : GateDecision)
    (evidence : EvidenceBundle)
    (valid : evidence.ValidFor controller) :
    ExternalEvidence.ProvenanceCoherent
      (issueAttestation controller identifier location decision evidence) := by
  constructor
  · rfl
  · exact valid

/-! ## Refinement requests -/

/-- A deferred or failed claim produces an explicit refinement request. -/
structure RefinementRequest where
  claimId : String
  reason : GateDecision
  deriving DecidableEq, Repr

/-- Passing claims need no refinement; all other gate results do. -/
def refinementRequestsFor (gates : List ClaimGate) : List RefinementRequest :=
  gates.filterMap fun gate =>
    match gate.decision with
    | .pass => none
    | decision => some ⟨gate.classification.source.claimId, decision⟩

/-- Exact postcondition of modeled refinement-request emission. -/
def EmitRefinementRequestsPostcondition
    (gates : List ClaimGate)
    (output : List RefinementRequest) : Prop :=
  output = refinementRequestsFor gates ∧
  ∀ request ∈ output, request.reason ≠ .pass

/-- The emitter returns exactly the nonpassing gates. -/
theorem emitRefinementRequestsPostcondition (gates : List ClaimGate) :
    EmitRefinementRequestsPostcondition gates (refinementRequestsFor gates) := by
  constructor
  · rfl
  · intro request member
    simp only [refinementRequestsFor, List.mem_filterMap] at member
    obtain ⟨gate, _, produced⟩ := member
    cases decision : gate.decision with
    | pass => simp [decision] at produced
    | fail =>
        simp [decision] at produced
        subst request
        simp
    | defer =>
        simp [decision] at produced
        subst request
        simp

/-! ## Pure semantic pipeline state and transitions -/

/-- State of the provider-neutral, theorem-level assurance semantics. -/
structure SemanticPipelineState where
  evidence : List EvidenceBundle
  classifications : List ClassifiedClaim
  gates : List ClaimGate
  attestations : List ExternalEvidence
  refinementRequests : List RefinementRequest

/-- Append newly collected evidence without discarding prior evidence. -/
def collectEvidenceTransition
    (state : SemanticPipelineState)
    (controller : Project)
    (certificates : List (RuntimeCertificate.AcceptedFor controller)) :
    SemanticPipelineState :=
  { state with evidence := state.evidence ++ collectEvidence controller certificates }

/-- Replace classifications with the exact classification of the supplied ledger. -/
def classifyClaimsTransition
    (state : SemanticPipelineState)
    (claims : List Claim) : SemanticPipelineState :=
  { state with classifications := classifyClaims claims }

/-- Replace gate outputs with the exact decisions for current classifications. -/
def applyGatesTransition (state : SemanticPipelineState) : SemanticPipelineState :=
  { state with gates := applyGates state.classifications }

/-- Append one externally meaningful but theorem-free attestation datum. -/
def issueAttestationTransition
    (state : SemanticPipelineState)
    (controller : Project)
    (identifier location : String)
    (decision : GateDecision)
    (evidence : EvidenceBundle) : SemanticPipelineState :=
  { state with
    attestations := state.attestations ++
      [issueAttestation controller identifier location decision evidence] }

/-- Replace refinement requests with those induced by current gates. -/
def emitRefinementRequestsTransition
    (state : SemanticPipelineState) : SemanticPipelineState :=
  { state with refinementRequests := refinementRequestsFor state.gates }

/-! ## Typed contracts for the semantic pipeline stages -/

/--
The five canonical stages whose provider-neutral outputs have an in-Lean
semantic model.  Input resolution, graph construction, and evaluator execution
remain external lifecycle stages and are deliberately absent.
-/
inductive SemanticStage
  | collectEvidence
  | classifyClaims
  | applyGates
  | issueAttestation
  | emitRefinementRequests
  deriving DecidableEq, Repr

namespace SemanticStage

/-- Explicit link from each typed semantic stage to the canonical stage DAG. -/
def toPipelineStage : SemanticStage → PipelineStage
  | .collectEvidence => .collectEvidence
  | .classifyClaims => .classifyClaims
  | .applyGates => .applyGates
  | .issueAttestation => .issueAttestation
  | .emitRefinementRequests => .emitRefinementRequests

/-- Inputs are indexed by the semantic stage that can consume them. -/
inductive Input : SemanticStage → Type
  | collect
      (controller : Project)
      (certificates : List (RuntimeCertificate.AcceptedFor controller)) :
      Input .collectEvidence
  | classify (claims : List Claim) : Input .classifyClaims
  | gate : Input .applyGates
  | attest
      (controller : Project)
      (identifier location : String)
      (decision : GateDecision)
      (evidence : {bundle : EvidenceBundle // bundle.ValidFor controller}) :
      Input .issueAttestation
  | refine : Input .emitRefinementRequests

/-- Each stage exposes its actual typed output rather than a marker string. -/
def Output : SemanticStage → Type
  | .collectEvidence => List EvidenceBundle
  | .classifyClaims => List ClassifiedClaim
  | .applyGates => List ClaimGate
  | .issueAttestation => ExternalEvidence
  | .emitRefinementRequests => List RefinementRequest

/-- Compute the exact typed result of one modeled semantic stage. -/
def evaluate : (stage : SemanticStage) →
    SemanticPipelineState → Input stage → Output stage
  | .collectEvidence, _, .collect controller certificates =>
      Surface.ContinuousAssurance.collectEvidence controller certificates
  | .classifyClaims, _, .classify claims =>
      Surface.ContinuousAssurance.classifyClaims claims
  | .applyGates, state, .gate =>
      Surface.ContinuousAssurance.applyGates state.classifications
  | .issueAttestation, _, .attest controller identifier location decision evidence =>
      Surface.ContinuousAssurance.issueAttestation
        controller identifier location decision evidence.val
  | .emitRefinementRequests, state, .refine =>
      Surface.ContinuousAssurance.refinementRequestsFor state.gates

/-- Apply a typed stage result to the corresponding field of semantic state. -/
def transition : (stage : SemanticStage) →
    SemanticPipelineState → Input stage → SemanticPipelineState
  | .collectEvidence, state, .collect controller certificates =>
      { state with evidence := state.evidence ++
          Surface.ContinuousAssurance.collectEvidence controller certificates }
  | .classifyClaims, state, .classify claims =>
      { state with classifications :=
          Surface.ContinuousAssurance.classifyClaims claims }
  | .applyGates, state, .gate =>
      { state with gates :=
          Surface.ContinuousAssurance.applyGates state.classifications }
  | .issueAttestation, state,
      .attest controller identifier location decision evidence =>
      { state with attestations := state.attestations ++
          [Surface.ContinuousAssurance.issueAttestation
            controller identifier location decision evidence.val] }
  | .emitRefinementRequests, state, .refine =>
      { state with refinementRequests :=
          Surface.ContinuousAssurance.refinementRequestsFor state.gates }

/--
Exact contract for a typed semantic stage: both its typed output and its next
state must equal the model's declared computations.
-/
def Postcondition
    (stage : SemanticStage)
    (state : SemanticPipelineState)
    (input : Input stage)
    (output : Output stage)
    (next : SemanticPipelineState) : Prop :=
  output = evaluate stage state input ∧
  next = transition stage state input

/-- Every typed semantic transition satisfies its exact dependent contract. -/
theorem transition_satisfies_postcondition
    (stage : SemanticStage)
    (state : SemanticPipelineState)
    (input : Input stage) :
    Postcondition stage state input
      (evaluate stage state input)
      (transition stage state input) :=
  ⟨rfl, rfl⟩

/-- The typed stage label agrees with the corresponding canonical stage spec. -/
theorem toPipelineStage_spec_stage (stage : SemanticStage) :
    (canonicalStageSpec stage.toPipelineStage).stage = stage.toPipelineStage := by
  cases stage <;> rfl

/-- Typed semantic stages map injectively into the canonical stage DAG. -/
theorem toPipelineStage_injective : Function.Injective toPipelineStage := by
  intro left right equality
  cases left <;> cases right <;> simp_all [toPipelineStage]

end SemanticStage

/-! ## Refinement for the explicitly modeled controller -/

/-- Pure list state of the modeled audit controller, not a Rust process state. -/
structure ModeledAuditControllerState where
  accepted : List (RuntimeCertificate.AcceptedFor .rustAuditImplementation)
  emitted : List EvidenceBundle

/-- The modeled implementation state is valid when emitted evidence is exact. -/
def ModeledAuditControllerState.Valid
    (state : ModeledAuditControllerState) : Prop :=
  state.emitted = collectEvidence .rustAuditImplementation state.accepted

/-- One modeled controller step appends an accepted certificate and its evidence. -/
def modeledAuditControllerStep
    (state : ModeledAuditControllerState)
    (input : RuntimeCertificate.AcceptedFor .rustAuditImplementation) :
    ModeledAuditControllerState :=
  { accepted := state.accepted ++ [input]
    emitted := state.emitted ++ [RuntimeCertificate.toEvidenceBundle input] }

/-- Observable evidence identifiers. -/
def evidenceIdentifiers (evidence : List EvidenceBundle) : List String :=
  evidence.map EvidenceBundle.identifier

/--
Concrete refinement between a pure list specification and a pure modeled
controller.  It certifies no parser, Rust binary, syscall, filesystem, shell,
or process execution.
-/
def modeledAuditControllerRefinement :
    Refinement
      (List EvidenceBundle)
      ModeledAuditControllerState
      EvidenceBundle
      (RuntimeCertificate.AcceptedFor .rustAuditImplementation)
      (List String)
      (List String) where
  validImplementationState := ModeledAuditControllerState.Valid
  abstraction := ModeledAuditControllerState.emitted
  inputTranslation := RuntimeCertificate.toEvidenceBundle
  observationTranslation := id
  specificationTransition := fun state input => state ++ [input]
  implementationTransition := modeledAuditControllerStep
  specificationObservation := evidenceIdentifiers
  implementationObservation := fun state => evidenceIdentifiers state.emitted
  validStatePreservation := by
    intro implementation input valid
    simp only [ModeledAuditControllerState.Valid, modeledAuditControllerStep,
      collectEvidence, List.map_append, List.map_cons, List.map_nil]
    rw [valid]
    rfl
  transitionSoundness := by
    intro implementation input _
    rfl
  observationSoundness := by
    intro implementation _
    rfl

/-- A modeled controller step preserves exact evidence validity. -/
theorem auditValidStatePreserved
    (implementation : ModeledAuditControllerState)
    (input : RuntimeCertificate.AcceptedFor .rustAuditImplementation)
    (valid : implementation.Valid) :
    (modeledAuditControllerStep implementation input).Valid :=
  modeledAuditControllerRefinement.validStatePreservation implementation input valid

/-- The modeled implementation transition equals its list specification step. -/
theorem auditTransitionSound
    (implementation : ModeledAuditControllerState)
    (input : RuntimeCertificate.AcceptedFor .rustAuditImplementation)
    (valid : implementation.Valid) :
    modeledAuditControllerRefinement.abstraction
        (modeledAuditControllerStep implementation input) =
      modeledAuditControllerRefinement.specificationTransition
        (modeledAuditControllerRefinement.abstraction implementation)
        (modeledAuditControllerRefinement.inputTranslation input) :=
  modeledAuditControllerRefinement.transitionSoundness implementation input valid

/-- Modeled observations agree with abstract evidence identifiers. -/
theorem auditObservationSound
    (implementation : ModeledAuditControllerState)
    (valid : implementation.Valid) :
    modeledAuditControllerRefinement.observationTranslation
        (modeledAuditControllerRefinement.implementationObservation implementation) =
      modeledAuditControllerRefinement.specificationObservation
        (modeledAuditControllerRefinement.abstraction implementation) :=
  modeledAuditControllerRefinement.observationSoundness implementation valid

/-- The pure refinement leaves the actual Rust runtime bridge unsubmitted. -/
theorem modeledAuditController_does_not_submit_rust_bridge :
    rustAuditRuntimeRefinementStatus = .notSubmitted :=
  rustAuditRuntimeRefinement_notSubmitted

end Surface.ContinuousAssurance
