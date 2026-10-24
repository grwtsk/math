# putFilesViaCurl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0222e2cd056af71fe4be3f942fd90290881bb883c10ab77dd6e690cc2efadeaf",
  "kind": "def",
  "lexical_name": "putFilesViaCurl",
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
  "slug": "putfilesviacurl--54eaa17bb5c978a71356d4ba",
  "source": {
    "blob": "70771075902884ac1a3ab014ae75e70fc9ab3897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Curl/Variant1fdf7c27b96ce2429eb10cdf9910afc40f4ce84c86bfa96309f7418b70a72ec6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54eaa17bb5c978a71356d4ba81b50b3abb5a13f49643796b92ea3c5b7aae90ec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Curl/Variant1fdf7c27b96ce2429eb10cdf9910afc40f4ce84c86bfa96309f7418b70a72ec6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0222e2cd056af71fe4be3f942fd90290881bb883c10ab77dd6e690cc2efadeaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def putFilesViaCurl
    (dest : StagedUploadDest) (files : Array FilePath) (tempConfigFilePath : FilePath)
    (overwrite : Bool) (signArgs : Array String) : IO Unit := do
  -- TODO: reimplement using HEAD requests?
  let size := files.size
  if size > 0 then
    IO.FS.writeFile tempConfigFilePath (mkPutConfigContent dest files)
    IO.println
      s!"Attempting to upload {size} file(s) under {dest.filesPrefix} (container: {dest.label})"
    -- A retry after a PUT that landed is safe: the server answers a
    -- non-overwrite retry with 409/412, which `classifyUpload` excuses, and
    -- an overwrite retry re-sends the same bytes.
    let args := uploadPutArgs signArgs overwrite ++ #["-X", "PUT", "--parallel"] ++
      curlRetryArgs (supportLegacyCurl := false) ++
      -- `%{json}` prints a JSON report for each finished transfer. The
      -- leading newline keeps each report on its own line even if something
      -- else reaches stdout ahead of it.
      #["--write-out", "\n%{json}\n", "--config", tempConfigFilePath.toString]
    let (s, _) ← monitorCurl args size "Uploaded" "speed_upload"
      (classifyUpload · · !overwrite) (removeOnError := false) (decompConfig := none)
    IO.FS.removeFile tempConfigFilePath
    -- Surface genuine upload failures. `monitorCurl` excuses already-present
    -- blobs (409/412 on a non-overwrite put), so a re-upload of files the
    -- server already has does not trip this.
    if s.failed > 0 then
      IO.eprintln s!"Uploading {s.failed} file(s) failed"
      IO.Process.exit 1
  else IO.println "No files to upload"

/--
The staged put on the curl tool: validate the system curl, then send the
`.ltar` files named by `fileNames` under `srcDir`, then the per-SHA marker
when `markerSha?` names one. `getSignArgs` produces the backend's signing
arguments and runs once per curl invocation: once for the files batch and
once for the marker. The curl config file is written under `srcDir` for the
duration of the transfer, named after this process (`IO.curlConfigIn`). A files
failure exits 1; a marker failure only warns (see `uploadMarkerWith`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Curl/Variant1fdf7c27b96ce2429eb10cdf9910afc40f4ce84c86bfa96309f7418b70a72ec6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Curl/Variant1fdf7c27b96ce2429eb10cdf9910afc40f4ce84c86bfa96309f7418b70a72ec6.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70771075902884ac1a3ab014ae75e70fc9ab3897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
