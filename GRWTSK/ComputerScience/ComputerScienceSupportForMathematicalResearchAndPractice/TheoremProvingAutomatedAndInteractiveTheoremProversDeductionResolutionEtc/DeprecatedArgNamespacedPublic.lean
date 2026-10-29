-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedArgEntry.Variant29f091dbd8fb66721b0b76c830320321bd0ec9ae65b1c6e8a00a5addcc0ecd30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29f091dbd8fb66721b0b76c830320321bd0ec9ae65b1c6e8a00a5addcc0ecd30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeprecatedArgEntry.Variant29f091dbd8fb66721b0b76c830320321bd0ec9ae65b1c6e8a00a5addcc0ecd30","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"29f091dbd8fb66721b0b76c830320321bd0ec9ae65b1c6e8a00a5addcc0ecd30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/DeprecatedArg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Lean.EnvExtension
public import Lean.Message
import Lean.Elab.Term


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedArgEntry.Variant29f091dbd8fb66721b0b76c830320321bd0ec9ae65b1c6e8a00a5addcc0ecd30

public section

namespace Lean.Elab
open Meta

register_builtin_option linter.deprecated.arg : Bool := {
  defValue := true
  descr := "if true, generate deprecation warnings and errors for deprecated parameters"
}

/-- Entry mapping an old parameter name to a new (or no) parameter for a given declaration. -/
structure DeprecatedArgEntry where
  declName : Name
  oldArg : Name
  newArg? : Option Name := none
  text? : Option String := none
  since? : Option String := none
  deriving Inhabited

/-- State: `declName → (oldArg → entry)` -/
abbrev DeprecatedArgState := NameMap (NameMap DeprecatedArgEntry)

private def addDeprecatedArgEntry (s : DeprecatedArgState) (e : DeprecatedArgEntry) : DeprecatedArgState :=
  let inner := (s.find? e.declName).getD {} |>.insert e.oldArg e
  s.insert e.declName inner

builtin_initialize deprecatedArgExt :
    SimplePersistentEnvExtension DeprecatedArgEntry DeprecatedArgState ←
  registerSimplePersistentEnvExtension {
    addEntryFn := addDeprecatedArgEntry
    addImportedFn := mkStateFromImportedEntries addDeprecatedArgEntry {}
  }

/-- Look up a deprecated argument mapping for `(declName, argName)`. -/
def findDeprecatedArg? (env : Environment) (declName : Name) (argName : Name) :
    Option DeprecatedArgEntry :=
  (deprecatedArgExt.getState env |>.find? declName) >>= (·.find? argName)

/-- Format the deprecation warning message for a deprecated argument. -/
def formatDeprecatedArgMsg (entry : DeprecatedArgEntry) : MessageData :=
  let base := match entry.newArg? with
  | some newArg =>
    m!"parameter `{entry.oldArg}` of `{.ofConstName entry.declName}` has been deprecated, \
      use `{newArg}` instead"
  | none =>
    m!"parameter `{entry.oldArg}` of `{.ofConstName entry.declName}` has been deprecated"
  match entry.text? with
  | some text => base ++ m!": {text}"
  | none => base

builtin_initialize registerBuiltinAttribute {
  name := `deprecated_arg
  descr := "mark a parameter as deprecated"
  add := fun declName stx _kind => do
    let `(attr| deprecated_arg $oldId $[$newId?]? $[$text?]? $[(since := $since?)]?) := stx
      | throwError "Invalid `[deprecated_arg]` attribute syntax"
    let oldArg := oldId.getId
    let newArg? := newId?.map TSyntax.getId
    let text? := text?.map TSyntax.getString |>.filter (!·.isEmpty)
    let since? := since?.map TSyntax.getString
    let info ← getConstInfo declName
    let paramNames ← MetaM.run' do
      forallTelescopeReducing info.type fun xs _ =>
        xs.mapM fun x => return (← x.fvarId!.getDecl).userName
    if let some newArg := newArg? then
      -- We have a replacement provided
      unless Array.any paramNames (· == newArg) do
        throwError "`{newArg}` is not a parameter of `{declName}`"
      if Array.any paramNames (· == oldArg) then
        throwError "`{oldArg}` is still a parameter of `{declName}`; \
          rename it to `{newArg}` before adding `@[deprecated_arg]`"
    else
      -- We do not have a replacement provided
      if Array.any paramNames (· == oldArg) then
        throwError "`{oldArg}` is still a parameter of `{declName}`; \
          remove it before adding `@[deprecated_arg]`"
    if since?.isNone then
      logWarning "`[deprecated_arg]` attribute should specify the date or library version \
        at which the deprecation was introduced, using `(since := \"...\")`"
    modifyEnv fun env => deprecatedArgExt.addEntry env {
      declName, oldArg, newArg?, text?, since?
    }
}

end Lean.Elab
