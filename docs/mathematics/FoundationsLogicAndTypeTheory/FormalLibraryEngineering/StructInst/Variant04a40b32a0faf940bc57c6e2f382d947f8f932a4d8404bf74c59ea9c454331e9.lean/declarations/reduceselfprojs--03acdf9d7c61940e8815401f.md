# reduceSelfProjs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f1f7bec9a309ccc2c6a4f87879b37f81e6076326db82b856e3fd7898fce609c",
  "kind": "def",
  "lexical_name": "reduceSelfProjs",
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
  "slug": "reduceselfprojs--03acdf9d7c61940e8815401f",
  "source": {
    "blob": "a8d89a25282acd94a5769cecd00572cb209ef82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1001,
    "line": 959,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03acdf9d7c61940e8815401f417db1a0797ffd817b63b6230ed841e708630fdd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f1f7bec9a309ccc2c6a4f87879b37f81e6076326db82b856e3fd7898fce609c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 959–1001.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def reduceSelfProjs (self : Expr) (e : Expr) : StructInstM Expr := do
  let e ← instantiateMVars e
  Meta.transform (skipConstInApp := true) e (pre := replaceParentProj)
where
  /-- If `e` is a subobject projection from a structure type that is in `structNameSet`,
  return the name of the structure being projected to and the object being projected. -/
  parentProjInfo? (e : Expr) : StructInstM (Option (Name × Expr)) := do
    let env ← getEnv
    let .const c@(.str _ field) _ := e.getAppFn | return none
    let some info := env.getProjectionFnInfo? c | return none
    let some (.ctorInfo cVal) := env.find? info.ctorName | return none
    let numArgs := e.getAppNumArgs
    unless numArgs == cVal.numParams + 1 do return none
    unless (← get).structNameSet.contains cVal.induct do return none
    let some parentStruct := isSubobjectField? env cVal.induct (Name.mkSimple field) | return none
    return (parentStruct, e.appArg!)
  /-- Recursively applies `parentProjInfo?`. -/
  withoutParentProj? (e : Expr) : StructInstM (Option (Name × Expr)) := do
    let some (field, e') ← parentProjInfo? e | return none
    let some (_, e'') ← withoutParentProj? e.appArg! | return (field, e')
    return (field, e'')
  replaceParentProj (e : Expr) : StructInstM TransformStep := do
    let some (parentName, x) ← withoutParentProj? e | return .continue
    unless x == self do return .continue
    let parentFields := getStructureFieldsFlattened (← getEnv) parentName (includeSubobjectFields := false)
    let fieldMap := (← get).fieldMap
    -- Unless every field is present, we cannot eliminate this expression or any subexpressions
    unless parentFields.all fieldMap.contains do return .done e
    let type ← whnf (← inferType e)
    let .const _ us := type.getAppFn | return .done e
    let params := type.getAppArgs
    let ctor := getStructureCtor (← getEnv) parentName
    unless params.size == ctor.numParams do return .done e
    let flatCtorName := mkFlatCtorOfStructCtorName ctor.name
    let cinfo ← getConstInfo flatCtorName
    let ctorVal ← instantiateValueLevelParams cinfo us
    let fieldArgs := parentFields.map (fieldMap.get! ·)
    -- Normalize the expressions since there might be some projections.
    let params ← params.mapM normalizeExpr
    let e' := (ctorVal.beta params).beta fieldArgs
    -- Continue, since we need to reduce the parameters.
    return .continue e'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean#L959).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d89a25282acd94a5769cecd00572cb209ef82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
