-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArtifactDescr.Variant6edd8e732af8508a860320f99f54c154f6cae473bfe9e2b0d51c609987bb70aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6edd8e732af8508a860320f99f54c154f6cae473bfe9e2b0d51c609987bb70aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ArtifactDescr.Variant6edd8e732af8508a860320f99f54c154f6cae473bfe9e2b0d51c609987bb70aa","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"6edd8e732af8508a860320f99f54c154f6cae473bfe9e2b0d51c609987bb70aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/Artifact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Build.Trace


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArtifactDescr.Variant6edd8e732af8508a860320f99f54c154f6cae473bfe9e2b0d51c609987bb70aa

open System Lean

namespace Lake

/-- Returns the relative file path used for an artifact in the Lake cache (i.e., `{hash}.{ext}`). -/
@[inline] public def artifactPath (contentHash : Hash) (ext := "art") : FilePath :=
  if ext.isEmpty then contentHash.toString else s!"{contentHash}.{ext}"

/-- The information needed to identify a single artifact within the Lake cache. -/
public structure ArtifactDescr where
  /-- The artifact's content hash. -/
  hash : Hash
  /-- The artifact's file extension. -/
  ext : String := "art"
  deriving Inhabited, Repr

/--
A content-hashed artifact that should have the file extension `ext`.

Many applications care about the extension of a file (e.g., use it determine
what kind of operation to perform), so the content hash alone may not be sufficient to
produce a useable artifact for consumers.
-/
@[inline] public def artifactWithExt (contentHash : Hash) (ext := "art") : ArtifactDescr :=
  {hash := contentHash, ext}

-- discourage direct use of the constructor
attribute [deprecated artifactWithExt (since := "2025-08-30")] ArtifactDescr.mk

namespace ArtifactDescr

/-- Returns the relative file path used for the output's artifact in the Lake cache (c.f. `artifactPath`). -/
@[inline] public def relPath (self : ArtifactDescr) : FilePath :=
  artifactPath self.hash self.ext

public instance : ToString ArtifactDescr := ⟨(·.relPath.toString)⟩
public instance : ToJson ArtifactDescr := ⟨(toJson ·.relPath)⟩

/-- Parse an output's relative file path into an `ArtifactDescr`. -/
public def ofFilePath? (path : FilePath) : Except String ArtifactDescr := do
  let s := path.toString
  let pos := s.find '.'
  if h : pos.IsAtEnd then
    let some hash := Hash.ofString? s
      | throw "expected artifact file name to be a content hash"
    return {hash, ext := ""}
  else
    let some hash := Hash.ofString? <| s.extract s.startPos pos
      | throw "expected artifact file name to be a content hash"
    let ext := s.extract (pos.next h) s.endPos
    return {hash, ext}

public protected def fromJson? (data : Json) : Except String ArtifactDescr := do
  match fromJson? data with
  | .ok (out : String) => ofFilePath? out
  | .error e => throw s!"artifact in unexpected JSON format: {e}"

public instance : FromJson ArtifactDescr := ⟨ArtifactDescr.fromJson?⟩

end ArtifactDescr

/-- A file with a known content hash. -/
public structure Artifact extends descr : ArtifactDescr where
  /-- The preferred path to the artifact on the file system. -/
  path : FilePath
  /-- The artifact's. This is used, for example, as a caption in traces. -/
  name := path.toString
  /-- The artifact's modification time. -/
  mtime : MTime
  deriving Inhabited, Repr

namespace Artifact

/-- Sets the `name` of the artifact. -/
@[inline] public def withName (name : String) (self : Artifact) : Artifact :=
  {self with name := name}

/-- Sets the `name` and `path` of the artifact using the file outside the Lake artifact cache. -/
@[inline] public def useLocalFile (path : FilePath) (self : Artifact) : Artifact :=
  {self with name := path.toString, path}

/--The build trace formed from this single artifact. -/
public def trace (self : Artifact) : BuildTrace :=
  {caption := self.name, mtime := self.mtime, hash := self.hash}
