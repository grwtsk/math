# lintModules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50a1c0d9136828218905bad2c77013b87ba13d7074b1159c8a17430e457a5c81",
  "kind": "def",
  "lexical_name": "lintModules",
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
  "slug": "lintmodules--90083d86ce11593e1e5a3f2f",
  "source": {
    "blob": "69f5c02b190bbcf1d3275900c6a37403c0b12275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 518,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90083d86ce11593e1e5a3f2fec59658edea21b31f21ac65d56973a7db3f958c6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50a1c0d9136828218905bad2c77013b87ba13d7074b1159c8a17430e457a5c81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lintModules (opts : LinterOptions) (nolints : Array String) (moduleNames : Array Lean.Name)
    (style : ErrorFormat) (fix : Bool) : IO UInt32 := do
  let styleExceptions := parseStyleExceptions nolints
  let mut numberErrorFiles : UInt32 := 0
  let mut allUnexpectedErrors := #[]
  for module in moduleNames do
    -- Convert the module name to a file name, then lint that file.
    let path := mkFilePath (module.components.map toString)|>.addExtension "lean"

    let (errors, changed) ← lintFile opts path styleExceptions
    if let some c := changed then
      if fix then
        let _ ← IO.FS.writeFile path ("\n".intercalate c.toList)
    if errors.size > 0 then
      allUnexpectedErrors := allUnexpectedErrors.append errors
      numberErrorFiles := numberErrorFiles + 1

  -- Passing Lean options to Python files seems like a lot of work for something we want to
  -- run entirely inside of Lean in the end anyway.
  -- So for now, we enable/disable all of them with a single switch.
  if getLinterValue linter.pythonStyle opts then
    -- Run the remaining python linters. It is easier to just run on all files.
    -- If this poses an issue, I can either filter the output
    -- or wait until lint-style.py is fully rewritten in Lean.
    let args := if fix then #["--fix"] else #[]
    let output ← IO.Process.output { cmd := "./scripts/print-style-errors.sh", args := args }
    if output.exitCode != 0 then
      numberErrorFiles := numberErrorFiles + 1
      IO.eprintln s!"error: `print-style-error.sh` exited with code {output.exitCode}"
      IO.eprint output.stderr
    else if output.stdout != "" then
      numberErrorFiles := numberErrorFiles + 1
      IO.eprint output.stdout
  formatErrors allUnexpectedErrors style
  if allUnexpectedErrors.size > 0 then
    IO.eprintln s!"error: found {allUnexpectedErrors.size} new style error(s)! \
      Try `lake exe lint-style --fix` to apply automatic fixes."
  return numberErrorFiles

/-- Verify that all modules are named in `UpperCamelCase` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f5c02b190bbcf1d3275900c6a37403c0b12275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
