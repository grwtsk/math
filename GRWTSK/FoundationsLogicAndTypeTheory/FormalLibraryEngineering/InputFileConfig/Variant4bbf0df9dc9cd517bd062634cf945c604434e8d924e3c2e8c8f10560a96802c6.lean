-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pattern.Variante8807cf4566654a436facb93b1bef56bca4a76a5b41ee45646c15425c762607f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8807cf4566654a436facb93b1bef56bca4a76a5b41ee45646c15425c762607f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Pattern.Variante8807cf4566654a436facb93b1bef56bca4a76a5b41ee45646c15425c762607f","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"e8807cf4566654a436facb93b1bef56bca4a76a5b41ee45646c15425c762607f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/InputFileConfig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Pattern
public import Lake.Config.MetaClasses
public import Init.Data.ToString.Name
meta import all Lake.Config.Meta
import Lake.Config.Meta


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pattern.Variante8807cf4566654a436facb93b1bef56bca4a76a5b41ee45646c15425c762607f

open Lean System

namespace Lake

/-- The declarative configuration for a single input file. -/
public configuration InputFileConfig (name : Name) where
  /--
  The path to the input file (relative to the package root).

  Defaults to the name of the target.
  -/
  path : FilePath := name.toString (escape := false)
  /--
  Whether this is a text file.
  If so, Lake normalize line endings for its trace.
  This avoids rebuilds across platforms with different line endings.

  Defaults to `false`.
  -/
  text : Bool := false

/-- The declarative configuration for an input directory. -/
public configuration InputDirConfig (name : Name) where
  /--
  The path to the input directory (relative to the package root).

  Defaults to the name of the target.
  -/
  path : FilePath := name.toString (escape := false)
  /--
  Whether the directory is composed of text files.
  If so, Lake normalize line endings for their traces.
  This avoids rebuilds across platforms with different line endings.

  Defaults to `false`.
  -/
  text : Bool := false
  /-
  Includes only the files from the directory
  whose paths satisfy the pattern.

  Defaults to including every file.
  -/
  filter : PathPat := .star
