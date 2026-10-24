-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DescopeSyntax.Variant04ec57ac6909c15e13475ca57eb7045a0d8b33c0589ef26f9937647502a10910","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04ec57ac6909c15e13475ca57eb7045a0d8b33c0589ef26f9937647502a10910","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.DescopeSyntax.Variant04ec57ac6909c15e13475ca57eb7045a0d8b33c0589ef26f9937647502a10910","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"04ec57ac6909c15e13475ca57eb7045a0d8b33c0589ef26f9937647502a10910","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/CLI/Translate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Lang
public import Lake.Config.Package
import Lean.PrettyPrinter
import Lake.CLI.Translate.Toml
import Lake.CLI.Translate.Lean
import Lake.Load.Lean.Elab


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DescopeSyntax.Variant04ec57ac6909c15e13475ca57eb7045a0d8b33c0589ef26f9937647502a10910

namespace Lake
open Toml Lean System PrettyPrinter

partial def descopeSyntax : Syntax → Syntax
| .ident info rawVal val preresolved =>
  .ident info rawVal val.eraseMacroScopes preresolved
| .node info k args => .node info k <| args.map descopeSyntax
| stx => stx

def descopeTSyntax (stx : TSyntax k) : TSyntax k :=
  ⟨descopeSyntax stx.raw⟩

public def Package.mkConfigString (pkg : Package) (lang : ConfigLang) : LogIO String := do
  match lang with
  | .toml => pure <| ppTable pkg.mkTomlConfig
  | .lean => do
    let env ← importModulesUsingCache #[`Lake] {} 1024
    let pp := ppModule <| descopeTSyntax <| pkg.mkLeanConfig
    match (← pp.toIO {fileName := "", fileMap := default} {env} |>.toBaseIO) with
    | .ok (fmt, _) => pure <| (toString fmt).trimAscii.copy ++ "\n"
    | .error ex =>
      error s!"(internal) failed to pretty print Lean configuration: {ex.toString}"
