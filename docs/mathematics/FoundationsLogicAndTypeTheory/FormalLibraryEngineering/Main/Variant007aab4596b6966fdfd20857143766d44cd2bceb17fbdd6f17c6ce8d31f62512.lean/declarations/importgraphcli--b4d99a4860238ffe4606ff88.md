# importGraphCLI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec26dbc1d591e20934493415e33a8d3abca16475f3de21f8f35076b41eea9ec3",
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
  "slug": "importgraphcli--b4d99a4860238ffe4606ff88",
  "source": {
    "blob": "65ee88975263c027600c5557ec3a30d2273ddb29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4d99a4860238ffe4606ff883c75ff118d7ce550ab7f6d54eece9488311ea925",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec26dbc1d591e20934493415e33a8d3abca16475f3de21f8f35076b41eea9ec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def importGraphCLI (args : Cli.Parsed) : IO UInt32 := do
  let to := match args.flag? "to" with
  | some to => to.as! ModuleName
  | none => `Mathlib -- autodetect the main module from the `lakefile.lean`?
  let from? := match args.flag? "from" with
  | some fr => some <| fr.as! ModuleName
  | none => none
  searchPathRef.set compile_time_search_path%
  let dotFile ← unsafe withImportModules [{module := to}] {} (trustLevel := 1024) fun env => do
    let mut graph := env.importGraph
    if let .some f := from? then
      graph := graph.dependenciesOf (NameSet.empty.insert f)
    if ¬(args.hasFlag "include-deps") then
      let p := getModule to
      graph := graph.filterMap (fun n i =>
        if p.isPrefixOf n then (i.filter (isPrefixOf p)) else none)
    if args.hasFlag "exclude-meta" then
      let filterMeta : Name → Bool := fun n => (
        isPrefixOf `Mathlib.Tactic n ∨
        isPrefixOf `Mathlib.Lean n ∨
        isPrefixOf `Mathlib.Util n)
      -- create a list of all files imported by any of the filtered files
      -- and remove all imports starting with `Mathlib` to avoid loops
      let mut tacticImports := graph.toList.bind
        (fun ⟨n, i⟩ => if filterMeta n then i.toList else [])
        |>.eraseDup |>.filter (not <| isPrefixOf `Mathlib ·) |>.toArray
      -- iterate over the graph, removing all filtered nodes and
      -- replace any filtered import with `«Mathlib.Tactics»`
      graph := graph.filterMap (fun n i => if filterMeta n then none else some <|
        (i.map (fun name => if filterMeta name then `«Mathlib.Tactics» else name)
          |>.toList.eraseDup.toArray))
      -- add the new node `«Mathlib.Tactics»`
      graph := graph.insert `«Mathlib.Tactics» tacticImports
    if args.hasFlag "reduce" then
      graph := graph.transitiveReduction
    return asDotGraph graph
  match args.variableArgsAs! String with
  | #[] => writeFile "import_graph.dot" dotFile
  | outputs => for o in outputs do
     let fp : FilePath := o
     match fp.extension with
     | none
     | "dot" => writeFile fp dotFile
     | some ext => _ ← runCmdWithInput "dot" #["-T" ++ ext, "-o", o] dotFile
  return 0

/-- Setting up command line options and help text for `lake exe graph`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant007aab4596b6966fdfd20857143766d44cd2bceb17fbdd6f17c6ce8d31f62512.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65ee88975263c027600c5557ec3a30d2273ddb29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
