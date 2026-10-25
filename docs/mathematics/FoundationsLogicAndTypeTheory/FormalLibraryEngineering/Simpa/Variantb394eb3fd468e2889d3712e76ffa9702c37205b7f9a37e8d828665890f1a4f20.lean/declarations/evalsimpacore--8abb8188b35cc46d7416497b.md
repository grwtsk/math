# evalSimpaCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5f86e78a6a55b8bf1f92d4686221e80e03207c330fc035b8b1cc1263dcb626a",
  "kind": "def",
  "lexical_name": "evalSimpaCore",
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
  "slug": "evalsimpacore--8abb8188b35cc46d7416497b",
  "source": {
    "blob": "e22b6faa645be0d357e31d2d2c75f6d4a4515c5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantb394eb3fd468e2889d3712e76ffa9702c37205b7f9a37e8d828665890f1a4f20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8abb8188b35cc46d7416497b23a515b64897ebff7746d5f8ee8d3fd41b3e1f28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantb394eb3fd468e2889d3712e76ffa9702c37205b7f9a37e8d828665890f1a4f20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5f86e78a6a55b8bf1f92d4686221e80e03207c330fc035b8b1cc1263dcb626a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def evalSimpaCore (useReducible : Bool) : Tactic := fun stx => do
  match stx with
  | `(tactic| simpa%$tk $[?%$squeeze]? $[!%$unfold]? $cfg:optConfig $(disch)? $[only%$only]?
        $[[$args,*]]? $[using%$usingTk? $usingArg]?) => Elab.Tactic.focus do withSimpDiagnostics do
    let stx ← `(tactic| simp $cfg:optConfig $(disch)? $[only%$only]? $[[$args,*]]?)
    let stats ← do
      let { ctx, simprocs, dischargeWrapper, .. } ← withMainContext <| mkSimpContext stx (eraseLocal := false)
      let ctx := if unfold.isSome then ctx.setAutoUnfold else ctx
      -- TODO: have `simpa` fail if it doesn't use `simp`.
      let ctx := ctx.setFailIfUnchanged false
      dischargeWrapper.with fun discharge? => do
        -- When there is a `using` clause we add tactic info showing the simplified goal.
        -- The span is `simpa ... using`.
        let mkInfo ← mkInitialTacticInfo (mkNullNode #[tk, usingTk?.getD .missing])
        let (some (_, g), stats) ← simpGoal (← getMainGoal) ctx (simprocs := simprocs) (simplifyTarget := true) (discharge? := discharge?)
          | if getLinterUnnecessarySimpa (← getLinterOptions) then
              logLint linter.unnecessarySimpa (← getRef) "try 'simp' instead of 'simpa'"
            return {}
        -- Replace the goal; captured by `mkInfo` in `using` case below.
        replaceMainGoal [g]
        g.withContext do
          if let some stx := usingArg then
            if (← getInfoState).enabled then
              let trees ← getResetInfoTrees
              withInfoContext (mkInfo := mkInfo) do
                -- Re-nest info trees so far into tactic info node
                modifyInfoState fun st => { st with trees }
            let mvarCounterSaved := (← getMCtx).mvarCounter
            let e ← Tactic.elabTerm stx none (mayPostpone := true)
            unless ← occursCheck g e do
              throwError "Occurs check failed: Expression{indentExpr e}\ncontains the goal {Expr.mvar g}"
            -- Copy the goal. We want to defer assigning `g := g'` to prevent `MVarId.note` from
            -- partially assigning the goal in case we need to log unassigned metavariables.
            -- Without deferring, this can cause `logUnassignedAndAbort` to report that `g` could not
            -- be synthesized; recall that this function reports that a metavariable could not be
            -- synthesized if, after mvar instantiation, it contains one of the provided mvars.
            let gCopy ← mkFreshExprSyntheticOpaqueMVar (← g.getType) (← g.getTag)
            let (h, g') ← gCopy.mvarId!.note `h e
            let (result?, stats) ← simpGoal g' ctx (simprocs := simprocs) (fvarIdsToSimp := #[h])
              (simplifyTarget := false) (stats := stats) (discharge? := discharge?)
            match result? with
            | some (xs, g') =>
              let h := xs[0]?.getD h
              let name ← mkFreshUserName `h
              let g' ← g'.rename h name
              g'.withContext do
                let gType ← g'.getType
                let h ← Term.elabTerm (mkIdent name) gType
                Term.synthesizeSyntheticMVarsNoPostponing
                let hType ← inferType h
                let isCompatible : MetaM Bool :=
                  withAssignableSyntheticOpaque <| isDefEq gType hType
                unless (← if useReducible then withReducible isCompatible else isCompatible) do
                  -- `e` still is valid in this new local context
                  Term.throwTypeMismatchError gType hType h
                    (header? := some m!"Type mismatch: After simplification, term{indentExpr e}\n")
                logUnassignedAndAbort (← filterOldMVars (← getMVars e) mvarCounterSaved)
                pushGoal g'
                closeMainGoal `simpa (checkUnassigned := false) h
            | none =>
              if getLinterUnnecessarySimpa (← getLinterOptions) then
                if let .fvar h := e then
                  if (← getLCtx).getRoundtrippingUserName? h |>.isSome then
                    logLint linter.unnecessarySimpa (← getRef)
                      m!"Try `simp at {Expr.fvar h}` instead of `simpa using {Expr.fvar h}`"
            g.assign gCopy
            pure stats
          else if let some ldecl := (← getLCtx).findFromUserName? `this then
            if let (some (_, g), stats) ← simpGoal g ctx (simprocs := simprocs)
                (fvarIdsToSimp := #[ldecl.fvarId]) (simplifyTarget := false) (stats := stats)
                (discharge? := discharge?) then
              g.assumption
              pure stats
            else
              pure stats
          else
            g.assumption
            pure stats
    if tactic.simp.trace.get (← getOptions) || squeeze.isSome then
      let usingArg : Option Term := usingArg.map (⟨·.raw.unsetTrailing⟩)
      let stx ← match ← mkSimpOnly stx.raw.unsetTrailing stats.usedTheorems with
        | `(tactic| simp $cfg:optConfig $(disch)? $[only%$only]? $[[$args,*]]?) =>
          match unfold.isSome, useReducible, usingArg with
          | true,  true,  _        => `(tactic| simpa! $cfg:optConfig $(disch)? $[only%$only]? $[[$args,*]]? $[using $usingArg]?)
          | false, true,  _        => `(tactic| simpa $cfg:optConfig $(disch)? $[only%$only]? $[[$args,*]]? $[using $usingArg]?)
          | true,  false, some ua  => `(tactic| simpa ! $cfg:optConfig $(disch)? $[only%$only]? $[[$args,*]]? using! $ua)
          | false, false, some ua  => `(tactic| simpa $cfg:optConfig $(disch)? $[only%$only]? $[[$args,*]]? using! $ua)
          | _,     false, none     => unreachable!  -- `using!` requires a term
        | _ => unreachable!
      TryThis.addSuggestion tk stx (origSpan? := ← getRef)
    return stats.diag
    | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantb394eb3fd468e2889d3712e76ffa9702c37205b7f9a37e8d828665890f1a4f20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantb394eb3fd468e2889d3712e76ffa9702c37205b7f9a37e8d828665890f1a4f20.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e22b6faa645be0d357e31d2d2c75f6d4a4515c5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
