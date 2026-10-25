# longestPoleCLI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:510d0e22b0a3410226706918763985d36952a44a940ef909c1cf9a6871e0b694",
  "kind": "def",
  "lexical_name": "longestPoleCLI",
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
  "slug": "longestpolecli--a38859123eed6c33890c9249",
  "source": {
    "blob": "102f398c4acf79edd613d0e34c2be52f84cd8970",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a38859123eed6c33890c9249f6cceaeaac0cff1a76bd972e816f3cef9ccebceb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:510d0e22b0a3410226706918763985d36952a44a940ef909c1cf9a6871e0b694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def longestPoleCLI (args : Cli.Parsed) : IO UInt32 := do
  let to ← match args.flag? "to" with
  | some to => pure <| to.as! ModuleName
  | none => ImportGraph.getCurrentModule -- autodetect the main module from the `lakefile.lean`
  searchPathRef.set compile_time_search_path%
  -- It may be reasonable to remove this again after https://github.com/leanprover/lean4/pull/6325
  unsafe enableInitializersExecution
  unsafe withImportModules #[{module := to}] {} (trustLevel := 1024) fun env => do
    let graph := env.importGraph
    let sha ← headSha
    IO.eprintln s!"Analyzing {to} at {sha}"
    let instructions ← if args.hasFlag "loc" then
      countLOC (graph.toList.map (·.1))
    else
      SpeedCenterAPI.instructions sha
    let cumulative := cumulativeInstructions instructions graph
    let total := totalInstructions instructions graph
    let slowest := slowestParents cumulative graph
    let mut table := #[]
    let mut n := some to
    while hn : n.isSome do
      let n' := n.get hn
      let i := instructions.findD n' 0
      let c := cumulative.find! n'
      let t := total.find! n'
      let r := (t / c).toStringDecimals 2
      table := table.push #[n.get!.toString, toString i.toUInt64, toString c.toUInt64, r]
      n := slowest.find? n'
    let instructionsHeader := if args.hasFlag "loc" then "LoC" else "instructions"
    IO.println (formatTable
                  #["file", instructionsHeader, "cumulative", "parallelism"]
                  table
                  #[Alignment.left, Alignment.right, Alignment.right, Alignment.center])
  return 0

/-- Setting up command line options and help text for `lake exe pole`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `102f398c4acf79edd613d0e34c2be52f84cd8970` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
