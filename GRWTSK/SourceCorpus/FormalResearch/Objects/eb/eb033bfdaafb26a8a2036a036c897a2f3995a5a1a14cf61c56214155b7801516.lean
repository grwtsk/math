import Surface.ContinuousAssurance.AnalyticTheoremPolicy

/-!
# Conservative reductive site selection

Every exclusion produced here contains the exact objective-relative negation
proof and theorem pin that justified it.  Attention, unknown, blocked, and
conflicted sites remain in the output.  Runtime scheduling hints and caches are
not semantic inputs.
-/

universe u

namespace Surface.ContinuousAssurance

/-- Exact proof and provenance for excluding one site at one state. -/
structure SiteExclusionCertificate
    {State : Type u}
    {decomposition : FiniteDecomposition}
    (objective : SurgicalObjective State decomposition.Piece)
    (state : State)
    (site : decomposition.Piece) where
  theoremPin : AnalyticTheoremPin
  theoremRole : theoremPin.role = .safeExclusion
  sourceEvidence : ProgressiveEvidence
  authority : SafeExclusionAuthority theoremPin objective state site
  assumptionsSatisfied : Prop
  assumptionWitness : assumptionsSatisfied
  proof : ¬ objective.requiresModification state site

/-- Conservative reasons for retaining a site in a stage output. -/
inductive RetainedSiteDisposition
  | unknown
  | attention
  | blocked
  | externalOnly
  | conflict
  deriving DecidableEq, Repr

namespace RetainedSiteDisposition

/-- Stable label used only to derive a deterministic trace-record identity. -/
def label : RetainedSiteDisposition → String
  | .unknown => "unknown"
  | .attention => "attention"
  | .blocked => "blocked"
  | .externalOnly => "external-only"
  | .conflict => "conflict"

end RetainedSiteDisposition

/-- Exact theorem/evidence provenance for one retained assessment. -/
structure TheoremAssessmentProvenance where
  theoremPin : AnalyticTheoremPin
  sourceEvidence : ProgressiveEvidence
  evidence_authority_exact : sourceEvidence.authority = theoremPin.sourceAuthority
  reason : Option ArtifactIdentity

/--
Complete metadata retained for an unknown, attention, blocked, external-only,
or conflicted site.  The record carries site and theorem provenance but does
not itself prove that modification is required.
-/
structure RetainedSiteTraceRecord
    (decomposition : FiniteDecomposition) where
  recordIdentity : ArtifactIdentity
  stageIdentity : ArtifactIdentity
  site : decomposition.Piece
  stableSiteIdentity : ArtifactIdentity
  subjectIdentity : ArtifactIdentity
  decompositionIdentity : ArtifactIdentity
  degree : Option Nat
  sourceEvidence : ProgressiveEvidence
  currentAssurance : AssuranceLevel
  currentAuthority : AuthorityClass
  currentClaimStatus : ClaimStatus
  evidence_assurance_exact : sourceEvidence.level = currentAssurance
  evidence_authority_exact : sourceEvidence.authority = currentAuthority
  affectedClaims : List ArtifactIdentity
  openObligations : List ArtifactIdentity
  disposition : RetainedSiteDisposition
  theoremProvenance : List TheoremAssessmentProvenance
  reasonProvenance : List ArtifactIdentity

/-- All classification adapters selected for one stage, in configured order. -/
def ReductiveSelectionStage.classificationTheorems
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (stage : ReductiveSelectionStage State cone decomposition objective) :
    List (RegisteredAnalyticSiteTheorem
      State decomposition.Piece objective) :=
  stage.exclusionTheorems ++ stage.attentionTheorems

section Classification

variable
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}

/-- At least one configured adapter supplied the exact exclusion proof. -/
def HasSafeExclusion
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece) : Prop :=
  ∃ theoremAdapter ∈ stage.classificationTheorems,
    ∃ proof : ¬ objective.requiresModification state site,
      theoremAdapter.assess state site = .safeToExclude proof

/-- At least one configured adapter requires attention. -/
def HasRequiredAttention
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece) : Prop :=
  ∃ theoremAdapter ∈ stage.classificationTheorems,
    ∃ reason : ArtifactIdentity,
      theoremAdapter.assess state site = .requiresAttention reason

/-- Every required-attention result carries discharged adapter assumptions. -/
theorem required_attention_assumptions_discharged
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece)
    (attention : HasRequiredAttention stage state site) :
    ∃ theoremAdapter ∈ stage.classificationTheorems,
      ∃ reason : ArtifactIdentity,
        theoremAdapter.assess state site = .requiresAttention reason ∧
          theoremAdapter.assumptionsSatisfied := by
  obtain ⟨theoremAdapter, member, reason, assessment⟩ := attention
  exact ⟨theoremAdapter, member, reason, assessment,
    theoremAdapter.attention_result_has_discharged_assumptions
      state site reason assessment⟩

/-- At least one configured adapter returned no classification. -/
def HasUndecidedAssessment
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece) : Prop :=
  ∃ theoremAdapter ∈ stage.classificationTheorems,
    theoremAdapter.assess state site = .undecided

/-- At least one configured adapter exposed an undischarged obligation. -/
def HasBlockedAssessment
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece) : Prop :=
  ∃ theoremAdapter ∈ stage.classificationTheorems,
    ∃ obligation : ArtifactIdentity,
      theoremAdapter.assess state site = .blocked obligation

/-- Conflicting safe and attention classifications conservatively retain a site. -/
def HasAssessmentConflict
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece) : Prop :=
  HasSafeExclusion stage state site ∧
    HasRequiredAttention stage state site

/-- An external-only adapter has neither a certified bridge nor theorem authority. -/
def ExternalOnlyAt
    (theoremAdapter :
      RegisteredAnalyticSiteTheorem State decomposition.Piece objective)
    (state : State)
    (site : decomposition.Piece) : Prop :=
  theoremAdapter.pin.sourceAuthority = .externalCapability ∧
    ¬ Nonempty (ExternalSafeExclusionBridge objective state site)

/-- At least one selected adapter is an unbridged external annotation here. -/
def HasExternalOnlyAssessment
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece) : Prop :=
  ∃ theoremAdapter ∈ stage.classificationTheorems,
    ExternalOnlyAt theoremAdapter state site

/-- Exact conservative elimination predicate. -/
def CanSafelyExclude
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece) : Prop :=
  HasSafeExclusion stage state site ∧
    ¬ HasRequiredAttention stage state site ∧
    ¬ HasUndecidedAssessment stage state site ∧
    ¬ HasBlockedAssessment stage state site ∧
    ¬ HasExternalOnlyAssessment stage state site

omit [AddCommMonoid State] [Module ℝ State] in
/-- RED-06: an external-only adapter cannot supply a safe assessment. -/
theorem external_only_assessment_cannot_exclude
    (theoremAdapter :
      RegisteredAnalyticSiteTheorem State decomposition.Piece objective)
    (state : State)
    (site : decomposition.Piece)
    (externalOnly : ExternalOnlyAt theoremAdapter state site) :
    ¬ ∃ proof : ¬ objective.requiresModification state site,
      theoremAdapter.assess state site = .safeToExclude proof :=
  external_theorem_cannot_certify_safe_exclusion theoremAdapter state site
    externalOnly.1 externalOnly.2

/-- A stage made only of unbridged external adapters retains the site. -/
theorem all_external_only_cannot_exclude
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece)
    (externalOnly : ∀ theoremAdapter ∈ stage.classificationTheorems,
      ExternalOnlyAt theoremAdapter state site) :
    ¬ CanSafelyExclude stage state site := by
  intro canExclude
  obtain ⟨theoremAdapter, member, proof, assessment⟩ := canExclude.1
  exact (external_only_assessment_cannot_exclude
    theoremAdapter state site (externalOnly theoremAdapter member))
    ⟨proof, assessment⟩

end Classification

/-- Build exact provenance from a selected theorem adapter. -/
def theoremAssessmentProvenance
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (theoremAdapter :
      RegisteredAnalyticSiteTheorem State decomposition.Piece objective)
    (reason : Option ArtifactIdentity) : TheoremAssessmentProvenance :=
  { theoremPin := theoremAdapter.pin
    sourceEvidence := theoremAdapter.sourceEvidence
    evidence_authority_exact := theoremAdapter.evidenceAuthority_matches
    reason := reason }

/--
Configured-order theorem and reason provenance for one retained disposition.
The definition is noncomputable only because external bridge availability is a
proposition; it does not consult runtime order or caches.
-/
noncomputable def retainedAssessmentProvenance
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece)
    (disposition : RetainedSiteDisposition) :
    List TheoremAssessmentProvenance := by
  classical
  exact stage.classificationTheorems.filterMap fun theoremAdapter =>
    let provenance := theoremAssessmentProvenance theoremAdapter
    match disposition with
    | .unknown =>
        match theoremAdapter.assess state site with
        | .undecided => some (provenance none)
        | _ => none
    | .attention =>
        match theoremAdapter.assess state site with
        | .requiresAttention reason => some (provenance (some reason))
        | _ => none
    | .blocked =>
        match theoremAdapter.assess state site with
        | .blocked obligation => some (provenance (some obligation))
        | _ => none
    | .externalOnly =>
        if ExternalOnlyAt theoremAdapter state site then
          some (provenance none)
        else
          none
    | .conflict =>
        match theoremAdapter.assess state site with
        | .safeToExclude _ => some (provenance none)
        | .requiresAttention reason => some (provenance (some reason))
        | _ => none

/-- Construct a complete stable retained-site record from declared metadata. -/
noncomputable def retainedSiteTraceRecord
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece)
    (disposition : RetainedSiteDisposition) :
    RetainedSiteTraceRecord decomposition := by
  let metadata := siteUniverse.metadataAt site
  let provenance :=
    retainedAssessmentProvenance stage state site disposition
  let reasons := provenance.filterMap TheoremAssessmentProvenance.reason
  exact
    { recordIdentity :=
        { digest := stage.identity.digest ++ ":" ++
            metadata.stableSiteIdentity.digest ++ ":" ++ disposition.label }
      stageIdentity := stage.identity
      site := site
      stableSiteIdentity := metadata.stableSiteIdentity
      subjectIdentity := metadata.subjectIdentity
      decompositionIdentity := metadata.decompositionIdentity
      degree := metadata.degree
      sourceEvidence := metadata.sourceEvidence
      currentAssurance := metadata.currentAssurance
      currentAuthority := metadata.currentAuthority
      currentClaimStatus := metadata.currentClaimStatus
      evidence_assurance_exact := metadata.evidence_assurance_exact
      evidence_authority_exact := metadata.evidence_authority_exact
      affectedClaims := metadata.affectedClaims ++ objective.affectedClaims site
      openObligations := metadata.openObligations ++ reasons
      disposition := disposition
      theoremProvenance := provenance
      reasonProvenance := reasons }

/--
Typed witness for the first accepted stopping semantics: the configured finite
horizon was completed exactly and adaptive termination was not used.  A
configured stopping-theorem pin is retained, but this witness makes no claim
that an adaptive stopping proposition was proved.
-/
structure FixedIterationStoppingWitness
    (State : Type u)
    (stageIdentity : ArtifactIdentity)
    (configuredStage : ConfiguredAnalyticStagePin)
    (inputState assessedState : State)
    (diffusionOperator : State → State)
    (iterations : Nat) where
  identity : ArtifactIdentity
  identity_eq_stage : identity = stageIdentity
  configuredStoppingPin : Option AnalyticTheoremPin
  configured_pin_exact : configuredStoppingPin = configuredStage.stoppingPin
  stoppingAssumptionsSatisfied : Prop
  stopping_assumptions_witness : stoppingAssumptionsSatisfied
  completedIterations : Nat
  completed_iterations_exact : completedIterations = iterations
  assessed_state_exact :
    assessedState = diffusionOperator^[completedIterations] inputState
  adaptiveTerminationUsed : Bool
  adaptive_termination_disabled : adaptiveTerminationUsed = false

/--
One stage result.  Classification is performed at `assessedState`, namely the
exact finite iterate of the registered diffusion operator.
-/
structure ReductiveStageResult
    (State : Type u)
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece) where
  stageIdentity : ArtifactIdentity
  configuredStage : ConfiguredAnalyticStagePin
  stage_identity_exact : stageIdentity = configuredStage.identity
  executedPinOrder : List AnalyticTheoremPin
  executed_pin_order_exact : executedPinOrder = configuredStage.allPins
  inputState : State
  assessedState : State
  diffusionOperator : State → State
  iterations : Nat
  intermediateStates : List State
  intermediateStates_eq :
    intermediateStates =
      (List.range (iterations + 1)).map
        (fun iteration => diffusionOperator^[iteration] inputState)
  assessedState_eq : assessedState = diffusionOperator^[iterations] inputState
  stoppingWitness : FixedIterationStoppingWitness State stageIdentity
    configuredStage inputState assessedState diffusionOperator iterations
  inputCandidates : Finset decomposition.Piece
  outputCandidates : Finset decomposition.Piece
  excluded : Finset decomposition.Piece
  retainedUnknown : Finset decomposition.Piece
  retainedAttention : Finset decomposition.Piece
  retainedBlocked : Finset decomposition.Piece
  retainedExternal : Finset decomposition.Piece
  retainedConflicted : Finset decomposition.Piece
  conflicts : List ArtifactIdentity
  output_eq : outputCandidates = inputCandidates \ excluded
  output_subset : outputCandidates ⊆ inputCandidates
  exclusionEvidence : ∀ site,
    site ∈ excluded →
      Nonempty (SiteExclusionCertificate objective assessedState site)
  unknown_retained : retainedUnknown ⊆ outputCandidates
  attention_retained : retainedAttention ⊆ outputCandidates
  blocked_retained : retainedBlocked ⊆ outputCandidates
  external_retained : retainedExternal ⊆ outputCandidates
  conflicted_retained : retainedConflicted ⊆ outputCandidates
  unknownTrace : ∀ site, site ∈ retainedUnknown →
    RetainedSiteTraceRecord decomposition
  unknownTrace_exact : ∀ site member,
    (unknownTrace site member).site = site ∧
      (unknownTrace site member).disposition = .unknown ∧
      (unknownTrace site member).stageIdentity = stageIdentity
  attentionTrace : ∀ site, site ∈ retainedAttention →
    RetainedSiteTraceRecord decomposition
  attentionTrace_exact : ∀ site member,
    (attentionTrace site member).site = site ∧
      (attentionTrace site member).disposition = .attention ∧
      (attentionTrace site member).stageIdentity = stageIdentity
  blockedTrace : ∀ site, site ∈ retainedBlocked →
    RetainedSiteTraceRecord decomposition
  blockedTrace_exact : ∀ site member,
    (blockedTrace site member).site = site ∧
      (blockedTrace site member).disposition = .blocked ∧
      (blockedTrace site member).stageIdentity = stageIdentity
  externalTrace : ∀ site, site ∈ retainedExternal →
    RetainedSiteTraceRecord decomposition
  externalTrace_exact : ∀ site member,
    (externalTrace site member).site = site ∧
      (externalTrace site member).disposition = .externalOnly ∧
      (externalTrace site member).stageIdentity = stageIdentity
  conflictTrace : ∀ site, site ∈ retainedConflicted →
    RetainedSiteTraceRecord decomposition
  conflictTrace_exact : ∀ site member,
    (conflictTrace site member).site = site ∧
      (conflictTrace site member).disposition = .conflict ∧
      (conflictTrace site member).stageIdentity = stageIdentity

namespace ReductiveStageResult

/-- Every stage is reductive by construction. -/
theorem output_subset_input
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (result : ReductiveStageResult State decomposition objective) :
    result.outputCandidates ⊆ result.inputCandidates :=
  result.output_subset

/-- Every excluded site exposes an exact objective-relative certificate. -/
theorem excluded_site_has_certificate
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (result : ReductiveStageResult State decomposition objective)
    {site : decomposition.Piece}
    (excluded : site ∈ result.excluded) :
    Nonempty (SiteExclusionCertificate objective result.assessedState site) :=
  result.exclusionEvidence site excluded

/-- The result records the complete configured pin categories and order. -/
theorem executed_pins_exact
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (result : ReductiveStageResult State decomposition objective) :
    result.executedPinOrder = result.configuredStage.allPins :=
  result.executed_pin_order_exact

/-- Result identity and complete pin order are bound to one exact stage entry. -/
theorem configuration_binding_exact
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (result : ReductiveStageResult State decomposition objective) :
    result.stageIdentity = result.configuredStage.identity ∧
      result.executedPinOrder = result.configuredStage.allPins :=
  ⟨result.stage_identity_exact, result.executed_pin_order_exact⟩

/-- Every stage result has an exact fixed-horizon stopping witness. -/
theorem fixed_horizon_completed
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (result : ReductiveStageResult State decomposition objective) :
    result.assessedState =
      result.diffusionOperator^[result.iterations] result.inputState := by
  rw [← result.stoppingWitness.completed_iterations_exact]
  exact result.stoppingWitness.assessed_state_exact

/-- The stopping witness retains the exact configured pin and discharged assumptions. -/
theorem stopping_witness_exact
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (result : ReductiveStageResult State decomposition objective) :
    result.stoppingWitness.configuredStoppingPin =
        result.configuredStage.stoppingPin ∧
      result.stoppingWitness.stoppingAssumptionsSatisfied :=
  ⟨result.stoppingWitness.configured_pin_exact,
    result.stoppingWitness.stopping_assumptions_witness⟩

/-- Unknown retention exposes complete site/evidence/theorem metadata. -/
theorem unknown_trace_exact
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (result : ReductiveStageResult State decomposition objective)
    (site : decomposition.Piece)
    (member : site ∈ result.retainedUnknown) :
    (result.unknownTrace site member).site = site ∧
      (result.unknownTrace site member).disposition = .unknown ∧
      (result.unknownTrace site member).stageIdentity = result.stageIdentity :=
  result.unknownTrace_exact site member

/-- Required-attention retention exposes exact reason and theorem provenance. -/
theorem attention_trace_exact
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (result : ReductiveStageResult State decomposition objective)
    (site : decomposition.Piece)
    (member : site ∈ result.retainedAttention) :
    (result.attentionTrace site member).site = site ∧
      (result.attentionTrace site member).disposition = .attention ∧
      (result.attentionTrace site member).stageIdentity = result.stageIdentity :=
  result.attentionTrace_exact site member

/-- Blocked retention exposes its open-obligation and theorem provenance record. -/
theorem blocked_trace_exact
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (result : ReductiveStageResult State decomposition objective)
    (site : decomposition.Piece)
    (member : site ∈ result.retainedBlocked) :
    (result.blockedTrace site member).site = site ∧
      (result.blockedTrace site member).disposition = .blocked ∧
      (result.blockedTrace site member).stageIdentity = result.stageIdentity :=
  result.blockedTrace_exact site member

/-- External-only retention exposes its authority-preserving provenance record. -/
theorem external_trace_exact
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (result : ReductiveStageResult State decomposition objective)
    (site : decomposition.Piece)
    (member : site ∈ result.retainedExternal) :
    (result.externalTrace site member).site = site ∧
      (result.externalTrace site member).disposition = .externalOnly ∧
      (result.externalTrace site member).stageIdentity = result.stageIdentity :=
  result.externalTrace_exact site member

/-- Conflict retention exposes all contributing theorem/reason provenance. -/
theorem conflict_trace_exact
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (result : ReductiveStageResult State decomposition objective)
    (site : decomposition.Piece)
    (member : site ∈ result.retainedConflicted) :
    (result.conflictTrace site member).site = site ∧
      (result.conflictTrace site member).disposition = .conflict ∧
      (result.conflictTrace site member).stageIdentity = result.stageIdentity :=
  result.conflictTrace_exact site member

end ReductiveStageResult

/--
Pure execution of one stage.  Classical decidability is used only to form the
finite classifier sets; exclusion evidence remains an explicit proof object.
-/
noncomputable def runReductiveStage
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (input : Finset decomposition.Piece) :
    ReductiveStageResult State decomposition objective := by
  classical
  let updated := stage.updatedState state
  let excluded := input.filter (CanSafelyExclude stage updated)
  let output := input \ excluded
  let unknown := input.filter (HasUndecidedAssessment stage updated)
  let attention := input.filter (HasRequiredAttention stage updated)
  let blocked := input.filter (HasBlockedAssessment stage updated)
  let external := input.filter (HasExternalOnlyAssessment stage updated)
  let conflicted := input.filter (HasAssessmentConflict stage updated)
  refine
    { stageIdentity := stage.identity
      configuredStage := stage.configured
      stage_identity_exact := stage.identity_matches
      executedPinOrder :=
        [stage.diffusion.pin] ++
          stage.exclusionTheorems.map RegisteredAnalyticSiteTheorem.pin ++
          stage.attentionTheorems.map RegisteredAnalyticSiteTheorem.pin ++
          (stage.stoppingTheorem.map RegisteredAnalyticSiteTheorem.pin).toList
      executed_pin_order_exact := stage.actual_pin_order
      inputState := state
      assessedState := updated
      diffusionOperator := stage.diffusion.operator
      iterations := stage.iterations
      intermediateStates := stage.stateTrajectory state
      intermediateStates_eq := rfl
      assessedState_eq := rfl
      stoppingWitness :=
        { identity := stage.identity
          identity_eq_stage := rfl
          configuredStoppingPin := stage.configured.stoppingPin
          configured_pin_exact := rfl
          stoppingAssumptionsSatisfied :=
            ∀ theoremAdapter,
              stage.stoppingTheorem = some theoremAdapter →
                theoremAdapter.assumptionsSatisfied
          stopping_assumptions_witness :=
            stage.stopping_theorem_assumptions_discharged
          completedIterations := stage.iterations
          completed_iterations_exact := rfl
          assessed_state_exact := rfl
          adaptiveTerminationUsed := false
          adaptive_termination_disabled := rfl }
      inputCandidates := input
      outputCandidates := output
      excluded := excluded
      retainedUnknown := unknown
      retainedAttention := attention
      retainedBlocked := blocked
      retainedExternal := external
      retainedConflicted := conflicted
      conflicts := conflicted.toList.flatMap objective.affectedClaims
      output_eq := rfl
      output_subset := Finset.sdiff_subset
      exclusionEvidence := ?_
      unknown_retained := ?_
      attention_retained := ?_
      blocked_retained := ?_
      external_retained := ?_
      conflicted_retained := ?_
      unknownTrace := fun site _member =>
        retainedSiteTraceRecord decomposition objective siteUniverse
          stage updated site .unknown
      unknownTrace_exact := fun _site _member => ⟨rfl, rfl, rfl⟩
      attentionTrace := fun site _member =>
        retainedSiteTraceRecord decomposition objective siteUniverse
          stage updated site .attention
      attentionTrace_exact := fun _site _member => ⟨rfl, rfl, rfl⟩
      blockedTrace := fun site _member =>
        retainedSiteTraceRecord decomposition objective siteUniverse
          stage updated site .blocked
      blockedTrace_exact := fun _site _member => ⟨rfl, rfl, rfl⟩
      externalTrace := fun site _member =>
        retainedSiteTraceRecord decomposition objective siteUniverse
          stage updated site .externalOnly
      externalTrace_exact := fun _site _member => ⟨rfl, rfl, rfl⟩
      conflictTrace := fun site _member =>
        retainedSiteTraceRecord decomposition objective siteUniverse
          stage updated site .conflict
      conflictTrace_exact := fun _site _member => ⟨rfl, rfl, rfl⟩ }
  · intro site siteExcluded
    have safe : HasSafeExclusion stage updated site :=
      (Finset.mem_filter.mp siteExcluded).2.1
    obtain ⟨theoremAdapter, _member, proof, assessment⟩ := safe
    exact ⟨
      { theoremPin := theoremAdapter.pin
        theoremRole := theoremAdapter.safe_result_has_safe_role
          updated site proof assessment
        sourceEvidence := theoremAdapter.sourceEvidence
        authority := theoremAdapter.safe_result_has_authority
          updated site proof assessment
        assumptionsSatisfied := theoremAdapter.assumptionsSatisfied
        assumptionWitness :=
          theoremAdapter.safe_result_has_discharged_assumptions
            updated site proof assessment
        proof := proof }⟩
  · intro site siteUnknown
    have member : site ∈ input := (Finset.mem_filter.mp siteUnknown).1
    have unknownAtSite : HasUndecidedAssessment stage updated site :=
      (Finset.mem_filter.mp siteUnknown).2
    exact Finset.mem_sdiff.mpr ⟨member, by
      intro siteExcluded
      exact (Finset.mem_filter.mp siteExcluded).2.2.2.1 unknownAtSite⟩
  · intro site siteAttention
    have member : site ∈ input := (Finset.mem_filter.mp siteAttention).1
    have attentionAtSite : HasRequiredAttention stage updated site :=
      (Finset.mem_filter.mp siteAttention).2
    exact Finset.mem_sdiff.mpr ⟨member, by
      intro siteExcluded
      exact (Finset.mem_filter.mp siteExcluded).2.2.1 attentionAtSite⟩
  · intro site siteBlocked
    have member : site ∈ input := (Finset.mem_filter.mp siteBlocked).1
    have blockedAtSite : HasBlockedAssessment stage updated site :=
      (Finset.mem_filter.mp siteBlocked).2
    exact Finset.mem_sdiff.mpr ⟨member, by
      intro siteExcluded
      exact (Finset.mem_filter.mp siteExcluded).2.2.2.2.1 blockedAtSite⟩
  · intro site siteExternal
    have member : site ∈ input := (Finset.mem_filter.mp siteExternal).1
    have externalAtSite : HasExternalOnlyAssessment stage updated site :=
      (Finset.mem_filter.mp siteExternal).2
    exact Finset.mem_sdiff.mpr ⟨member, by
      intro siteExcluded
      exact (Finset.mem_filter.mp siteExcluded).2.2.2.2.2 externalAtSite⟩
  · intro site siteConflicted
    have member : site ∈ input := (Finset.mem_filter.mp siteConflicted).1
    have conflictAtSite : HasAssessmentConflict stage updated site :=
      (Finset.mem_filter.mp siteConflicted).2
    exact Finset.mem_sdiff.mpr ⟨member, by
      intro siteExcluded
      exact (Finset.mem_filter.mp siteExcluded).2.2.1 conflictAtSite.2⟩

@[simp]
theorem runReductiveStage_stage_identity
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (input : Finset decomposition.Piece) :
    (runReductiveStage decomposition objective siteUniverse stage state input).stageIdentity =
      stage.identity :=
  rfl

@[simp]
theorem runReductiveStage_configured_stage
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (input : Finset decomposition.Piece) :
    (runReductiveStage decomposition objective siteUniverse stage state input).configuredStage =
      stage.configured :=
  rfl

@[simp]
theorem runReductiveStage_input_state
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (input : Finset decomposition.Piece) :
    (runReductiveStage decomposition objective siteUniverse stage state input).inputState =
      state :=
  rfl

@[simp]
theorem runReductiveStage_input_candidates
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (input : Finset decomposition.Piece) :
    (runReductiveStage decomposition objective siteUniverse stage state input).inputCandidates =
      input :=
  rfl

/-- Runtime ordering and cache contents are explicitly non-semantic hints. -/
structure ReductiveExecutionHints where
  runtimeOrder : List ArtifactIdentity
  cacheEntries : List (ArtifactIdentity × ArtifactIdentity)
  deriving DecidableEq, Repr

/-- Execution hints cannot change the mathematical stage result. -/
noncomputable def runReductiveStageWithHints
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (input : Finset decomposition.Piece)
    (_hints : ReductiveExecutionHints) :
    ReductiveStageResult State decomposition objective :=
  runReductiveStage decomposition objective siteUniverse stage state input

@[simp]
theorem runReductiveStageWithHints_eq
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (input : Finset decomposition.Piece)
    (hints : ReductiveExecutionHints) :
    runReductiveStageWithHints decomposition objective siteUniverse
        stage state input hints =
      runReductiveStage decomposition objective siteUniverse stage state input :=
  rfl

end Surface.ContinuousAssurance
