# splitCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2351b555a0ee4db61ff61961e03958fc4f2017654ce12758db5cd9cf1c0b9a87",
  "kind": "def",
  "lexical_name": "splitCore",
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
  "slug": "splitcore--06498fbbd3af5a0febe9a7e4",
  "source": {
    "blob": "b43ce3f054bf56f72211b5d290ec1e7fce59a9bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 450,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06498fbbd3af5a0febe9a7e40a30964503728213b155acf92a79536773baf51b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2351b555a0ee4db61ff61961e03958fc4f2017654ce12758db5cd9cf1c0b9a87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def splitCore (c : SplitInfo) (numCases : Nat) (isRec : Bool)
    (stopAtFirstFailure : Bool)
    (compress : Bool)
    (candidates? : Option (List SplitInfo) := none) : Action := fun goal _ kp => do
  let traceEnabled := (← getConfig).trace
  let mvarId ← goal.mkAuxMVar
  let cExpr := c.getExpr
  let ((mvarIds, anchorInfo?), goal) ← GoalM.run goal do
    /-
    **Note**: The anchor reference must be computed before the case-split is performed,
    so that the candidate list matches the one inspected by the `cases` tactic when
    replaying the generated script. Callers that prune the candidate list during
    case-split selection (e.g., `splitNext` via `selectNextSplit?`) must provide the
    original list using `candidates?`.
    -/
    let anchorInfo? ← if traceEnabled then
      pure (some (← mkSplitAnchorRefInfo c candidates?))
    else
      pure none
    let gen ← getGeneration cExpr
    let genNew := if numCases > 1 || isRec then gen+1 else gen
    saveSplitDiagInfo cExpr genNew numCases c.source
    markCaseSplitAsResolved cExpr
    trace_goal[grind.split] "{cExpr}, generation: {gen}"
    let mvarIds ← if let .imp e h _ := c then
      casesWithTrace mvarId (mkGrindEM (e.forallDomain h))
    else if (← isMatcherApp cExpr) then
      casesMatch mvarId cExpr
    else
      casesWithTrace mvarId (← mkCasesMajor cExpr)
    return (mvarIds, anchorInfo?)
  let numSubgoals := mvarIds.length
  /-
  **Split counter heuristic**: We do not increment `numSplits` for the first case (`i = 0`)
  of a non-recursive split. This leverages non-chronological backtracking: if the first case
  is solved using a proof that doesn't depend on the case hypothesis, we backtrack and close
  the original goal directly. In this scenario, the case-split was "free", it didn't contribute
  to the proof. By not counting it, we allow deeper exploration when case-splits turn out to be
  irrelevant.

  For recursive types or subsequent cases (`i > 0`), we always increment the counter since
  these represent genuine branches in the proof search.
  -/
  let subgoals := mvarIds.mapIdx fun i mvarId =>
    let numSplits := goal.split.num
    let numSplits := if i > 0 || isRec then numSplits + 1 else numSplits
    { goal with
      mvarId
      split.num := numSplits
      split.trace := { expr := cExpr, i, num := numSubgoals, source := c.source } :: goal.split.trace }
  let mut seqNew : Array (List (TSyntax `grind)) := #[]
  let mut stuckNew : Array Goal := #[]
  for subgoal in subgoals do
    match (← kp subgoal) with
    | .stuck gs =>
      if stopAtFirstFailure then
        /-
        **Note**: We don't need to assign `goal.mvarId` when `stopAtFirstFailure = true`
        because the caller will not be able to process the all failure/stuck goals anyway.
        -/
        return .stuck gs
      else
        stuckNew := stuckNew ++ gs
    | .closed seq =>
      if let some falseProof ← getFalseProof? subgoal.mvarId then
        goal.mvarId.assignFalseProof falseProof
        return .closed seq
      else if !seq.isEmpty then
        /- **Note**: if the sequence is empty, it means the user will never see this goal. -/
        seqNew := seqNew.push seq
  if (← goal.mvarId.getType).isFalse then
    /- **Note**: We add the marker to assist `getFalseExpr?` -/
    goal.mvarId.assign (mkExpectedPropHint (← instantiateMVars (mkMVar mvarId)) (mkConst ``False))
  else
    goal.mvarId.assign (← instantiateMVars (mkMVar mvarId))
  if stuckNew.isEmpty then
    if let some anchorInfo := anchorInfo? then
      let cases ← anchorInfo.toSyntax
      return .closed (← mkCasesResultSeq cases seqNew compress)
    else
      return .closed []
  else
    return .stuck stuckNew.toList

/--
Selects a case-split from the list of candidates, performs the split and applies
continuation to all subgoals.
If a subgoal is solved without using new hypotheses, closes the original goal using this proof. That is,
it performs non-chronological backtracking.

If `stopsAtFirstFailure = true`, it stops the search as soon as the given continuation cannot solve a subgoal.

If `compress = true`, then it uses `<;>` to generate the resulting tactic sequence if all subgoal sequences are
identical. For example, suppose that the following sequence is generated with `compress = false`
```
cases #50fc
next => lia
next => lia
```
Then with `compress = true` it generates `cases #50fc <;> lia`
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b43ce3f054bf56f72211b5d290ec1e7fce59a9bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
