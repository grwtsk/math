# lintModules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e37882ce4a73e82e27f5ebd6cabbc2066f1e97779d79dac40e6a74b729d03065",
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
  "slug": "lintmodules--f151b0830d55e7fe3b9c516d",
  "source": {
    "blob": "75dc9ed61b984e5bf8f676826f52a00131c2b42f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 328,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f151b0830d55e7fe3b9c516df458d794a55ddb8d09943ba3c3af1fc5d3e5885c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e37882ce4a73e82e27f5ebd6cabbc2066f1e97779d79dac40e6a74b729d03065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lintModules (opts : Lean.Options) (nolints : Array String) (moduleNames : Array Lean.Name)
    (style : ErrorFormat) (fix : Bool) : IO UInt32 := do
  let styleExceptions := parseStyleExceptions nolints
  let mut numberErrorFiles : UInt32 := 0
  let mut allUnexpectedErrors := #[]
  for module in moduleNames do
    -- Convert the module name to a file name, then lint that file.
    let path := mkFilePath (module.components.map toString)|>.addExtension "lean"

    let (errors, changed) := ← lintFile opts path styleExceptions
    if let some c := changed then
      if fix then
        let _ := ← IO.FS.writeFile path ("\n".intercalate c.toList)
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
    IO.eprintln s!"error: found {allUnexpectedErrors.size} new style error(s)"
  return numberErrorFiles

/-- Verify that all modules are named in `UpperCamelCase` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75dc9ed61b984e5bf8f676826f52a00131c2b42f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
