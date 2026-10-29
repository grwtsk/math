-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternLib.Variantc3c272b70467ea22901fca8823134ce2417462c767c9beef9ee5d86cbde281f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c3c272b70467ea22901fca8823134ce2417462c767c9beef9ee5d86cbde281f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ExternLib.Variantc3c272b70467ea22901fca8823134ce2417462c767c9beef9ee5d86cbde281f5","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"c3c272b70467ea22901fca8823134ce2417462c767c9beef9ee5d86cbde281f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/ExternLib.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.ConfigTarget


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternLib.Variantc3c272b70467ea22901fca8823134ce2417462c767c9beef9ee5d86cbde281f5

namespace Lake
open Lean (Name)

/-- An external library -- its package plus its configuration. -/
public abbrev ExternLib := ConfigTarget ExternLib.configKind

/-- The external libraries of the package (as an Array). -/
@[inline] public def Package.externLibs (self : Package) : Array ExternLib :=
  self.configTargets ExternLib.configKind

/-- Try to find a external library in the package with the given name. -/
@[inline] public def Package.findExternLib? (name : Name) (self : Package) : Option ExternLib :=
  self.findConfigTarget? ExternLib.configKind name

namespace ExternLib

/-- The library's user-defined configuration. -/
@[inline] public nonrec def config (self : ExternLib) : ExternLibConfig self.pkg.keyName self.name :=
  self.config

/--
The arguments to pass to `leanc` when linking the external library.
That is, the package's `moreLinkArgs`.
-/
@[inline] public def linkArgs (self : ExternLib) : Array String :=
  self.pkg.moreLinkArgs

/-- The name of the package target used to build the external library's static binary. -/
public abbrev staticTargetName (self : ExternLib) : Name :=
  .str self.name "static"
