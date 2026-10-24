# unusedImportsCLI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dae50165e73f8de52fa6e96c5d38ce61c93276042b600057c241ebf479d6c5bb",
  "kind": "def",
  "lexical_name": "unusedImportsCLI",
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
  "slug": "unusedimportscli--298718c80beac0aa4d3e5848",
  "source": {
    "blob": "c23a04bc5c042708bd4c1cfefe6e2a3924a7307c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Unused/Variant65d2e406f86a0ef2e6c7d5e103c28f7ad16399cb5932f776c93610002a9117f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:298718c80beac0aa4d3e5848fadf0857a0731e1d01e59a9dc1a88bfa17e685ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Unused/Variant65d2e406f86a0ef2e6c7d5e103c28f7ad16399cb5932f776c93610002a9117f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dae50165e73f8de52fa6e96c5d38ce61c93276042b600057c241ebf479d6c5bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unusedImportsCLI (args : Cli.Parsed) : IO UInt32 := do
  let output := args.flag! "output" |>.as! String
  let n := args.flag! "n" |>.as! Nat
  let modules := (args.variableArgsAs! ModuleName).toList
  if modules.isEmpty then
    IO.eprintln
      "No modules specified, please specify at least two modules on the command line."
    return 1

  -- Should we sort the modules?
  -- The code below assumes that it is "deeper files first", as reported by `lake exe pole`.

  searchPathRef.set compile_time_search_path%
  -- It may be reasonable to remove this again after https://github.com/leanprover/lean4/pull/6325
  unsafe enableInitializersExecution
  let (unused, _) ← unsafe withImportModules #[{module := `Mathlib}] {} (trustLevel := 1024)
    fun env => Prod.fst <$> Core.CoreM.toIO
        (ctx := { fileName := "<CoreM>", fileMap := default }) (s := { env := env }) do
      let unused ← unusedTransitiveImports modules
      let counts ← countDecls modules.toArray
      return (unused, counts)

  let headings := #["#", "module"] ++ ((List.range' 1 modules.length).map toString)
  let rows := modules.mapIdx fun i m =>
    let data := (unused.lookup m).getD []
    #[toString (i + 1), m.toString] ++
      modules.map fun m' => if data.contains m' then "x" else ""
  IO.println s!"Writing table to {output}."
  IO.FS.writeFile output (formatTable headings rows.toArray)

  let data := unused.flatMap fun (m, u) => u.map fun n => (modules.idxOf m, modules.idxOf n)
  let rectangles := maximalRectangles data
    |>.map (fun r => (r, r.area))
    -- Prefer rectangles with larger areas.
    |>.mergeSort (fun r₁ r₂ => r₁.2 > r₂.2)
    -- The `lake exe graph` command we print only depends on the top-right corner, so deduplicate.
    |>.pwFilter (fun r₁ r₂ => (r₁.1.top, r₂.1.right) ≠ (r₂.1.top, r₁.1.right))
    |>.take n

  for ((r, _), i) in rectangles.zipIdx do
    -- We use `--from top` so that the graph starts at the module immediately *before*
    -- the block of unused imports. This is useful for deciding how a split should be made.
    -- We use `--to (right-1)` so that the graph ends at the earliest of the modules
    -- which do not make use of any of the unused block.
    -- Note that this means that the later modules which do not use the block are not displayed,
    -- and in particular it is not possible to see from the graph the size of the later block
    -- which makes no use of the earlier unused block.
    -- Perhaps modifying `to` to allow multiple modules, and highlighting all of these in some way,
    -- would be a useful addition.
    let from_idx := min r.top (modules.length - 1)
    let to_idx := r.right - 1
    IO.println
      s!"lake exe graph --from {modules[from_idx]!} --to {modules[to_idx]!} unused{i}.pdf"

  return 0

/-- Setting up command line options and help text for `lake exe unused`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Unused/Variant65d2e406f86a0ef2e6c7d5e103c28f7ad16399cb5932f776c93610002a9117f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Unused/Variant65d2e406f86a0ef2e6c7d5e103c28f7ad16399cb5932f776c93610002a9117f0.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c23a04bc5c042708bd4c1cfefe6e2a3924a7307c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
