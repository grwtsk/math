# collectTriggerPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e24d0e4cc1a0c5496b71fdafc5d070b766f9787e52de1058b3bd3adb4f9667d",
  "kind": "def",
  "lexical_name": "collectTriggerPoints",
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
  "slug": "collecttriggerpoints--e4a750b1ac16bbb90bc16b0d",
  "source": {
    "blob": "b0d73bf2c2b38247568abdd58ea6fba9dbf2595c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 288,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4a750b1ac16bbb90bc16b0d4116b531f3077e50dbd9152e7a74852443b6860a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e24d0e4cc1a0c5496b71fdafc5d070b766f9787e52de1058b3bd3adb4f9667d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectTriggerPoints (cmd : Syntax) (opts : Options) (tree : InfoTree)
    (msgs : PersistentArray Message) : CommandElabM (Array Candidate) := do
  let onEmpty := autoTry.onEmptyProof.get opts || tactic.tryOnEmptyBy.get opts
  let onUnsolved := autoTry.onUnsolvedGoal.get opts
  let onSorry := autoTry.onSorry.get opts
  let mut acc : Array Candidate := #[]
  -- Sorry triggers still come from the info tree, since they're per-`sorry`-token.
  if onSorry then
    acc := tree.foldInfo (init := acc) fun ctx info acc => Id.run do
      if let .ofTacticInfo tacInfo := info then
        if isSorryTactic tacInfo.stx then
          if let some goal := tacInfo.goalsBefore.head? then
            let namingCtx : NamingContext :=
              { currNamespace := ctx.currNamespace, openDecls := ctx.openDecls }
            return acc.push {
              kind := .sorryTactic, ref := tacInfo.stx,
              env := ctx.env, mctx := tacInfo.mctxBefore, opts := ctx.options,
              namingCtx, goal }
      return acc
  -- Unsolved-goal triggers come from the message log.
  if onUnsolved || onEmpty then
    let fileMap ← getFileMap
    let some cmdRange := cmd.getRange? (canonicalOnly := true) | return acc
    -- Dedup key is `(message range, goal mvarid)`: same range + same mvarid is a true
    -- duplicate (`runLintersAsync` merges the snapshot tree's diagnostics into the
    -- command state's message log, so the same `Tactic.unsolvedGoals` error may appear
    -- twice in `msgs`); same range + different mvarids is the genuinely distinct case
    -- that the downstream `<;>` filter needs to see (e.g. `tac <;> ·` re-enters the same
    -- empty cdot once per subgoal, each with its own goal).
    let mut seen : Std.HashSet (Lean.Syntax.Range × MVarId) := {}
    for msg in msgs do
      unless msg.severity matches .error do continue
      unless msg.data.hasTag (· == `Tactic.unsolvedGoals) do continue
      let some endPos := msg.endPos | continue
      let msgRange : Lean.Syntax.Range :=
        { start := fileMap.ofPosition msg.pos, stop := fileMap.ofPosition endPos }
      unless cmdRange.includes msgRange do continue
      let some (body, insertPos) := findTacticSeqBody cmd msgRange
        | trace[autoTry] "no tacticSeq body found for unsolved-goals message at \
            {msgRange.start.byteIdx}-{msgRange.stop.byteIdx}; \
            unrecognised seq variant?"
          continue
      let isEmpty := body.getPos?.isNone
      unless onUnsolved || (onEmpty && isEmpty) do continue
      let ref := mkRangeStx msgRange
      let goals := collectGoalsAndCtxFromMessage msg.data
      if goals.isEmpty then
        trace[autoTry] "Tactic.unsolvedGoals message yielded no (msgCtx, namingCtx, goal) \
          tuples; producer not following the `withContext`/`withNamingContext` contract?"
      for (msgCtx, namingCtx, mvarId) in goals do
        if seen.contains (msgRange, mvarId) then continue
        seen := seen.insert (msgRange, mvarId)
        acc := acc.push {
          kind := .unsolvedGoal body insertPos, ref,
          env := msgCtx.env, mctx := msgCtx.mctx, opts := msgCtx.opts,
          namingCtx, goal := mvarId }
  return acc

/--
Drive `try?` from `CommandElabM`, returning the suggestion array. Runs
`Try.collectTryCoreSuggestions` on `goal` inside the captured elaboration scope.
Returns `#[]` on error or interruption (control-flow exceptions are re-raised).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0d73bf2c2b38247568abdd58ea6fba9dbf2595c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
