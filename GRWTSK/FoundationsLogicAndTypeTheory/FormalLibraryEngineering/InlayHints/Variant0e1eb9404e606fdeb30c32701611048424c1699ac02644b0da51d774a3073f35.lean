-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InlayHintLinkLocation.Variant991a104017af3f82dd7c4c259fbe8fca4a269481fd048c41d8c95c7b569e3455","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"991a104017af3f82dd7c4c259fbe8fca4a269481fd048c41d8c95c7b569e3455","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InlayHintLinkLocation.Variant991a104017af3f82dd7c4c259fbe8fca4a269481fd048c41d8c95c7b569e3455","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"991a104017af3f82dd7c4c259fbe8fca4a269481fd048c41d8c95c7b569e3455","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/InfoTree/InlayHints.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Marc Huisinga
-/
module

prelude
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InlayHintLinkLocation.Variant991a104017af3f82dd7c4c259fbe8fca4a269481fd048c41d8c95c7b569e3455

public section

namespace Lean.Elab

open Lean

structure InlayHintLinkLocation where
  module : Name
  range  : Lean.Syntax.Range

structure InlayHintLabelPart where
  value     : String
  tooltip?  : Option String := none
  location? : Option InlayHintLinkLocation := none

inductive InlayHintLabel
  | name (n : String)
  | parts (p : Array InlayHintLabelPart)

inductive InlayHintKind where
  | type
  | parameter

structure InlayHintTextEdit where
  range   : Lean.Syntax.Range
  newText : String
  deriving BEq

structure InlayHintInfo where
  position     : String.Pos.Raw
  label        : InlayHintLabel
  kind?        : Option InlayHintKind := none
  textEdits    : Array InlayHintTextEdit := #[]
  tooltip?     : Option String := none
  paddingLeft  : Bool := false
  paddingRight : Bool := false

structure InlayHint extends InlayHintInfo where
  lctx               : LocalContext
  deferredResolution : InlayHintInfo → MetaM InlayHintInfo := fun i => .pure i
  deriving TypeName

namespace InlayHint

def toCustomInfo (i : InlayHint) : CustomInfo := {
  stx := .missing
  value := .mk i
}

def ofCustomInfo? (c : CustomInfo) : Option InlayHint :=
  c.value.get? InlayHint

def resolveDeferred (i : InlayHint) : MetaM InlayHint := do
  let info := i.toInlayHintInfo
  let info ← i.deferredResolution info
  return { i with toInlayHintInfo := info }

end InlayHint
