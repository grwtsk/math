-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteBlastSub.Variantbf85819d6892c37525189e72aa9b81d2e4bd5bd7f0e8c16cb93cb2b6a7313ef8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf85819d6892c37525189e72aa9b81d2e4bd5bd7f0e8c16cb93cb2b6a7313ef8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DenoteBlastSub.Variantbf85819d6892c37525189e72aa9b81d2e4bd5bd7f0e8c16cb93cb2b6a7313ef8","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"bf85819d6892c37525189e72aa9b81d2e4bd5bd7f0e8c16cb93cb2b6a7313ef8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/Sub.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Operations.Neg
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Sub


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteBlastSub.Variantbf85819d6892c37525189e72aa9b81d2e4bd5bd7f0e8c16cb93cb2b6a7313ef8

@[expose] public section

/-!
This module contains the verification of the bitblaster for `BitVec.sub` from `Impl.Operations.Sub`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

theorem denote_blastSub (aig : AIG α) (lhs rhs : BitVec w) (assign : α → Bool)
      (input : BinaryRefVec aig w)
      (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.lhs.get idx hidx, assign⟧ = lhs.getLsbD idx)
      (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.rhs.get idx hidx, assign⟧ = rhs.getLsbD idx) :
      ∀ (idx : Nat) (hidx : idx < w),
          ⟦(blastSub aig input).aig, (blastSub aig input).vec.get idx hidx, assign⟧
            =
          (lhs - rhs).getLsbD idx := by
  intro idx hidx
  rw [BitVec.sub_eq_add_neg]
  unfold blastSub
  rw [denote_blastAdd]
  · intros
    rw [AIG.LawfulVecOperator.denote_mem_prefix (f := blastNeg)]
    · simp [hleft]
    · simp [Ref.hgate]
  · intros
    rw [denote_blastNeg]
    exact hright

end bitblast
end BVExpr

end Std.Tactic.BVDecide
