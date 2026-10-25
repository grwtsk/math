# finalizeImport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df11c6db549c74004aad53df66163b488ad0d27ab0a4c05716460c4c789e1b5c",
  "kind": "def",
  "lexical_name": "finalizeImport",
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
  "slug": "finalizeimport--f309b229ba491459f90fca85",
  "source": {
    "blob": "59e340aebe9944d1482e6aba5da1f8ec52a51fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2445,
    "line": 2315,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f309b229ba491459f90fca85bff34569971d829002100d0006ad4966ecb0d5ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df11c6db549c74004aad53df66163b488ad0d27ab0a4c05716460c4c789e1b5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2315–2445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finalizeImport (s : ImportState) (imports : Array Import) (opts : Options) (trustLevel : UInt32 := 0)
    (leakEnv loadExts : Bool) (level := OLeanLevel.private) (isModule := level != .private)
    -- If true, prefer loading `.ir.sig` over `.ir` unless `import all`ed; used by leanir
    (loadIRSig := false) :
    IO Environment := do
  let modules := s.moduleNames.filterMap (s.moduleNameMap[·]?)
  let moduleData ← modules.mapM fun mod => do
    let some data := mod.mainModule? |
      throw <| IO.userError s!"missing data file for module {mod.module}"
    return data
  let irData ← modules.mapM fun mod => do
    let some data := mod.irData? loadIRSig |
      throw <| IO.userError s!"missing IR data file for module {mod.module}"
    return data
  let numPrivateConsts := moduleData.foldl (init := 0) fun numPrivateConsts data =>
    numPrivateConsts + data.constants.size
  let numExtraConsts := irData.foldl (init := 0) fun numExtraConsts data =>
    numExtraConsts + data.extraConstNames.size
  let numPublicConsts := modules.foldl (init := 0) fun numPublicConsts mod => Id.run do
    if !mod.isExported then numPublicConsts else
      let some data := mod.publicModule? | numPublicConsts
      numPublicConsts + data.constants.size
  let mut const2ModIdx : Std.HashMap Name ModuleIdx := Std.HashMap.emptyWithCapacity (capacity := numPrivateConsts + numExtraConsts)
  let mut privateConstantMap : Std.HashMap Name ConstantInfo := Std.HashMap.emptyWithCapacity (capacity := numPrivateConsts)
  let mut publicConstantMap : Std.HashMap Name ConstantInfo := Std.HashMap.emptyWithCapacity (capacity := numPublicConsts)
  for h : modIdx in *...moduleData.size do
    let data := moduleData[modIdx]
    for cname in data.constNames, cinfo in data.constants do
      match privateConstantMap.getThenInsertIfNew? cname cinfo with
      | (cinfoPrev?, constantMap') =>
        privateConstantMap := constantMap'
        if let some cinfoPrev := cinfoPrev? then
          -- Recall that the map has not been modified when `cinfoPrev? = some _`.
          if subsumesInfo privateConstantMap cinfo cinfoPrev then
            privateConstantMap := privateConstantMap.insert cname cinfo
          else if !subsumesInfo privateConstantMap cinfoPrev cinfo then
            throwAlreadyImported s const2ModIdx modIdx cname
      const2ModIdx := const2ModIdx.insertIfNew cname modIdx
    if let some data := irData[modIdx]? then
      for cname in data.extraConstNames do
        const2ModIdx := const2ModIdx.insertIfNew cname modIdx

  if isModule then
    for mod in modules.filter (·.isExported) do
      let some data := mod.publicModule? | continue
      for cname in data.constNames, cinfo in data.constants do
        match publicConstantMap.getThenInsertIfNew? cname cinfo with
        | (cinfoPrev?, constantMap') =>
          publicConstantMap := constantMap'
          if let some cinfoPrev := cinfoPrev? then
            if subsumesInfo publicConstantMap cinfo cinfoPrev then
              publicConstantMap := publicConstantMap.insert cname cinfo
            -- no need to check for duplicates again, `privateConstMap` should be a superset

  let exts ← mkInitialExtensionStates
  let privateConstants : ConstMap := SMap.fromHashMap privateConstantMap false
  let privateBase : Kernel.Environment := {
    const2ModIdx, constants := privateConstants
    quotInit        := !imports.isEmpty -- We assume `Init.Prelude` initializes quotient module
    extensions      := exts
    irBaseExts      := exts
    header     := {
      trustLevel, imports, moduleData, isModule
      modules      := modules.map (·.toEffectiveImport)
      regions      := modules.flatMap (·.parts.map (·.2)) ++ modules.flatMap (·.irParts.map (·.2))
    }
  }
  let publicConstants : ConstMap := SMap.fromHashMap publicConstantMap false
  let publicBase := { privateBase with constants := publicConstants, header.regions := #[] }
  let extensions ← setImportedEntries privateBase.extensions moduleData
  -- fall back to basic data when not in server
  let serverData := modules.mapIdx (fun idx mod => mod.serverData? level |>.getD moduleData[idx]!)
  let privateBase := { privateBase with
    extensions
    irBaseExts := (← setImportedEntries privateBase.extensions irData)
  }
  let mut env : Environment := {
    base.private := privateBase
    base.public  := publicBase
    importRealizationCtx? := none
    serverBaseExts := (← setImportedEntries privateBase.extensions serverData)
  }
  if leakEnv then
    /- Mark persistent a first time before `finalizePersistentExtensions`, which
       avoids costly MT markings when e.g. an interpreter closure (which
       contains the environment) is put in an `IO.Ref`. This can happen in e.g.
       initializers of user environment extensions and is wasteful because the
       environment is marked persistent immediately afterwards anyway when the
       constructed extension including the closure is ultimately stored in the
       initialized constant. We have seen significant savings in `open Mathlib`
       timings, where we have both a big environment and interpreted environment
       extensions, from this. There is no significant extra cost to calling
       `markPersistent` multiple times like this.

       Safety: There are no concurrent accesses to `env` at this point. -/
    env ← unsafe Runtime.markPersistent env
  if loadExts then
    env ← finalizePersistentExtensions env moduleData opts
    if leakEnv then
      /- Ensure the final environment including environment extension states is
        marked persistent as documented.

        Safety: There are no concurrent accesses to `env` at this point, assuming
        extensions' `addImportFn`s did not spawn any unbound tasks. -/
      env ← unsafe Runtime.markPersistent env
  return { env with importRealizationCtx? := some {
    -- safety: `RealizationContext` is private
    env := unsafe unsafeCast env
    opts
    realizeMapRef := (← IO.mkRef {})
  } }

/--
Creates environment object from given imports.

If `leakEnv` is true, we mark the environment as persistent, which means it will not be freed. We
set this when the object would survive until the end of the process anyway. In exchange, RC updates
are avoided, which is especially important when they would be atomic because the environment is
shared across threads (potentially, storing it in an `IO.Ref` is sufficient for marking it as such).

If `loadExts` is true, we initialize the environment extensions using the imported data. Doing so
may use the interpreter and thus is only safe to do after calling `enableInitializersExecution`; see
also caveats there. If not set, every extension will have its initial value as its state. While the
environment's constant map can be accessed without `loadExts`, many functions that take
`Environment` or are in a monad carrying it such as `CoreM` may not function properly without it.

If `level` is `exported`, the module to be elaborated is assumed to be participating in the module
system and imports will be restricted accordingly. If it is `server`, the data for
`getModuleEntries (includeServer := true)` is loaded as well. If it is `private`, all data is loaded
as if no `module` annotations were present in the imports.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean#L2315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e340aebe9944d1482e6aba5da1f8ec52a51fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
