# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.ReductiveSelectionTrace.Variant1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `424d0f329c544ca93442543d989b78ece746a8be` · SHA-256 `1b58e4b186e0f5464d17a38a3ba07ab56281dd258856d838fca29b76df965aea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.ReductiveSiteSelection

/-!
# Complete reductive selection traces

A trace binds the root configuration and theorem registry by identity and
digest, preserves configured stage order, and computes the final candidate set
only by repeated finite-set subtraction.  Consequently no excluded site can
re-enter and no candidate can be silently introduced or truncated.
-/

universe u

namespace Surface.ContinuousAssurance

/-- Repeated conservative subtraction of exact stage exclusions. -/
def foldStageResults
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (initial : Finset decomposition.Piece)
    (results : List (ReductiveStageResult State decomposition objective)) :
    Finset decomposition.Piece :=
  results.foldl (fun candidates result => candidates \ result.excluded) initial

/-- A reductive fold never adds a site. -/
theorem foldStageResults_subset
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (initial : Finset decomposition.Piece)
    (results : List (ReductiveStageResult State decomposition objective)) :
    foldStageResults initial results ⊆ initial := by
  induction results generalizing initial with
  | nil => exact Finset.Subset.rfl
  | cons result rest inductionHypothesis =>
      exact Finset.Subset.trans
        (inductionHypothesis (initial \ result.excluded))
        Finset.sdiff_subset

/--
Exact state/candidate hand-off chain.  The head starts at the supplied inputs;
every tail starts at the preceding assessed state and output candidate set.
-/
def StageResultChain
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (state : State)
    (candidates : Finset decomposition.Piece) :
    List (ReductiveStageResult State decomposition objective) → Prop
  | [] => True
  | result :: later =>
      result.inputState = state ∧
        result.inputCandidates = candidates ∧
        StageResultChain result.assessedState result.outputCandidates later

/-- Execute typed stages sequentially, carrying state and candidates forward. -/
noncomputable def executeReductiveStages
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (state : State)
    (candidates : Finset decomposition.Piece) :
    List (ReductiveSelectionStage State cone decomposition objective) →
      List (ReductiveStageResult State decomposition objective)
  | [] => []
  | stage :: later =>
      let result :=
        runReductiveStage decomposition objective siteUniverse stage state candidates
      result :: executeReductiveStages decomposition objective siteUniverse
        result.assessedState result.outputCandidates later

/-- Sequential execution preserves exact configured stage order. -/
theorem executeReductiveStages_stage_order
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (state : State)
    (candidates : Finset decomposition.Piece)
    (stages :
      List (ReductiveSelectionStage State cone decomposition objective)) :
    (executeReductiveStages decomposition objective siteUniverse
        state candidates stages).map
        ReductiveStageResult.stageIdentity =
      stages.map ReductiveSelectionStage.identity := by
  induction stages generalizing state candidates with
  | nil => rfl
  | cons stage later inductionHypothesis =>
      simp only [executeReductiveStages, List.map_cons]
      rw [runReductiveStage_stage_identity, inductionHypothesis]

/-- Sequential execution preserves each complete configured stage record. -/
theorem executeReductiveStages_configured_order
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (state : State)
    (candidates : Finset decomposition.Piece)
    (stages :
      List (ReductiveSelectionStage State cone decomposition objective)) :
    (executeReductiveStages decomposition objective siteUniverse
        state candidates stages).map ReductiveStageResult.configuredStage =
      stages.map ReductiveSelectionStage.configured := by
  induction stages generalizing state candidates with
  | nil => rfl
  | cons stage later inductionHypothesis =>
      simp only [executeReductiveStages, List.map_cons]
      rw [runReductiveStage_configured_stage, inductionHypothesis]

/-- Sequential execution has exact initial and consecutive state/set links. -/
theorem executeReductiveStages_chain
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (state : State)
    (candidates : Finset decomposition.Piece)
    (stages :
      List (ReductiveSelectionStage State cone decomposition objective)) :
    StageResultChain state candidates
      (executeReductiveStages decomposition objective siteUniverse
        state candidates stages) := by
  induction stages generalizing state candidates with
  | nil => trivial
  | cons stage later inductionHypothesis =>
      simp only [executeReductiveStages, StageResultChain]
      refine ⟨rfl, rfl, ?_⟩
      exact inductionHypothesis _ _

/-- Dropping a prefix from a coherent chain leaves a coherent suffix. -/
theorem stageResultChain_after_prefix
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    {state : State}
    {candidates : Finset decomposition.Piece}
    (priorResults suffix :
      List (ReductiveStageResult State decomposition objective))
    (coherent : StageResultChain state candidates (priorResults ++ suffix)) :
    ∃ suffixState suffixCandidates,
      StageResultChain suffixState suffixCandidates suffix := by
  induction priorResults generalizing state candidates with
  | nil => exact ⟨state, candidates, coherent⟩
  | cons current remaining inductionHypothesis =>
      exact inductionHypothesis coherent.2.2

/-- Adjacent results in a coherent chain use the preceding outputs exactly. -/
theorem stageResultChain_adjacent
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    {state : State}
    {candidates : Finset decomposition.Piece}
    {results priorResults suffix :
      List (ReductiveStageResult State decomposition objective)}
    {previous next : ReductiveStageResult State decomposition objective}
    (coherent : StageResultChain state candidates results)
    (shape : results = priorResults ++ (previous :: next :: suffix)) :
    next.inputState = previous.assessedState ∧
      next.inputCandidates = previous.outputCandidates := by
  subst results
  obtain ⟨suffixState, suffixCandidates, suffixCoherent⟩ :=
    stageResultChain_after_prefix priorResults (previous :: next :: suffix) coherent
  exact ⟨suffixCoherent.2.2.1, suffixCoherent.2.2.2.1⟩

/-- Complete, content-addressed, order-preserving reduction trace. -/
structure ReductiveSiteSelectionTrace
    (State : Type u)
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece) where
  identity : ArtifactIdentity
  digest : EvidenceDigest
  policy : RootTheoremConfiguration
  rootConfig : ArtifactIdentity
  rootConfigDigest : EvidenceDigest
  theoremRegistry : ArtifactIdentity
  theoremRegistryDigest : EvidenceDigest
  root_config_exact : rootConfig = policy.identity
  root_config_digest_exact : rootConfigDigest = policy.digest
  registry_exact : theoremRegistry = policy.registry.identity
  registry_digest_exact : theoremRegistryDigest = policy.registry.digest
  configuredStageOrder : List ArtifactIdentity
  configured_stage_order_exact :
    configuredStageOrder = policy.enabledStageOrder
  configuredStages : List ConfiguredAnalyticStagePin
  configured_stages_exact : configuredStages = policy.enabledStages
  siteUniverse : SurgicalSiteUniverse decomposition
  initialState : State
  initialCandidates : Finset decomposition.Piece
  initial_eq_eligible : initialCandidates = siteUniverse.eligible
  stageResults : List (ReductiveStageResult State decomposition objective)
  finalCandidates : Finset decomposition.Piece
  stage_order_exact :
    stageResults.map ReductiveStageResult.stageIdentity = configuredStageOrder
  stage_configurations_exact :
    stageResults.map ReductiveStageResult.configuredStage = configuredStages
  stage_chain_exact :
    StageResultChain initialState initialCandidates stageResults
  final_eq_fold :
    finalCandidates = foldStageResults initialCandidates stageResults
  allStagesReductive : ∀ result ∈ stageResults,
    result.outputCandidates ⊆ result.inputCandidates

namespace ReductiveSiteSelectionTrace

/--
Canonical trace constructor from one exact typed root policy and ordered stage
list.  Artifact digests remain explicit data; the set and stage-order laws are
kernel-checked here.
-/
noncomputable def ofStages
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (identity : ArtifactIdentity)
    (digest : EvidenceDigest)
    (policy : RootTheoremConfiguration)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (initialState : State)
    (stages :
      List (ReductiveSelectionStage State cone decomposition objective))
    (stageOrderExact :
      stages.map ReductiveSelectionStage.identity = policy.enabledStageOrder)
    (stageConfigurationsExact :
      stages.map ReductiveSelectionStage.configured = policy.enabledStages) :
    ReductiveSiteSelectionTrace State decomposition objective := by
  let results := executeReductiveStages decomposition objective siteUniverse
    initialState siteUniverse.eligible stages
  exact
    { identity := identity
      digest := digest
      policy := policy
      rootConfig := policy.identity
      rootConfigDigest := policy.digest
      theoremRegistry := policy.registry.identity
      theoremRegistryDigest := policy.registry.digest
      root_config_exact := rfl
      root_config_digest_exact := rfl
      registry_exact := rfl
      registry_digest_exact := rfl
      configuredStageOrder := policy.enabledStageOrder
      configured_stage_order_exact := rfl
      configuredStages := policy.enabledStages
      configured_stages_exact := rfl
      siteUniverse := siteUniverse
      initialState := initialState
      initialCandidates := siteUniverse.eligible
      initial_eq_eligible := rfl
      stageResults := results
      finalCandidates := foldStageResults siteUniverse.eligible results
      stage_order_exact := by
        rw [executeReductiveStages_stage_order]
        exact stageOrderExact
      stage_configurations_exact := by
        rw [executeReductiveStages_configured_order]
        exact stageConfigurationsExact
      stage_chain_exact :=
        executeReductiveStages_chain decomposition objective siteUniverse
          initialState siteUniverse.eligible stages
      final_eq_fold := rfl
      allStagesReductive := by
        intro result _member
        exact result.output_subset }

/-- RED-02: the final set is a subset of the initial set. -/
theorem final_subset_initial
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective) :
    trace.finalCandidates ⊆ trace.initialCandidates := by
  rw [trace.final_eq_fold]
  exact foldStageResults_subset trace.initialCandidates trace.stageResults

/-- RED-13: the initial set is the complete declared eligible universe. -/
theorem initial_candidates_not_truncated
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective) :
    trace.initialCandidates = trace.siteUniverse.eligible :=
  trace.initial_eq_eligible

/-- The first recorded stage starts from the trace's exact initial inputs. -/
theorem initial_stage_inputs_exact
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    {first : ReductiveStageResult State decomposition objective}
    {later : List (ReductiveStageResult State decomposition objective)}
    (shape : trace.stageResults = first :: later) :
    first.inputState = trace.initialState ∧
      first.inputCandidates = trace.initialCandidates := by
  have coherent := trace.stage_chain_exact
  rw [shape] at coherent
  exact ⟨coherent.1, coherent.2.1⟩

/-- Consecutive stage results use the preceding assessed state and output set. -/
theorem consecutive_stage_inputs_exact
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    (priorResults suffix :
      List (ReductiveStageResult State decomposition objective))
    (previous next : ReductiveStageResult State decomposition objective)
    (shape :
      trace.stageResults = priorResults ++ (previous :: next :: suffix)) :
    next.inputState = previous.assessedState ∧
      next.inputCandidates = previous.outputCandidates :=
  stageResultChain_adjacent trace.stage_chain_exact shape

/-- Every executed result is bound to one exact enabled stage entry. -/
theorem executed_stage_configurations_are_root_policy
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective) :
    trace.stageResults.map ReductiveStageResult.configuredStage =
      trace.policy.enabledStages := by
  rw [trace.stage_configurations_exact, trace.configured_stages_exact]

/-- Membership in the execution trace yields exact enabled-stage membership. -/
theorem executed_stage_configuration_enabled
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    {result : ReductiveStageResult State decomposition objective}
    (member : result ∈ trace.stageResults) :
    result.configuredStage ∈ trace.policy.enabledStages := by
  have mapped :
      result.configuredStage ∈
        trace.stageResults.map ReductiveStageResult.configuredStage :=
    List.mem_map.mpr ⟨result, member, rfl⟩
  rw [trace.executed_stage_configurations_are_root_policy] at mapped
  exact mapped

/--
Each executed result exposes the exact enabled entry together with its stage
identity and diffusion/exclusion/attention/stopping pin order.
-/
theorem executed_stage_exact_policy_binding
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    {result : ReductiveStageResult State decomposition objective}
    (member : result ∈ trace.stageResults) :
    ∃ configured ∈ trace.policy.enabledStages,
      result.stageIdentity = configured.identity ∧
        result.configuredStage = configured ∧
        result.executedPinOrder = configured.allPins := by
  refine ⟨result.configuredStage,
    trace.executed_stage_configuration_enabled member,
    result.stage_identity_exact, rfl, result.executed_pin_order_exact⟩

/-- RED-03: undecided classifications remain in their stage output. -/
theorem unknown_sites_retained
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    {result : ReductiveStageResult State decomposition objective}
    (_member : result ∈ trace.stageResults) :
    result.retainedUnknown ⊆ result.outputCandidates :=
  result.unknown_retained

/-- RED-04: blocked classifications remain in their stage output. -/
theorem blocked_sites_retained
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    {result : ReductiveStageResult State decomposition objective}
    (_member : result ∈ trace.stageResults) :
    result.retainedBlocked ⊆ result.outputCandidates :=
  result.blocked_retained

/-- Unbridged external-only assessments remain in the stage output. -/
theorem external_sites_retained
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    {result : ReductiveStageResult State decomposition objective}
    (_member : result ∈ trace.stageResults) :
    result.retainedExternal ⊆ result.outputCandidates :=
  result.external_retained

/-- RED-05: conflicts remain in their stage output. -/
theorem conflicted_sites_retained
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    {result : ReductiveStageResult State decomposition objective}
    (_member : result ∈ trace.stageResults) :
    result.retainedConflicted ⊆ result.outputCandidates :=
  result.conflicted_retained

/-- Attention results conservatively retain their site as well. -/
theorem attention_sites_retained
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    {result : ReductiveStageResult State decomposition objective}
    (_member : result ∈ trace.stageResults) :
    result.retainedAttention ⊆ result.outputCandidates :=
  result.attention_retained

/-- RED-07: every excluded site has a proof and exact theorem pin. -/
theorem excluded_site_has_certificate
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    {result : ReductiveStageResult State decomposition objective}
    (_member : result ∈ trace.stageResults)
    {site : decomposition.Piece}
    (excluded : site ∈ result.excluded) :
    Nonempty (SiteExclusionCertificate objective result.assessedState site) :=
  result.exclusionEvidence site excluded

/-- RED-08: executed stage order is exactly configured list order. -/
theorem stage_order_is_configured_order
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective) :
    trace.stageResults.map ReductiveStageResult.stageIdentity =
      trace.configuredStageOrder :=
  trace.stage_order_exact

/-- The trace stage list is precisely the enabled root-policy order. -/
theorem stage_order_is_root_policy_order
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective) :
    trace.stageResults.map ReductiveStageResult.stageIdentity =
      trace.policy.enabledStageOrder := by
  rw [trace.stage_order_exact, trace.configured_stage_order_exact]

/-- RED-09: the typed trace has one exact denotational result. -/
theorem deterministic
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective) :
    trace.finalCandidates =
      foldStageResults trace.initialCandidates trace.stageResults :=
  trace.final_eq_fold

/-- Runtime hints are deliberately absent from the denotational result. -/
def evaluate
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    (_hints : ReductiveExecutionHints) : Finset decomposition.Piece :=
  trace.finalCandidates

/-- RED-10: runtime evaluation order cannot change the semantic result. -/
theorem runtime_order_independent
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    (first second : ReductiveExecutionHints) :
    trace.evaluate first = trace.evaluate second :=
  rfl

/-- RED-11: cache content cannot change the semantic result. -/
theorem cache_state_independent
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    (first second : ReductiveExecutionHints) :
    trace.evaluate first = trace.evaluate second :=
  rfl

/-- RED-12: a site absent at any fold point cannot re-enter later. -/
theorem no_site_reentry
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (initial : Finset decomposition.Piece)
    (earlier later :
      List (ReductiveStageResult State decomposition objective))
    {site : decomposition.Piece}
    (absent : site ∉ foldStageResults initial earlier) :
    site ∉ foldStageResults initial (earlier ++ later) := by
  intro member
  rw [foldStageResults, List.foldl_append] at member
  exact absent
    (foldStageResults_subset (foldStageResults initial earlier) later member)

/-- A trace is valid for one exact configuration identity and digest. -/
def ValidForConfiguration
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    (configuration : RootTheoremConfiguration) : Prop :=
  trace.rootConfig = configuration.identity ∧
    trace.rootConfigDigest = configuration.digest ∧
    trace.theoremRegistry = configuration.registry.identity ∧
    trace.theoremRegistryDigest = configuration.registry.digest

/-- RED-15: a changed config digest invalidates a stale trace. -/
theorem changed_config_invalidates_trace
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    (configuration : RootTheoremConfiguration)
    (changed : trace.rootConfigDigest ≠ configuration.digest) :
    ¬ trace.ValidForConfiguration configuration := by
  intro valid
  exact changed valid.2.1

/-- RED-16: a changed registry digest invalidates a stale trace. -/
theorem changed_registry_invalidates_trace
    {State : Type u}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (trace : ReductiveSiteSelectionTrace State decomposition objective)
    (configuration : RootTheoremConfiguration)
    (changed : trace.theoremRegistryDigest ≠ configuration.registry.digest) :
    ¬ trace.ValidForConfiguration configuration := by
  intro valid
  exact changed valid.2.2.2

end ReductiveSiteSelectionTrace

end Surface.ContinuousAssurance
```
