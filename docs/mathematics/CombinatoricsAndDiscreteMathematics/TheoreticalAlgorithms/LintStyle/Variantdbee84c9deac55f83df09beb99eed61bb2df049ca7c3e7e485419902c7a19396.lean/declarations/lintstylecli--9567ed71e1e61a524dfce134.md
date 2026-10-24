# lintStyleCli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:602fd2c765be40544f33928840d0688ffe3ce8647dcddfd00333ae822691da66",
  "kind": "def",
  "lexical_name": "lintStyleCli",
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
  "slug": "lintstylecli--9567ed71e1e61a524dfce134",
  "source": {
    "blob": "58e7111528be16df8d55a5547c9f3f7f002bd317",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 191,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variantdbee84c9deac55f83df09beb99eed61bb2df049ca7c3e7e485419902c7a19396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9567ed71e1e61a524dfce134ed76ccb405bb0dfd3715fbd1e40bf9df2d7556ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variantdbee84c9deac55f83df09beb99eed61bb2df049ca7c3e7e485419902c7a19396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:602fd2c765be40544f33928840d0688ffe3ce8647dcddfd00333ae822691da66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lintStyleCli (args : Cli.Parsed) : IO UInt32 := do
  let opts : LinterOptions := {
    toOptions := ← getLakefileLeanOptions,
    linterSets := linter_sets%,
  }

  let style : ErrorFormat := match args.hasFlag "github" with
    | true => ErrorFormat.github
    | false => ErrorFormat.humanReadable
  let fix := args.hasFlag "fix"
  -- If no modules are specified, use the defaults from the Lakefile.
  let originModules ← match args.variableArgsAs! String with
  | #[] =>
    -- If none are specified, lint the default Lake modules.
    let (elanInstall?, leanInstall?, lakeInstall?) ← Lake.findInstall?
    let config ← Lake.MonadError.runEIO <| Lake.mkLoadConfig { elanInstall?, leanInstall?, lakeInstall? }
    let some workspace ← Lake.loadWorkspace config |>.toBaseIO
      | throw <| IO.userError "failed to load Lake workspace"
    pure <| workspace.root.defaultTargets.flatMap fun target =>
      if let some lib := workspace.root.findLeanLib? target then
        lib.roots
      else if let some exe := workspace.root.findLeanExe? target then
        #[exe.config.root]
      else
        #[]
  | mods => do
    let mut result := #[]
    for mod in mods do
      let modParse := Lean.ParseImports.moduleIdent mod {}
      match modParse.error? with
      | none => result := result.append <| modParse.imports.map Lean.Import.module
      | some err => throw <| IO.userError s!"could not parse module name {mod}: {err}"
    pure result

  -- Smoke tests for accidentally disabling all the linters again:
  -- require a nonempty set of modules that get linted.
  if originModules.isEmpty then
    throw <| IO.userError
      s!"lint-style: no modules to lint.\n\
      \n\
      Note: by default, we lint all the default `lake build` targets in the Lakefile.\n\
      \n\
      Hint: specify modules to lint as command line arguments to `lake exe lint-style`."
  -- ensure the header linter is active if we're linting Mathlib.
  if `Mathlib ∈ originModules then
    if !getLinterValue linter.checkInitImports opts then
      throw <| IO.userError
        s!"lint-style selftest failed: header linter is not enabled in Mathlib.\n\
        \n\
        Hint: in a project downstream of Mathlib, remove `Mathlib` as an argument to \
        `lake exe style`, or remove `Mathlib` from the default `lake build` targets.\n\
        \n\
        Hint: in Mathlib, check that the `linter_sets%` elaborator still works.\n\
        \n\
        Note: we want to make sure that we do not accidentally turn off all the linters, \
        since such a change would not be noticed in CI otherwise. The header linter is an \
        arbitrarily chosen important Mathlib style linter."

  -- Get all the imports, but only those in the same package.
  let pkgs := originModules.map (·.components.head!)
  Lean.initSearchPath (← Lean.findSysroot)
  let searchPath ← Lean.getSrcSearchPath
  let allModuleNames ← originModules.flatMapM fun mod => do
    let some file ← searchPath.findWithExt "lean" mod
      | throw <| IO.userError s!"could not find module with name {mod}"
    let imports := (← file.parseImports').filterInit.imports.map (·.module)
    pure <| imports.filter (·.components.head! ∈ pkgs)

  -- Read the `nolints` file, with manual exceptions for the linter.
  -- NB. We pass these lints to `lintModules` explicitly to prevent cache invalidation bugs:
  -- if the text-based linter read the file itself, replaying a cached build of that
  -- file could re-use an outdated version of the nolints file.
  -- (For syntax linters, such a bug actually occurred in mathlib.)
  -- This script is re-run each time, hence is immune to such issues.
  let filename : System.FilePath := ("scripts" / "nolints-style.txt")
  let nolints ← try
    IO.FS.lines filename
  catch _ =>
    IO.eprintln s!"warning: nolints file could not be read; treating as empty: {filename}"
    pure #[]
  let numberErrors := (← lintModules opts nolints allModuleNames style fix)
    + (← missingInitImports opts).toUInt32 + (← undocumentedScripts opts).toUInt32
    + (← modulesNotUpperCamelCase opts allModuleNames).toUInt32
    + (← modulesOSForbidden opts allModuleNames).toUInt32
  -- If run with the `--fix` argument, return a zero exit code.
  -- Otherwise, make sure to return an exit code of at most 125,
  -- so this return value can be used further in shell scripts.
  if args.hasFlag "fix" then
    return 0
  else return min numberErrors 125

/-- Setting up command line options and help text for `lake exe lint-style`. -/
-- so far, no help options or so: perhaps that is fine?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variantdbee84c9deac55f83df09beb99eed61bb2df049ca7c3e7e485419902c7a19396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variantdbee84c9deac55f83df09beb99eed61bb2df049ca7c3e7e485419902c7a19396.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58e7111528be16df8d55a5547c9f3f7f002bd317` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
