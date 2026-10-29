-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LBool.Variant6f530c51bd637b3befe8a5938b9d7e5e15ee15a651478d115dcefaf433bd1073","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f530c51bd637b3befe8a5938b9d7e5e15ee15a651478d115dcefaf433bd1073","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LBool.Variant6f530c51bd637b3befe8a5938b9d7e5e15ee15a651478d115dcefaf433bd1073","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6f530c51bd637b3befe8a5938b9d7e5e15ee15a651478d115dcefaf433bd1073","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/LBool.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.ToString.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LBool.Variant6f530c51bd637b3befe8a5938b9d7e5e15ee15a651478d115dcefaf433bd1073

public section

open Lean

namespace Lean

inductive LBool where
  | false
  | true
  | undef
  deriving Inhabited, BEq

namespace LBool

def neg : LBool → LBool
  | true  => false
  | false => true
  | undef => undef

def and : LBool → LBool → LBool
  | true,  b  => b
  | a,     _  => a

def toString : LBool → String
  | true  => "true"
  | false => "false"
  | undef => "undef"

instance : ToString LBool := ⟨toString⟩

end LBool

def Bool.toLBool : Bool → LBool
  | true  => LBool.true
  | false => LBool.false

@[inline] def toLBoolM {m : Type → Type} [Monad m] (x : m Bool) : m LBool := do
  let b ← x
  pure b.toLBool

end Lean
