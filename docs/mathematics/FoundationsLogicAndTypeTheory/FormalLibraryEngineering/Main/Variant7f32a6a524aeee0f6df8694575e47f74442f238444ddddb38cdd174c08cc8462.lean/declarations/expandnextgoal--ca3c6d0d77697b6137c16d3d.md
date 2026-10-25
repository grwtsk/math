# expandNextGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc3bd5366d249c9332b534ccaec6297b9225440d70b609a1bc6315d791bc405c",
  "kind": "def",
  "lexical_name": "expandNextGoal",
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
  "slug": "expandnextgoal--ca3c6d0d77697b6137c16d3d",
  "source": {
    "blob": "98f97661eca9705b3ffa06ae5ecee54aac129a1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca3c6d0d77697b6137c16d3d7b53d887e6516343cdeef8354fc45c67247bd4b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc3bd5366d249c9332b534ccaec6297b9225440d70b609a1bc6315d791bc405c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandNextGoal : SearchM Q Unit := do
  let gref ← nextActiveGoal
  let g ← gref.get
  let (initialGoal, initialMetaState) ←
    g.currentGoalAndMetaState (← getRootMetaState)
  let result ← withAesopTraceNode .steps
    (fmt g.id g.priority initialGoal initialMetaState) do
    initialMetaState.runMetaM' do
      aesop_trace[steps] "Initial goal:{indentD initialGoal}"
    let maxRappDepth := (← read).options.maxRuleApplicationDepth
    if maxRappDepth != 0 && (← gref.get).depth >= maxRappDepth then
      aesop_trace[steps] "Treating the goal as unprovable since it is beyond the maximum rule application depth ({maxRappDepth})."
      gref.markForcedUnprovable
      setMaxRuleApplicationDepthReached
      return .failed
    let result ← expandGoal gref
    let currentIteration ← getIteration
    gref.modify λ g => g.setLastExpandedInIteration currentIteration
    if ← (← gref.get).isActive then
      enqueueGoals #[gref]
    return result
  match result with
  | .proved newRapps | .succeeded newRapps => traceNewRapps newRapps
  | .failed => return
  where
    fmt (id : GoalId) (priority : Percent) (initialGoal : MVarId)
        (initialMetaState : Meta.SavedState)
        (result : Except Exception RuleResult) : SearchM Q MessageData := do
      let tgt ← initialMetaState.runMetaM' do
        initialGoal.withContext do
          addMessageContext $ toMessageData (← initialGoal.getType)
      return m!"{exceptRuleResultToEmoji (·.toEmoji) result} (G{id}) [{priority.toHumanString}] ⋯ ⊢ {tgt}"

    traceNewRapps (newRapps : Array RappRef) : SearchM Q Unit := do
      aesop_trace[steps] do
        for rref in newRapps do
          let r ← rref.get
          r.withHeadlineTraceNode .steps
            (transform := λ msg => return m!"{newNodeEmoji} " ++ msg) do
            withAesopTraceNode .steps (λ _ => return "Metadata") do
              r.traceMetadata .steps
          r.metaState.runMetaM' do
            r.forSubgoalsM λ gref => do
              let g ← gref.get
              g.withHeadlineTraceNode .steps
                (transform := λ msg => return m!"{newNodeEmoji} " ++ msg) do
                aesop_trace![steps] g.preNormGoal
                withAesopTraceNode .steps (λ _ => return "Metadata") do
                  g.traceMetadata .steps

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f97661eca9705b3ffa06ae5ecee54aac129a1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
