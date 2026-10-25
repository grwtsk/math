# mkKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f41590177620ed2d866b3cac4e46347c46cd9bda65c7f319a7da4a526e4d5b01",
  "kind": "def",
  "lexical_name": "mkKey",
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
  "slug": "mkkey--ab3dd79c76e7999d2c80b5d4",
  "source": {
    "blob": "5869b011af357a144d1cfbb2ffdf66565ea952be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalizer/Varianta23e640914397055d3daff21adb6f57ef4420dd481ec77a0c31dac7fde966bac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab3dd79c76e7999d2c80b5d43a159a532b1b05615e85dc0be94be2daf7623aa0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalizer/Varianta23e640914397055d3daff21adb6f57ef4420dd481ec77a0c31dac7fde966bac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f41590177620ed2d866b3cac4e46347c46cd9bda65c7f319a7da4a526e4d5b01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def mkKey (e : Expr) : CanonM UInt64 := do
  if let some hash := unsafe (← get).cache.get? { e } then
    return hash
  else
    let key ← match e with
      | .sort .. | .fvar .. | .bvar .. | .lit .. =>
        return hash e
      | .const n _ =>
        return n.hash
      | .mvar .. =>
        -- We instantiate assigned metavariables because the
        -- pretty-printer also instantiates them.
        let eNew ← instantiateMVars e
        if eNew == e then return hash e else mkKey eNew
      | .mdata _ a => mkKey a
      | .app .. =>
        let f := e.getAppFn
        if f.isMVar then
          let eNew ← instantiateMVars e
          unless eNew == e do
            return (← mkKey eNew)
        let info ← if f.hasLooseBVars then
          -- If `f` has loose bound variables, `getFunInfo` will fail.
          -- This can only happen if `f` contains local variables.
          -- Instead we use an empty `FunInfo`, which results in the
          -- `i < info.paramInfo.size` check below failing for all indices,
          -- and hence mixing in the hash for all arguments.
          pure {}
        else
          getFunInfo f
        let mut k ← mkKey f
        for i in *...e.getAppNumArgs do
          if h : i < info.paramInfo.size then
            let info := info.paramInfo[i]
            if info.isExplicit && !info.isProp then
              k := mixHash k (← mkKey (e.getArg! i))
          else
              k := mixHash k (← mkKey (e.getArg! i))
        return k
      | .lam n t b bi
      | .forallE n t b bi =>
        -- Note that we do not use `withLocalDecl` here, for performance reasons.
        -- Instead we have a guard for loose bound variables in the `.app` case above.
        return mixHash (← mkKey t) (← mkKey b)
      | .letE n t v b _ =>
        -- Similarly, we do not use `withLetDecl` here.
        return mixHash (← mkKey v) (← mkKey b)
      | .proj _ i s =>
        return mixHash i.toUInt64 (← mkKey s)
    unsafe modify fun { cache, keyToExprs} => { keyToExprs, cache := cache.insert { e } key }
    return key

/--
"Canonicalize" the given expression.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalizer/Varianta23e640914397055d3daff21adb6f57ef4420dd481ec77a0c31dac7fde966bac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalizer/Varianta23e640914397055d3daff21adb6f57ef4420dd481ec77a0c31dac7fde966bac.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5869b011af357a144d1cfbb2ffdf66565ea952be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
