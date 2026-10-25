# checkMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46347ca5ea31d933d60b4c586d66de6c8d82175195e3fcda506f5a4a8d5e653e",
  "kind": "def",
  "lexical_name": "checkMVar",
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
  "slug": "checkmvar--54fe106f2e0d7c04d4193ce7",
  "source": {
    "blob": "8bbd010584f31382615499820e7b562d16998fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 953,
    "line": 888,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54fe106f2e0d7c04d4193ce7865a85738d2b9de69226873f319d9d2e729fdf77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46347ca5ea31d933d60b4c586d66de6c8d82175195e3fcda506f5a4a8d5e653e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 888–953.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def checkMVar (mvar : Expr) : CheckAssignmentM Expr := do
    let mvarId := mvar.mvarId!
    let ctx  ← read
    if mvarId == ctx.mvarId then
      traceM `Meta.isDefEq.assign.occursCheck <| addAssignmentInfo "occurs check failed"
      throwCheckAssignmentFailure
    if let some v ← getExprMVarAssignment? mvarId then
      return (← check v)
    let some mvarDecl ← mvarId.findDecl?
      | throwUnknownMVar mvarId
    if ctx.hasCtxLocals then
      throwCheckAssignmentFailure -- It is not a pattern, then we fail and fall back to FO unification
    if let some d ← getDelayedMVarAssignment? mvarId then
      -- we must perform occurs-check at `d.mvarIdPending`
      unless (← occursCheck ctx.mvarId (mkMVar d.mvarIdPending)) do
        traceM `Meta.isDefEq.assign.occursCheck <| addAssignmentInfo "occurs check failed"
        throwCheckAssignmentFailure
    if mvarDecl.lctx.isSubPrefixOf ctx.mvarDecl.lctx ctx.fvars then
      /- The local context of `mvar` - free variables being abstracted is a subprefix of the metavariable being assigned.
         We "subtract" variables being abstracted because we use `elimMVarDeps` -/
      return mvar
    if mvarDecl.depth != (← getMCtx).depth || mvarDecl.kind.isSyntheticOpaque then
      traceM `Meta.isDefEq.assign.readOnlyMVarWithBiggerLCtx <| addAssignmentInfo (mkMVar mvarId)
      throwCheckAssignmentFailure
    let cfg ← getConfig
    unless cfg.ctxApprox && ctx.mvarDecl.lctx.isSubPrefixOf mvarDecl.lctx do
      traceM `Meta.isDefEq.assign.readOnlyMVarWithBiggerLCtx <| addAssignmentInfo (mkMVar mvarId)
      throwCheckAssignmentFailure
    /- Create an auxiliary metavariable with a smaller context and "checked" type.
       Note that `mvarType` may be different from `mvarDecl.type`. Example: `mvarType` contains
       a metavariable that we also need to reduce the context.

       We remove from `ctx.mvarDecl.lctx` any variable that is not in `mvarDecl.lctx`
       or in `ctx.fvars`. We don't need to remove the ones in `ctx.fvars` because
       `elimMVarDeps` will take care of them.

       First, we collect `toErase` the variables that need to be erased.
       Note that if a variable is `ctx.fvars`, but it depends on variable at `toErase`,
       we must also erase it.
    -/
    let toErase ← mvarDecl.lctx.foldlM (init := #[]) fun toErase localDecl => do
      if ctx.mvarDecl.lctx.contains localDecl.fvarId then
        return toErase
      else if ctx.fvars.any fun fvar => fvar.fvarId! == localDecl.fvarId then
        if (← findLocalDeclDependsOn localDecl fun fvarId => toErase.contains fvarId) then
          -- localDecl depends on a variable that will be erased. So, we must add it to `toErase` too
          return toErase.push localDecl.fvarId
        else
          return toErase
      else
        return toErase.push localDecl.fvarId
    let lctx := toErase.foldl (init := mvarDecl.lctx) fun lctx toEraseFVar =>
      lctx.erase toEraseFVar
    /- Compute new set of local instances. -/
    let localInsts := mvarDecl.localInstances.filter fun localInst => !toErase.contains localInst.fvar.fvarId!
    let mvarType ← check mvarDecl.type
    let newMVar ← mkAuxMVar lctx localInsts mvarType mvarDecl.numScopeArgs
    mvarId.assign newMVar
    return newMVar

  /--
    Auxiliary function used to "fix" subterms of the form `?m x_1 ... x_n` where `x_i`s are free variables,
    and one of them is out-of-scope.
    See `Expr.app` case at `check`.
    If `ctxApprox` is true, then we solve this case by creating a fresh metavariable ?n with the correct scope,
    an assigning `?m := fun _ ... _ => ?n` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean#L888).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbd010584f31382615499820e7b562d16998fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
