-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NodeDef.Variant8836fdb7151d94629372f629a212b93944d635fa77534de57cfe9734747e71f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8836fdb7151d94629372f629a212b93944d635fa77534de57cfe9734747e71f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NodeDef.Variant8836fdb7151d94629372f629a212b93944d635fa77534de57cfe9734747e71f0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8836fdb7151d94629372f629a212b93944d635fa77534de57cfe9734747e71f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/PP.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public meta import Init.Data.String.Defs
public import Init.Grind.Tactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NodeDef.Variant8836fdb7151d94629372f629a212b93944d635fa77534de57cfe9734747e71f0

public section

namespace Lean.Grind
/-!
This is a hackish module for hovering node information in the `grind` tactic state.
-/

inductive NodeDef where
  | unit

set_option linter.unusedVariables false in
def node_def (_ : Nat) {α : Sort u} {a : α} : NodeDef := .unit

@[app_unexpander node_def]
meta def nodeDefUnexpander : PrettyPrinter.Unexpander := fun stx => do
  match stx with
  | `($_ $id:num) => return mkIdent <| Name.mkSimple $ "#" ++ toString id.getNat
  | _ => throw ()

@[app_unexpander NodeDef]
meta def NodeDefUnexpander : PrettyPrinter.Unexpander := fun _ => do
  return mkIdent <| Name.mkSimple "NodeDef"

end Lean.Grind
