-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SharedLibExt.Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.SharedLibExt.Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/NativeLib.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.System.IO
import Init.Data.ToString.Macro
import Init.System.Platform


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SharedLibExt.Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee

open System
namespace Lake

/-- The shared library file extension for the `Platform`. -/
public def sharedLibExt : String :=
  if Platform.isWindows then "dll"
  else if Platform.isOSX  then "dylib"
  else "so"

/-- Convert a library name into its static library file name for the `Platform`. -/
public def nameToStaticLib (name : String) (libPrefixOnWindows := false) : String :=
  if libPrefixOnWindows || !System.Platform.isWindows then s!"lib{name}.a" else s!"{name}.a"

/-- Convert a library name into its shared library file name for the `Platform`. -/
public def nameToSharedLib (name : String) (libPrefixOnWindows := false) : String :=
  let libPrefix := if libPrefixOnWindows || !System.Platform.isWindows then "lib" else ""
  s!"{libPrefix}{name}.{sharedLibExt}"

/--
The environment variable that stores the search path
used to find shared libraries on the `Platform`.
-/
public def sharedLibPathEnvVar : String :=
  if Platform.isWindows then
    "PATH"
  else if Platform.isOSX then
    "DYLD_LIBRARY_PATH"
  else
    "LD_LIBRARY_PATH"

/-- Gets a `SearchPath` from an environment variable. -/
public def getSearchPath (envVar : String) : BaseIO SearchPath := do
  match (← IO.getEnv envVar) with
  | some path => pure <| SearchPath.parse path
  | none => pure []
