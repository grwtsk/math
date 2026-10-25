# getMethodSpecsInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ddf607292b41144bcf5edd7be87fd7cd140299ecb033c30010050911639f539",
  "kind": "def",
  "lexical_name": "getMethodSpecsInfo",
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
  "slug": "getmethodspecsinfo--f27263bae50ea28d32470017",
  "source": {
    "blob": "b5a044e7073f881a2d20758520c8f8cd6268d57f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f27263bae50ea28d32470017bedaf881f36fcba284ce10e6faad45709b487a49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ddf607292b41144bcf5edd7be87fd7cd140299ecb033c30010050911639f539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getMethodSpecsInfo (instName : Name) : MetaM MethodSpecsInfo := do
  let instInfo ← getConstInfoDefn instName
  let some clsName ← isClass? instInfo.type
    | throwError "expected `{.ofConstName instName}` to be a type class instance, but its \
         type{inlineExpr instInfo.type}does not look like a class."
  let instArity ← forallTelescopeReducing instInfo.type fun xs _ => pure xs.size
  let some structInfo := getStructureInfo? (← getEnv) clsName
    | throwError "`{.ofConstName clsName}` is not a structure"

  lambdaTelescope instInfo.value fun xs body => do
    let inst := mkAppN (mkConst instInfo.name (instInfo.levelParams.map mkLevelParam)) xs
    let clsApp ← instantiateForall instInfo.type xs
    unless xs.size == instArity && (← isConstructorApp body) do
      throwError "the definition of `{.ofConstName instName}` does not have the expected shape"

    let mut fieldImpls := #[]
    let mut thms := #[]
    let mut privateSpecs := false

    for field in structInfo.fieldNames, arg in body.getAppArgsN structInfo.fieldNames.size do
      if (← isProof arg) then continue
      let arg := arg.eta
      let f := arg.getAppFn
      let ys := arg.getAppArgs
      unless f.isConst do
        throwError "field `{field}` of the instance is not an application of a constant"
      unless f.constLevels! == instInfo.levelParams.map mkLevelParam do
        throwError "function `{f}` is called with universe parameters\n  {f.constLevels!}\nwhich differs from \
          the instances' universe parameters\n  {instInfo.levelParams.map mkLevelParam}"
      unless xs == ys do
        throwError "function `{f}` does not take its arguments in the same order as the instance"
      let implName := f.constName!
      let env ← getEnv
      let isExposed := env.hasExposedBody implName
      unless isExposed do
        privateSpecs := true
      -- Construct the replacement theorems
      let some fieldInfo := getFieldInfo? (← getEnv) clsName field
        | throwError "internal error: could not find field {field} in structure {clsName}"
      let lhs := arg
      let projFn := mkConst fieldInfo.projFn clsApp.getAppFn.constLevels!
      let rhs := mkAppN projFn (clsApp.getAppArgs ++ #[inst])
      let eq ← mkEq lhs rhs
      let thm ← mkForallFVars xs eq
      unless (← isDefEq lhs rhs) do
        throwError "internal error: equation `{eq}` does not hold definitionally"
      fieldImpls := fieldImpls.push (field, implName)
      thms := thms.push { name := implName, levelParams := instInfo.levelParams, type := thm }
    trace[Meta.MethodSpecs] "MethodSpecs for {instName}:\n{fieldImpls}\n\
      thms: {thms.map (·.type)}\nprivateSpecs: {privateSpecs}"

    return {clsName, fieldImpls, thms, privateSpecs}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5a044e7073f881a2d20758520c8f8cd6268d57f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
