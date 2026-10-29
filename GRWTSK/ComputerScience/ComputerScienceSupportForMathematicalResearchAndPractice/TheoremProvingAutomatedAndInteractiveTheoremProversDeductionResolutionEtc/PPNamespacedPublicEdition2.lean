-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PpStruct.Variantb4baf16dfa6856d550c7e1f9a4c1010df15a72667ced28c45ac16b8f0dd968a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4baf16dfa6856d550c7e1f9a4c1010df15a72667ced28c45ac16b8f0dd968a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PpStruct.Variantb4baf16dfa6856d550c7e1f9a4c1010df15a72667ced28c45ac16b8f0dd968a0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b4baf16dfa6856d550c7e1f9a4c1010df15a72667ced28c45ac16b8f0dd968a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Linear/PP.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.Types
import Lean.Meta.Tactic.Grind.Arith.Linear.Model
import Lean.Meta.Tactic.Grind.Arith.Util
import Init.Omega

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PpStruct.Variantb4baf16dfa6856d550c7e1f9a4c1010df15a72667ced28c45ac16b8f0dd968a0

public section
namespace Lean.Meta.Grind.Arith.Linear

def ppStruct? (goal : Goal) (s : Struct) : MetaM (Option MessageData) := do
  let model ← mkModel goal s.id
  if model.isEmpty then return none
  let mut ms := #[]
  for (e, val) in model do
    ms := ms.push <| .trace { cls := `assign } m!"{Arith.quoteIfArithTerm e} := {val}" #[]
  return some (.trace { cls := `linarith } m!"Linarith assignment for `{s.type}`" ms)

def pp? (goal : Goal) : MetaM (Option MessageData) := do
  let mut msgs := #[]
  for struct in (← linearExt.getStateCore goal).structs do
    let some msg ← ppStruct? goal struct | pure ()
    msgs := msgs.push msg
  if msgs.isEmpty then
    return none
  else if h : msgs.size = 1 then
    return some msgs[0]
  else
    return some (.trace { cls := `linarith } "Linarith" msgs)

end Lean.Meta.Grind.Arith.Linear
