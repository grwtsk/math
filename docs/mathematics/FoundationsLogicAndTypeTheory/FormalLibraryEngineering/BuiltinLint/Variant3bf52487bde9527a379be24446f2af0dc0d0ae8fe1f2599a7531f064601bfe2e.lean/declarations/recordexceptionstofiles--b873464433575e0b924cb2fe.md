# recordExceptionsToFiles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c4460fba062f75c1b06158ee861173b03c8fac30d0545fb19b89ece85079b76",
  "kind": "def",
  "lexical_name": "recordExceptionsToFiles",
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
  "slug": "recordexceptionstofiles--b873464433575e0b924cb2fe",
  "source": {
    "blob": "6cb1b36d0fda483526aa7963db9e9f662a68b605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant3bf52487bde9527a379be24446f2af0dc0d0ae8fe1f2599a7531f064601bfe2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b873464433575e0b924cb2fe399e3dfd02541d23af61702bbefc9ac604437882",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant3bf52487bde9527a379be24446f2af0dc0d0ae8fe1f2599a7531f064601bfe2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c4460fba062f75c1b06158ee861173b03c8fac30d0545fb19b89ece85079b76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def recordExceptionsToFiles (records : Array ExceptionRecord) : IO Unit := do
  let mut byFile : Std.HashMap String (System.FilePath × Array (Nat × Name)) := {}
  for r in records do
    let key := r.file.toString
    let (fp, arr) := byFile.getD key (r.file, #[])
    byFile := byFile.insert key (fp, arr.push (r.pos.line, r.option))
  for (_, file, lineOpts) in byFile.toArray do
    -- Deduplicate options per line.
    let mut perLine : Std.HashMap Nat (Array Name) := {}
    for (ln, opt) in lineOpts do
      let cur := perLine.getD ln #[]
      unless cur.contains opt do
        perLine := perLine.insert ln (cur.push opt)
    let some content ← (some <$> IO.FS.readFile file) <|> pure none
      | IO.eprintln s!"warning: could not read `{file}`; skipping its {lineOpts.size} exception(s)"
    let mut lines := (content.split '\n').toArray.map toString
    -- Process target lines back-to-front so insertions do not invalidate earlier line numbers.
    let targets := perLine.toArray.qsort (fun a b => a.1 > b.1)
    let mut fileInserted := 0
    for (ln, opts) in targets do
      let idx := ln - 1
      if h : idx < lines.size then
        let indent := leadingWhitespace lines[idx]
        let opts := opts.qsort (fun a b => toString a < toString b)
        let newLines := opts.map fun o => s!"{indent}set_option {o} false in {recordedMarker}"
        lines := lines.extract 0 idx ++ newLines ++ lines.extract idx lines.size
        fileInserted := fileInserted + newLines.size
    if fileInserted > 0 then
      IO.println s!"recording {fileInserted} exception{if fileInserted == 1 then "" else "s"} in {file}"
      IO.FS.writeFile file ("\n".intercalate lines.toList)

/--
The source position used to insert an exception for a Verso docstring with a failed check. `failMod`
is the module that recorded the deferred check.

Requires an environment imported at the `server` olean level, which carries the declaration ranges
and Verso module-doc snippets consulted here.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant3bf52487bde9527a379be24446f2af0dc0d0ae8fe1f2599a7531f064601bfe2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinLint/Variant3bf52487bde9527a379be24446f2af0dc0d0ae8fe1f2599a7531f064601bfe2e.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cb1b36d0fda483526aa7963db9e9f662a68b605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
