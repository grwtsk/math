import Std


/- source-tree-label: STL1|L|addr=1100100|role=proof_code_atom|slug=pipeline-validation-planningsurface|owner=canonical_owner|core=Pipeline/Validation/PlanningSurface.lean|leaf=M506970656c696e652f56616c69646174696f6e2f506c616e6e696e67537572666163652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation

inductive PlanningResidue where
  | stall
  | fixedPoint
  deriving DecidableEq, Repr

def planningResidues : List PlanningResidue := [
  PlanningResidue.stall,
  PlanningResidue.fixedPoint
]

theorem planning_residue_count_declared :
    planningResidues.length = 2 := by
  rfl

inductive PlanningParty where
  | humanOperator
  | localModel
  | globalAdvisoryReferee
  | pipeline
  deriving DecidableEq, Repr

def planningParties : List PlanningParty := [
  PlanningParty.humanOperator,
  PlanningParty.localModel,
  PlanningParty.globalAdvisoryReferee,
  PlanningParty.pipeline
]

theorem planning_party_count_declared :
    planningParties.length = 4 := by
  rfl

inductive PlanningTerminalClass where
  | checkedLean
  | checkedRust
  | checkedEvidence
  | checkedTheorem
  | residue
  deriving DecidableEq, Repr

def planningTerminalClasses : List PlanningTerminalClass := [
  PlanningTerminalClass.checkedLean,
  PlanningTerminalClass.checkedRust,
  PlanningTerminalClass.checkedEvidence,
  PlanningTerminalClass.checkedTheorem,
  PlanningTerminalClass.residue
]

theorem planning_terminal_class_count_declared :
    planningTerminalClasses.length = 5 := by
  rfl

inductive PlanningPacketField where
  | residueId
  | residueKind
  | failedNode
  | missingGluingObstruction
  | currentAuthorityPhase
  | localContextDigest
  | localModelQueryCandidates
  | globalRefereeQuestions
  | humanPriorityConstraints
  | requiredArtifactClass
  | validationCommand
  | nonClaims
  | nextAdmissibleAction
  deriving DecidableEq, Repr

def planningPacketFields : List PlanningPacketField := [
  PlanningPacketField.residueId,
  PlanningPacketField.residueKind,
  PlanningPacketField.failedNode,
  PlanningPacketField.missingGluingObstruction,
  PlanningPacketField.currentAuthorityPhase,
  PlanningPacketField.localContextDigest,
  PlanningPacketField.localModelQueryCandidates,
  PlanningPacketField.globalRefereeQuestions,
  PlanningPacketField.humanPriorityConstraints,
  PlanningPacketField.requiredArtifactClass,
  PlanningPacketField.validationCommand,
  PlanningPacketField.nonClaims,
  PlanningPacketField.nextAdmissibleAction
]

theorem planning_packet_field_count_declared :
    planningPacketFields.length = 13 := by
  rfl

inductive TypedPlanningPacketField where
  | schema
  | packetId
  | createdAt
  | sourceDigest
  | canonicalDigest
  | authorityPhase
  | residueFallback
  | trigger
  | failedState
  | authority
  | obstructionAst
  | missingGluingObstruction
  | context
  | queryConstraints
  | nonClaims
  | advisoryGloss
  deriving DecidableEq, Repr

def typedPlanningPacketFields : List TypedPlanningPacketField := [
  TypedPlanningPacketField.schema,
  TypedPlanningPacketField.packetId,
  TypedPlanningPacketField.createdAt,
  TypedPlanningPacketField.trigger,
  TypedPlanningPacketField.failedState,
  TypedPlanningPacketField.authority,
  TypedPlanningPacketField.obstructionAst,
  TypedPlanningPacketField.missingGluingObstruction,
  TypedPlanningPacketField.context,
  TypedPlanningPacketField.queryConstraints,
  TypedPlanningPacketField.nonClaims,
  TypedPlanningPacketField.advisoryGloss
]

theorem typed_planning_packet_field_count_declared :
    typedPlanningPacketFields.length = 12 := by
  rfl

inductive ObstructionKind where
  | missingObject
  | missingMorphism
  | missingPreservationLaw
  | missingValidator
  | missingTheorem
  | importFailure
  | digestDrift
  | authorityGap
  | hiddenResidue
  | overlapViolation
  | fixedPoint
  deriving DecidableEq, Repr

def obstructionKinds : List ObstructionKind := [
  ObstructionKind.missingObject,
  ObstructionKind.missingMorphism,
  ObstructionKind.missingPreservationLaw,
  ObstructionKind.missingValidator,
  ObstructionKind.missingTheorem,
  ObstructionKind.importFailure,
  ObstructionKind.digestDrift,
  ObstructionKind.authorityGap,
  ObstructionKind.hiddenResidue,
  ObstructionKind.overlapViolation,
  ObstructionKind.fixedPoint
]

theorem obstruction_kind_count_declared :
    obstructionKinds.length = 11 := by
  rfl

inductive PlanningTypedResidue where
  | planningSurfaceNotConstructed
  | planningPacketMissingObstructionAst
  | planningPacketMissingAuthorityPhase
  | planningPacketMissingNonClaims
  | planningPacketMissingFailedState
  | planningPacketMissingQueryConstraints
  | localModelViewMissingRequiredObject
  | localModelViewMissingObstructionKind
  | localModelQueryCandidateInvalid
  | localModelQueryNotObstructionTied
  | localModelQueryForbiddenClaim
  | localModelQueryGenerationFailed
  | boundaryExpansionRequestMissing
  | boundaryExpansionRequestNotValidated
  | boundaryExpansionRequestSkippedAuthorityLadder
  | researchResultUsedAsProof
  | localModelOutputUsedAsProof
  | advisoryGlossUsedAsAuthority
  | codexTokenScopeExpansionRequired
  | codexTokenScopeViolation
  deriving DecidableEq, Repr

def planningTypedResidues : List PlanningTypedResidue := [
  PlanningTypedResidue.planningSurfaceNotConstructed,
  PlanningTypedResidue.planningPacketMissingObstructionAst,
  PlanningTypedResidue.planningPacketMissingAuthorityPhase,
  PlanningTypedResidue.planningPacketMissingNonClaims,
  PlanningTypedResidue.planningPacketMissingFailedState,
  PlanningTypedResidue.planningPacketMissingQueryConstraints,
  PlanningTypedResidue.localModelViewMissingRequiredObject,
  PlanningTypedResidue.localModelViewMissingObstructionKind,
  PlanningTypedResidue.localModelQueryCandidateInvalid,
  PlanningTypedResidue.localModelQueryNotObstructionTied,
  PlanningTypedResidue.localModelQueryForbiddenClaim,
  PlanningTypedResidue.localModelQueryGenerationFailed,
  PlanningTypedResidue.boundaryExpansionRequestMissing,
  PlanningTypedResidue.boundaryExpansionRequestNotValidated,
  PlanningTypedResidue.boundaryExpansionRequestSkippedAuthorityLadder,
  PlanningTypedResidue.researchResultUsedAsProof,
  PlanningTypedResidue.localModelOutputUsedAsProof,
  PlanningTypedResidue.advisoryGlossUsedAsAuthority,
  PlanningTypedResidue.codexTokenScopeExpansionRequired,
  PlanningTypedResidue.codexTokenScopeViolation
]

theorem planning_typed_residue_count_declared :
    planningTypedResidues.length = 20 := by
  rfl

inductive PlanningValidator where
  | stallAndFixedResidueDefinePlanningDomain
  | planningCreatedOnlyAfterExposedResidue
  | noCheckedInternalMotionExposesStallResidue
  | tauZeroExposesFixedPointResidue
  | planningPacketHasRequiredFields
  | threePartyInterfaceHasNoProofAuthority
  | pipelineAdmitsCheckedArtifactOrResidueOnly
  | noResidueNoPlanningOverride
  | planningOutputRoutesToAuthorityLadder
  | boundaryExpansionRequestIsNextInterface
  | newLeafInjectionWaitsForCheckedArtifactOrResidue
  | centerRecomputeAndSelectorFollowNewLeaf
  | evidencePathsDeclaredForPlanningSurface
  | planningPacketHasObstructionAst
  | planningPacketHasTaggedObstructionAst
  | obstructionAstMatchesFlatBoundary
  | advisoryGlossIsNotAstAuthority
  | planningPacketHasAuthorityPhase
  | planningPacketHasNonClaims
  | localModelViewIsCompactTypedBounded
  | queryCandidateSetValidated
  | queryCandidateTiedToObstruction
  | queryCandidateHasNoForbiddenClaims
  | boundaryExpansionRequestFromValidatedQueries
  | queryCandidatesRouteOnlyThroughBoundaryExpansion
  | localModelOutputNeverAcceptsTheorem
  | typedJsonlAndLatestPathsDeclared
  | modelFacingPacketsAreSmallTypedBounded
  | planningRequiresExposedResidue
  | obstructionAstKindIsValid
  | obstructionAstHasRequiredKindFields
  | planningPacketHasQueryConstraints
  | localModelViewIsTokenMinimized
  | localModelViewExcludesAdvisoryGloss
  | localModelViewExcludesPrivateReasoning
  | queryCandidateHasSourcePacket
  | queryCandidateHasLinkedObstruction
  | queryCandidateHasAllowedQueryType
  | queryCandidateHasAllowedTargetDomain
  | queryCandidateHasExpectedArtifactClass
  | queryCandidateHasNonClaims
  | queryCandidateHasNoForbiddenClaim
  | queryCandidateIsBounded
  | boundaryExpansionRequestHasValidatedQueries
  | boundaryExpansionRequestEntersAuthorityLadder
  | localModelOutputNotUsedAsProof
  | researchResultNotUsedAsProof
  deriving DecidableEq, Repr

def planningValidators : List PlanningValidator := [
  PlanningValidator.stallAndFixedResidueDefinePlanningDomain,
  PlanningValidator.planningCreatedOnlyAfterExposedResidue,
  PlanningValidator.noCheckedInternalMotionExposesStallResidue,
  PlanningValidator.tauZeroExposesFixedPointResidue,
  PlanningValidator.planningPacketHasRequiredFields,
  PlanningValidator.threePartyInterfaceHasNoProofAuthority,
  PlanningValidator.pipelineAdmitsCheckedArtifactOrResidueOnly,
  PlanningValidator.noResidueNoPlanningOverride,
  PlanningValidator.planningOutputRoutesToAuthorityLadder,
  PlanningValidator.boundaryExpansionRequestIsNextInterface,
  PlanningValidator.newLeafInjectionWaitsForCheckedArtifactOrResidue,
  PlanningValidator.centerRecomputeAndSelectorFollowNewLeaf,
  PlanningValidator.evidencePathsDeclaredForPlanningSurface,
  PlanningValidator.planningPacketHasObstructionAst,
  PlanningValidator.planningPacketHasTaggedObstructionAst,
  PlanningValidator.obstructionAstMatchesFlatBoundary,
  PlanningValidator.advisoryGlossIsNotAstAuthority,
  PlanningValidator.planningPacketHasAuthorityPhase,
  PlanningValidator.planningPacketHasNonClaims,
  PlanningValidator.localModelViewIsCompactTypedBounded,
  PlanningValidator.queryCandidateSetValidated,
  PlanningValidator.queryCandidateTiedToObstruction,
  PlanningValidator.queryCandidateHasNoForbiddenClaims,
  PlanningValidator.boundaryExpansionRequestFromValidatedQueries,
  PlanningValidator.queryCandidatesRouteOnlyThroughBoundaryExpansion,
  PlanningValidator.localModelOutputNeverAcceptsTheorem,
  PlanningValidator.typedJsonlAndLatestPathsDeclared,
  PlanningValidator.modelFacingPacketsAreSmallTypedBounded,
  PlanningValidator.planningRequiresExposedResidue,
  PlanningValidator.obstructionAstKindIsValid,
  PlanningValidator.obstructionAstHasRequiredKindFields,
  PlanningValidator.planningPacketHasQueryConstraints,
  PlanningValidator.localModelViewIsTokenMinimized,
  PlanningValidator.localModelViewExcludesAdvisoryGloss,
  PlanningValidator.localModelViewExcludesPrivateReasoning,
  PlanningValidator.queryCandidateHasSourcePacket,
  PlanningValidator.queryCandidateHasLinkedObstruction,
  PlanningValidator.queryCandidateHasAllowedQueryType,
  PlanningValidator.queryCandidateHasAllowedTargetDomain,
  PlanningValidator.queryCandidateHasExpectedArtifactClass,
  PlanningValidator.queryCandidateHasNonClaims,
  PlanningValidator.queryCandidateHasNoForbiddenClaim,
  PlanningValidator.queryCandidateIsBounded,
  PlanningValidator.boundaryExpansionRequestHasValidatedQueries,
  PlanningValidator.boundaryExpansionRequestEntersAuthorityLadder,
  PlanningValidator.localModelOutputNotUsedAsProof,
  PlanningValidator.researchResultNotUsedAsProof
]

theorem planning_validator_count_declared :
    planningValidators.length = 47 := by
  rfl

inductive PlanningEvidencePath where
  | planningSurface
  | planningPacket
  | boundaryExpansionRequest
  | authorityLadder
  | newLeafGate
  | modelInterface
  | transitionChain
  deriving DecidableEq, Repr

def planningEvidencePaths : List PlanningEvidencePath := [
  PlanningEvidencePath.planningSurface,
  PlanningEvidencePath.planningPacket,
  PlanningEvidencePath.boundaryExpansionRequest,
  PlanningEvidencePath.authorityLadder,
  PlanningEvidencePath.newLeafGate,
  PlanningEvidencePath.modelInterface,
  PlanningEvidencePath.transitionChain
]

theorem planning_evidence_path_count_declared :
    planningEvidencePaths.length = 7 := by
  rfl

inductive TypedPlanningEvidencePath where
  | planningPacketsJsonl
  | planningPacketsLatest
  | localModelPlanningViewJsonl
  | localModelPlanningViewLatest
  | localModelQueryCandidatesJsonl
  | localModelQueryCandidatesLatest
  | queryCandidateValidationJsonl
  | queryCandidateValidationLatest
  | boundaryExpansionRequestJsonl
  | boundaryExpansionRequestLatest
  | planningSurfaceResidueJsonl
  | planningSurfaceResidueLatest
  deriving DecidableEq, Repr

def typedPlanningEvidencePaths : List TypedPlanningEvidencePath := [
  TypedPlanningEvidencePath.planningPacketsJsonl,
  TypedPlanningEvidencePath.planningPacketsLatest,
  TypedPlanningEvidencePath.localModelPlanningViewJsonl,
  TypedPlanningEvidencePath.localModelPlanningViewLatest,
  TypedPlanningEvidencePath.localModelQueryCandidatesJsonl,
  TypedPlanningEvidencePath.localModelQueryCandidatesLatest,
  TypedPlanningEvidencePath.queryCandidateValidationJsonl,
  TypedPlanningEvidencePath.queryCandidateValidationLatest,
  TypedPlanningEvidencePath.boundaryExpansionRequestJsonl,
  TypedPlanningEvidencePath.boundaryExpansionRequestLatest,
  TypedPlanningEvidencePath.planningSurfaceResidueJsonl,
  TypedPlanningEvidencePath.planningSurfaceResidueLatest
]

theorem typed_planning_evidence_path_count_declared :
    typedPlanningEvidencePaths.length = 12 := by
  rfl

inductive ModelFacingPacketConstraint where
  | small
  | typed
  | bounded
  | digestReferenced
  | nonAuthoritative
  deriving DecidableEq, Repr

def modelFacingPacketConstraints : List ModelFacingPacketConstraint := [
  ModelFacingPacketConstraint.small,
  ModelFacingPacketConstraint.typed,
  ModelFacingPacketConstraint.bounded,
  ModelFacingPacketConstraint.digestReferenced,
  ModelFacingPacketConstraint.nonAuthoritative
]

theorem model_facing_packet_constraint_count_declared :
    modelFacingPacketConstraints.length = 5 := by
  rfl

structure PlanningSurfaceBoundary where
  noResidueNoPlanningOverride : Bool
  residueExposedPlanningPermitted : Bool
  planningRoutesAuthorityLadder : Bool
  authorityLadderCheckedArtifactOrResidue : Bool
  planningProvesAnything : Bool
  arbitrarySteeringBypassesPipeline : Bool
  tauZeroClaimsImpossibility : Bool
  localModelQueryAcceptsTheorem : Bool
  localModelOutputIsProof : Bool
  queryCandidatesInfluenceOnlyBoundaryExpansion : Bool
  modelFacingPacketsSmallTypedBounded : Bool
  deriving Repr

def planningSurfaceBoundary : PlanningSurfaceBoundary := {
  noResidueNoPlanningOverride := true,
  residueExposedPlanningPermitted := true,
  planningRoutesAuthorityLadder := true,
  authorityLadderCheckedArtifactOrResidue := true,
  planningProvesAnything := false,
  arbitrarySteeringBypassesPipeline := false,
  tauZeroClaimsImpossibility := false,
  localModelQueryAcceptsTheorem := false,
  localModelOutputIsProof := false,
  queryCandidatesInfluenceOnlyBoundaryExpansion := true,
  modelFacingPacketsSmallTypedBounded := true
}

def PlanningSurfaceFiniteWitness : Prop :=
  planningResidues.length = 2 ∧
  planningParties.length = 4 ∧
  planningTerminalClasses.length = 5 ∧
  planningPacketFields.length = 13 ∧
  typedPlanningPacketFields.length = 12 ∧
  obstructionKinds.length = 11 ∧
  planningTypedResidues.length = 20 ∧
  planningValidators.length = 47 ∧
  planningEvidencePaths.length = 7 ∧
  typedPlanningEvidencePaths.length = 12 ∧
  modelFacingPacketConstraints.length = 5 ∧
  planningSurfaceBoundary.noResidueNoPlanningOverride = true ∧
  planningSurfaceBoundary.residueExposedPlanningPermitted = true ∧
  planningSurfaceBoundary.planningRoutesAuthorityLadder = true ∧
  planningSurfaceBoundary.authorityLadderCheckedArtifactOrResidue = true ∧
  planningSurfaceBoundary.planningProvesAnything = false ∧
  planningSurfaceBoundary.arbitrarySteeringBypassesPipeline = false ∧
  planningSurfaceBoundary.tauZeroClaimsImpossibility = false ∧
  planningSurfaceBoundary.localModelQueryAcceptsTheorem = false ∧
  planningSurfaceBoundary.localModelOutputIsProof = false ∧
  planningSurfaceBoundary.queryCandidatesInfluenceOnlyBoundaryExpansion = true ∧
  planningSurfaceBoundary.modelFacingPacketsSmallTypedBounded = true

theorem planning_surface_finite_witness :
    PlanningSurfaceFiniteWitness := by
  simp [PlanningSurfaceFiniteWitness, planningResidues, planningParties,
    planningTerminalClasses, planningPacketFields, typedPlanningPacketFields,
    obstructionKinds, planningTypedResidues, planningValidators,
    planningEvidencePaths, typedPlanningEvidencePaths,
    modelFacingPacketConstraints, planningSurfaceBoundary]

end Think.Pipeline.Validation
