import Surface.ContinuousAssurance.WorldModel.Coupling
import Surface.ContinuousAssurance.WorldModel.NeuralProposal

/-!
# Neural proposal validation boundary

Validation can route an advisory proposal to review or reject it.  It cannot
promote the proposal to a proof, review, authorization, accepted source change,
or accepted coupling state.  Coupling proposals enter the mathematical layer
only through an explicit admissible projection.
-/

namespace Surface.ContinuousAssurance.WorldModel

inductive ProposalRejectionReason
  | missingCheckerRoute
  | staleActiveRegion
  | staleModelVersion
  | missingAssumption
  | authorityViolation
  | trustedBaseViolation
  | provenanceIncomplete
  | validationFailed
  deriving DecidableEq, Repr

inductive ProposalValidationDecision
  | rejected (reason : ProposalRejectionReason)
  | acceptedForIndependentReview
  deriving DecidableEq, Repr

/-- Checked routing evidence still leaves proposal authority external. -/
structure ValidatedNeuralProposal where
  proposal : NeuralProposal
  checkerEvidence : ArtifactIdentity
  checkerVersion : ArtifactIdentity
  checkerVersionMatches :
    checkerVersion = proposal.requiredChecker.checkerVersion
  decision : ProposalValidationDecision
  outputAuthority : AuthorityClass
  authorityUnchanged : outputAuthority = proposal.authorityCeiling

theorem ValidatedNeuralProposal.authority_remains_external
    (validated : ValidatedNeuralProposal) :
    validated.outputAuthority = .externalCapability := by
  rw [validated.authorityUnchanged, validated.proposal.externalOnly]

/-- Failed advisory validation preserves the existing certified state exactly. -/
def preserveOnRejectedProposal
    {State : Type*}
    (certifiedState : State)
    (_proposal : NeuralProposal)
    (decision : ProposalValidationDecision) : State :=
  match decision with
  | .rejected _ => certifiedState
  | .acceptedForIndependentReview => certifiedState

@[simp]
theorem rejected_proposal_preserves_certified_state
    {State : Type*}
    (certifiedState : State)
    (proposal : NeuralProposal)
    (reason : ProposalRejectionReason) :
    preserveOnRejectedProposal certifiedState proposal (.rejected reason) =
      certifiedState :=
  rfl

/-- A proposed table becomes accepted only after the declared projection. -/
def projectCouplingProposal
    {Model : Type*} [Fintype Model] [DecidableEq Model]
    {template : CouplingWeightState Model}
    {metric : WeightDistance Model}
    (projection : AdmissibleProjection Model template metric)
    (proposal : ProposedCouplingWeights Model) : CouplingWeightState Model :=
  projection.project proposal.proposed

/-- Projected proposals satisfy nonnegativity and row normalization. -/
theorem projected_neural_weights_are_admissible
    {Model : Type*} [Fintype Model] [DecidableEq Model]
    {template : CouplingWeightState Model}
    {metric : WeightDistance Model}
    (projection : AdmissibleProjection Model template metric)
    (proposal : ProposedCouplingWeights Model) :
    (∀ i j, 0 ≤ (projectCouplingProposal projection proposal).weight i j) ∧
      (∀ i ∈ (projectCouplingProposal projection proposal).activeModels,
        ∑ j ∈ (projectCouplingProposal projection proposal).activeModels,
          (projectCouplingProposal projection proposal).weight i j = 1) :=
  projection_preserves_admissibility projection proposal.proposed

/-- High confidence does not uniformly establish an arbitrary proposition. -/
theorem neural_confidence_is_not_proof_authority
    (score : CalibratedScore)
    (perfect : score.value = 1) :
    ¬ (∀ proposition : Prop, score.value = 1 → proposition) := by
  intro promote
  exact promote False perfect

end Surface.ContinuousAssurance.WorldModel
