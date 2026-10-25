# orderedUScriptToSScript

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51d0b34c6f3d0d81ed77b15399b0f171f9c23960e051f97b7b16f0cef8d93fe6",
  "kind": "def",
  "lexical_name": "orderedUScriptToSScript",
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
  "slug": "ordereduscripttosscript--537fcdfc46cda35163ea4365",
  "source": {
    "blob": "b8667586b2d67194d4a75e124f6ac9c53e24cc8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Variant044092129a8e108b73bf627e4ea77a15f79b36c0b355932628e36c0f48186828.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:537fcdfc46cda35163ea43657191c03bace1d9acdc71052929894b250f2cde0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Variant044092129a8e108b73bf627e4ea77a15f79b36c0b355932628e36c0f48186828.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51d0b34c6f3d0d81ed77b15399b0f171f9c23960e051f97b7b16f0cef8d93fe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def orderedUScriptToSScript (uscript : UScript) (tacticState : TacticState) : CoreM SScript :=
  withAesopTraceNode .script (fun _ => return m!"Converting ordered unstructured script to structured script") do
  aesop_trace[script] "unstructured script:{indentD $ MessageData.joinSep (uscript.map toMessageData |>.toList) "\n"}"
  let stepTree := uscript.toStepTree
  aesop_trace[script] "step tree:{indentD $ toMessageData stepTree}"
  let focusable := stepTree.focusableGoals
  let numSiblings := stepTree.numSiblings
  aesop_trace[script] "focusable goals: {focusable.toArray.map λ (mvarId, n) => (mvarId.name, n)}"
  (·.fst) <$> go focusable numSiblings 0 (uscript.size - 1) tacticState
where
  go (focusable : Std.HashMap MVarId Nat) (numSiblings : Std.HashMap MVarId Nat)
      (start stop : Nat) (tacticState : TacticState) :
      CoreM (SScript × TacticState) := do
    if start > stop then
      return (.empty, tacticState)
    if let some step := uscript[start]? then
      aesop_trace[script] "applying step:{indentD $ toMessageData step}"
      let some siblings := numSiblings[step.preGoal]?
        | throwError "aesop: internal error while structuring script: unknown sibling count for goal {step.preGoal.name}"
      aesop_trace[script] "siblings: {siblings}"
      let innerStop? := focusable[step.preGoal]?
      aesop_trace[script] "focusable: {innerStop?.isSome}"
      aesop_trace[script] "visible goals: {tacticState.visibleGoals.map (·.goal.name)}"
      let some goalPos := tacticState.getVisibleGoalIndex? step.preGoal
        -- I think his can be `none` if the step is for an mvar that was already
        -- assigned by some other step.
        | return (.empty, tacticState)
      aesop_trace[script] "goal position: {goalPos}"
      if innerStop?.isNone || siblings == 0 then
        let tacticState ← tacticState.applyStep step
        let (tailScript, tacticState) ← go focusable numSiblings (start + 1) stop tacticState
        return (.onGoal goalPos step tailScript, tacticState)
      else
        let innerStop := innerStop?.get!
        let (nestedScript, tacticState) ←
          tacticState.onGoalM step.preGoal λ tacticState => do
            let tacticState ← tacticState.applyStep step
            let (tailScript, tacticState) ←
              go focusable numSiblings (start + 1) innerStop tacticState
            return (.onGoal 0 step tailScript, tacticState)
        let (tailScript, tacticState) ←
          go focusable numSiblings (innerStop + 1) stop tacticState
        let script := .focusAndSolve goalPos nestedScript tailScript
        return (script, tacticState)
    else
      return (.empty, tacticState)

end Aesop.Script
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Variant044092129a8e108b73bf627e4ea77a15f79b36c0b355932628e36c0f48186828.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Variant044092129a8e108b73bf627e4ea77a15f79b36c0b355932628e36c0f48186828.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8667586b2d67194d4a75e124f6ac9c53e24cc8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
