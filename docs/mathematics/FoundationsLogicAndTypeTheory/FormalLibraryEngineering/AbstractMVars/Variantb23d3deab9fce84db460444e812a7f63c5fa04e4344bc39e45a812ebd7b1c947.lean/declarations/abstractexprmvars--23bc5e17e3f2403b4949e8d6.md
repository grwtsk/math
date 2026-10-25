# abstractExprMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd0da2f4e71d3c418640e6480e23b4ebcd1ae6620bb39ede76c273bce74bc074",
  "kind": "def",
  "lexical_name": "abstractExprMVars",
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
  "slug": "abstractexprmvars--23bc5e17e3f2403b4949e8d6",
  "source": {
    "blob": "d971b57f82287e11230c7e63fd790ceaf9ad8ab6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractMVars/Variantb23d3deab9fce84db460444e812a7f63c5fa04e4344bc39e45a812ebd7b1c947.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23bc5e17e3f2403b4949e8d6d2ca7498c8b43093f7275ffe3e942dadf1ded30a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractMVars/Variantb23d3deab9fce84db460444e812a7f63c5fa04e4344bc39e45a812ebd7b1c947.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd0da2f4e71d3c418640e6480e23b4ebcd1ae6620bb39ede76c273bce74bc074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def abstractExprMVars (e : Expr) : M Expr := do
  if !e.hasMVar then
    return e
  else
    match e with
    | e@(Expr.lit _)           => return e
    | e@(Expr.bvar _)          => return e
    | e@(Expr.fvar _)          => return e
    | e@(Expr.sort u)          => return e.updateSort! (← abstractLevelMVars u)
    | e@(Expr.const _ us)      => return e.updateConst! (← us.mapM abstractLevelMVars)
    | e@(Expr.proj _ _ s)      => return e.updateProj! (← abstractExprMVars s)
    | e@(Expr.app f a)         => return e.updateApp! (← abstractExprMVars f) (← abstractExprMVars a)
    | e@(Expr.mdata _ b)       => return e.updateMData! (← abstractExprMVars b)
    | e@(Expr.lam _ d b _)     => return e.updateLambdaE! (← abstractExprMVars d) (← abstractExprMVars b)
    | e@(Expr.forallE _ d b _) => return e.updateForallE! (← abstractExprMVars d) (← abstractExprMVars b)
    | e@(Expr.letE _ t v b _)  => return e.updateLetE! (← abstractExprMVars t) (← abstractExprMVars v) (← abstractExprMVars b)
    | e@(Expr.mvar mvarId)     =>
      let decl := (← getMCtx).getDecl mvarId
      if decl.depth != (← getMCtx).depth then
        return e
      else
        match (← get).emap[mvarId]? with
        | some e =>
          return e
        | none   =>
          let type   ← abstractExprMVars (← instantiateMVars decl.type)
          let fvarId ← mkFreshFVarId
          let fvar := mkFVar fvarId;
          let userName ← if decl.userName.isAnonymous then
            pure <| (`x).appendIndexAfter (← get).fvars.size
          else
            pure decl.userName
          modify fun s => {
            s with
            emap  := s.emap.insert mvarId fvar
            fvars := s.fvars.push fvar
            mvars := s.mvars.push e
            lctx  := s.lctx.mkLocalDecl fvarId userName type }
          return fvar

end AbstractMVars

/--
  Abstract (current depth) metavariables occurring in `e`.
  The result contains
  - An array of universe level parameters that replaced universe metavariables occurring in `e`.
  - The metavariables that have been abstracted.
  - And an expression of the form `fun (m_1 : A_1) ... (m_k : A_k) => e'`, where
    `k` equal to the number of (expr) metavariables abstracted, and `e'` is `e` after we
    replace the metavariables.

  Example: given `f.{?u} ?m1` where `?m1 : ?m2 Nat`, `?m2 : Type -> Type`. This function returns
  `{ levels := #[u], size := 2, expr := (fun (m2 : Type -> Type) (m1 : m2 Nat) => f.{u} m1) }`

  This API can be used to "transport" to a different metavariable context.
  Given a new metavariable context, we replace the `AbstractMVarsResult.levels` with
  new fresh universe metavariables, and instantiate the `(m_i : A_i)` in the lambda-expression
  with new fresh metavariables.

  If `levels := false`, then level metavariables are not abstracted.

  Application: we use this method to cache the results of type class resolution.

  Application: tactic `MVarId.abstractMVars`
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractMVars/Variantb23d3deab9fce84db460444e812a7f63c5fa04e4344bc39e45a812ebd7b1c947.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractMVars/Variantb23d3deab9fce84db460444e812a7f63c5fa04e4344bc39e45a812ebd7b1c947.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d971b57f82287e11230c7e63fd790ceaf9ad8ab6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
