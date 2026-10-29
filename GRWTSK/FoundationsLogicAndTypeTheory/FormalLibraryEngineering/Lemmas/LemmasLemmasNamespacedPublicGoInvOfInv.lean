-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoInvOfInv.Variantdd1122ac42a1a350ab3a71cb6e8795d098de3060468bcfa754df867d6e07b255","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd1122ac42a1a350ab3a71cb6e8795d098de3060468bcfa754df867d6e07b255","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GoInvOfInv.Variantdd1122ac42a1a350ab3a71cb6e8795d098de3060468bcfa754df867d6e07b255","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"dd1122ac42a1a350ab3a71cb6e8795d098de3060468bcfa754df867d6e07b255","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Pred


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoInvOfInv.Variantdd1122ac42a1a350ab3a71cb6e8795d098de3060468bcfa754df867d6e07b255

@[expose] public section

/-!
This module contains the verification of the bitblaster for general `BitVec` problems with boolean
substructure (`BVLogicalExpr`). It is the main entrypoint for verification of the bitblasting
framework.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVLogicalExpr

namespace bitblast

mutual

theorem go_Inv_of_Inv (expr : BVLogicalExpr) (aig : AIG BVBit) (assign : BVExpr.Assignment)
    (cache : BVExpr.Cache aig) (hinv : BVExpr.Cache.Inv assign aig cache) :
    BVExpr.Cache.Inv assign (go aig expr cache).result.val.aig (go aig expr cache).cache := by
  induction expr generalizing aig with
  | const =>
    simp only [go]
    apply BVExpr.Cache.Inv_cast
    · apply IsPrefix.rfl
    · exact hinv
  | literal =>
    simp only [go]
    apply BVPred.bitblast_Inv_of_Inv
    exact hinv
  | not expr ih =>
    simp only [go]
    apply BVExpr.Cache.Inv_cast
    · apply LawfulOperator.isPrefix_aig (f := mkNotCached)
    · apply ih
      exact hinv
  | gate g lhs rhs lih rih =>
    cases g
    all_goals
      simp [go]
      apply BVExpr.Cache.Inv_cast
      · apply LawfulOperator.isPrefix_aig
      · apply rih
        apply lih
        exact hinv
  | ite discr lhs rhs dih lih rih =>
    simp only [go]
    apply BVExpr.Cache.Inv_cast
    · apply LawfulOperator.isPrefix_aig (f := mkIfCached)
    · apply rih
      apply lih
      apply dih
      exact hinv

theorem go_eval_eq_eval (expr : BVLogicalExpr) (aig : AIG BVBit) (assign : BVExpr.Assignment)
    (cache : BVExpr.Cache aig) (hinv : BVExpr.Cache.Inv assign aig cache) :
    ⟦(go aig expr cache).result, assign.toAIGAssignment⟧ = expr.eval assign := by
  induction expr generalizing aig with
  | const => simp [go]
  | literal =>
    simp only [go, eval_literal]
    rw [BVPred.denote_bitblast]
    exact hinv
  | not expr ih =>
    specialize ih _ _ hinv
    simp [go, ih]
  | gate g lhs rhs lih rih =>
    cases g
    all_goals
      simp [go, Gate.eval]
      congr 1
      · rw [go_denote_mem_prefix (hstart := Ref.hgate _)]
        apply lih
        exact hinv
      · apply rih
        apply go_Inv_of_Inv
        exact hinv
  | ite discr lhs rhs dih lih rih =>
    simp only [go, Ref.cast_eq, denote_mkIfCached, denote_projected_entry,
      eval_ite, Bool.ite_eq_cond_iff]
    apply ite_congr
    · rw [go_denote_mem_prefix (hstart := ?h)]
      case h =>
        apply go_lt_size_of_lt_aig_size
        exact Ref.hgate _
      rw [go_denote_mem_prefix (hstart := Ref.hgate _)]
      specialize dih _ _ hinv
      simp [dih]
    · intro h
      rw [go_denote_mem_prefix (hstart := Ref.hgate _)]
      apply lih
      apply go_Inv_of_Inv
      exact hinv
    · intro h
      apply rih
      apply go_Inv_of_Inv
      apply go_Inv_of_Inv
      exact hinv

end

end bitblast

theorem denote_bitblast (expr : BVLogicalExpr) (assign : BVExpr.Assignment) :
    ⟦bitblast expr, assign.toAIGAssignment⟧ = expr.eval assign := by
  unfold bitblast
  rw [bitblast.go_eval_eq_eval]
  apply BVExpr.Cache.Inv_empty

theorem unsat_of_bitblast (expr : BVLogicalExpr) : expr.bitblast.Unsat → expr.Unsat :=  by
  intro h assign
  rw [← denote_bitblast]
  apply h

end BVLogicalExpr

end Std.Tactic.BVDecide
