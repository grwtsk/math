# getFiles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:537ea7455636e40432aee95c8e655e587fbf8fafc80f67181da59e1fb10feec5",
  "kind": "def",
  "lexical_name": "getFiles",
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
  "slug": "getfiles--813904df1cf3eace7d52a507",
  "source": {
    "blob": "dd81bd18c951748911d7ae56289c5ec095f0c087",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1116,
    "line": 1054,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:813904df1cf3eace7d52a507d9f23f2c32c4579aba8b4c05b824d6fda9ad77f9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:537ea7455636e40432aee95c8e655e587fbf8fafc80f67181da59e1fb10feec5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1054–1116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getFiles
    (repo : String) (hashMap : IO.ModuleHashMap)
    (forceDownload forceUnpack parallel decompress : Bool)
    (unsafeScopes : List String := [])
    : IO.CacheM Unit := do
  let isMathlibRoot ← IO.isMathlibRoot
  unless isMathlibRoot do
    checkForToolchainMismatch
    checkForManifestMismatch

  let mathlibDepPath := (← read).mathlibDepPath
  let startTime ← IO.monoMsNow

  -- Start background decompression of already-cached files before downloading.
  -- Skip when forceDownload is set, since downloadFiles will re-download (and pipeline-decompress)
  -- all files including already-cached ones, which would race with this background task.
  let bgDecomp ← if decompress && !forceDownload then
    if let some plan ← IO.prepareDecompConfig hashMap forceUnpack then
      if plan.alreadyDecompressed > 0 then
        IO.println s!"Decompressing {plan.needsDecomp} already-cached file(s) \
          ({plan.alreadyDecompressed} already decompressed)"
      else
        IO.println s!"Decompressing {plan.needsDecomp} already-cached file(s)"
      let task ← IO.asTask (IO.spawnLeanTarDecompress plan.config forceUnpack)
      pure (some (task, plan.needsDecomp))
    else pure none
  else pure none

  let failed ← downloadFiles repo hashMap forceDownload parallel
    (warnOnMissing := true)
    (decompress := decompress) (forceUnpack := forceUnpack)
    isMathlibRoot mathlibDepPath (unsafeScopes := unsafeScopes)
  if failed > 0 then
    IO.println s!"Downloading {failed} files failed"
    IO.Process.exit 1

  -- Wait for decompression of already-cached files to complete
  if let some (task, size) := bgDecomp then
    match task.get with
    | .ok exitCode =>
      if exitCode != 0 then
        IO.eprintln s!"Decompression of already-cached files failed (exit code {exitCode})"
        IO.Process.exit 1
      IO.println s!"Decompressed {size} already-cached file(s)"
    | .error e =>
      IO.eprintln s!"Decompression of already-cached files error: {e}"
      IO.Process.exit 1

  let elapsed := (← IO.monoMsNow) - startTime
  if decompress then
    if bgDecomp.isSome && parallel then
      -- Background task handled pre-cached files, download pipeline handled new files
      IO.println s!"Completed successfully in {elapsed} ms!"
    else
      -- Either no background decompression ran, or non-parallel mode needs final sweep
      IO.unpackCache hashMap forceUnpack
  else
    IO.println "Downloaded all files successfully!"

end Get

section Stage

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantc7113a36c9db5ac3f746f4e6d5290d6f723c6c9b7c5e8ab7e0a3bddcba19213e.lean#L1054).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd81bd18c951748911d7ae56289c5ec095f0c087` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
