-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanUnfoldDefault.Variantdad43a9b8534ca119bc2e3ac4ebe7f29ba8fa925b213b645277dd8aa7a48f3a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dad43a9b8534ca119bc2e3ac4ebe7f29ba8fa925b213b645277dd8aa7a48f3a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CanUnfoldDefault.Variantdad43a9b8534ca119bc2e3ac4ebe7f29ba8fa925b213b645277dd8aa7a48f3a4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dad43a9b8534ca119bc2e3ac4ebe7f29ba8fa925b213b645277dd8aa7a48f3a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/GetUnfoldableConst.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Basic

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanUnfoldDefault.Variantdad43a9b8534ca119bc2e3ac4ebe7f29ba8fa925b213b645277dd8aa7a48f3a4

public section
namespace Lean.Meta

/--
Implements the `TransparencyMode` hierarchy for unfolding decisions.
See `TransparencyMode` and `ReducibilityStatus` for the design rationale.
-/
def canUnfoldDefault (cfg : Config) (info : ConstantInfo) : CoreM Bool := do
  match cfg.transparency with
  | .none => return false
  | .all  => return true
  | .default => return !(← isIrreducible info.name)
  | m =>
    let status ← getReducibilityStatus info.name
    if status == .reducible then
      return true
    else if status == .instanceReducible && (m == .instances || m == .implicit) then
      return true
    else if status == .implicitReducible && m == .implicit then
      return true
    else
      return false

def canUnfold (info : ConstantInfo) : MetaM Bool := do
  let ctx ← read
  let cfg ← getConfig
  if let some f := ctx.canUnfold? then
    f cfg info
  else
    canUnfoldDefault cfg info

/--
Look up a constant name, returning the `ConstantInfo`
if it is a def/theorem that should be unfolded at the current reducibility settings,
or `none` otherwise.

This is part of the implementation of `whnf`.
External users wanting to look up names should be using `Lean.getConstInfo`.
-/
def getUnfoldableConst? (constName : Name) : MetaM (Option ConstantInfo) := do
  let some ainfo := (← getEnv).findAsync? constName | throwUnknownConstantAt (← getRef) constName
  match ainfo.kind with
  | .thm => return none
  | .defn => if (← canUnfold ainfo.toConstantInfo) then return ainfo.toConstantInfo else return none
  | _ => return none

/--
As with `getUnfoldableConst?` but return `none` instead of failing if the constant is not found.
-/
def getUnfoldableConstNoEx? (constName : Name) : MetaM (Option ConstantInfo) := do
  match (← getEnv).find? constName with
  | some (.thmInfo _)          => return none
  | some (info@(.defnInfo _)) => if (← canUnfold info) then return info else return none
  | some (.axiomInfo _)       => recordUnfoldAxiom constName; return none
  | _                         => return none

end Meta
