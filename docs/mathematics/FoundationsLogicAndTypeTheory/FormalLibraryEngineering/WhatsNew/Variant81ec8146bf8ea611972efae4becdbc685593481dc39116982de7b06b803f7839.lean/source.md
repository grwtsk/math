# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WhatsNew.Variant81ec8146bf8ea611972efae4becdbc685593481dc39116982de7b06b803f7839

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7c1f5e2186e73e99bc819a793dd949d3a4f041e` · SHA-256 `e355e0e7a1d28e3a9ded7cc84c78cde450f499b815cc0b5fa78e322343f8f273`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ThrowUnknownId.Variantd6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ThrowUnknownId.Variantd6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Util/WhatsNew.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

public import Mathlib.Init

/-!
# The `#whats_new` command

Defines a command wrapper that prints the changes the command makes to the
environment.

```
#whats_new in
theorem foo : 42 = 6 * 7 := rfl
```
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ThrowUnknownId.Variantd6107206c63de20e6019fe36c20a6c9228c8d31c9e2ec7c39e042f9ccabfe213

public meta section

open Lean Elab Command

namespace Mathlib.WhatsNew

private def throwUnknownId (id : Name) : CommandElabM Unit :=
  throwError "unknown identifier '{mkConst id}'"

private def levelParamsToMessageData (levelParams : List Name) : MessageData :=
  match levelParams with
  | []    => ""
  | u::us => Id.run do
    let mut m := m!".\{{u}"
    for u in us do
      m := m ++ ", " ++ toMessageData u
    return m ++ "}"

private def mkHeader (kind : String) (id : Name) (levelParams : List Name) (type : Expr)
    (safety : DefinitionSafety) : CoreM MessageData := do
  let m : MessageData :=
    match safety with
    | DefinitionSafety.unsafe  => "unsafe "
    | DefinitionSafety.partial => "partial "
    | DefinitionSafety.safe    => ""
  let m := if isProtected (← getEnv) id then m ++ "protected " else m
  let (m, id) := match privateToUserName? id with
    | some id => (m ++ "private ", id)
    | none    => (m, id)
  let m := m ++ kind ++ " " ++ id ++ levelParamsToMessageData levelParams ++ " : " ++ type
  pure m

private def mkHeader' (kind : String) (id : Name) (levelParams : List Name) (type : Expr)
    (isUnsafe : Bool) : CoreM MessageData :=
  mkHeader kind id levelParams type
    (if isUnsafe then DefinitionSafety.unsafe else DefinitionSafety.safe)

private def printDefLike (kind : String) (id : Name) (levelParams : List Name) (type : Expr)
    (value : Expr) (safety := DefinitionSafety.safe) : CoreM MessageData :=
  return (← mkHeader kind id levelParams type safety) ++ " :=" ++ Format.line ++ value

private def printInduct (id : Name) (levelParams : List Name) (_numParams : Nat) (_numIndices : Nat)
    (type : Expr) (ctors : List Name) (isUnsafe : Bool) : CoreM MessageData := do
  let mut m ← mkHeader' "inductive" id levelParams type isUnsafe
  m := m ++ Format.line ++ "constructors:"
  for ctor in ctors do
    let cinfo ← getConstInfo ctor
    m := m ++ Format.line ++ ctor ++ " : " ++ cinfo.type
  pure m

private def printIdCore (id : Name) : ConstantInfo → CoreM MessageData
  | ConstantInfo.axiomInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    mkHeader' "axiom" id us t u
  | ConstantInfo.defnInfo { levelParams := us, type := t, value := v, safety := s, .. } =>
    printDefLike "def" id us t v s
  | ConstantInfo.thmInfo { levelParams := us, type := t, value := v, .. } =>
    printDefLike "theorem" id us t v
  | ConstantInfo.opaqueInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    mkHeader' "constant" id us t u
  | ConstantInfo.quotInfo { levelParams := us, type := t, .. } =>
    mkHeader' "Quotient primitive" id us t false
  | ConstantInfo.ctorInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    mkHeader' "constructor" id us t u
  | ConstantInfo.recInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    mkHeader' "recursor" id us t u
  | ConstantInfo.inductInfo
      { levelParams := us, numParams, numIndices, type := t, ctors, isUnsafe := u, .. } =>
    printInduct id us numParams numIndices t ctors u

def diffExtension (old new : Environment)
    (ext : PersistentEnvExtension EnvExtensionEntry EnvExtensionEntry EnvExtensionState) :
    CoreM (Option MessageData) := unsafe do
  let mut asyncMode := ext.toEnvExtension.asyncMode
  if asyncMode matches .async .. then
    -- allow for diffing async extensions by bumping mode to sync
    asyncMode := .sync
  let oldSt := ext.toEnvExtension.getState (asyncMode := asyncMode) old
  let newSt := ext.toEnvExtension.getState (asyncMode := asyncMode) new
  if ptrAddrUnsafe oldSt == ptrAddrUnsafe newSt then return none
  let oldEntries := (ext.exportEntriesFn (← getEnv) oldSt.state).private
  let newEntries := (ext.exportEntriesFn (← getEnv) newSt.state).private
  pure m!"-- {ext.name} extension: {(newEntries.size - oldEntries.size : Int)} new entries"

def whatsNew (old new : Environment) : CoreM MessageData := do
  let mut diffs := #[]

  for (c, i) in new.constants.map₂.toList do
    unless old.constants.map₂.contains c do
      diffs := diffs.push (← printIdCore c i)

  for ext in ← persistentEnvExtensionsRef.get do
    if let some diff ← diffExtension old new ext then
      diffs := diffs.push diff

  if diffs.isEmpty then return "no new constants"

  pure <| MessageData.joinSep diffs.toList "\n\n"

/-- `#whats_new in` executes the following command and then prints the
declarations that were added to the environment. -/
elab "#whats_new " "in" ppLine cmd:command : command => do
  let oldEnv ← getEnv
  try
    elabCommand cmd
  finally
    let newEnv ← getEnv
    logInfo (← liftCoreM <| whatsNew oldEnv newEnv)

/-- `#whats_new in` executes the following command and then prints the
declarations that were added to the environment. -/
macro (name := oldStx) "whatsnew " "in" ppLine cmd:command : command =>
  `(command| #whats_new in $cmd)

deprecated_syntax oldStx "use `#whats_new` instead of `whatsnew`" (since := "2026-08-07")

end Mathlib.WhatsNew
````
