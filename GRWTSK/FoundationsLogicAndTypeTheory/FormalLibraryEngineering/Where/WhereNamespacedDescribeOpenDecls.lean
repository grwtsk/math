-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DescribeOpenDecls.Variant9f3f83acf1cdd071a5ba514cbccc6cc866973cf15105752ca5edf10667dcc630","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f3f83acf1cdd071a5ba514cbccc6cc866973cf15105752ca5edf10667dcc630","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DescribeOpenDecls.Variant9f3f83acf1cdd071a5ba514cbccc6cc866973cf15105752ca5edf10667dcc630","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9f3f83acf1cdd071a5ba514cbccc6cc866973cf15105752ca5edf10667dcc630","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/Where.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Lean.Elab.Command

/-! # `#where` command

The `#where` command prints information about the current location, including the namespace,
active `open`, `universe`, and `variable` commands, and any options set with `set_option`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DescribeOpenDecls.Variant9f3f83acf1cdd071a5ba514cbccc6cc866973cf15105752ca5edf10667dcc630

open Lean Elab Command

namespace Std.Tactic.Where

private def describeOpenDecls (ds : List OpenDecl) : MessageData := Id.run do
  let mut lines := #[]
  let mut simple := #[]
  let flush (lines simple : Array MessageData) : Array MessageData × Array MessageData :=
    if simple.isEmpty then
      (lines, simple)
    else
      (lines.push ("open " ++ MessageData.joinSep simple.toList " "), #[])
  for d in ds do
    match d with
    | .explicit id decl =>
      (lines, simple) := flush lines simple
      lines := lines.push m!"open {id} → {decl}"
    | .simple ns ex =>
      if ex == [] then
        simple := simple.push ns
      else
        (lines, simple) := flush lines simple
        let ex' := ex.map toMessageData
        lines := lines.push m!"open {ns} hiding {MessageData.joinSep ex' ", "}"
  (lines, simple) := flush lines simple
  return MessageData.joinSep lines.toList "\n"

private def describeOptions (opts : Options) : CommandElabM (Option MessageData) := do
  let mut lines := #[]
  for (name, val) in opts do
    let dval ← getOptionDefaultValue name
    if val != dval then
      lines := lines.push m!"set_option {name} {val}"
  if lines.isEmpty then
    return none
  else
    return MessageData.joinSep lines.toList "\n"

/-- `#where` gives a description of the global scope at this point in the module.
This includes the namespace, `open` namespaces, `universe` and `variable` commands,
and options set with `set_option`. -/
elab "#where" : command => do
  let scope ← getScope
  let mut msg : Array MessageData := #[]
  -- Noncomputable
  if scope.isNoncomputable then
    msg := msg.push m!"noncomputable section"
  -- Namespace
  if !scope.currNamespace.isAnonymous then
    msg := msg.push m!"namespace {scope.currNamespace}"
  -- Open namespaces
  if !scope.openDecls.isEmpty then
    msg := msg.push <| describeOpenDecls scope.openDecls.reverse
  -- Universe levels
  if !scope.levelNames.isEmpty then
    let levels := scope.levelNames.reverse.map toMessageData
    msg := msg.push <| "universe " ++ MessageData.joinSep levels " "
  -- Variables
  if !scope.varDecls.isEmpty then
    msg := msg.push <| ← `(command| variable $scope.varDecls*)
  -- Options
  if let some m ← describeOptions scope.opts then
    msg := msg.push m
  if msg.isEmpty then
    msg := #[m!"-- In root namespace with initial scope"]
  logInfo <| m!"{MessageData.joinSep msg.toList "\n\n"}"
