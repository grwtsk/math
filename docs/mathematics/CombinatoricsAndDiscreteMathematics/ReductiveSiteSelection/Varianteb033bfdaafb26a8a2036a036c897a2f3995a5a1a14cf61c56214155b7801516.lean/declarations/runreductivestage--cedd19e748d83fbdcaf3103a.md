# runReductiveStage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ae4c932ccf07e9a05e6b0f76ca7c140b3d785c2135926e4752cb9f05f4f5f52",
  "kind": "def",
  "lexical_name": "runReductiveStage",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "runreductivestage--cedd19e748d83fbdcaf3103a",
  "source": {
    "blob": "ff830267cbc064a477a0cde223af54c31b070c12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 556,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Varianteb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cedd19e748d83fbdcaf3103acfde8f45d2f19735c5eb04c97194fd4aa1da2293",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Varianteb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ae4c932ccf07e9a05e6b0f76ca7c140b3d785c2135926e4752cb9f05f4f5f52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Varianteb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Varianteb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff830267cbc064a477a0cde223af54c31b070c12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
