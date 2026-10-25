# normalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82e38127a62b586814220e12fe4e5410e94152cca27f691d1f4eb391286468aa",
  "kind": "def",
  "lexical_name": "normalize",
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
  "slug": "normalize--caa598eae6fb90f2a21c08ee",
  "source": {
    "blob": "4df90954a89531a08e5cf1aac0d9095d7a7009ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 507,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:caa598eae6fb90f2a21c08ee43cd0bdf9654a3925bebf0c8d56b7f50ac92a1ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82e38127a62b586814220e12fe4e5410e94152cca27f691d1f4eb391286468aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def normalize (e : Expr) : M Expr := do
  match inaccessible? e with
  | some e => processInaccessible e
  | none =>
  match patternWithRef? e with
  | some (ref, e) => return mkPatternWithRef (← normalize e) ref
  | none =>
    match e.arrayLit? with
    | some (α, lits) => mkArrayLit α (← lits.mapM normalize)
    | none =>
      if let some e := Match.isNamedPattern? e then
        let x := e.getArg! 1
        let p := e.getArg! 2
        let h := e.getArg! 3
        unless x.consumeMData.isFVar && h.consumeMData.isFVar do
          throwError "Unexpected occurrence of auxiliary declaration 'namedPattern'"
        addVar x
        let p ← normalize p
        addVar h
        return mkApp4 e.getAppFn (e.getArg! 0) x p h
      else if (← isMatchValue e) then
        return e
      else if e.isFVar then
        if (← isExplicitPatternVar e) then
          processVar e
        else
          return mkInaccessible e
      else if e.getAppFn.isMVar then
        let eNew ← instantiateMVars e
        if eNew != e then
          withMVar e.getAppFn.mvarId! <| normalize eNew
        else if e.isMVar then
          withMVar e.mvarId! <| processVar e
        else
          throwInvalidPattern e
      else
        let eNew ← whnfPreservingPatternRef e
        if eNew != e then
          normalize eNew
        else
          matchConstCtor e.getAppFn
            (fun _ => return mkInaccessible (← eraseInaccessibleAnnotations (← instantiateMVars e)))
            (fun v _ => do
              let args := e.getAppArgs
              unless args.size == v.numParams + v.numFields do
                throwInvalidPattern e
              let params := args.extract 0 v.numParams
              let params ← params.mapM fun p => instantiateMVars p
              let fields := args.extract v.numParams args.size
              let fields ← fields.mapM normalize
              return mkAppN e.getAppFn (params ++ fields))
where
  addVar (e : Expr) : M Unit := do
    let e ← erasePatternRefAnnotations e
    unless (← get).patternVars.contains e do
      modify fun s => { s with patternVars := s.patternVars.push e }

  processVar (e : Expr) : M Expr := do
    let e' ← erasePatternRefAnnotations e
    if (← get).patternVars.contains e' then
      return mkInaccessible (← eraseInaccessibleAnnotations e)
    else
      if e'.isMVar then
        e'.mvarId!.setTag (← read).userName
      modify fun s => { s with patternVars := s.patternVars.push e' }
      return e

  processInaccessible (e : Expr) : M Expr := do
    let e' ← erasePatternRefAnnotations e
    match e' with
    | Expr.fvar _ =>
      if (← isExplicitPatternVar e') then
        processVar e
      else
        return mkInaccessible e
    | _ =>
      if e'.getAppFn.isMVar then
        let eNew ← instantiateMVars e'
        if eNew != e' then
          withMVar e'.getAppFn.mvarId! <| processInaccessible eNew
        else if e'.isMVar then
          withMVar e'.mvarId! <| processVar e'
        else
          throwInvalidPattern e
      else
        return mkInaccessible (← eraseInaccessibleAnnotations (← instantiateMVars e))

/--
  Auxiliary function for combining the `matchType` and all patterns into a single expression.
  We use it before we abstract all patterns variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4df90954a89531a08e5cf1aac0d9095d7a7009ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
