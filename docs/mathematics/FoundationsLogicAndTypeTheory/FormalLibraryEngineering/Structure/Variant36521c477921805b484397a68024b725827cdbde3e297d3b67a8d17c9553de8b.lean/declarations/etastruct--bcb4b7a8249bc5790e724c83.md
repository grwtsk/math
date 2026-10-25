# etaStruct?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a83c3119e8aa8c21edd568ba10ecd693217012f91bf47128493da19dd7a03c7",
  "kind": "def",
  "lexical_name": "etaStruct?",
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
  "slug": "etastruct--bcb4b7a8249bc5790e724c83",
  "source": {
    "blob": "5cc777ee07f5b1b7fdcdcb709be596b94be0081a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcb4b7a8249bc5790e724c830b27f41a087cbb969d3ff1b767efed6e72f0d523",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a83c3119e8aa8c21edd568ba10ecd693217012f91bf47128493da19dd7a03c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def etaStruct? (e : Expr) (p : Name → Bool) : MetaM (Option Expr) := do
  let .const ctor _ := e.getAppFn | return none
  let some fVal ← isCtor? ctor | return none
  unless p fVal.induct do return none
  unless 0 < fVal.numFields && e.getAppNumArgs == fVal.numParams + fVal.numFields do return none
  let args := e.getAppArgs
  let params := args.extract 0 fVal.numParams
  let some x ← getProjectedExpr ctor fVal.induct params 0 args[fVal.numParams]! none | return none
  for i in 1...fVal.numFields do
    let arg := args[fVal.numParams + i]!
    let some x' ← getProjectedExpr ctor fVal.induct params i arg x | return none
    unless x' == x do return none
  return x
where
  sameParams (params1 params2 : Array Expr) : MetaM Bool := withNewMCtxDepth do
    if params1.size == params2.size then
      for p1 in params1, p2 in params2 do
        unless ← isDefEqGuarded p1 p2 do
          return false
      return true
    else
      return false
  /--
  Given an expression `e` that's either a native projection or a registered projection
  function, gives the object being projected.
  Checks that the parameters are defeq to `params`, that the projection index is equal to `idx`,
  and, if `x?` is provided, that the object being projected is equal to it.
  -/
  getProjectedExpr (ctor induct : Name) (params : Array Expr) (idx : Nat) (e : Expr) (x? : Option Expr) : MetaM (Option Expr) := do
    if let .proj S i x := e then
      if i == idx && induct == S && (x? |>.map (· == x) |>.getD true) then
        let ety ← whnf (← inferType e)
        let params' := ety.getAppArgs
        if ← sameParams params params' then
          return x
      return none
    if let .const fn _ := e.getAppFn then
      if let some info ← getProjectionFnInfo? fn then
        if info.ctorName == ctor && info.i == idx && e.getAppNumArgs == info.numParams + 1 then
          let x := e.appArg!
          if (x? |>.map (· == x) |>.getD true) then
            let params' := e.appFn!.getAppArgs
            if ← sameParams params params' then
              return e.appArg!
    return none

/--
Eta reduces all structures satisfying `p` in the whole expression.

See `etaStruct?` for reducing single expressions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cc777ee07f5b1b7fdcdcb709be596b94be0081a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
