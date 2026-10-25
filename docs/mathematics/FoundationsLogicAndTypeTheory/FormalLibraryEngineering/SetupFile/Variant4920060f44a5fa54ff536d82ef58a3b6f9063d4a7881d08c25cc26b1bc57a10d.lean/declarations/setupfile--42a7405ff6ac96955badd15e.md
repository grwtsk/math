# setupFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f2fc30336c2181a885fbb7a490d61ba2a54d39830294e74c5aef2777dfe12b2",
  "kind": "def",
  "lexical_name": "setupFile",
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
  "slug": "setupfile--42a7405ff6ac96955badd15e",
  "source": {
    "blob": "2cba7ef18ec1e66aae574ef5ef874fd22729ec5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetupFile/Variant4920060f44a5fa54ff536d82ef58a3b6f9063d4a7881d08c25cc26b1bc57a10d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42a7405ff6ac96955badd15ec5ea6f1a79b2f4a6ad27f91b6fee427647d6c3f8",
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

Occurrence: `declaration:1f2fc30336c2181a885fbb7a490d61ba2a54d39830294e74c5aef2777dfe12b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def setupFile (m : DocumentMeta) (header : ModuleHeader) (handleStderr : String → IO Unit) : IO FileSetupResult := do
  let some filePath := System.Uri.fileUriToPath? m.uri
    | return FileSetupResult.noLakefile -- untitled files have no lakefile

  let lakePath ← determineLakePath
  if !(← System.FilePath.pathExists lakePath) then
    return FileSetupResult.noLakefile

  let result ← runLakeSetupFile m lakePath filePath header handleStderr

  let cmdStr := " ".intercalate (toString result.spawnArgs.cmd :: result.spawnArgs.args.toList)

  match result.exitCode with
  | 0 =>
    let Except.ok (setup : ModuleSetup) := Json.parse result.stdout >>= fromJson?
      | return FileSetupResult.error s!"Invalid output from `{cmdStr}`:\n{result.stdout}\nstderr:\n{result.stderr}"
    setup.dynlibs.forM loadDynlib
    return FileSetupResult.success setup
  | 2 => -- exit code for lake reporting that there is no lakefile
    return FileSetupResult.noLakefile
  | 3 => -- exit code for `--no-build`
    return FileSetupResult.importsOutOfDate
  | _ =>
    return FileSetupResult.error s!"`{cmdStr}` failed:\n{result.stdout}\nstderr:\n{result.stderr}"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetupFile/Variant4920060f44a5fa54ff536d82ef58a3b6f9063d4a7881d08c25cc26b1bc57a10d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetupFile/Variant4920060f44a5fa54ff536d82ef58a3b6f9063d4a7881d08c25cc26b1bc57a10d.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cba7ef18ec1e66aae574ef5ef874fd22729ec5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
