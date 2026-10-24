-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Return.Variant8ccad18a8e7c08051c1900dfabcff101a897e70f04b2c63c43c061e40c291827","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ccad18a8e7c08051c1900dfabcff101a897e70f04b2c63c43c061e40c291827","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Return.Variant8ccad18a8e7c08051c1900dfabcff101a897e70f04b2c63c43c061e40c291827","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8ccad18a8e7c08051c1900dfabcff101a897e70f04b2c63c43c061e40c291827","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Pred.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.GetLsbD
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Expr
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Return.Variant8ccad18a8e7c08051c1900dfabcff101a897e70f04b2c63c43c061e40c291827

@[expose] public section

/-!
This module contains the implementation of a bitblaster for predicates over `BitVec` expressions
(`BVPred`).
-/

namespace Std.Tactic.BVDecide

open Std.Sat

structure Return (aig : AIG BVBit) where
  result : AIG.ExtendingEntrypoint aig
  cache : BVExpr.Cache result.val.aig

namespace BVPred

def bitblast (aig : AIG BVBit) (input : BVExpr.WithCache BVPred aig) : Return aig :=
  let ⟨pred, cache⟩ := input
  match pred with
  | .bin lhs op rhs =>
    let ⟨⟨⟨aig, lhsRefs⟩, hlhs⟩, cache⟩ := BVExpr.bitblast aig ⟨lhs, cache⟩
    let ⟨⟨⟨aig, rhsRefs⟩, hrhs⟩, cache⟩ := BVExpr.bitblast aig ⟨rhs, cache⟩
    let lhsRefs := lhsRefs.cast hrhs
    match op with
    | .eq =>
      let res := mkEq aig ⟨lhsRefs, rhsRefs⟩
      let cache := cache.cast (AIG.LawfulOperator.le_size (f := mkEq) ..)
      have := by
        apply AIG.LawfulOperator.le_size_of_le_aig_size (f := mkEq)
        dsimp only at hlhs hrhs
        omega
      ⟨⟨res, this⟩, cache⟩
    | .ult =>
      let res := mkUlt aig ⟨lhsRefs, rhsRefs⟩
      have := AIG.LawfulOperator.le_size (f := mkUlt) ..
      let cache := cache.cast this
      have := by
        apply AIG.LawfulOperator.le_size_of_le_aig_size (f := mkUlt)
        dsimp only at hlhs hrhs
        omega
      ⟨⟨res, this⟩, cache⟩
  | .getLsbD expr idx =>
    /-
    Note: This blasts the entire expression up to `w` despite only needing it up to `idx`.
    However the vast majority of operations are interested in all bits so the API is currently
    not designed to support this use case.
    -/
    let ⟨⟨⟨aig, refs⟩, hrefs⟩, cache⟩ := BVExpr.bitblast aig ⟨expr, cache⟩
    let res := blastGetLsbD aig ⟨refs, idx⟩
    ⟨⟨⟨aig, res⟩, hrefs⟩, cache⟩

theorem bitblast_decl_eq (aig : AIG BVBit) (input : BVExpr.WithCache BVPred aig) :
    ∀ (idx : Nat) (h1) (h2), (bitblast aig input).result.val.aig.decls[idx]'h2 = aig.decls[idx]'h1 := by
  intro idx h1 h2
  rcases input with ⟨pred, cache⟩
  simp only [BVPred.bitblast]
  cases pred with
  | bin lhs op rhs =>
    cases op with
    | eq =>
      dsimp only
      rw [AIG.LawfulOperator.decl_eq (f := mkEq)]
      rw [BVExpr.bitblast_decl_eq]
      rw [BVExpr.bitblast_decl_eq]
      · apply BVExpr.bitblast_lt_size_of_lt_aig_size
        assumption
      · apply BVExpr.bitblast_lt_size_of_lt_aig_size
        apply BVExpr.bitblast_lt_size_of_lt_aig_size
        assumption
    | ult =>
      simp only
      rw [AIG.LawfulOperator.decl_eq (f := mkUlt)]
      rw [BVExpr.bitblast_decl_eq]
      rw [BVExpr.bitblast_decl_eq]
      · apply BVExpr.bitblast_lt_size_of_lt_aig_size
        assumption
      · apply BVExpr.bitblast_lt_size_of_lt_aig_size
        apply BVExpr.bitblast_lt_size_of_lt_aig_size
        assumption
  | getLsbD expr idx =>
    simp only
    rw [BVExpr.bitblast_decl_eq]

theorem bitblast_le_size (aig : AIG BVBit) (input : BVExpr.WithCache BVPred aig) :
    aig.decls.size ≤ (bitblast aig input).result.val.aig.decls.size := by
  exact (bitblast aig input).result.property

end BVPred

end Std.Tactic.BVDecide
