# runLinterOnModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7ef98e3aad710f382b281dac21b930e5a49db1987812114d723761d3b876393",
  "kind": "def",
  "lexical_name": "runLinterOnModule",
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
  "slug": "runlinteronmodule--485c4e6a46641017f6fd13bd",
  "source": {
    "blob": "3e4797c2b75cfb35012f654cddb50ecaac15ffbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:485c4e6a46641017f6fd13bdb923796dde7e1e234156f03452c480ce048fe285",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7ef98e3aad710f382b281dac21b930e5a49db1987812114d723761d3b876393`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def runLinterOnModule (cfg : LinterConfig) (module : Name) : IO Unit := do
  let { updateNoLints, noBuild, trace } := cfg
  initSearchPath (← findSysroot)
  let rec
    /-- Builds `module` if the filepath `olean` does not exist. Throws if olean is not found and
    `noBuild := true`. -/
    buildIfNeeded (module : Name) : IO Unit := do
      let olean ← findOLean module
      unless (← olean.pathExists) do
        if noBuild then
          IO.eprintln s!"[{module}] Could not find olean for module `{module}` at given path:\n  \
            {olean}"
          IO.Process.exit 1
        else
          if trace then
            IO.println s!"[{module}] Could not find olean for module `{module}` at given path:\n  \
              {olean}\n\
              [{module}] Building `{module}`."
          -- run `lake build +module` (and ignore result) if the file hasn't been built yet
          let child ← IO.Process.spawn {
            cmd := (← IO.getEnv "LAKE").getD "lake"
            args := #["build", s!"+{module}"]
            stdin := .null
          }
          _ ← child.wait
          -- No need to trace on completion, lake's "Build completed successfully" reaches stdout

  buildIfNeeded module
  -- If the linter is being run on a target that doesn't import `Batteries.Tactic.List`,
  -- the linters are ineffective. So we import it here.
  let lintModule := `Batteries.Tactic.Lint
  buildIfNeeded lintModule
  let nolintsFile : FilePath := "scripts/nolints.json"
  let nolints ← if ← nolintsFile.pathExists then
    readJsonFile NoLints nolintsFile
  else
    pure #[]
  unsafe Lean.enableInitializersExecution
  let env ← importModules #[module, lintModule] {} (trustLevel := 1024) (loadExts := true)
  let mut opts : Options := {}
  -- Propagate `trace` to `CoreM`
  if trace then
    opts := opts.setBool `trace.Batteries.Lint true
  let ctx := {
    fileName := ""
    fileMap := default
    options := opts  }
  let state := { env }
  Prod.fst <$> (CoreM.toIO · ctx state) do
    traceLint s!"Starting lint..." (inIO := true) (currentModule := module)
    let decls ← getDeclsInPackage module.getRoot
    let linters ← getChecks (slow := true) (runAlways := none) (runOnly := none)
    let results ← lintCore decls linters (inIO := true) (currentModule := module)
    if updateNoLints then
      traceLint s!"Updating nolints file at {nolintsFile}" (inIO := true) (currentModule := module)
      writeJsonFile (α := NoLints) nolintsFile <|
        .qsort (lt := fun (a, b) (c, d) => a.lt c || (a == c && b.lt d)) <|
        .flatten <| results.map fun (linter, decls) =>
        decls.fold (fun res decl _ => res.push (linter.name, decl)) #[]
    if trace then
      let mut nolintTally : Std.HashMap Name Nat := {}
      for (linter, _) in nolints do
        nolintTally := nolintTally.alter linter fun
          | none   => some 1
          | some n => some (n+1)
      let msgs := nolintTally.toList.map fun (linter, n) => s!"{linter}: {n}"
      IO.println s!"[{module}] {nolintsFile} summary (number of nolints per linter):\n  \
        {"\n  ".intercalate msgs}"
    let results := results.map fun (linter, decls) =>
      .mk linter <| nolints.foldl (init := decls) fun decls (linter', decl') =>
        if linter.name == linter' then decls.erase decl' else decls
    let failed := results.any (!·.2.isEmpty)
    if failed then
      let fmtResults ←
        formatLinterResults results decls (groupByFilename := true) (useErrorFormat := true)
          s!"in {module}" (runSlowLinters := true) .medium linters.size
      IO.print (← fmtResults.toString)
      IO.Process.exit 1
    else
      IO.println s!"-- Linting passed for {module}."

/--
Usage: `runLinter [--update] [--trace | -v] [--no-build] [Batteries.Data.Nat.Basic]...`

Runs the linters on all declarations in the given modules
(or all root modules of Lake `lean_lib` and `lean_exe` default targets if no module is specified).

If `--update` is set, the `nolints` file is updated to remove any declarations that no longer need
to be nolinted.

If `--trace` (or, synonymously, `-v`) is set, tracing will be enabled and logged to stdout.

If `--no-build` is set, `runLinter` will throw if either the oleans to be linted or the oleans
which drive the linting itself are not present.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e4797c2b75cfb35012f654cddb50ecaac15ffbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
