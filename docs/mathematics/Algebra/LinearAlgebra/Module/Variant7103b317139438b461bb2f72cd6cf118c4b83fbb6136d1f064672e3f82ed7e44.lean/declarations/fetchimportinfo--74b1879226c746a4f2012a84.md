# fetchImportInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6df32383f2e4f9b7eb85d2642142e0566f1c7a7fbe81e03815fbff92f8c0ee6",
  "kind": "def",
  "lexical_name": "fetchImportInfo",
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
  "slug": "fetchimportinfo--74b1879226c746a4f2012a84",
  "source": {
    "blob": "3e86af6463090dc2137ba05b5b4fed84e5d42a26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 388,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74b1879226c746a4f2012a84ad0b1ee0da9c53d152d7cbdbfd9642ce2ade6b84",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6df32383f2e4f9b7eb85d2642142e0566f1c7a7fbe81e03815fbff92f8c0ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fetchImportInfo
  (fileName : String) (pkgName modName : Name) (header : ModuleHeader)
  (allowNonModules : Bool := false)
: FetchM (Job ModuleImportInfo) := do
  let nonModule := !header.isModule
  let info := ModuleImportInfo.nil modName
  let impArtsJob : Job ModuleImportInfo := .pure info
  header.imports.foldlM (init := impArtsJob) fun s imp => do
    if modName = imp.module then
      logError s!"{fileName}: module imports itself"
      return .error
    let mods ← findModules imp.module
    if nonModule && !allowNonModules then
      if let some mod := mods.find? (·.requiresModuleSystem) then
        if pkgName == mod.pkg.keyName then
          logWarning s!"{fileName}: missing `module` header as required \
            by the `requiresModuleSystem` option"
        else
          logWarning s!"{fileName}: imports `{imp.module}` from package \
            `{mod.pkg.prettyName}`, which is designed for use with the module \
            system; consider adding `module` to the start of this file"
    let n := mods.size
    if h : n = 0 then
      return s
    else if n = 1 then -- common fast path
      let mod := mods[0]
      -- Remark: We've decided to disable this check for now
      -- if imp.importAll && !mod.allowImportAll && pkgName != mod.pkg.keyName then
      --   logError s!"{fileName}: cannot `import all` \
      --     the module `{imp.module}` from the package `{mod.pkg.discriminant}`"
      --   return .error
      let importJob ← mod.exportInfo.fetch
      return s.zipWith (sync := true) (·.addImport nonModule imp ·) importJob
    else
      -- Remark: We've decided to disable this check for now
      -- let isImportable (mod) :=
      --   mod.allowImportAll || pkgName == mod.pkg.keyName
      -- let allImportable :=
      --   if imp.importAll then
      --     mods.all isImportable
      --   else true
      -- unless allImportable do
      --   let msg := s!"{fileName}: cannot `import all` the module `{imp.module}` \
      --     from the following packages:"
      --   let msg := mods.foldl (init := msg) fun msg mod =>
      --     if isImportable mod then
      --       msg
      --     else
      --       s!"{msg}\n  {mod.pkg.discriminant}"
      --   logError msg
      --   return .error
      let mods : Vector Module n := .mk mods rfl
      let expInfosJob ← Job.collectVector <$> mods.mapM (·.exportInfo.fetch)
      s.bindM (sync := true) fun impInfo => do
      expInfosJob.mapM (sync := true) fun expInfos => do
        let expInfo := expInfos[0]
        let impHash := expInfo.disambiguationHash nonModule imp
        let allEquiv := expInfos.toArray.all (start := 1) fun expInfo =>
          impHash == expInfo.disambiguationHash nonModule imp
        unless allEquiv do
          let msg := s!"{fileName}: could not disambiguate the module `{imp.module}`; \
            multiple packages provide distinct definitions:"
          let msg := n.fold (init := msg) fun i h s =>
            let hash := expInfos[i].disambiguationHash nonModule imp
            s!"{s}\n  {mods[i].pkg.discriminant} (hash: {hash})"
          error msg
        return impInfo.addImport nonModule imp expInfo

/-- The `ModuleFacetConfig` for the builtin `importInfoFacet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e86af6463090dc2137ba05b5b4fed84e5d42a26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
