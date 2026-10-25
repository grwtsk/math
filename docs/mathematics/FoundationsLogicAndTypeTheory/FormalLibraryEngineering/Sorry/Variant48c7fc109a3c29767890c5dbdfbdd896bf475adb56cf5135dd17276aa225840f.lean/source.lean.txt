-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprIsSorry.Variant8c14d564743c14e1c4e73bdfd89c77bfaab6095174c4d2cab5ad795669e7a268","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c14d564743c14e1c4e73bdfd89c77bfaab6095174c4d2cab5ad795669e7a268","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExprIsSorry.Variant8c14d564743c14e1c4e73bdfd89c77bfaab6095174c4d2cab5ad795669e7a268","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8c14d564743c14e1c4e73bdfd89c77bfaab6095174c4d2cab5ad795669e7a268","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/Sorry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.FindExpr
public import Lean.Declaration


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprIsSorry.Variant8c14d564743c14e1c4e73bdfd89c77bfaab6095174c4d2cab5ad795669e7a268

public section

namespace Lean

/-- Returns `true` if the expression is an application of `sorryAx`. -/
def Expr.isSorry (e : Expr) : Bool :=
  e.isAppOf ``sorryAx

/-- Returns `true` if the expression is of the form `sorryAx _ true ..`. -/
def Expr.isSyntheticSorry (e : Expr) : Bool :=
  e.isAppOf ``sorryAx && e.getAppNumArgs ≥ 2 && (e.getArg! 1).isConstOf ``Bool.true

/-- Returns `true` if the expression is of the form `sorryAx _ false ..`. -/
def Expr.isNonSyntheticSorry (e : Expr) : Bool :=
  e.isAppOf ``sorryAx && e.getAppNumArgs ≥ 2 && (e.getArg! 1).isConstOf ``Bool.false

def Expr.hasSorry (e : Expr) : Bool :=
  Option.isSome <| e.find? (·.isConstOf ``sorryAx)

def Expr.hasSyntheticSorry (e : Expr) : Bool :=
  Option.isSome <| e.find? (·.isSyntheticSorry)

def Expr.hasNonSyntheticSorry (e : Expr) : Bool :=
  Option.isSome <| e.find? (·.isNonSyntheticSorry)

def Declaration.hasSorry (d : Declaration) : Bool := Id.run do
  d.foldExprM (fun r e => r || e.hasSorry) false

def Declaration.hasSyntheticSorry (d : Declaration) : Bool := Id.run do
  d.foldExprM (fun r e => r || e.hasSyntheticSorry) false

def Declaration.hasNonSyntheticSorry (d : Declaration) : Bool := Id.run do
  d.foldExprM (fun r e => r || e.hasNonSyntheticSorry) false

end Lean
