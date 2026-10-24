# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Curl.Variantcf05b00fddbb800d8b9708d3d2be234734f2d49dea2758d6d9c6aeb8c106bdfb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68a6359fe74eb19276823556ddca0caa559937b9` · SHA-256 `cd3209f56290e61ece4ca6b014c3aa42a4a2183863889fb600fc883077c2ee8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UploadPutArgs.Variant1fdf7c27b96ce2429eb10cdf9910afc40f4ce84c86bfa96309f7418b70a72ec6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1fdf7c27b96ce2429eb10cdf9910afc40f4ce84c86bfa96309f7418b70a72ec6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.UploadPutArgs.Variant1fdf7c27b96ce2429eb10cdf9910afc40f4ce84c86bfa96309f7418b70a72ec6","mathematical_subject":"Computation.DataStructures","original_sha256":"1fdf7c27b96ce2429eb10cdf9910afc40f4ce84c86bfa96309f7418b70a72ec6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Cache/Upload/Curl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Marcelo Lynch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Marcelo Lynch
-/

import Cache.Upload.Dest

/-!
# The curl upload tool

The built-in transfer tool: parallel curl PUTs against the resolved
destination (`StagedUploadDest`). Each backend module
(`Cache/Upload/Azure.lean`, `Cache/Upload/S3.lean`) calls the tool's entry
point, `putStagedViaCurl`, with its own per-request signing arguments.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UploadPutArgs.Variant1fdf7c27b96ce2429eb10cdf9910afc40f4ce84c86bfa96309f7418b70a72ec6

namespace Cache.Requests

open System (FilePath)

/--
The per-request curl arguments for one upload PUT: the backend's signing
arguments plus the non-overwrite guard. A non-overwrite put adds
`If-None-Match: *`, which Azure and S3-compatible backends answer with
409/412 for a blob that already exists (`classifyUpload` excuses those).

Every backend passes its secrets in the argument list, so callers should print curl
failures without the argument list (`showArgsOnError := false`).
-/
def uploadPutArgs (signArgs : Array String) (overwrite : Bool) : Array String :=
  if overwrite then signArgs else signArgs ++ #["-H", "If-None-Match: *"]

/-- Formats the curl config file that lists the files to upload: each staged
file goes to its `StagedUploadDest.fileURL`, and `stagedUploadDest` resolves
the destination once. The response body goes to the null device: stdout must
carry only the per-transfer JSON reports that `monitorCurl` parses. -/
def mkPutConfigContent (dest : StagedUploadDest) (files : Array FilePath) : String :=
  let l := files.toList.map fun file : FilePath =>
    s!"-T {file.toString}\nurl = {dest.fileURL file.fileName.get!}\n\
      -o {IO.nullDevice}"
  "\n".intercalate l

/-- Calls `curl` to send a set of files to the already-resolved destination
(see `stagedUploadDest`), signed per request with `signArgs`. Exits with
code 1 when any file fails to upload. -/
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
def putStagedViaCurl (dest : StagedUploadDest) (getSignArgs : IO (Array String))
    (srcDir : FilePath) (fileNames : Array String) (overwrite : Bool)
    (markerSha? : Option String) : IO Unit := do
  discard IO.validateCurl
  let files := fileNames.map fun (f : String) => srcDir / f
  putFilesViaCurl dest files (IO.curlConfigIn srcDir) overwrite (← getSignArgs)
  if let some sha := markerSha? then
    uploadMarkerWith (dest.markerURL sha) sha fun file => do
      -- A marker may be overwritten freely, so its PUT carries no
      -- non-overwrite guard.
      let args := uploadPutArgs (← getSignArgs) (overwrite := true) ++
        #["-X", "PUT", "-T", file.toString, dest.markerURL sha]
      -- The argument list carries the credential; keep it out of the failure message.
      discard <| IO.runCurl args (showArgsOnError := false)

end Cache.Requests
```
