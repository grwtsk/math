-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkCheckGoalType.Variant3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkCheckGoalType.Variant3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/CheckTactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joe Hendrix
-/
module

prelude
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkCheckGoalType.Variant3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7

public section

namespace Lean.Meta.CheckTactic

def mkCheckGoalType (val type : Expr) : MetaM Expr := do
  let lvl ← mkFreshLevelMVar
  pure <| mkApp2 (mkConst ``CheckGoalType [lvl]) type val

def matchCheckGoalType (stx : Syntax) (goalType : Expr) : MetaM (Expr × Expr × Level) := do
  let u ← mkFreshLevelMVar
  let type ← mkFreshExprMVar (some (.sort u))
  let val  ← mkFreshExprMVar (some type)
  let extType := mkAppN (.const ``CheckGoalType [u]) #[type, val]
  if !(← isDefEq goalType extType) then
    throwErrorAt stx "Goal{indentExpr goalType}\nis expected to match {indentExpr extType}"
  pure (val, type, u)

end Lean.Meta.CheckTactic
