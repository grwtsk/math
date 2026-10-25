# structureDynamicCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec11420fd7af5767ffe27755386c234b7b85f191c94a3591db0c056e09261b05",
  "kind": "def",
  "lexical_name": "structureDynamicCore",
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
  "slug": "structuredynamiccore--d6830d7a5a86e6079bf97d14",
  "source": {
    "blob": "c16d18ee158c161ceecfb822efa2793cfd204fda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6830d7a5a86e6079bf97d14cfbda8a9393cfb367b0ba879b5349bec78144c9d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec11420fd7af5767ffe27755386c234b7b85f191c94a3591db0c056e09261b05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def structureDynamicCore (preState : Meta.SavedState) (preGoal : MVarId)
    (uscript : UScript) : MetaM (Option (UScript × Bool)) :=
  withAesopTraceNode .script (fun _ => return m!"Dynamically structuring the script") do
    aesop_trace[script] "unstructured script:{indentD $ MessageData.joinSep (uscript.map toMessageData |>.toList) "\n"}"
    let (result?, perfect) ← go preState #[preGoal] |>.run uscript
    let some result := result?
      | return none
    return some (result.script.toArray, perfect)
where
  go (preState : Meta.SavedState) (preGoals : Array MVarId) :
      DynStructureM (Option DynStructureResult) :=
    withIncRecDepth do
    if h : 0 < preGoals.size then
      -- Try to apply the step for the main goal, then solve the remaining goals.
      let firstGoal := preGoals[0]
      let result? ← withAesopTraceNode .script (fun _ => return m!"Focusing main goal {firstGoal.name}") do
        aesop_trace[script] "goal: {firstGoal.name}{← preState.runMetaM' $ addMessageContext $ indentD firstGoal}"
        goStructured preState preGoals preGoals[0]
      match result? with
      | some result => return result
      | none =>
        -- If this fails, apply the chronologically next step and solve the remaining goals.
        modify ({ · with perfect := false })
        withAesopTraceNode .script (fun _ => return m!"Applying step to chronologically first goal") do
          goUnstructured preState preGoals
    else
      return some { script := [], postState := preState }

  goStructured (preState : Meta.SavedState) (preGoals : Array MVarId)
      (firstPreGoal : MVarId) : DynStructureM (Option DynStructureResult) := do
    let (some (_, step)) := (← read).steps[firstPreGoal]
      | throwError "aesop: internal error while structuring the script: no step for goal {preGoal.name}:{indentD $ ← preState.runMetaM' $ addMessageContext $ toMessageData preGoal}"
    applyStepAndSolveRemaining preState preGoals firstPreGoal 0 step

  goUnstructured (preState : Meta.SavedState) (preGoals : Array MVarId) :
      DynStructureM (Option DynStructureResult) := do
    let steps := (← read).steps
    let firstStep? := findFirstStep? preGoals (steps[·]) (·.fst)
    let some (goalPos, goal, _, step) := firstStep?
      | throwError "aesop: internal error while structuring the script: no step for any of the visible goals{indentD $ ← goalsToMessageData preState preGoals}"
    aesop_trace[script] "goal: {goal.name}{← preState.runMetaM' $ addMessageContext $ indentD goal}"
    applyStepAndSolveRemaining preState preGoals goal goalPos step

  applyStepAndSolveRemaining (preState : Meta.SavedState)
      (preGoals : Array MVarId) (preGoal : MVarId) (goalPos : Nat)
      (step : Step) : DynStructureM (Option DynStructureResult) := do
    aesop_trace[script] "applying step:{indentD $ toMessageData step}"
    aesop_trace[script] "expected post goals:{indentD $ ← goalsToMessageData step.postState (step.postGoals.map (·.goal))}"
    let (postState, postGoals) ←
      try
        runTacticCapturingPostState step.uTactic preState [preGoal]
      catch e =>
        aesop_trace[script] "tactic failed with error:{indentD e.toMessageData}"
        return none
    let postGoals := postGoals.toArray
    withUpdatedMVarIds step.postState postState (step.postGoals.map (·.goal)) postGoals
      (onFailure := do
        aesop_trace[script] "post goals don't match; actual post goals:{indentD $ ← goalsToMessageData postState postGoals}"
        return none) do
      aesop_trace[script] "post goals match"
      let postGoalsWithMVars ← postState.runMetaM' do
        postGoals.mapM λ goal =>
          return { goal, mvars := ← goal.getMVarDependencies }
      -- We need to construct a new step here because the old step's postState
      -- is equivalent to the new postState *only up to mvar assignments*.
      let step := {
        tactic := step.tactic
        postGoals := postGoalsWithMVars
        preState, preGoal, postState
      }
      let postGoals := preGoals[:goalPos] ++ postGoals ++ preGoals[goalPos+1:]
      let postGoals ← postState.runMetaM' do
        postGoals.filterM λ mvarId =>
          return ! (← mvarId.isAssignedOrDelayedAssigned)
      let some { script := tailScript, postState } ← go postState postGoals
        | return none
      let script := step :: tailScript
      return some { script, postState }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c16d18ee158c161ceecfb822efa2793cfd204fda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
