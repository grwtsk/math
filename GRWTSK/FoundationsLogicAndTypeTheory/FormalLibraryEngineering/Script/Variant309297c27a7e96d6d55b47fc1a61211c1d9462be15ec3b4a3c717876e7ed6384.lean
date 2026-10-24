-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Script.Variant546df1776d1cd2908b46850fb3ce988e78b70e22034d7b1d1d20854a808f6aef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"546df1776d1cd2908b46850fb3ce988e78b70e22034d7b1d1d20854a808f6aef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Script.Variant546df1776d1cd2908b46850fb3ce988e78b70e22034d7b1d1d20854a808f6aef","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"546df1776d1cd2908b46850fb3ce988e78b70e22034d7b1d1d20854a808f6aef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/Script.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Dynamic
public import Init.System.IO
public import Lake.Util.Exit
public import Lake.Config.Context


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Script.Variant546df1776d1cd2908b46850fb3ce988e78b70e22034d7b1d1d20854a808f6aef

namespace Lake

/--
The type of a `Script`'s monad.

It is an `IO` monad equipped information about the Lake configuration.
-/
public abbrev ScriptM := LakeT IO

/--
The type of a `Script`'s function.

It is similar to the `main` function's signature, except the monad is
also equipped with information about the Lake configuration.
-/
public abbrev ScriptFn := (args : List String) → ScriptM ExitCode

public instance : TypeName ScriptFn := unsafe (.mk _ ``ScriptFn)

/--
A package `Script` is a named `ScriptFn` definition with a some optional documentation.

It can be run by `lake run <name> [-- <args>]`.
-/
public structure Script where
  /-- The full name of the `Script` (e.g., `pkg/script`). -/
  name : String
  fn : ScriptFn
  doc? : Option String
  deriving Inhabited

/-- Run the `script` with the specified CLI `args`. -/
public def Script.run (args : List String) (self : Script) : ScriptM ExitCode :=
  self.fn args
