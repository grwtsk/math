# runTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f8c3e209a7f2c01fefa9eddbee386ffc44fb88331262a4045196e5fa05d5732",
  "kind": "def",
  "lexical_name": "runTactic",
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
  "slug": "runtactic--4e556d3c3598c60e5d3ebfbc",
  "source": {
    "blob": "7b7f039bfa57aef97a3e44348d0f6194fa95fda9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 474,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e556d3c3598c60e5d3ebfbc5353b49d566f9b390da5ea9693e601359f3ba76d",
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

Occurrence: `declaration:7f8c3e209a7f2c01fefa9eddbee386ffc44fb88331262a4045196e5fa05d5732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def runTactic (mvarId : MVarId) (tacticCode : Syntax) (kind : TacticMVarKind) (report := true) : TermElabM Unit := withoutAutoBoundImplicit do
    let wasExporting := (← getEnv).isExporting
    -- exit exporting context if entering proof
    let isNoLongerExporting ← pure (wasExporting && !(← backward.proofsInPublic.getM)) <&&> do
      mvarId.withContext do
        isProp (← mvarId.getType)
    instantiateMVarDeclMVars mvarId
    -- When exiting exporting context, use fresh mvar for running tactics and abstract it into an
    -- aux theorem in the end so that we cannot leak references to private decls into the exporting
    -- context.
    let mut mvarId' := mvarId
    if isNoLongerExporting then
      let mvarDecl ← getMVarDecl mvarId
      mvarId' := (← mkFreshExprMVarAt mvarDecl.lctx mvarDecl.localInstances mvarDecl.type mvarDecl.kind).mvarId!
    withExporting (isExporting := wasExporting && !isNoLongerExporting) do
    /-
    TODO: consider using `runPendingTacticsAt` at `mvarId` local context and target type.
    Issue #1380 demonstrates that the goal may still contain pending metavariables.
    It happens in the following scenario we have a term `foo A (by tac)` where `A` has been postponed
    and contains nested `by ...` terms. The pending metavar list contains two metavariables: ?m1 (for `A`) and
    `?m2` (for `by tac`). When `A` is resumed, it creates a new metavariable `?m3` for the nested `by ...` term in `A`.
    `?m3` is after `?m2` in the to-do list. Then, we execute `by tac` for synthesizing `?m2`, but its type depends on
    `?m3`. We have considered putting `?m3` at `?m2` place in the to-do list, but this is not super robust.
    The ideal solution is to make sure a tactic "resolves" all pending metavariables nested in their local context and target type
    before starting tactic execution. The procedure would be a generalization of `runPendingTacticsAt`. We can try to combine
    it with `instantiateMVarDeclMVars` to make sure we do not perform two traversals.
    Regarding issue #1380, we addressed the issue by avoiding the elaboration postponement step. However, the same issue can happen
    in more complicated scenarios.
    -/
    tryCatchRuntimeEx
      (do let remainingGoals ← withInfoHole mvarId <| Tactic.run mvarId' <| kind.maybeWithoutRecovery do
            withTacticInfoContext tacticCode do
              -- also put an info node on the `by` keyword specifically -- the token may be `canonical` and thus shown in the info
              -- view even though it is synthetic while a node like `tacticCode` never is (#1990)
              withTacticInfoContext tacticCode[0] do
                withNarrowedArgTacticReuse (argIdx := 1) (evalTactic ·) tacticCode
            -- Pending tactic mvars may escape from `evalTactic` to here (#4436), so make sure
            -- incrementality is disabled so they cannot be confused for top-level tactic blocks
            withoutTacticIncrementality true do
              synthesizeSyntheticMVars (postpone := .no)
          unless remainingGoals.isEmpty do
            if report then
              kind.logError tacticCode
              reportUnsolvedGoals remainingGoals
            else
              throwError "unsolved goals\n{goalsToMessageData remainingGoals}"
          if isNoLongerExporting then
            let mut e ← instantiateExprMVars (.mvar mvarId')
            if !e.isFVar then
              e ← mvarId'.withContext do
                withExporting (isExporting := wasExporting) do
                  -- Like `abstractProof`, but use the expected and not given type here as
                  -- the latter might not make sense outside the current module (#11672).
                  mkAuxTheorem (cache := !e.hasSorry) (← mvarId.getType) e (zetaDelta := true)
            mvarId.assign e)
      fun ex => do
        if report then
          kind.logError tacticCode
        if report && (← read).errToSorry then
          for mvarId in (← getMVars (mkMVar mvarId')) do
            mvarId.admit
          logException ex
        else
          throw ex

  /-- Try to synthesize the given pending synthetic metavariable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7f039bfa57aef97a3e44348d0f6194fa95fda9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
