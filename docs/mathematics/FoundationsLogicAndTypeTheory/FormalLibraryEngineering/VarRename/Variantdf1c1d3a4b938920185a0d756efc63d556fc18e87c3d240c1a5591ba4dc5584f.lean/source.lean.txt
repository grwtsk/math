-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeqRenameVars.Variantf85add7863313764f1909024a6f92e9e2e8e496ae74f5775a1dc4a189b309dec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f85add7863313764f1909024a6f92e9e2e8e496ae74f5775a1dc4a189b309dec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SeqRenameVars.Variantf85add7863313764f1909024a6f92e9e2e8e496ae74f5775a1dc4a189b309dec","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f85add7863313764f1909024a6f92e9e2e8e496ae74f5775a1dc4a189b309dec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/AC/VarRename.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.AC
public import Lean.Meta.Tactic.Grind.VarRename

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeqRenameVars.Variantf85add7863313764f1909024a6f92e9e2e8e496ae74f5775a1dc4a189b309dec

namespace Lean.Grind.AC
open Lean.Meta.Grind

public def Seq.renameVars (s : Seq) (f : VarRename) : Seq :=
  match s with
  | .var x    => .var (f x)
  | .cons x s => .cons (f x) (renameVars s f)

public def Expr.renameVars (e : Expr) (f : VarRename) : Expr :=
  match e with
  | .var x => .var (f x)
  | .op a b => .op (renameVars a f) (renameVars b f)

public def Seq.collectVars (s : Seq) : VarCollector :=
  match s with
  | .var x => collectVar x
  | .cons x s => collectVar x >> s.collectVars

public def Expr.collectVars (e : Expr) : VarCollector :=
  match e with
  | .var x => collectVar x
  | .op a b  => a.collectVars >> b.collectVars

end Lean.Grind.AC
