# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2235412f59fac7bb726a05eab154238c93db935e07efefebc4a4fbb02b192610",
  "kind": "def",
  "lexical_name": "main",
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
  "slug": "main--a32c08c7aa1d7fe8c3f0a0b9",
  "source": {
    "blob": "a95112b90e8b54756112e01a10e865971d6ac986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a32c08c7aa1d7fe8c3f0a0b9b152382e03e5bbd70c171e9b263e3a1c9f0aef18",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2235412f59fac7bb726a05eab154238c93db935e07efefebc4a4fbb02b192610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def main (args : List String) : IO UInt32 := do
  let setupFile::irFile::c::optArgs := args | do
    IO.println s!"usage: leanir <setup.json> <output.ir> <output.c> [--stat] <-Dopt=val>..."
    return 1

  let setup ← ModuleSetup.load setupFile
  let modName := setup.name

  let mut printStats := false
  let mut opts := setup.options.toOptions
  for optArg in optArgs do
    if optArg == "--stat" then
      printStats := true
    else
      opts ← setConfigOption opts optArg
  opts := Compiler.compiler.inLeanIR.set opts true
  opts := maxHeartbeats.set opts 0

  initSearchPathInternal
  -- Provide access to private scope of target module but no others; provide all IR
  let env ← profileitIO "import" opts <| withImporting do
    -- `importAll` so we have access to all private data
    let imports := #[{ module := modName, importAll := true : Import }]
    let (_, s) ← importModulesCore (globalLevel := .exported) (loadIRSig := true)
      (arts := setup.importArts) imports |>.run
    let s := { s with moduleNameMap := s.moduleNameMap.modify modName fun m => { m with irPhases := .runtime } }
    -- level exported because otherwise we would try to load the current module's `.ir`
    finalizeImport (leakEnv := true) (loadExts := false) (level := .exported) (loadIRSig := true) s imports opts
  let env := env.setMainModule modName

  let initExt {α β σ} [Inhabited σ] (ext : PersistentEnvExtension α β σ) (env : Environment) : IO Environment := do
    let s := ext.toEnvExtension.getState env
    let newState ← ext.addImportedFn s.importedEntries { env := env, opts := {} }
    return ext.toEnvExtension.setState (asyncMode := .sync) env { s with state := newState }

  let env ← initExt Lean.Compiler.CSimp.ext.ext env
  let env ← initExt Meta.instanceExtension.ext env
  let env ← initExt classExtension env
  let env ← initExt Meta.Match.Extension.extension env

  let some modIdx := env.getModuleIdx? modName
    | throw <| IO.userError s!"module '{modName}' not found"

  let decls := impureSigExt.getModuleEntries env modIdx
  let decls := decls.filter (isExtern env ·.name)
  let env := decls.foldl (fun env decl => impureSigExt.addEntry env decl) env
  let env := decls.foldl (fun env decl => setDeclPublic env decl.name) env

  -- Fill `declMapExt` with functions compiled already in `lean` so the set of "local" decls is
  -- unchanged and also for calculation of `extraConstNames` above
  -- TODO: we do manually-added externs only as others need more state sync around ground exprs etc
  let is := Lean.IR.declMapExt.toEnvExtension.getState env
  let unbox : Name → Name
    | .str f "_boxed" => f
    | f => f
  let newState :=  is.importedEntries[modIdx]!.foldl (fun (decls, m) d => if isExtern env (unbox d.name) then (d::decls, m.insert d.name d) else (decls, m)) is.state
  let env := Lean.IR.declMapExt.toEnvExtension.setState (asyncMode := .sync) env { is with state := newState }

  let some mod := env.header.moduleData[modIdx]? | unreachable!
  -- Make sure we record the actual IR dependencies, not ourselves
  let env := { env with base.private.header.imports := mod.imports }
  let _ : MonadExceptOf _ CoreM := MonadAlwaysExcept.except
  let res? ← EIO.toBaseIO <| Core.CoreM.run (ctx := { fileName := irFile, fileMap := default, options := opts })
      (s := { env }) try
    let decls := postponedCompileDeclsExt.getModuleEntries env modIdx
    -- Load postponed decls and iterate over them, removing each entry to avoid infinite recursion.
    -- NOTE: `decls` is in the original order of declarations so initializing and managing the
    -- extension would not be necessary for that, we could just leave it empty. However, there are
    -- cases like a `[csimp]` replacement being defined below the original function in the same file
    -- where allowing `LCNF.main` to reorder compilation based on dependencies seems to be the
    -- simpler solution (as we may make the csimp replacement before the replacement has been
    -- compiled).
    modifyEnv (postponedCompileDeclsExt.setState · (decls.foldl (fun s e => e.declNames.foldl (·.insert · e) s) {}))
    for decl in decls do
      for decl in decl.declNames do
        try
          resumeCompilation decl (← getOptions)
        finally
          addTraceAsMessages
      for msg in (← Core.getAndEmptyMessageLog).unreported do
        IO.eprintln (← msg.toString)
  catch e =>
    unless e.isInterrupt do
      logError e.toMessageData

  let .ok (_, s) := res? | unreachable!
  let mut env := s.env

  for msg in s.messages.unreported do
    IO.eprintln (← msg.toString)

  if s.messages.hasErrors then
   return 1

  -- Save, basing `.ir` on top of `.ir.sig`
  let irSigFile := (irFile : System.FilePath).addExtension "sig"
  saveModuleDataParts (env.mainModule ++ `ir) #[
    (irSigFile, ← mkIRSigData env),
    (irFile, ← mkIRData env)]

  let .ok out ← IO.FS.Handle.mk c .write |>.toBaseIO
    | IO.eprintln s!"failed to create '{c}'"
      return 1
  profileitIO "C code generation" opts do
    let data ← Compiler.LCNF.emitC modName
      |>.toIO' { fileName := irFile, fileMap := default } { env }
    out.write data.toUTF8

  displayCumulativeProfilingTimes
  if printStats then
    env.displayStats
  return 0
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a95112b90e8b54756112e01a10e865971d6ac986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
