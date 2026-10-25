# importGraphCLI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a41d9007923d47dbd1de2f867a16ee8e30e8a4be8659efaf3adf2de48c040449",
  "kind": "def",
  "lexical_name": "importGraphCLI",
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
  "slug": "importgraphcli--064bdee6aa14e9e74daca76d",
  "source": {
    "blob": "3da916eb4f230f22c117a657aadb64c0e967e6ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MainGraph/Variant6e56ad1615431cdedc8448bd3961175e233a9488018cd8d9f99bcca401d36cc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:064bdee6aa14e9e74daca76dfe36059135f00d7f67bd10db408b2ba698aafd61",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MainGraph/Variant6e56ad1615431cdedc8448bd3961175e233a9488018cd8d9f99bcca401d36cc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a41d9007923d47dbd1de2f867a16ee8e30e8a4be8659efaf3adf2de48c040449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def importGraphCLI (args : Cli.Parsed) : IO UInt32 := do
  -- file extensions that should be created
  let extensions : Std.HashSet String := match args.variableArgsAs! String with
    | #[] => {"dot"}
    | outputs => outputs.foldl (fun acc (o : String) =>
      match FilePath.extension o with
       | none => acc.insert "dot"
       | some "gexf" => acc.insert "gexf"
       | some "html" => acc.insert "gexf"
       -- currently all other formats are handled by passing the `.dot` file to
       -- graphviz
       | some _ => acc.insert "dot" ) {}

  let to ← match args.flag? "to" with
  | some to => pure <| to.as! (Array ModuleName)
  | none => pure #[← getCurrentModule]
  let from? : Option (Array Name) := match args.flag? "from" with
  | some fr => some <| fr.as! (Array ModuleName)
  | none => none
  initSearchPath (← findSysroot)

  unsafe Lean.enableInitializersExecution
  let outFiles ← try unsafe withImportModules (to.map ({module := ·})) {} (trustLevel := 1024) fun env => do
    let toModule := ImportGraph.getModule to[0]!
    let mut graph := env.importGraph
    let unused ←
      match args.flag? "to" with
      | some _ =>
        let init := NameSet.ofArray to
        let ctx := { options := {}, fileName := "<input>", fileMap := default }
        let state := { env }
        let used ← Prod.fst <$> (CoreM.toIO (env.transitivelyRequiredModules' to.toList) ctx state)
        let used := used.foldl (init := init) (fun s _ t => s ∪ t)
        pure <| graph.foldl (fun acc n _ => if used.contains n then acc else acc.insert n) NameSet.empty
      | none => pure NameSet.empty
    let modulesWithSorry := if args.hasFlag "mark-sorry" then ImportGraph.allModulesWithSorry env else ∅

    if let Option.some f := from? then
      graph := graph.downstreamOf (NameSet.ofArray f)
    let includeLean := args.hasFlag "include-lean"
    let includeStd := args.hasFlag "include-std" || includeLean
    let includeDeps := args.hasFlag "include-deps" || includeStd
    -- Note: `includeDirect` does not imply `includeDeps`!
    -- e.g. if the package contains `import Lean`, the node `Lean` will be included with
    -- `--include-direct`, but not included with `--include-deps`.
    let includeDirect := args.hasFlag "include-direct"

    -- `directDeps` contains files which are not in the package
    -- but directly imported by a file in the package
    let directDeps : NameSet := graph.foldl (init := .empty) (fun acc n deps =>
      if toModule.isPrefixOf n then
        deps.filter (!toModule.isPrefixOf ·) |>.foldl (init := acc) NameSet.insert
      else
        acc)

    let filter (n : Name) : Bool :=
      toModule.isPrefixOf n ||
      bif isPrefixOf `Std n then includeStd else
      bif isPrefixOf `Lean n || isPrefixOf `Init n then includeLean else
      includeDeps
    let filterDirect (n : Name) : Bool :=
      includeDirect ∧ directDeps.contains n

    graph := graph.filterMap (fun n i =>
      if filter n then
        -- include node regularly
        (i.filter (fun m => filterDirect m || filter m))
      else if filterDirect n then
        -- include node as direct dependency; drop any further deps.
        some #[]
      else
        -- not included
        none)
    if args.hasFlag "exclude-meta" then
      -- Mathlib-specific exclusion of tactics
      let filterMathlibMeta : Name → Bool := fun n => (
        isPrefixOf `Mathlib.Tactic n ∨
        isPrefixOf `Mathlib.Lean n ∨
        isPrefixOf `Mathlib.Mathport n ∨
        isPrefixOf `Mathlib.Util n)
      graph := graph.filterGraph filterMathlibMeta (replacement := `«Mathlib.Tactics»)
    if !args.hasFlag "show-transitive" then
      graph := graph.transitiveReduction

    let markedPackage : Option Name := if args.hasFlag "mark-package" then toModule else none

    -- Create all output files that are requested
    let mut outFiles : Std.HashMap String String := {}
    if extensions.contains "dot" then
      let dotFile := asDotGraph graph (unused := unused) (markedPackage := markedPackage)
        (directDeps := directDeps)
        (withSorry := modulesWithSorry)
        (to := NameSet.ofArray to) (from_ := NameSet.ofArray (from?.getD #[]))
      outFiles := outFiles.insert "dot" dotFile
    if extensions.contains "gexf" then
      -- filter out the top node as it makes the graph less pretty
      let graph₂ := match args.flag? "to" with
        | none => graph.filter (fun n _ => ! if to.contains `Mathlib then #[`Mathlib, `Mathlib.Tactic].contains n else to.contains n)
        | some _ => graph
      let gexfFile := Graph.toGexf graph₂ toModule env
      outFiles := outFiles.insert "gexf" gexfFile
    return outFiles

  catch err =>
    -- TODO: try to build `to` first, so this doesn't happen
    throw <| IO.userError <| s!"{err}\nIf the error above says `object file ... does not exist`, " ++
      s!"try if `lake build {" ".intercalate (to.toList.map Name.toString)}` fixes the issue"
    throw err

  match args.variableArgsAs! String with
  | #[] => writeFile "import_graph.dot" (outFiles["dot"]!)
  | outputs => for o in outputs do
     let fp : FilePath := o
     match fp.extension with
     | none
     | "dot" => writeFile fp (outFiles["dot"]!)
     | "gexf" => IO.FS.writeFile fp (outFiles["gexf"]!)
     | "html" =>
        let gexfFile := (outFiles["gexf"]!)
        -- use `html-template/index.html` and insert any dependencies to make it
        -- a stand-alone HTML file.
        -- note: changes in `index.html` might need to be reflected here!
        let exeDir := (FilePath.parent (← IO.appPath) |>.get!) / ".." / ".." / ".."
        let mut html ← IO.FS.readFile <| ← IO.FS.realPath ( exeDir / "html-template" / "index.html")
        for dep in (#[
            "vendor" / "sigma.min.js",
            "vendor" / "graphology.min.js",
            "vendor" / "graphology-library.min.js" ] : Array FilePath) do
          let depContent ← IO.FS.readFile <| ← IO.FS.realPath (exeDir / "html-template" / dep)
          html := html.replace s!"<script src=\"{dep}\"></script>" s!"<script>{depContent}</script>"
        -- inline the graph data
        -- note: changes in `index.html` might need to be reflected here!
        let escapedFile := gexfFile.replace "\n" "" |>.replace "\"" "\\\""
        let toFormatted : String := ", ".intercalate <| (to.map toString).toList
        html := html
          |>.replace "fetch(\"imports.gexf\").then((res) => res.text()).then(render_gexf)" s!"render_gexf(\"{escapedFile}\")"
          |>.replace "<h1>Import Graph</h1>" s!"<h1>Import Graph for {toFormatted}</h1>"
          |>.replace "<title>import graph</title>" s!"<title>import graph for {toFormatted}</title>"
        IO.FS.writeFile fp html
     | some ext => try
        _ ← IO.Process.output { cmd := "dot", args := #["-T" ++ ext, "-o", o] } outFiles["dot"]!
      catch ex =>
        IO.eprintln s!"Error occurred while writing out {fp}."
        IO.eprintln s!"Make sure you have `graphviz` installed and the file is writable."
        throw ex
  return 0

/-- Setting up command line options and help text for `lake exe graph`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MainGraph/Variant6e56ad1615431cdedc8448bd3961175e233a9488018cd8d9f99bcca401d36cc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MainGraph/Variant6e56ad1615431cdedc8448bd3961175e233a9488018cd8d9f99bcca401d36cc2.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3da916eb4f230f22c117a657aadb64c0e967e6ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
