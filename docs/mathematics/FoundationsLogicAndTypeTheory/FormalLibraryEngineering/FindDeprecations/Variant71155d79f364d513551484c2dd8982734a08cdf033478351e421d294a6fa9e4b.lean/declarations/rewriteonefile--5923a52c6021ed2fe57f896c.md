# rewriteOneFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6ba79bc8c83609b4574dd515edf2eae79ec7f3884455c0168b69d12bc66a392",
  "kind": "def",
  "lexical_name": "rewriteOneFile",
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
  "slug": "rewriteonefile--5923a52c6021ed2fe57f896c",
  "source": {
    "blob": "a919edf350e4c178bff0d205153e11355a32ab00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variant71155d79f364d513551484c2dd8982734a08cdf033478351e421d294a6fa9e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5923a52c6021ed2fe57f896c7c87e0269ee5f505e1cfcdd5f6ee177cf016f635",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variant71155d79f364d513551484c2dd8982734a08cdf033478351e421d294a6fa9e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6ba79bc8c83609b4574dd515edf2eae79ec7f3884455c0168b69d12bc66a392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rewriteOneFile (fname : String) (rgs : Array (Name × Lean.Syntax.Range)) :
    CommandElabM (String × String) := do
  -- `option` is the extra text that we add to the files that contain deprecations.
  -- We save these modified files with a different name then their originals, so that all their
  -- dependencies still have valid `olean`s and we build them to collect the ranges of the commands
  -- in each one of them.
  let option :=
    s!"\nimport Mathlib.Tactic.Linter.CommandRanges\n\
      set_option linter.commandRanges true\n"
  -- `offset` represents the difference between a position in the modified file and the
  -- corresponding position in the original file.
  -- Since we added the modification right after the imports, the command positions of the old file
  -- are always smaller than the command positions of the new file.
  let offset := option.toRawSubstring.stopPos
  let fileWithOptionAdded ← addAfterImports fname option
  let fname_with_option := (fname.dropEnd ".lean".length).copy ++ "_with_option.lean"
  let file ← IO.FS.readFile fname
  let fm := file.toFileMap
  let rgsPos := rgs.map fun (decl, ⟨s, e⟩) =>
    m!"* {.ofConstName decl} {(fm.toPosition s, fm.toPosition e)}"
  let rgsStringPos := rgs.map (m!"{·.2}")
  let combinedRanges := rgsPos.zipWith (· ++ m!" " ++ ·) rgsStringPos |>.toList
  logInfo m!"Adding '{option}' to '{fname}'\nWriting to {indentD fname_with_option}\n\
          Removing the following declarations\n{m!"\n".joinSep combinedRanges}"
  IO.FS.writeFile fname_with_option fileWithOptionAdded
  let ranges := rgs.map (·.2)

  logInfo m!"Retrieving command positions from '{fname_with_option}'"
  let commandPositions ←
    IO.Process.output {cmd := "lake", args := #["build", fname_with_option]}
  -- `stringPositions` consists of lists of the form `[p₁, p₂, p₃]`, where
  -- * `p₁` is the start of a command;
  -- * `p₂` is the end of the command, excluding trailing whitespace and comments;
  -- * `p₁` is the end of the command, including trailing whitespace and comments.
  let stringPositions := (commandPositions.stdout.splitOn "\n").map parseLine |>.reduceOption
  let mut removals : Std.HashSet (List String.Pos.Raw) := ∅
  -- For each range `rg` in `ranges`, we isolate the unique entry of `stringPositions` that
  -- entirely contains `rg`.  This helps catching the full range of `open Nat in @[deprecated] ...`,
  -- rather than just the `@[deprecated] ...` range.
  let : Sub String.Pos.Raw := ⟨fun | ⟨a⟩, ⟨b⟩ =>  ⟨a - b⟩⟩
  for rg in ranges do
    let candidate := stringPositions.filterMap (fun arr ↦
      let a := arr.head! - offset
      let b := arr[arr.length - 1]! - offset
      if a ≤ rg.start ∧ rg.stop ≤ b then some (arr.map (· - offset)) else none)
    match candidate with
    | [d@([_, _, _])] => removals := removals.insert d
    | _ => logInfo "Something went wrong!"
  -- We only remember the `start` and `end` of each command, ignoring trailing whitespace and
  -- comments.  This means that we may err on the side of preserving comments that may have to be
  -- manually removed, instead of having to manually add them back later on.
  let rems : Std.HashSet _ := removals.fold (init := ∅) fun tot ↦ fun
    | [a, b, _c] => tot.insert (⟨a, b⟩ : Lean.Syntax.Range)
    | _ => tot
  return (fname_with_option, ← removeDeprecations fname (rems.toArray.qsort (·.1 < ·.1)))

/-- The `<` partial order on modules: `importLT env mod₁ mod₂` means that `mod₂` imports `mod₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variant71155d79f364d513551484c2dd8982734a08cdf033478351e421d294a6fa9e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variant71155d79f364d513551484c2dd8982734a08cdf033478351e421d294a6fa9e4b.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a919edf350e4c178bff0d205153e11355a32ab00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
