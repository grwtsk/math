# mkAllCLI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc5b3aa067da1afd9def0cbcc78e4f38508e3d5716ff5552115dc39bb1218ac7",
  "kind": "def",
  "lexical_name": "mkAllCLI",
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
  "slug": "mkallcli--2e02e2dc7b83690e00b4fea2",
  "source": {
    "blob": "ae79948610542fbf00e7db8d2879e271d8e0df74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e02e2dc7b83690e00b4fea2590af1edde085c108ec172872d9b87e44b609d49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc5b3aa067da1afd9def0cbcc78e4f38508e3d5716ff5552115dc39bb1218ac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAllCLI (args : Parsed) : IO UInt32 := do
  -- Check whether the `--git` flag was set
  let git := (args.flag? "git").isSome
  -- Check whether we only verify the files, or update them in-place.
  let check := (args.flag? "check").isSome
  -- Check whether the `--lib` flag was set. If so, build the file corresponding to the library
  -- passed to `--lib`. Else build all the libraries of the package.
  -- If the package is `mathlib`, then it removes the libraries `Cache` and `LongestPole` and it
  -- adds `Mathlib/Tactic`.
  let libs := ← match args.flag? "lib" with
              | some lib => return #[lib.as! String]
              | none => getLeanLibs
  let mut updates := 0
  for d in libs.reverse do  -- reverse to create `Mathlib/Tactic.lean` before `Mathlib.lean`
    let fileName := addExtension d "lean"
    let mut allFiles ← getAllModulesSorted git d
    -- mathlib exception: manually import Std and Batteries in `Mathlib.lean`
    if d == "Mathlib" then
      allFiles := #["Std", "Batteries"] ++ allFiles
    let fileContent := ("\n".intercalate (allFiles.map ("import " ++ ·)).toList).push '\n'
    if !(← pathExists fileName) then
      if check then
        IO.println s!"File '{fileName}' does not exist"
      else
        IO.println s!"Creating '{fileName}'"
        IO.FS.writeFile fileName fileContent
      updates := updates + 1
    else if (← IO.FS.readFile fileName) != fileContent then
      if check then
        IO.println s!"The file '{fileName}' is out of date: \
          run `lake exe mk_all{if git then " --git" else ""}` to update it"
      else
        IO.println s!"Updating '{fileName}'"
        IO.FS.writeFile fileName fileContent
      updates := updates + 1
  if updates == 0 then
    IO.println "No update necessary"
  -- Make sure to return an exit code of at most 125, so this return value can be used further
  -- in shell scripts.
  return min updates 125

open Cli in
/-- Setting up command line options and help text for `lake exe mk_all`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae79948610542fbf00e7db8d2879e271d8e0df74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
