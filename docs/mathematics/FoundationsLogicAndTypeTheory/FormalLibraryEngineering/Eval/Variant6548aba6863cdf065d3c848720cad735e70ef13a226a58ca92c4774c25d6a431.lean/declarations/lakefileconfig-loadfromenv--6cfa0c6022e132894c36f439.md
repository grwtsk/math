# LakefileConfig.loadFromEnv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b83d334853b4862bb16628fd245aa90e6e495ef6b9f4710ee24690e17ee715d",
  "kind": "def",
  "lexical_name": "LakefileConfig.loadFromEnv",
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
  "slug": "lakefileconfig-loadfromenv--6cfa0c6022e132894c36f439",
  "source": {
    "blob": "a3d5397599629791a72cf034da52608f066e8922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cfa0c6022e132894c36f43961308338b89151d1bd16510cd5dcabf1ed4acb5c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b83d334853b4862bb16628fd245aa90e6e495ef6b9f4710ee24690e17ee715d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def LakefileConfig.loadFromEnv
  (env : Environment) (opts : Options)
: LogIO LakefileConfig := do

  -- load package declaration
  let pkgDecl ← IO.ofExcept <| PackageDecl.loadFromEnv env opts
  let prettyName := pkgDecl.baseName.toString (escape := false)
  let keyName := pkgDecl.keyName

  -- load target, script, hook, and driver configurations
  let constTargetMap ← IO.ofExcept <| mkOrdTagMap env targetAttr fun name => do
    evalConstCheck env opts ConfigDecl name
  let targetDecls ← constTargetMap.toArray.mapM fun decl => do
    if h : decl.pkg = keyName then
      return .mk decl h
    else
      error s!"target '{decl.name}' was defined in package '{decl.pkg}', \
        but registered under '{keyName}'"
  let targetDeclMap ← targetDecls.foldlM (init := {}) fun m decl => do
    if let some orig := m.get? decl.name then
      error s!"{prettyName}: target '{decl.name}' was already defined as a '{orig.kind}', \
        but then redefined as a '{decl.kind}'"
    else
      return m.insert decl.name (.mk decl rfl)
  -- Check that executables have distinct root module names
  let _ ← targetDecls.foldlM (init := ({} : Lean.NameMap Name)) fun exeRoots decl => do
    if let some exeConfig := decl.config? LeanExe.configKind then
      let root := exeConfig.root
      if let some origExe := exeRoots.get? root then
        error s!"{prettyName}: executable '{decl.name}' has the same root module '{root}' \
          as executable '{origExe}'"
      else
        return exeRoots.insert root decl.name
    else
      return exeRoots
  let defaultTargets ← defaultTargetAttr.getAllEntries env |>.mapM fun name =>
    if let some decl := constTargetMap.find? name then pure decl.name else
      error s!"{prettyName}: package is missing target '{name}' marked as a default"
  let scripts ← mkTagMap env scriptAttr fun scriptName => do
    let name := prettyName ++ "/" ++ scriptName.toString (escape := false)
    let fn ← IO.ofExcept <| evalConstCheck env opts ScriptFn scriptName
    return {name, fn, doc? := ← findDocString? env scriptName : Script}
  let defaultScripts ← defaultScriptAttr.getAllEntries env |>.mapM fun name =>
    if let some script := scripts.get? name then pure script else
      error s!"{prettyName}: package is missing script '{name}' marked as a default"
  let postUpdateHooks ← postUpdateAttr.getAllEntries env |>.mapM fun name =>
    match evalConstCheck env opts PostUpdateHookDecl name with
    | .ok decl =>
      if h : decl.pkg = keyName then
        return OpaquePostUpdateHook.mk ⟨cast (by rw [h]) decl.fn⟩
      else
        error s!"post-update hook was defined in '{decl.pkg}', but was registered in '{keyName}'"
    | .error e => error e
  let depConfigs ← IO.ofExcept <| packageDepAttr.getAllEntries env |>.mapM fun name =>
    evalConstCheck env opts Dependency name
  let testDrivers ← testDriverAttr.getAllEntries env |>.mapM fun name =>
    if let some decl := constTargetMap.find? name then
      return decl.name
    else if scripts.contains name then
      return name
    else
      error s!"{prettyName}: package is missing script or target '{name}' marked as a test driver"
  let testDriver ← id do
    if testDrivers.size > 1 then
      error s!"{prettyName}: only one script, executable, or library can be tagged @[test_driver]"
    else if h : testDrivers.size > 0 then
      if pkgDecl.config.testDriver.isEmpty then
        return (testDrivers[0]'h |>.toString)
      else
        error s!"{prettyName}: cannot both set testDriver and use @[test_driver]"
    else
      return pkgDecl.config.testDriver
  let lintDrivers ← lintDriverAttr.getAllEntries env |>.mapM fun name =>
    if let some decl := constTargetMap.find? name then
      return decl.name
    else if scripts.contains name then
      return name
    else
      error s!"{prettyName}: package is missing script or target '{name}' marked as a lint driver"
  let lintDriver ← id do
    if lintDrivers.size > 1 then
      error s!"{prettyName}: only one script or executable can be tagged @[lint_driver]"
    else if h : lintDrivers.size > 0 then
      if pkgDecl.config.lintDriver.isEmpty then
        return (lintDrivers[0]'h |>.toString)
      else
        error s!"{prettyName}: cannot both set lintDriver and use @[lint_driver]"
    else
      return pkgDecl.config.lintDriver

  -- load facets
  let facetDecls ← IO.ofExcept do
    let mut decls : Array FacetDecl := #[]
    for name in moduleFacetAttr.getAllEntries env do
      let decl ← evalConstCheck env opts ModuleFacetDecl name
      decls :=  decls.push {decl with config := decl.config.toFacetConfig}
    for name in packageFacetAttr.getAllEntries env do
      let decl ← evalConstCheck env opts PackageFacetDecl name
      decls := decls.push  {decl with config := decl.config.toFacetConfig}
    for name in libraryFacetAttr.getAllEntries env do
      let decl ← evalConstCheck env opts LibraryFacetDecl name
      decls := decls.push  {decl with config := decl.config.toFacetConfig}
    return decls

  -- Fill in the Package
  return {
    pkgDecl, depConfigs, facetDecls,
    targetDecls, targetDeclMap, defaultTargets,
    scripts, defaultScripts,
    testDriver, lintDriver,
    postUpdateHooks,
  }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d5397599629791a72cf034da52608f066e8922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
