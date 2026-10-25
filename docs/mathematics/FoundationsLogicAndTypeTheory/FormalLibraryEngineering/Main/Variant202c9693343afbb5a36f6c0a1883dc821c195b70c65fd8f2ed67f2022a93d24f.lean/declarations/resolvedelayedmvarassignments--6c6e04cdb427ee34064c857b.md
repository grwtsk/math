# resolveDelayedMVarAssignments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d8eac83556299c2dd8399b8fab6bba28b2d318eee6fe59a50d75a0d0fb57176",
  "kind": "def",
  "lexical_name": "resolveDelayedMVarAssignments",
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
  "slug": "resolvedelayedmvarassignments--6c6e04cdb427ee34064c857b",
  "source": {
    "blob": "40b37f115f24c3808213a11fef1c721a999bb885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 424,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c6e04cdb427ee34064c857bf0e4995cf53d0c818c9ab7054b59e7dbf778552c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d8eac83556299c2dd8399b8fab6bba28b2d318eee6fe59a50d75a0d0fb57176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def resolveDelayedMVarAssignments (e : Expr) : MetaM Expr := do
  if !e.hasMVar then return e
  let e ← go e
  -- Ensure no metavariables at the current depth remain. They would become
  -- dangling references after `withNewMCtxDepth` restores the metavariable context.
  let mctx ← getMCtx
  for mvarId in (e.collectMVars {}).result do
    if let some decl := mctx.findDecl? mvarId then
      if decl.depth == mctx.depth then
        throwError "`grind` failed, proof contains unresolved internal metavariable {Expr.mvar mvarId}"
  return e
where
  go (e : Expr) : MetaM Expr := do
    let mctx ← getMCtx
    let mvars := (e.collectMVars {}).result
    for mvarId in mvars do
      if let some decl := mctx.findDecl? mvarId then
        if decl.depth == mctx.depth then
          if let some { fvars, mvarIdPending } ← getDelayedMVarAssignment? mvarId then
            if let some val ← getExprMVarAssignment? mvarIdPending then
              let pendingDecl ← mvarIdPending.getDecl
              let val ← go (← instantiateMVars val)
              mvarId.assign (pendingDecl.lctx.mkLambda fvars val)
    instantiateMVars e

/--
A helper combinator for executing a `grind`-based terminal tactic.
Given an input goal `mvarId`, it cleans up local hypotheses corresponding to internal details,
creates an auxiliary meta-variable `mvarId'`, and executes `k mvarId'`.
`withNewMCtxDepth` is used to prevent metavariables from being accidentally assigned by
`grind`'s `isDefEq` calls. After `grind` finishes, delayed metavariable assignments are
resolved, and the resulting proof is assigned to the original goal.

See issue #11806 and issue #12242 for motivating examples.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40b37f115f24c3808213a11fef1c721a999bb885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
