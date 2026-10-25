# isNextOutParamOfLocalInstanceAndResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:384a657fd9e633c401d480ab827cab378010bba6cc133c6728bad66cdca84833",
  "kind": "def",
  "lexical_name": "isNextOutParamOfLocalInstanceAndResult",
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
  "slug": "isnextoutparamoflocalinstanceandresult--db72aa1712d742f0e5a57ff6",
  "source": {
    "blob": "b72a9e10f27f1a68631935a63623f43ea5fdc36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 681,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db72aa1712d742f0e5a57ff6a8454d4d045df2eb857fda718ba4ffb4f2741a91",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:384a657fd9e633c401d480ab827cab378010bba6cc133c6728bad66cdca84833`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def isNextOutParamOfLocalInstanceAndResult : M Bool := do
  unless (← read).resultIsOutParamSupport && (← get).resultTypeOutParam?.isNone do
    return false
  let type := (← get).fType.bindingBody!
  unless isResultType type 0 do
    return false
  if hasLocalInstanceWithOutParams (← getEnv) type then
    let x := mkFVar (← mkFreshFVarId)
    isOutParamOfLocalInstance x (type.instantiate1 x)
  else
    return false
where
  isResultType (type : Expr) (i : Nat) : Bool :=
    match type with
    | .forallE _ _ b _ => isResultType b (i + 1)
    | .bvar idx        => idx == i
    | _                => false

  /-- (quick filter) Return true if `type` contains a binder `[C ...]` where `C` is a class containing outparams. -/
  hasLocalInstanceWithOutParams (env : Environment) (type : Expr) : Bool := Id.run do
    let .forallE _ d b bi := type | return false
    if bi.isInstImplicit then
      if let .const declName .. := d.getAppFn then
        if hasOutParams env declName then
          return true
    hasLocalInstanceWithOutParams env b

  isOutParamOfLocalInstance (x : Expr) (type : Expr) : MetaM Bool := do
    let .forallE _ d b bi := type | return false
    if bi.isInstImplicit then
      if let c@(.const declName ..) := d.getAppFn then
        if hasOutParams (← getEnv) declName then
          let cType ← inferType c
          if (← isOutParamOf x 0 d.getAppArgs cType) then
            return true
    isOutParamOfLocalInstance x b

  isOutParamOf (x : Expr) (i : Nat) (args : Array Expr) (cType : Expr) : MetaM Bool := do
    if h : i < args.size then
      match (← whnf cType) with
      | .forallE _ d b _ =>
        if args[i] == x && d.isOutParam then
          return true
        isOutParamOf x (i+1) args b
      | _ => return false
    else
      return false

mutual
  /--
  Create a fresh local variable with the current binder name and argument type, add it to `etaArgs` and `f`,
  and then execute the main loop.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72a9e10f27f1a68631935a63623f43ea5fdc36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
