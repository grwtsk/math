# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IO.Variant5c0f7adf834746bf91d7f1939e4c5508a24369d61f1fc779c651450ab982f793

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddcdd8406b457cda32e8803c419b00bf8840ad58` · SHA-256 `19e66dadbd07e85b6118b81e779a7207de287a31c2f145b0278f382f06bb166d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CreateParentDirs.Variant9947e303dd662b6a6cb9c83e578dffc48fcac854d10e3ef08e9eaa8e729e2b1d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9947e303dd662b6a6cb9c83e578dffc48fcac854d10e3ef08e9eaa8e729e2b1d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.CreateParentDirs.Variant9947e303dd662b6a6cb9c83e578dffc48fcac854d10e3ef08e9eaa8e729e2b1d","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"9947e303dd662b6a6cb9c83e578dffc48fcac854d10e3ef08e9eaa8e729e2b1d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/IO.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.System.IO


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CreateParentDirs.Variant9947e303dd662b6a6cb9c83e578dffc48fcac854d10e3ef08e9eaa8e729e2b1d

open System

set_option doc.verso true

namespace Lake

/-- Creates any missing parent directories of {lean}`path`. -/
public def createParentDirs (path : FilePath) : IO Unit := do
  if let some dir := path.parent then IO.FS.createDirAll dir

/-- Remove the file at {lean}`path` if it exists. -/
public def removeFileIfExists (path : FilePath) : IO Unit := do
  try IO.FS.removeFile path catch
    | .noFileOrDirectory .. => pure ()
    | e => throw e

/--
Write the UTF-8 encoded string {lean}`content` to {lean}`path`.
If the file already exists, does nothing.
-/
public def writeFileIfNew (path : FilePath) (content : String) : IO Unit := do
  let h ← try IO.FS.Handle.mk path IO.FS.Mode.writeNew catch
    | .alreadyExists .. => return
    | e => throw e
  h.putStr content

/--
Write the bytes of {lean}`content` to {lean}`path`.
If the file already exists, does nothing.
-/
public def writeBinFileIfNew (path : FilePath) (content : ByteArray) : IO Unit := do
  let h ← try IO.FS.Handle.mk path IO.FS.Mode.writeNew catch
    | .alreadyExists .. => return
    | e => throw e
  h.write content

/--
Remove a directory and all its contents.
Like {lean}`IO.FS.removeDirAll`, but does not fail if {lean}`path` does not exist
or if a file is first deleted by a racing process.
-/
public partial def removeDirAllIfExists (path : FilePath) : IO Unit := do
  let ents ← try path.readDir catch
    | .noFileOrDirectory .. => return -- path did not exist or something else was faster
    | e => throw e
  for ent in ents do
    -- Do not follow symlinks
    let mdata ← try ent.path.symlinkMetadata catch
      | .noFileOrDirectory .. => continue -- something else was faster
      | e => throw e
    if mdata.type == .dir then
      removeDirAllIfExists ent.path
    else
      removeFileIfExists ent.path
  try IO.FS.removeDir path catch
    | .noFileOrDirectory .. => return -- something else was faster
    | e => throw e

/-- Copy a file from {lean}`src` to {lean}`dst`. -/
public def copyFile (src dst : FilePath) : IO Unit := do
  let contents ← IO.FS.readBinFile src
  IO.FS.writeBinFile dst contents

/-- Returns the normalized real path of a file if it exists. Otherwise, returns {lean}`""`. -/
public def resolvePath (path : FilePath) : BaseIO FilePath := do
  match (← (IO.FS.realPath path).toBaseIO) with
  | .ok path =>
    -- Real path does not guarantee the file exists on Windows
    if (← path.pathExists) then
      return path.normalize
    else
      return ""
  | _ =>
    return ""

/-- Returns the normalized real path of a file if and only if it exists. -/
@[inline] public def resolvePath? (path : FilePath) : BaseIO (Option FilePath) := do
  let path ← resolvePath path
  return if path.toString.isEmpty then none else some path
```
