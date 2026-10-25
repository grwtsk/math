# etaStruct?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:208195cccf8ebe234fb06f225e20b1cc439a02ac7429d6152d28472b70194322",
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
  "slug": "etastruct--40be43495c6ead85a83f6431",
  "source": {
    "blob": "131b774c312459c025a2c4021f69ec6cb0b02045",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40be43495c6ead85a83f643196336597d9f34deb4b6d43f9b29a9204fb534288",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:208195cccf8ebe234fb06f225e20b1cc439a02ac7429d6152d28472b70194322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–177.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `131b774c312459c025a2c4021f69ec6cb0b02045` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
