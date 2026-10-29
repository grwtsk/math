-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedModuleEntry.Variant3822ba4a387054cb915f36c1ad2f9d7450cb1d93a36f76f7b340bb83854534a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3822ba4a387054cb915f36c1ad2f9d7450cb1d93a36f76f7b340bb83854534a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeprecatedModuleEntry.Variant3822ba4a387054cb915f36c1ad2f9d7450cb1d93a36f76f7b340bb83854534a6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3822ba4a387054cb915f36c1ad2f9d7450cb1d93a36f76f7b340bb83854534a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/DeprecatedModule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Lean.Compiler.ModPkgExt


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedModuleEntry.Variant3822ba4a387054cb915f36c1ad2f9d7450cb1d93a36f76f7b340bb83854534a6

public section

namespace Lean

structure DeprecatedModuleEntry where
  message? : Option String := none
  since? : Option String := none
  deriving Inhabited

register_builtin_option linter.deprecated.module : Bool := {
  defValue := true
  descr := "if true, generate warnings when importing deprecated modules"
}

builtin_initialize deprecatedModuleExt : ModuleEnvExtension <| Option DeprecatedModuleEntry ←
  registerModuleEnvExtension <| pure none

namespace Environment

def getDeprecatedModuleByIdx? (env : Environment) (idx : ModuleIdx) : Option DeprecatedModuleEntry :=
  deprecatedModuleExt.getStateByIdx? env idx |>.join

def setDeprecatedModule (entry : Option DeprecatedModuleEntry) (env : Environment) : Environment :=
  deprecatedModuleExt.setState env entry

end Environment

def formatDeprecatedModuleWarning (env : Environment) (idx : ModuleIdx) (modName : Name)
    (entry : DeprecatedModuleEntry) : String :=
  let msg := entry.message?.getD ""
  let replacements := env.header.moduleData[idx.toNat]!.imports.filter fun imp =>
    imp.module != `Init
  let lines := replacements.foldl (init := "") fun acc imp =>
    acc ++ s!"import {imp.module}\n"
  s!"{msg}\n\
    '{modName}' has been deprecated: please replace this import by\n\n\
    {lines}"

end Lean
