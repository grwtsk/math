# shellMain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89094bc60972633f2f53f4409bec0075761f1b0b6f0eab01da2887e18ca9020e",
  "kind": "def",
  "lexical_name": "shellMain",
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
  "slug": "shellmain--54203aacaa9df42c8a17fbf2",
  "source": {
    "blob": "3f73f6fe35d11cbccd9b6effe1bafad030fdbdce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 468,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54203aacaa9df42c8a17fbf22c356aa47b655a0bf58b760273fa5c7941a53035",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89094bc60972633f2f53f4409bec0075761f1b0b6f0eab01da2887e18ca9020e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shellMain (args : List String) (opts : ShellOptions) : IO UInt32 := do
  let opts := { opts with leanOpts := opts.leanOpts.mergeBy (fun _ _ v => v) (Internal.getOptionOverrides ()) }
  if opts.printPrefix then
    IO.println (← getBuildDir)
    return 0
  if opts.printLibDir then
    IO.println (← getLibDir (← getBuildDir))
    return 0
  let maxMemory := maxMemory.get opts.leanOpts
  if maxMemory != 0 then
    Internal.setMaxMemory (maxMemory.toUSize * 1024 * 1024)
  let timeout := timeout.get opts.leanOpts
  if timeout != 0 then
    Internal.setMaxHeartbeat (timeout.toUSize * 1000)
  match opts.component with
  | .frontend =>
    pure ()
  | .watchdog =>
    return ← Server.Watchdog.watchdogMain opts.forwardedArgs.toList
  | .worker =>
    return ← Server.FileWorker.workerMain opts.leanOpts
  if opts.onlyDeps && opts.depsJson then
    let fns ←
      if opts.useStdin then
        (← IO.getStdin).lines
      else
        pure args.toArray
    printImportsJson fns
    return 0
  let (fileName?, args) :=
    match args with
    | fileName :: args => (some fileName, args)
    | [] => (none, args)
  if !opts.run && !args.isEmpty then
    IO.eprintln "Expected exactly one file name"
    displayHelp (useStderr := true)
    return 1
  let fileName ←
    if let some fileName := fileName? then
      pure fileName
    else if opts.useStdin then
      pure "<stdin>"
    else
      IO.eprintln "Expected exactly one file name"
      displayHelp (useStderr := true)
      return 1
  let contents ← decodeLossyUTF8 <$> do
    if opts.useStdin then
      (← IO.getStdin).readBinToEnd
    else
      IO.FS.readBinFile fileName
  if opts.onlyDeps then
    Elab.printImports contents fileName
    return 0
  if opts.onlySrcDeps then
    Elab.printImportSrcs contents fileName
    return 0
  -- Quick and dirty `#lang` support
  ---TODO: make it extensible, and add `lean4md`
  let contents ←
    if let some contents := contents.dropPrefix? "#lang" then
      let endLinePos := contents.find '\n'
      let langId := contents.sliceTo endLinePos |>.trimAscii
      if langId == "lean4" then
        pure () -- do nothing for now
      else
        IO.eprintln s!"unknown language '{langId}'\n";
        return 1
      -- Remove up to `\n`
      pure (contents.sliceFrom endLinePos).copy
    else
      pure contents
  let setup? ← opts.setupFileName?.mapM ModuleSetup.load
  let mainModuleName ←
    if let some setup := setup? then
      pure setup.name
    else if let some fileName := fileName? then
      try moduleNameOfFileName fileName opts.rootDir? catch e =>
        if opts.oleanFileName?.isNone && opts.cFileName?.isNone then
          pure `_stdin
        else
          throw e
    else
      pure `_stdin
  let env? ← Elab.runFrontend contents opts.leanOpts fileName mainModuleName
    opts.trustLevel opts.oleanFileName? opts.ileanFileName? opts.jsonOutput opts.errorOnKinds
    #[] opts.printStats setup?
    (incrSaveFileName? := opts.incrSaveFileName?)
    (incrLoadFileName? := opts.incrLoadFileName?)
    (incrHeaderSaveFileName? := opts.incrHeaderSaveFileName?)
  if let some env := env? then
    if opts.run then
      return ← runMain env opts.leanOpts args
    if let some c := opts.cFileName? then
      let .ok out ← IO.FS.Handle.mk c .write |>.toBaseIO
        | IO.eprintln s!"failed to create '{c}'"
          return 1
      profileitIO "C code generation" opts.leanOpts do
        let data ← Compiler.LCNF.emitC mainModuleName
          |>.toIO' { fileName, fileMap := default } { env }
        out.write data.toUTF8
    if let some bc := opts.bcFileName? then
      initLLVM
      profileitIO "LLVM code generation" opts.leanOpts do
        emitLLVM env mainModuleName bc
  displayCumulativeProfilingTimes
  if Internal.hasAddressSanitizer () then
    return if env?.isSome then 0 else 1
  else
    -- When not using the address/leak sanitizer, we interrupt execution without garbage collecting.
    -- This is useful when profiling improvements to Lean startup time.
    IO.Process.exit <| if env?.isSome then 0 else 1
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f73f6fe35d11cbccd9b6effe1bafad030fdbdce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
