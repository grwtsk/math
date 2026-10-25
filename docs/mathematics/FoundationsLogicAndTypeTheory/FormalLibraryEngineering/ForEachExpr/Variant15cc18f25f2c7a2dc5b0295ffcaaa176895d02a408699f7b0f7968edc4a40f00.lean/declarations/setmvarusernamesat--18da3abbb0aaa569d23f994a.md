# setMVarUserNamesAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9d78376b3a380f29cacf2439b152db4ac23432afc5257743207bc7d0b72f2cd",
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
  "slug": "setmvarusernamesat--18da3abbb0aaa569d23f994a",
  "source": {
    "blob": "ce0c213fd55af28d4f2de47dba8490620f0aff6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant15cc18f25f2c7a2dc5b0295ffcaaa176895d02a408699f7b0f7968edc4a40f00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18da3abbb0aaa569d23f994a5c892eebeb082c8eea85c9d678a73b336fe8f1fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant15cc18f25f2c7a2dc5b0295ffcaaa176895d02a408699f7b0f7968edc4a40f00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9d78376b3a380f29cacf2439b152db4ac23432afc5257743207bc7d0b72f2cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–115.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant15cc18f25f2c7a2dc5b0295ffcaaa176895d02a408699f7b0f7968edc4a40f00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant15cc18f25f2c7a2dc5b0295ffcaaa176895d02a408699f7b0f7968edc4a40f00.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce0c213fd55af28d4f2de47dba8490620f0aff6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
