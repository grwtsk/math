# unquoteExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31d4c43c0dc948c02f25fdd3cbf8c7d3e88ec79fbd233998a9ebcd1f5210eeba",
  "kind": "def",
  "lexical_name": "unquoteExpr",
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
  "slug": "unquoteexpr--4f102cadcdae789762d28065",
  "source": {
    "blob": "dbbc9abd111678018fbc2c42a41b974b582d6e8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 248,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant2be640ff994969f6bb3af5b0240b39543bdc5d2bbf58476cd3c97fad21a28915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f102cadcdae789762d280656fdb24cb9adc0b8a87bcb3402710e15a1e219e89",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant2be640ff994969f6bb3af5b0240b39543bdc5d2bbf58476cd3c97fad21a28915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31d4c43c0dc948c02f25fdd3cbf8c7d3e88ec79fbd233998a9ebcd1f5210eeba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta partial def unquoteExpr (e : Expr) : UnquoteM Expr := do
  if e.isAppOfArity ``Quoted.unsafeMk 2 then return ← unquoteExpr (e.getArg! 1)
  if e.isAppOfArity ``toExpr 3 then return e.getArg! 2
  let e ← instantiateMVars (← whnf e)
  let eTy ← whnfR (← inferType e)
  if eTy.isAppOfArity ``Quoted 1 then
    if let some e' := (← get).exprSubst[e]? then
      return e'
    if ← isAssignablePattern e then
      return ← unquoteExprMVar e
    if (← get).mayPostpone && e.getAppFn.isMVar then
      Elab.throwPostpone
    let ty ← unquoteExpr (eTy.getArg! 0)
    let fvarId := FVarId.mk (← mkFreshId)
    let name ← mkAbstractedName e
    let fv := .fvar fvarId
    modify fun s => { s with
      unquoted := s.unquoted.mkLocalDecl fvarId name ty
      exprSubst := s.exprSubst.insert e fv
      exprBackSubst := s.exprBackSubst.insert fv (.quoted e)
      abstractedFVars := s.abstractedFVars.push fvarId
    }
    return fv
  let e ← whnf e
  let .const c _ := e.getAppFn | throwError "unquoteExpr: {e} : {eTy}"
  let nargs := e.getAppNumArgs
  match c, nargs with
    | ``betaRev', 2 => return betaRev' (← unquoteExpr (e.getArg! 0)) (← unquoteExprList (e.getArg! 1))
    | ``Expr.bvar, 1 => return .bvar (← reduceEval (e.getArg! 0))
    | ``Expr.sort, 1 => return .sort (← unquoteLevel (e.getArg! 0))
    | ``Expr.const, 2 => return .const (← reduceEval (e.getArg! 0)) (← unquoteLevelList (e.getArg! 1))
    | ``Expr.app, 2 => return .app (← unquoteExpr (e.getArg! 0)) (← unquoteExpr (e.getArg! 1))
    | ``Expr.lam, 4 =>
      return .lam (← reduceEval (e.getArg! 0))
        (← unquoteExpr (e.getArg! 1))
        (← unquoteExpr (e.getArg! 2))
        (← reduceEval (e.getArg! 3))
    | ``Expr.forallE, 4 =>
      return .forallE (← reduceEval (e.getArg! 0))
        (← unquoteExpr (e.getArg! 1))
        (← unquoteExpr (e.getArg! 2))
        (← reduceEval (e.getArg! 3))
    | ``Expr.letE, 5 =>
      return .letE (← reduceEval (e.getArg! 0)) (← unquoteExpr (e.getArg! 1)) (← unquoteExpr (e.getArg! 2))
        (← unquoteExpr (e.getArg! 3)) (← reduceEval (e.getArg! 4))
    | ``Expr.lit, 1 => return .lit (← reduceEval (e.getArg! 0))
    | ``Expr.proj, 3 =>
      return .proj (← reduceEval (e.getArg! 0)) (← reduceEval (e.getArg! 1)) (← unquoteExpr (e.getArg! 2))
    | _, _ => throwError "unquoteExpr: {e} : {eTy}"

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant2be640ff994969f6bb3af5b0240b39543bdc5d2bbf58476cd3c97fad21a28915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant2be640ff994969f6bb3af5b0240b39543bdc5d2bbf58476cd3c97fad21a28915.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbbc9abd111678018fbc2c42a41b974b582d6e8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
