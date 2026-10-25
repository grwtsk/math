# lambdaTelescopeImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:752f58e6d336de612b76a8e7d33f8bab28f6920a4d72740b8df020ea1bcf4848",
  "kind": "def",
  "lexical_name": "lambdaTelescopeImp",
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
  "slug": "lambdatelescopeimp--c85fef09e5a30a1fffe8cf19",
  "source": {
    "blob": "20e3e5ee85818ad6002ce0762167e0d6b4cf7186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1657,
    "line": 1618,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c85fef09e5a30a1fffe8cf197f78e90a6f3573874d28367bc5b71f557810a094",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:752f58e6d336de612b76a8e7d33f8bab28f6920a4d72740b8df020ea1bcf4848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1618–1657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def lambdaTelescopeImp (e : Expr) (consumeLambda : Bool) (consumeLet : Bool) (preserveNondepLet : Bool) (nondepLetOnly : Bool) (maxFVars? : Option Nat)
    (k : Array Expr → Expr → MetaM α) (cleanupAnnotations := false) : MetaM α := do
  process consumeLambda consumeLet (← getLCtx) #[] e
where
  process (consumeLambda : Bool) (consumeLet : Bool) (lctx : LocalContext) (fvars : Array Expr) (e : Expr) : MetaM α := do
    let finish (e : Expr) : MetaM α :=
      let e := e.instantiateRevRange 0 fvars.size fvars
      withReader (fun ctx => { ctx with lctx := lctx }) do
        withNewLocalInstancesImp fvars 0 do
          k fvars e
    match fvarsSizeLtMaxFVars fvars maxFVars?, consumeLambda, consumeLet, e with
    | true, true, _, .lam n d b bi =>
      let d := d.instantiateRevRange 0 fvars.size fvars
      let d := if cleanupAnnotations then d.cleanupAnnotations else d
      let fvarId ← mkFreshFVarId
      let lctx := lctx.mkLocalDecl fvarId n d bi
      let fvar := mkFVar fvarId
      process true consumeLet lctx (fvars.push fvar) b
    | true, _, true, .letE n t v b nondep => do
      if !nondep && nondepLetOnly then
        finish e
      else
        let t := t.instantiateRevRange 0 fvars.size fvars
        let t := if cleanupAnnotations then t.cleanupAnnotations else t
        let v := v.instantiateRevRange 0 fvars.size fvars
        let fvarId ← mkFreshFVarId
        let lctx := lctx.mkLetDecl fvarId n t v (nondep && preserveNondepLet)
        let fvar := mkFVar fvarId
        process consumeLambda true lctx (fvars.push fvar) b
    | _, _, _, e =>
      finish e

/--
Similar to `lambdaTelescope` but for lambda and let expressions.

- If `cleanupAnnotations` is `true`, we apply `Expr.cleanupAnnotations` to each type in the telescope.
- If `preserveNondep` is `false`, all `have`s are converted to `let`s.

See also `mapLambdaLetTelescope` for entering and rebuilding the telescope.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean#L1618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20e3e5ee85818ad6002ce0762167e0d6b4cf7186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
