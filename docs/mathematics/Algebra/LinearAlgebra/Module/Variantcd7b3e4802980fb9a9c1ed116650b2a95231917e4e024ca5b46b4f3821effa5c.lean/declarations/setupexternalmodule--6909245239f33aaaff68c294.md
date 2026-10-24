# setupExternalModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eefe0f25eb70ef9d3bebad3e2c86a878711ad124c6f051e46e38ccf9f277df09",
  "kind": "def",
  "lexical_name": "setupExternalModule",
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
  "slug": "setupexternalmodule--6909245239f33aaaff68c294",
  "source": {
    "blob": "1266fd0bf4094833269c7f4467edf175e110db67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1489,
    "line": 1451,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6909245239f33aaaff68c2943da6763b71a0e06f6c12e3a12e12a6648113a5bb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eefe0f25eb70ef9d3bebad3e2c86a878711ad124c6f051e46e38ccf9f277df09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1451–1489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setupExternalModule
  (fileName : String) (header : ModuleHeader) (leanOpts : LeanOptions)
: FetchM (Job ModuleSetup) := do
  let root ← getRootPackage
  let extraDepJob ← root.extraDep.fetch
  let imports ← header.imports.mapM fun imp => do
    return ⟨imp, ← findModule? imp.module⟩
  let localImports := imports.filterMap (·.module?)
  let impInfoJob ← fetchImportInfo fileName .anonymous .anonymous header
  let precompileImports ← (← computePrecompileImportsAux fileName localImports).await
  let impLibsJob ← fetchImportLibs precompileImports
  let externLibsJob ← Job.collectArray <$>
    if root.precompileModules then root.externLibs.mapM (·.dynlib.fetch) else pure #[]
  let dynlibsJob ← root.dynlibs.fetchIn root
  let pluginsJob ← root.plugins.fetchIn root
  extraDepJob.bindM (sync := true) fun _ =>
  impInfoJob.bindM (sync := true) fun info =>
  impLibsJob.bindM (sync := true) fun impLibs =>
  dynlibsJob.bindM (sync := true) fun dynlibs =>
  pluginsJob.bindM (sync := true) fun plugins =>
  externLibsJob.mapM fun externLibs => do
    let {dynlibs, plugins} ← computeModuleDeps impLibs externLibs dynlibs plugins
    let transImpArts ← fetchTransImportArts imports info.directArts !header.isModule
    return {
      name := `_unknown
      isModule := header.isModule
      imports? := none
      importArts := transImpArts
      dynlibs := dynlibs.map (·.path)
      plugins := plugins.map (·.path)
      options := leanOpts
    }

/--
Computes the module setup of edited Lean code for the Lean language server,
building its imports and other dependencies. Used by `lake setup-file`.

Due to its exclusive use as a top-level build, it does not construct a proper trace state.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean#L1451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1266fd0bf4094833269c7f4467edf175e110db67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
