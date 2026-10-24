-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RelPathFrom.Variantc427189707c935c71e02a3c08af83d94432fdf954f76aeb840ae4979a6baa9ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c427189707c935c71e02a3c08af83d94432fdf954f76aeb840ae4979a6baa9ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.RelPathFrom.Variantc427189707c935c71e02a3c08af83d94432fdf954f76aeb840ae4979a6baa9ae","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"c427189707c935c71e02a3c08af83d94432fdf954f76aeb840ae4979a6baa9ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/FilePath.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Data.Json
import Init.Data.String.TakeDrop
import Init.Data.String.Modify
import Init.System.Platform


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RelPathFrom.Variantc427189707c935c71e02a3c08af83d94432fdf954f76aeb840ae4979a6baa9ae

open System Lean

namespace Lake

/-- Returns the portion of `path` relative to `root`. If none, returns `path` verbatim. -/
public def relPathFrom (root path : FilePath) : FilePath :=
  if let some relPath := path.toString.dropPrefix? root.toString then
    FilePath.mk (relPath.drop 1).toString -- remove leading `/`
  else
    path

/--
Convert a relative file path to a platform-independent string.
Uses `/` as the path separator, even on Windows.
-/
public def mkRelPathString (path : FilePath) : String :=
  if System.Platform.isWindows then
    path.toString.map fun c => if c = '\\' then '/' else c
  else
    path.toString

public scoped instance : ToJson FilePath where
  toJson path := toJson <| mkRelPathString path

/--
Joins a two (potentially) relative paths.
If either path is `.`, this returns the other.
-/
public def joinRelative (a b : FilePath) : System.FilePath :=
  if b == "." then a
  else if a == "." then b
  else inline FilePath.join a b

public scoped instance : Div FilePath where
  div := joinRelative

public scoped instance : HDiv FilePath String FilePath where
  hDiv p sub := joinRelative p ⟨sub⟩

/--
Creates a module `Name` from a file path.
The components of the path become string components of the `Name`.
Before conversion, normalizes the path, removes any extensions, and
strips a trailing path separator.

Examples:
* ``modOfFilePath "Foo/Bar" = `Foo.Bar``
* ``modOfFilePath "Foo/Bar/" = `Foo.Bar``
* ``modOfFilePath "Foo/Bar.lean" = `Foo.Bar``
* ``modOfFilePath "Foo/Bar.tar.gz" = `Foo.Bar``
* ``modOfFilePath "Foo/Bar.lean/" = `Foo.«Bar.lean»``
-/
public def modOfFilePath (path : FilePath) : Name :=
  let path := removeExts path.normalize.toString
  let path := path.dropSuffix FilePath.pathSeparator.toString
  FilePath.components path.copy |>.foldl .str .anonymous
where
  removeExts (s : String) (i := s.rawEndPos) (e := s.rawEndPos) :=
    if h : i = 0 then
      String.Pos.Raw.extract s 0 e
    else
      have := String.Pos.Raw.prev_lt_of_pos s i h
      let i' := i.prev s
      let c  := i'.get s
      if c == FilePath.pathSeparator then
        String.Pos.Raw.extract s 0 e
      else if c == '.' then
        removeExts s i' i'
      else
        removeExts s i' e
  termination_by i.1

attribute [deprecated "Deprecated without replacement." (since := "2025-08-01")] modOfFilePath
