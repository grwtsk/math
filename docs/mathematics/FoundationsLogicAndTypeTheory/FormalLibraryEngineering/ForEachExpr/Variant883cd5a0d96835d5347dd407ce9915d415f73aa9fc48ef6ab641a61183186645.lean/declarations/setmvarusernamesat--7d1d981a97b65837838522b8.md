# setMVarUserNamesAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:588184b31e6af5936416856af41dc9580bcde3353c975d11c239a0f6a85201da",
  "kind": "def",
  "lexical_name": "setMVarUserNamesAt",
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
  "slug": "setmvarusernamesat--7d1d981a97b65837838522b8",
  "source": {
    "blob": "c7b122754019f5a29c19b51e99cee99cf37a0df0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d1d981a97b65837838522b88e11b1ecee1af060c40d576bb2530b103ef66fa0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:588184b31e6af5936416856af41dc9580bcde3353c975d11c239a0f6a85201da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setMVarUserNamesAt (e : Expr) (isTarget : Array Expr) : MetaM (Array MVarId) := do
  let toReset ← IO.mkRef #[]
  forEachExpr (← instantiateMVars e) fun e => do
    if e.isApp then
      let args := e.getAppArgs
      for h : i in *...args.size do
        let arg := args[i]
        if arg.isMVar && isTarget.contains arg then
          let mvarId := arg.mvarId!
          if (← mvarId.getDecl).userName.isAnonymous then
            forallBoundedTelescope (← inferType e.getAppFn) (some (i+1)) fun xs _ => do
              if i < xs.size then
                let mvarId := arg.mvarId!
                let userName ← mkFreshUserName (← getFVarLocalDecl xs[i]!).userName
                toReset.modify (·.push mvarId)
                modifyMCtx fun mctx => mctx.setMVarUserNameTemporarily mvarId userName
  toReset.get

/--
  Remove user facing name for metavariables in `toReset`.
  This a low-level method for "undoing" the effect of `setMVarUserNamesAt`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7b122754019f5a29c19b51e99cee99cf37a0df0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
