# elabEvalCoreUnsafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5819f327fba3589a103d87a43eb78bedc8c4b1e9e6bc8cb2529871e1d7bf13cd",
  "kind": "def",
  "lexical_name": "elabEvalCoreUnsafe",
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
  "slug": "elabevalcoreunsafe--c52dffac5c4a3c112de0b620",
  "source": {
    "blob": "2ec9947250df88e78330210acb37f9e960cb8d45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 179,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variant2f6bdac9d72d21a4354a9821b69e4cc7a0658abb7639ba56e4b3db78b8bae0d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c52dffac5c4a3c112de0b620f1c06b36396508d965636d83e0dfda55852d5ec8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variant2f6bdac9d72d21a4354a9821b69e4cc7a0658abb7639ba56e4b3db78b8bae0d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5819f327fba3589a103d87a43eb78bedc8c4b1e9e6bc8cb2529871e1d7bf13cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def elabEvalCoreUnsafe (bang : Bool) (tk term : Syntax) (expectedType? : Option Expr) : CommandElabM Unit := withRef tk do
  let declName := `_eval
  -- `t` is either `MessageData` or `Format`, and `mkT` is for synthesizing an expression that yields a `t`.
  -- The `toMessageData` function adapts `t` to `MessageData`.
  let mkAct {t : Type} [Inhabited t] (toMessageData : t → MessageData) (mkT : Expr → MetaM Expr) (e : Expr) : TermElabM EvalAction := do
    -- Create a monadic action given the name of the monad `mc`, the monad `m` itself,
    -- and an expression `e` to evaluate in this monad.
    -- A trick here is that `mkMAct?` makes use of `MonadEval` instances are currently available in this stage,
    -- and we do not need them to be available in the target environment.
    let mkMAct? (mc : Name) (m : Type → Type) [Monad m] [MonadEvalT m CommandElabM] (e : Expr) : TermElabM (Option EvalAction) := do
      let some e ← observing? (mkAppOptM ``MonadEvalT.monadEval #[none, mkConst mc, none, none, e])
        | return none
      let eType := e.appFn!.appArg!
      if ← isDefEq eType (mkConst ``Unit) then
        let declName ← addAndCompileExprForEval declName e (allowSorry := bang)
        let mf : m Unit ← evalConst (m Unit) declName (checkMeta := !Elab.inServer.get (← getOptions))
        return some { eval := do MonadEvalT.monadEval mf; pure "", printVal := none }
      else
        let rf ← withLocalDeclD `x eType fun x => do mkLambdaFVars #[x] (← mkT x)
        let r ← mkAppM ``Functor.map #[rf, e]
        let declName ← addAndCompileExprForEval declName r (allowSorry := bang)
        let mf : m t ← evalConst (m t) declName (checkMeta := !Elab.inServer.get (← getOptions))
        return some { eval := toMessageData <$> MonadEvalT.monadEval mf, printVal := some eType }
    if let some act ← mkMAct? ``CommandElabM CommandElabM e
                    -- Fallbacks in case we are in the Lean package but don't have `CommandElabM` yet
                    <||> mkMAct? ``TermElabM TermElabM e <||> mkMAct? ``MetaM MetaM e <||> mkMAct? ``CoreM CoreM e
                    -- Fallback in case nothing is imported
                    <||> mkMAct? ``IO IO e then
      return act
    else
      -- Otherwise, assume this is a pure value.
      -- There is no need to adapt pure values to `CommandElabM`.
      -- This enables `#eval` to work on pure values even when `CommandElabM` is not available.
      let r ← try mkT e catch ex => do
        -- Diagnose whether the value is monadic for a representable value, since it's better to mention `MonadEval` in that case.
        try
          let some (m, ty) ← isTypeApp? (← inferType e) | failure
          guard <| (← isMonad? m).isSome
          -- Verify that there is a way to form some representation:
          discard <| withLocalDeclD `x ty fun x => mkT x
        catch _ =>
          throw ex
        throwError m!"Unable to synthesize `{.ofConstName ``MonadEval}` instance \
          to adapt{indentExpr (← inferType e)}\n\
          to `{.ofConstName ``IO}` or `{.ofConstName ``CommandElabM}`."
      let declName ← addAndCompileExprForEval declName r (allowSorry := bang)
      -- `evalConst` may emit IO, but this is collected by `withIsolatedStreams` below.
      let r ← toMessageData <$> evalConst t declName (checkMeta := !Elab.inServer.get (← getOptions))
      return { eval := pure r, printVal := some (← inferType e) }
  let (output, exOrRes) ← IO.FS.withIsolatedStreams (isolateStderr := Core.stderrAsMessages.get (← getOptions)) do
    try
      -- Generate an action without executing it. We use `withoutModifyingEnv` to ensure
      -- we don't pollute the environment with auxiliary declarations.
      let act : EvalAction ← withoutModifyingEnv <| runTermElabM fun _ => do Term.withDeclName (mkPrivateName (← getEnv) declName) do
        withSaveInfoContext do -- save the environment post-elaboration (for matchers, let rec, etc.)
          let e ← elabTermForEval term expectedType?
          -- If there is an elaboration error, don't evaluate!
          if e.hasSyntheticSorry then throwAbortTerm
          if e.hasFVar then
            let fvarIds := (Lean.collectFVars {} e).fvarIds
            let fvarMsg := MessageData.andList (fvarIds.map fun fvarId => m!"`{Expr.fvar fvarId}`").toList
            throwError m!"Cannot evaluate, contains free variable{fvarIds.size.plural} {fvarMsg}"
          -- We want `#eval` to work even in the core library, so if `ofFormat` isn't available,
          -- we fall back on a `Format`-based approach.
          if (← getEnv).contains ``Lean.MessageData.ofFormat then
            mkAct id (mkMessageData ·) e
          else
            mkAct Lean.MessageData.ofFormat (mkFormat ·) e
      let res ← act.eval
      return Sum.inr (res, act.printVal)
    catch ex =>
      return Sum.inl ex
  if !output.isEmpty then logInfoAt tk output
  match exOrRes with
  | .inl ex => logException ex
  | .inr (_, none) => pure ()
  | .inr (res, some type) =>
    if eval.type.get (← getOptions) then
      logInfo m!"{res} : {type}"
    else
      logInfo res

@[implemented_by elabEvalCoreUnsafe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variant2f6bdac9d72d21a4354a9821b69e4cc7a0658abb7639ba56e4b3db78b8bae0d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variant2f6bdac9d72d21a4354a9821b69e4cc7a0658abb7639ba56e4b3db78b8bae0d6.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec9947250df88e78330210acb37f9e960cb8d45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
