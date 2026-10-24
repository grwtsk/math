# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74ac1df1d73661cc1b479910155b156b2779e2508fe44f1fcd23bf30a19855e6",
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
  "slug": "main--7e0f540b4fe13dffcbf41d60",
  "source": {
    "blob": "11f8ede4fcc5fea2ac28089bbeed87d0fc872127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 437,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e0f540b4fe13dffcbf41d60350cbb25d04aad5bafa3870b3c1f876132b4588f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74ac1df1d73661cc1b479910155b156b2779e2508fe44f1fcd23bf30a19855e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def main (args : List String) : IO UInt32 := do
  initSearchPath (← findSysroot)
  -- Parse the arguments
  let rec parseArgs (args : Args) : List String → Args
    | [] => args
    | "--help" :: rest => parseArgs { args with help := true } rest
    | "--force" :: rest => parseArgs { args with force := true } rest
    | "--no-downstream" :: rest => parseArgs { args with downstream := false } rest
    | "--fix" :: rest => parseArgs { args with fix := true } rest
    | "--explain" :: rest => parseArgs { args with explain := true } rest
    | "--gh-style" :: rest => parseArgs { args with githubStyle := true } rest
    | "--update" :: rest => parseArgs { args with update := true } rest
    | "--global" :: rest => parseArgs { args with global := true } rest
    | "--cfg" :: cfg :: rest => parseArgs { args with cfg := cfg } rest
    | "--" :: rest => { args with mods := args.mods ++ rest.map (·.toName) }
    | other :: rest => parseArgs { args with mods := args.mods.push other.toName } rest
  let args := parseArgs {} args

  -- Bail if `--help` is passed
  if args.help then
    IO.println help
    IO.Process.exit 0

  if !args.force then
    if (← IO.Process.output { cmd := "lake", args := #["build", "--no-build"] }).exitCode != 0 then
      IO.println "There are out of date oleans. Run `lake build` or `lake exe cache get` first"
      IO.Process.exit 1

  -- Determine default module(s) to run shake on
  let defaultTargetModules : Array Name ← try
    let (elanInstall?, leanInstall?, lakeInstall?) ← Lake.findInstall?
    let config ← Lake.MonadError.runEIO <| Lake.mkLoadConfig { elanInstall?, leanInstall?, lakeInstall? }
    let some workspace ← Lake.loadWorkspace config |>.toBaseIO
      | throw <| IO.userError "failed to load Lake workspace"
    let defaultTargetModules := workspace.root.defaultTargets.flatMap fun target =>
      if let some lib := workspace.root.findLeanLib? target then
        lib.roots
      else if let some exe := workspace.root.findLeanExe? target then
        #[exe.config.root]
      else
        #[]
    pure defaultTargetModules
  catch _ =>
    pure #[]

  -- Parse the `--cfg` argument
  let srcSearchPath ← getSrcSearchPath
  let cfgFile ← if let some cfg := args.cfg then
    pure (some ⟨cfg⟩)
  else if let some mod := defaultTargetModules[0]? then
    if let some path ← srcSearchPath.findModuleWithExt "lean" mod then
      pure (some (path.parent.get! / "scripts" / "noshake.json"))
    else
      pure none
  else pure none

  -- Read the config file
  -- `isValidCfgFile` is `false` if and only if the config file is present and invalid.
  let (cfg, isValidCfgFile) ← if let some file := cfgFile then
    try
      pure (← IO.ofExcept (Json.parse (← IO.FS.readFile file) >>= fromJson? (α := ShakeCfg)), true)
    catch e =>
      -- The `cfgFile` is invalid, so we print the error and return `isValidCfgFile = false`.
      println! "{e.toString}"
      pure ({}, false)
    else pure ({}, true)
  if !isValidCfgFile then
    IO.println s!"Invalid config file '{cfgFile.get!}'"
    IO.Process.exit 1
  else
  -- the list of root modules
  let mods := if args.mods.isEmpty then defaultTargetModules else args.mods
  -- Only submodules of `pkg` will be edited or have info reported on them
  let pkg := mods[0]!.components.head!

  -- Load all the modules
  let mut (_, s) ← (loadModules (mods.map ({module := ·}))).run {}

  -- Parse the config file
  let ignoreMods := toBitset s (cfg.ignoreAll?.getD [])
  let ignoreImps := toBitset s (cfg.ignoreImport?.getD [])
  let ignore := (cfg.ignore?.getD {}).fold (init := (∅ : Std.HashMap _ _)) fun m a v =>
    m.insert a (toBitset s v.toList)

  let noIgnore (i : Nat) :=
    !s.mods[i]!.constNames.isEmpty && -- skip import-only mods
    ignoreMods &&& (1 <<< i) == 0 &&
    pkg.isPrefixOf s.modNames[i]!

  -- Run the calculation of the `needs` array in parallel
  let needs := s.mods.mapIdx fun i mod =>
    if args.downstream || noIgnore i then
      some <| Task.spawn fun _ =>
        -- remove the module from its own `needs`
        (calcNeeds s.constToIdx mod ||| (1 <<< i)) ^^^ (1 <<< i)
    else
      none
  if args.downstream then
    s := { s with needs := needs.map (·.get!.get) }

  if args.fix then
    println! "The following changes will be made automatically:"

  -- Check all selected modules
  let mut edits : Edits := ∅
  for i in [0:s.mods.size], t in needs do
    if let some t := t then
      if noIgnore i then
        let ignoreImps := ignoreImps ||| ignore.getD s.modNames[i]! 0
        edits ← visitModule s srcSearchPath ignoreImps i t.get edits
          args.downstream args.githubStyle args.explain

  -- Write the config file
  if args.update then
    if let some cfgFile := cfgFile then
      let mut ignore := cfg.ignore?.getD {}
      let ignoreImport := cfg.ignoreImport?.getD {}
      let mut ignoreImportSet : NameSet := ignoreImport.foldl .insert {}
      -- if `args.fix` is true then we assume the errors will be fixed after,
      -- so it's just reformatting the existing file
      if !args.fix then
        if args.global then
          -- in global mode all the edits are added to `ignoreImport`
          ignoreImportSet := edits.fold (init := ignoreImportSet)
            (fun ignore _ (remove, _) => ignore.union remove)
        else
          -- in local mode all the edits are added to `ignore`
          ignore := edits.fold (init := ignore) fun ignore mod (remove, _) =>
            let ns := (ignore.findD mod #[]).foldl (init := remove) (·.insert ·)
            if ns.isEmpty then ignore.erase mod else
              ignore.insert mod ns.toArray
      -- If an entry is in `ignoreAll`, the `ignore` key is redundant
      for i in cfg.ignoreAll?.getD {} do
        if ignore.contains i then
          ignore := ignore.erase i
      -- If an entry is in `ignoreImport`, the `ignore` value is redundant
      ignore := ignore.fold (init := {}) fun ignore mod ns =>
        let ns := ns.filter (!ignoreImportSet.contains ·)
        if ns.isEmpty then ignore else ignore.insert mod (ns.qsort (·.toString < ·.toString))
      -- Sort the lists alphabetically
      let ignoreImport := (ignoreImportSet.toArray.qsort (·.toString < ·.toString)).toList
      let cfg : ShakeCfg := {
        ignoreAll? := cfg.ignoreAll?.filter (!·.isEmpty)
        ignoreImport? := (some ignoreImport).filter (!·.isEmpty)
        ignore? := (some ignore).filter (!·.isEmpty)
      }
      IO.FS.writeFile cfgFile <| toJson cfg |>.pretty.push '\n'

  if !args.fix then
    -- return error if any issues were found
    return if edits.isEmpty then 0 else 1

  -- Apply the edits to existing files
  let count ← edits.foldM (init := 0) fun count mod (remove, add) => do
    -- Only edit files in the current package
    if !pkg.isPrefixOf mod then
      return count
    -- Compute the transitive reduction of `add` and convert to a list of names
    let add := if add == 0 then #[] else Id.run do
      let mut val := add
      for i in [0:s.mods.size] do
        if val &&& (1 <<< i) != 0 then
          val := val ^^^ (val &&& s.transDeps[i]!) ^^^ (1 <<< i)
      let mut out := #[]
      for i in [0:s.mods.size] do
        if val &&& (1 <<< i) != 0 then
          out := out.push s.modNames[i]!
      out.qsort Name.lt

    -- Parse the input file
    let (path, inputCtx, imports, insertion) ←
      try parseHeader srcSearchPath mod
      catch e => println! e.toString; return count
    let text := inputCtx.input

    -- Calculate the edit result
    let mut pos : String.Pos := 0
    let mut out : String := ""
    let mut seen : NameSet := {}
    for stx in imports do
      let mod := importId stx
      if remove.contains mod || seen.contains mod then
        out := out ++ text.extract pos stx.raw.getPos?.get!
        -- We use the end position of the syntax, but include whitespace up to the first newline
        pos := text.findAux (· == '\n') text.endPos stx.raw.getTailPos?.get! + ⟨1⟩
      seen := seen.insert mod
    out := out ++ text.extract pos insertion
    for mod in add do
      if !seen.contains mod then
        seen := seen.insert mod
        out := out ++ s!"import {mod}\n"
    out := out ++ text.extract insertion text.endPos

    IO.FS.writeFile path out
    return count + 1

  -- Since we throw an error upon encountering issues, we can be sure that everything worked
  -- if we reach this point of the script.
  if count > 0 then
    println! "Successfully applied {count} suggestions."
  else
    println! "No edits required."
  return 0

-- self-test so that future grammar changes cause a build failure
/-- info: #[`Lake.CLI.Main] -/
#guard_msgs (whitespace := lax) in
#eval show MetaM _ from do
  let (_, _, imports, _) ← parseHeaderFromString (← getFileMap).source (← getFileName)
  return imports.map importId
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f8ede4fcc5fea2ac28089bbeed87d0fc872127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
