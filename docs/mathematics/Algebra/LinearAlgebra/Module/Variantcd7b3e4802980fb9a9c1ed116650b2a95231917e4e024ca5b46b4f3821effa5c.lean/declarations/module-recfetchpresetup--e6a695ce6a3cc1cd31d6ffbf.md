# Module.recFetchPreSetup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3da2a1f123008903f6ba6f06bf357ef3372fb4d8632c1904f36731bb85f1b0b",
  "kind": "def",
  "lexical_name": "Module.recFetchPreSetup",
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
  "slug": "module-recfetchpresetup--e6a695ce6a3cc1cd31d6ffbf",
  "source": {
    "blob": "1266fd0bf4094833269c7f4467edf175e110db67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 533,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6a695ce6a3cc1cd31d6ffbf4adb84f257c7c672537faaf908e4a753d3044862",
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

Occurrence: `declaration:c3da2a1f123008903f6ba6f06bf357ef3372fb4d8632c1904f36731bb85f1b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–617.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Module.recFetchPreSetup (mod : Module) : FetchM (Job ModulePreSetup) := ensureJob do
  /-
  Remark: Await extra target dependencies (e.g., cloud releases, `needs`) before any
  other module processing. This both enables the dependencies to effect these elements
  and prevents them from racing with the processing here ([1]).

  An `await` is used here rather than `bindM` because keeping import graph processing on
  a single thread is simpler and the build would need to block on this regardless.

  [1]: https://github.com/leanprover/lean4/issues/13598
  -/
  let extraDepJob ← mod.lib.extraDep.fetch
  discard extraDepJob.await

  let inputJob ← mod.input.fetch
  /-
  Remark: We must build direct imports before we fetch the transitive
  precompiled imports so that errors in the import block of transitive imports
  will not kill this job before the direct imports are built.
  -/
  let impInfoJob ← mod.importInfo.fetch

  /-
  Remark: It should be possible to avoid transitive imports here when the module
  itself is precompiled, but they are currently kept to preserve the "bad import" errors.
  -/
  let precompileImports ← if mod.shouldPrecompile then
    mod.transImports.fetch else mod.precompileImports.fetch
  let precompileImports ← precompileImports.await
  let impLibsJob ← Job.collectArray (traceCaption := "import dynlibs") <$>
    mod.fetchImportLibs precompileImports mod.shouldPrecompile

  let externLibsJob ← Job.collectArray (traceCaption := "package external libraries") <$>
    if mod.shouldPrecompile then mod.pkg.externLibs.mapM (·.dynlib.fetch) else pure #[]
  let dynlibsJob ← mod.dynlibs.fetchIn mod.pkg "module dynlibs"
  let pluginsJob ← mod.plugins.fetchIn mod.pkg "module plugins"

  inputJob.bindM (sync := true) fun input => do
  impInfoJob.bindM (sync := true) fun info => do
  newTrace
  impLibsJob.bindM (sync := true) fun impLibs => do
  externLibsJob.bindM (sync := true) fun externLibs => do
  dynlibsJob.bindM (sync := true) fun dynlibs => do
  pluginsJob.mapM fun plugins => do
    let libTrace ← takeTrace
    let trace := BuildTrace.nil "deps"
    let depTrace := trace.mix extraDepJob.getTrace |>.mix info.trace
    setTraceCaption s!"{mod.name.toString}"
    let libTrace := libTrace.withCaption "libs"
    let nilLibTrace :=
      BuildTrace.nil "libs"
      |>.mix (.nil "import dynlibs")
      |>.mix (.nil "package external libraries")
      |>.mix (.nil "module dynlibs")
      |>.mix (.nil "module plugins")
    match mod.platformIndependent with
    | none => addTrace depTrace; addTrace libTrace
    | some false => addTrace depTrace; addTrace libTrace; addPlatformTrace
    | some true => addTrace depTrace; addTrace nilLibTrace
    let {dynlibs, plugins} ← computeModuleDeps impLibs externLibs dynlibs plugins
    let extra := (← getLeanOptOverrides).find? mod.pkg.baseName |>.getD {}
    let leanOptions := mod.leanOptions ++ extra
    addLeanTrace
    addTrace input.trace
    addTrace <| traceOptions leanOptions "options"
    addPureTrace input.header.isModule "isModule"
    addPureTrace mod.name "Module.name"
    addPureTrace mod.pkg.id? "Package.id?"
    addPureTrace mod.leanArgs "Module.leanArgs"
    return {
      trace := ← getTrace
      srcFile := input.path
      srcMTime := input.trace.mtime
      isModule := input.header.isModule
      directImports := input.imports
      directImportArts := info.directArts
      dynlibs, plugins, leanOptions
    }
where
  traceOptions (opts : LeanOptions) (caption := "opts") : BuildTrace :=
    opts.values.foldl (init := .nil caption) fun t n v =>
      let opt := s!"-D{n}={v.asCliFlagValue}"
      t.mix <| .ofHash (pureHash opt) opt

/-- The `ModuleFacetConfig` for the builtin `presetupFacet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1266fd0bf4094833269c7f4467edf175e110db67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
