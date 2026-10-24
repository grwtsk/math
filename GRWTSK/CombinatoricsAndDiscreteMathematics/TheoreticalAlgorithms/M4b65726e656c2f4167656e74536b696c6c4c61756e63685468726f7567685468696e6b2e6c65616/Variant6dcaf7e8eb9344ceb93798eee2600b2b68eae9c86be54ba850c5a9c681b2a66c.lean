-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SkillLaunchPlanningStatus.Variant3c300518c3e634969ea3c833d14bea3570502fa22810461db9fbd60f77f474a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c300518c3e634969ea3c833d14bea3570502fa22810461db9fbd60f77f474a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SkillLaunchPlanningStatus.Variant3c300518c3e634969ea3c833d14bea3570502fa22810461db9fbd60f77f474a7","mathematical_subject":"Computation.DataStructures","original_sha256":"3c300518c3e634969ea3c833d14bea3570502fa22810461db9fbd60f77f474a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit0/Bit1/Bit1/Bit0/Bit1/Bit0/Bit0/M4b65726e656c2f4167656e74536b696c6c4c61756e63685468726f7567685468696e6b2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e


/- source-tree-label: STL1|L|addr=100110100|role=proof_code_atom|slug=kernel-agentskilllaunchthroughthink|owner=canonical_owner|core=Kernel/AgentSkillLaunchThroughThink.lean|leaf=M4b65726e656c2f4167656e74536b696c6c4c61756e63685468726f7567685468696e6b2e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SkillLaunchPlanningStatus.Variant3c300518c3e634969ea3c833d14bea3570502fa22810461db9fbd60f77f474a7

set_option autoImplicit false

namespace Think.Kernel

/-
Skill launch through Think.

This file records a planning-only launch boundary. A skill launch request first
becomes a finite Think plan. The plan may classify route, prerequisites, risks,
and refusal posture, but it is not execution and does not supply theorem
authority.
-/

/-- Planning status emitted before any skill execution is considered. -/
inductive SkillLaunchPlanningStatus where
  | planned
  | needsUserDecision
  | refused
deriving Repr, DecidableEq

/-- Planning routes owned by Think before a skill can execute. -/
inductive ThinkSkillRoute where
  | discovery
  | compactification
  | endpointClassification
  | outputPrediction
deriving Repr, DecidableEq

/-- Launch permission is still a boundary after planning. -/
inductive SkillLaunchPermission where
  | plannedOnly
  | executableAfterConfirmation
  | refused
deriving Repr, DecidableEq

/-- Canonical refusal reasons for planning-only skill launch. -/
inductive SkillLaunchRefusal where
  | missingFiniteInput
  | unknownEndpoint
  | emptyPublicWitness
  | theoremOverclaim
  | repositorySettlementOverclaim
deriving Repr, DecidableEq

/-- A user or model request to launch a skill. -/
structure SkillLaunchRequest where
  skillName : String
  requestedAction : String
  launchMode : AgentSkillInvocationMode
  finiteInputPresent : Bool
  endpointKnown : Bool
  publicWitnessExpected : Bool
  theoremAuthorityRequested : Bool
  repositorySettlementRequested : Bool
  executionRequested : Bool
deriving Repr, DecidableEq

/-- A finite Think plan emitted before skill launch. -/
structure ThinkSkillPlan where
  request : SkillLaunchRequest
  planningStatus : SkillLaunchPlanningStatus
  route : List ThinkSkillRoute
  launchPermission : SkillLaunchPermission
  authority : AuthorityState
  refusal : Option SkillLaunchRefusal
  thinkPlanProduced : Bool
  executionPerformed : Bool
deriving Repr, DecidableEq

/-- A launch is through Think exactly when a Think plan exists first. -/
def SkillLaunchThroughThink
    (request : SkillLaunchRequest) (plan : ThinkSkillPlan) : Prop :=
  plan.request = request ∧
    plan.thinkPlanProduced = true ∧
    plan.executionPerformed = false

/-- Planning records may not carry theorem authority. -/
def ThinkSkillPlan.hasTheoremAuthority (plan : ThinkSkillPlan) : Prop :=
  plan.authority = AuthorityState.checkedProof ∨
    plan.authority = AuthorityState.trustedImport

/-- Any theorem-authority or repository-settlement request is a hard refusal. -/
def SkillLaunchRequest.hasOverclaim (request : SkillLaunchRequest) : Bool :=
  request.theoremAuthorityRequested ||
    request.repositorySettlementRequested

/-- Missing finite planning surfaces require a user decision rather than launch. -/
def SkillLaunchRequest.hasPlanningGap (request : SkillLaunchRequest) : Bool :=
  (!request.finiteInputPresent) ||
    (!request.endpointKnown) ||
    (!request.publicWitnessExpected)

/-- Deterministic planning-only skill launch adapter. -/
def planSkillLaunch (request : SkillLaunchRequest) : ThinkSkillPlan :=
  if request.hasOverclaim then
    { request := request
      planningStatus := SkillLaunchPlanningStatus.refused
      route := [ThinkSkillRoute.discovery,
        ThinkSkillRoute.compactification,
        ThinkSkillRoute.endpointClassification,
        ThinkSkillRoute.outputPrediction]
      launchPermission := SkillLaunchPermission.refused
      authority := AuthorityState.refusedOverclaim
      refusal :=
        if request.theoremAuthorityRequested then
          some SkillLaunchRefusal.theoremOverclaim
        else
          some SkillLaunchRefusal.repositorySettlementOverclaim
      thinkPlanProduced := true
      executionPerformed := false }
  else if request.hasPlanningGap then
    { request := request
      planningStatus := SkillLaunchPlanningStatus.needsUserDecision
      route := [ThinkSkillRoute.discovery,
        ThinkSkillRoute.compactification,
        ThinkSkillRoute.endpointClassification,
        ThinkSkillRoute.outputPrediction]
      launchPermission := SkillLaunchPermission.plannedOnly
      authority := AuthorityState.openResidue
      refusal :=
        if !request.finiteInputPresent then
          some SkillLaunchRefusal.missingFiniteInput
        else if !request.endpointKnown then
          some SkillLaunchRefusal.unknownEndpoint
        else
          some SkillLaunchRefusal.emptyPublicWitness
      thinkPlanProduced := true
      executionPerformed := false }
  else
    { request := request
      planningStatus := SkillLaunchPlanningStatus.planned
      route := [ThinkSkillRoute.discovery,
        ThinkSkillRoute.compactification,
        ThinkSkillRoute.endpointClassification,
        ThinkSkillRoute.outputPrediction]
      launchPermission :=
        if request.executionRequested then
          SkillLaunchPermission.executableAfterConfirmation
        else
          SkillLaunchPermission.plannedOnly
      authority := AuthorityState.finiteWitness
      refusal := none
      thinkPlanProduced := true
      executionPerformed := false }

theorem skill_launch_plan_is_not_execution
    (request : SkillLaunchRequest) :
    (planSkillLaunch request).executionPerformed = false := by
  unfold planSkillLaunch
  by_cases hOver : request.hasOverclaim
  · simp [hOver]
  · by_cases hGap : request.hasPlanningGap
    · simp [hOver, hGap]
    · simp [hOver, hGap]

theorem skill_launch_plan_has_no_theorem_authority
    (request : SkillLaunchRequest) :
    ¬ (planSkillLaunch request).hasTheoremAuthority := by
  unfold ThinkSkillPlan.hasTheoremAuthority
  unfold planSkillLaunch
  by_cases hOver : request.hasOverclaim
  · simp [hOver]
  · by_cases hGap : request.hasPlanningGap
    · simp [hOver, hGap]
    · simp [hOver, hGap]

theorem skill_launch_requires_think_plan
    (request : SkillLaunchRequest) :
    SkillLaunchThroughThink request (planSkillLaunch request) := by
  unfold SkillLaunchThroughThink
  constructor
  · unfold planSkillLaunch
    by_cases hOver : request.hasOverclaim
    · simp [hOver]
    · by_cases hGap : request.hasPlanningGap
      · simp [hOver, hGap]
      · simp [hOver, hGap]
  · constructor
    · unfold planSkillLaunch
      by_cases hOver : request.hasOverclaim
      · simp [hOver]
      · by_cases hGap : request.hasPlanningGap
        · simp [hOver, hGap]
        · simp [hOver, hGap]
    · exact skill_launch_plan_is_not_execution request

theorem skill_launch_refuses_theorem_overclaim
    (request : SkillLaunchRequest)
    (h : request.theoremAuthorityRequested = true) :
    (planSkillLaunch request).planningStatus =
        SkillLaunchPlanningStatus.refused ∧
      (planSkillLaunch request).launchPermission =
        SkillLaunchPermission.refused ∧
      (planSkillLaunch request).authority =
        AuthorityState.refusedOverclaim ∧
      (planSkillLaunch request).refusal =
        some SkillLaunchRefusal.theoremOverclaim := by
  unfold planSkillLaunch
  have hOver : request.hasOverclaim = true := by
    unfold SkillLaunchRequest.hasOverclaim
    simp [h]
  simp [hOver, h]

end Think.Kernel
