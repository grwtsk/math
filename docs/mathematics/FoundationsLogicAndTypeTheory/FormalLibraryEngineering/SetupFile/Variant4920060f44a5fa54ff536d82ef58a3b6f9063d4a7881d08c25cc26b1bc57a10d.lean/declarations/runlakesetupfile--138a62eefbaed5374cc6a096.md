# runLakeSetupFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3b82fe7608e73c7fb7a333d154b4d579767f622e695ac78bf7397d89c85d079",
  "kind": "def",
  "lexical_name": "runLakeSetupFile",
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
  "slug": "runlakesetupfile--138a62eefbaed5374cc6a096",
  "source": {
    "blob": "2cba7ef18ec1e66aae574ef5ef874fd22729ec5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetupFile/Variant4920060f44a5fa54ff536d82ef58a3b6f9063d4a7881d08c25cc26b1bc57a10d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:138a62eefbaed5374cc6a0964aa86ea20d528888fba5a30f2d9d92674a720f2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetupFile/Variant4920060f44a5fa54ff536d82ef58a3b6f9063d4a7881d08c25cc26b1bc57a10d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3b82fe7608e73c7fb7a333d154b4d579767f622e695ac78bf7397d89c85d079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def runLakeSetupFile
    (m                 : DocumentMeta)
    (lakePath filePath : System.FilePath)
    (header            : ModuleHeader)
    (handleStderr      : String → IO Unit)
    : IO LakeSetupFileOutput := do
  let mut args := #["setup-file", filePath.toString, "-"]
  if m.dependencyBuildMode matches .never then
    args := args.push "--no-build" |>.push "--no-cache"
  let spawnArgs : Process.SpawnArgs := {
    stdin  := Process.Stdio.piped
    stdout := Process.Stdio.piped
    stderr := Process.Stdio.piped
    cmd    := lakePath.toString
    args
  }
  let lakeProc ← Process.spawn spawnArgs
  let (stdin, lakeProc) ← lakeProc.takeStdin
  stdin.putStrLn (toJson header).compress

  let rec processStderr (acc : String) : IO String := do
    let line ← lakeProc.stderr.getLine
    if line == "" then
      return acc
    else
      handleStderr line
      processStderr (acc ++ line)
  let stderr ← ServerTask.IO.asTask (processStderr "")

  let stdout := String.trimAscii (← lakeProc.stdout.readToEnd) |>.copy
  let stderr ← IO.ofExcept stderr.get
  let exitCode ← lakeProc.wait
  return ⟨spawnArgs, exitCode, stdout, stderr⟩

/-- Result of running `lake setup-file`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetupFile/Variant4920060f44a5fa54ff536d82ef58a3b6f9063d4a7881d08c25cc26b1bc57a10d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetupFile/Variant4920060f44a5fa54ff536d82ef58a3b6f9063d4a7881d08c25cc26b1bc57a10d.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cba7ef18ec1e66aae574ef5ef874fd22729ec5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
