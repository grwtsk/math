-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConfiguredAnalyticStagePin.Variant7d53f57e3c4f29518475c0ecf4027410f0fd6d2a3047c12edc6e9dc9ffca25c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d53f57e3c4f29518475c0ecf4027410f0fd6d2a3047c12edc6e9dc9ffca25c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ConfiguredAnalyticStagePin.Variant7d53f57e3c4f29518475c0ecf4027410f0fd6d2a3047c12edc6e9dc9ffca25c0","mathematical_subject":"Computation.DataStructures","original_sha256":"7d53f57e3c4f29518475c0ecf4027410f0fd6d2a3047c12edc6e9dc9ffca25c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/AnalyticTheoremPolicy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.AnalyticTheoremRegistry
import Surface.ContinuousAssurance.InvolutiveRelaxation
import Surface.ContinuousAssurance.QuantizationDecomposition

/-!
# Typed theorem-selection policy

This module is the kernel-side policy model.  It does not parse `config.yml`.
A parser must separately demonstrate that a normalized external record equals
a value of `RootTheoremConfiguration`.  Stage-list order is retained exactly,
and every selected pin resolves against the exact registry value.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConfiguredAnalyticStagePin.Variant7d53f57e3c4f29518475c0ecf4027410f0fd6d2a3047c12edc6e9dc9ffca25c0

universe u v

namespace Surface.ContinuousAssurance

/-- The pins and exact order selected for one normalized stage. -/
structure ConfiguredAnalyticStagePin where
  identity : ArtifactIdentity
  enabled : Bool
  diffusionPin : AnalyticTheoremPin
  exclusionPins : List AnalyticTheoremPin
  attentionPins : List AnalyticTheoremPin
  stoppingPin : Option AnalyticTheoremPin
  assumptionBundle : ArtifactIdentity
  deriving DecidableEq, Repr

namespace ConfiguredAnalyticStagePin

/-- Exact theorem order within a stage. -/
def allPins (stage : ConfiguredAnalyticStagePin) : List AnalyticTheoremPin :=
  [stage.diffusionPin] ++ stage.exclusionPins ++ stage.attentionPins ++
    stage.stoppingPin.toList

end ConfiguredAnalyticStagePin

/--
Kernel-side interpretation of the normalized root theorem configuration.
The proof fields reject unsupported schemas, duplicate stages, and unresolved
or mismatched theorem pins before selection can run.
-/
structure RootTheoremConfiguration where
  identity : ArtifactIdentity
  digest : EvidenceDigest
  schemaVersion : Nat
  registry : AnalyticTheoremRegistry
  stages : List ConfiguredAnalyticStagePin
  schemaVersion_supported : schemaVersion = 1
  stageIdentities_nodup : (stages.map ConfiguredAnalyticStagePin.identity).Nodup
  pinsResolve :
    ∀ stage ∈ stages, ∀ pin ∈ stage.allPins,
      registry.Resolves pin

namespace RootTheoremConfiguration

/-- Enabled stages retain their exact YAML list order. -/
def enabledStages
    (configuration : RootTheoremConfiguration) :
    List ConfiguredAnalyticStagePin :=
  configuration.stages.filter ConfiguredAnalyticStagePin.enabled

/-- Exact ordered identities of enabled stages. -/
def enabledStageOrder
    (configuration : RootTheoremConfiguration) : List ArtifactIdentity :=
  configuration.enabledStages.map ConfiguredAnalyticStagePin.identity

/-- Only schema version one inhabits a valid typed configuration. -/
theorem schema_version_supported
    (configuration : RootTheoremConfiguration) :
    configuration.schemaVersion = 1 :=
  configuration.schemaVersion_supported

/-- Stage identities are unique while their list order remains significant. -/
theorem stage_ids_unique
    (configuration : RootTheoremConfiguration) :
    (configuration.stages.map ConfiguredAnalyticStagePin.identity).Nodup :=
  configuration.stageIdentities_nodup

/-- Every configured theorem is an exact member of the pinned registry. -/
theorem theorem_pins_resolve
    (configuration : RootTheoremConfiguration)
    {stage : ConfiguredAnalyticStagePin}
    (stageMember : stage ∈ configuration.stages)
    {pin : AnalyticTheoremPin}
    (pinMember : pin ∈ stage.allPins) :
    configuration.registry.Resolves pin :=
  configuration.pinsResolve stage stageMember pin pinMember

/-- Configuration selection does not change the authority stored in a pin. -/
theorem selected_pin_authority
    (configuration : RootTheoremConfiguration)
    {stage : ConfiguredAnalyticStagePin}
    (stageMember : stage ∈ configuration.stages)
    {pin : AnalyticTheoremPin}
    (pinMember : pin ∈ stage.allPins) :
    ∃ entry ∈ configuration.registry.entries,
      entry.sourceAuthority = pin.sourceAuthority :=
  registry_membership_does_not_create_theorem_authority
    configuration.registry
    (configuration.theorem_pins_resolve stageMember pinMember)

end RootTheoremConfiguration

/-- Selecting a pin in root policy leaves its declared authority unchanged. -/
theorem root_config_does_not_create_theorem_authority
    (configuration : RootTheoremConfiguration)
    {stage : ConfiguredAnalyticStagePin}
    (stageMember : stage ∈ configuration.stages)
    {pin : AnalyticTheoremPin}
    (pinMember : pin ∈ stage.allPins) :
    ∃ entry ∈ configuration.registry.entries,
      entry.sourceAuthority = pin.sourceAuthority :=
  configuration.selected_pin_authority stageMember pinMember

/--
One executable-free, finite selection stage.  The actual adapters are tied to
the normalized configured pins in their declared order.  Fixed `iterations`
is mandatory; adaptive termination remains unsupported here.
-/
structure ReductiveSelectionStage
    (State : Type u)
    [AddCommMonoid State]
    [Module ℝ State]
    (cone : PositiveCone State)
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece) where
  identity : ArtifactIdentity
  configured : ConfiguredAnalyticStagePin
  configured_enabled : configured.enabled = true
  identity_matches : identity = configured.identity
  diffusion : RegisteredAnalyticDiffusionTheorem State cone
  iterations : Nat
  relaxationWeight : RelaxationWeight
  certifiedInvolution : PositiveLinearInvolution State cone
  diffusion_is_relaxation :
    diffusion.operator = certifiedInvolution.relax relaxationWeight
  exclusionTheorems :
    List (RegisteredAnalyticSiteTheorem
      State decomposition.Piece objective)
  attentionTheorems :
    List (RegisteredAnalyticSiteTheorem
      State decomposition.Piece objective)
  stoppingTheorem :
    Option (RegisteredAnalyticSiteTheorem
      State decomposition.Piece objective)
  stopping_theorem_has_stopping_role :
    ∀ theoremAdapter,
      stoppingTheorem = some theoremAdapter →
        theoremAdapter.pin.role = .stoppingCriterion
  stopping_theorem_assumptions_discharged :
    ∀ theoremAdapter,
      stoppingTheorem = some theoremAdapter →
        theoremAdapter.assumptionsSatisfied
  diffusion_pin_matches : diffusion.pin = configured.diffusionPin
  exclusion_pins_match :
    exclusionTheorems.map RegisteredAnalyticSiteTheorem.pin =
      configured.exclusionPins
  attention_pins_match :
    attentionTheorems.map RegisteredAnalyticSiteTheorem.pin =
      configured.attentionPins
  stopping_pin_matches :
    stoppingTheorem.map RegisteredAnalyticSiteTheorem.pin =
      configured.stoppingPin

namespace ReductiveSelectionStage

/-- Pure finite iteration of the registered linear operator. -/
def updatedState
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State) : State :=
  stage.diffusion.operator^[stage.iterations] state

/-- Complete deterministic finite trajectory, including the initial state. -/
def stateTrajectory
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State) : List State :=
  (List.range (stage.iterations + 1)).map
    (fun iteration => stage.diffusion.operator^[iteration] state)

/-- Every finite configured diffusion iterate preserves positivity. -/
theorem updatedState_positive
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (stage : ReductiveSelectionStage State cone decomposition objective)
    {state : State}
    (positive : state ∈ cone.carrier) :
    stage.updatedState state ∈ cone.carrier := by
  unfold updatedState
  induction stage.iterations with
  | zero => simpa using positive
  | succ iterations inductionHypothesis =>
      rw [Function.iterate_succ_apply']
      exact stage.diffusion.preservesPositivity inductionHypothesis

/-- The normalized stage pins are exactly the actual adapter pins. -/
theorem actual_pin_order
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (stage : ReductiveSelectionStage State cone decomposition objective) :
    [stage.diffusion.pin] ++
        stage.exclusionTheorems.map RegisteredAnalyticSiteTheorem.pin ++
        stage.attentionTheorems.map RegisteredAnalyticSiteTheorem.pin ++
        (stage.stoppingTheorem.map
          RegisteredAnalyticSiteTheorem.pin).toList =
      stage.configured.allPins := by
  simp only [ConfiguredAnalyticStagePin.allPins]
  rw [stage.diffusion_pin_matches, stage.exclusion_pins_match,
    stage.attention_pins_match, stage.stopping_pin_matches]

/-- An executable selection stage is explicitly enabled in its typed stage record. -/
theorem is_enabled
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (stage : ReductiveSelectionStage State cone decomposition objective) :
    stage.configured.enabled = true :=
  stage.configured_enabled

/-- A configured stopping adapter, when present, has the stopping-criterion role. -/
theorem stopping_role_exact
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (stage : ReductiveSelectionStage State cone decomposition objective)
    {theoremAdapter :
      RegisteredAnalyticSiteTheorem State decomposition.Piece objective}
    (present : stage.stoppingTheorem = some theoremAdapter) :
    theoremAdapter.pin.role = .stoppingCriterion :=
  stage.stopping_theorem_has_stopping_role theoremAdapter present

/-- A configured stopping adapter cannot run with an undischarged assumption bundle. -/
theorem stopping_assumptions_exact
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (stage : ReductiveSelectionStage State cone decomposition objective)
    {theoremAdapter :
      RegisteredAnalyticSiteTheorem State decomposition.Piece objective}
    (present : stage.stoppingTheorem = some theoremAdapter) :
    theoremAdapter.assumptionsSatisfied :=
  stage.stopping_theorem_assumptions_discharged theoremAdapter present

end ReductiveSelectionStage

end Surface.ContinuousAssurance
