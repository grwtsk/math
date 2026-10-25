# synthesizeSyntheticMVarsStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43c8dd3f55e7cfeda60f2aa0ab9f258fb1c9809d171dc438925ef0fd906e0aa4",
  "kind": "def",
  "lexical_name": "synthesizeSyntheticMVarsStep",
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
  "slug": "synthesizesyntheticmvarsstep--91f418d655cbf55ab0eb7bed",
  "source": {
    "blob": "7b7f039bfa57aef97a3e44348d0f6194fa95fda9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 573,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91f418d655cbf55ab0eb7bedbeeb6e5dabcc3186ec6486d8bbdfbf99f00ff714",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43c8dd3f55e7cfeda60f2aa0ab9f258fb1c9809d171dc438925ef0fd906e0aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def synthesizeSyntheticMVarsStep (postponeOnError : Bool) (runTactics : Bool) : TermElabM Bool := do
    let ctx ← read
    traceAtCmdPos `Elab.resume fun _ =>
      m!"resuming synthetic metavariables, mayPostpone: {ctx.mayPostpone}, postponeOnError: {postponeOnError}"
    let pendingMVars    := (← get).pendingMVars
    let numSyntheticMVars := pendingMVars.length
    -- We reset `pendingMVars` because new synthetic metavariables may be created by `synthesizeSyntheticMVar`.
    modify fun s => { s with pendingMVars := [] }
    -- Recall that `pendingMVars` is a list where head is the most recent pending synthetic metavariable.
    -- We use `filterRevM` instead of `filterM` to make sure we process the synthetic metavariables using the order they were created.
    -- It would not be incorrect to use `filterM`.
    let remainingPendingMVars ← pendingMVars.filterRevM fun mvarId => do
       checkSystem "synthesize pending MVars"
       -- We use `traceM` because we want to make sure the metavar local context is used to trace the message
       traceM `Elab.postpone (mvarId.withContext do addMessageContext m!"resuming {mkMVar mvarId}")
       let succeeded ← synthesizeSyntheticMVar mvarId postponeOnError runTactics
       if succeeded then markAsResolved mvarId
       trace[Elab.postpone] if succeeded then format "succeeded" else format "not ready yet"
       pure !succeeded
    -- Merge new synthetic metavariables with `remainingPendingMVars`, i.e., metavariables that still couldn't be synthesized
    modify fun s => { s with pendingMVars := s.pendingMVars ++ remainingPendingMVars }
    return numSyntheticMVars != remainingPendingMVars.length

  /--
    Try to process pending synthetic metavariables.

    If `postpone == .no`,then `pendingMVars` is `[]` after executing this method.
    If `postpone == .partial`, then `pendingMVars` contains only `.tc` and `.coe` kinds.

    It keeps executing `synthesizeSyntheticMVarsStep` while progress is being made.
    If `postpone != .yes`, then it applies default instances to `SyntheticMVarKind.typeClass` (if available)
    metavariables that are still unresolved, and then tries to resolve metavariables
    with `postponeOnError == false`. That is, we force them to produce error messages and/or commit to
    a "best option". If, after that, we still haven't made progress, we report "stuck" errors If `postpone == .no`.

    Remark: we set `ignoreStuckTC := true` when elaborating `simp` arguments. Then,
    pending TC problems become implicit parameters for the simp theorem.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7f039bfa57aef97a3e44348d0f6194fa95fda9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
