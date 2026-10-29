-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastUmod.Variant7252b44de49067d0abef603200daf0d4e2961d0e5e3cd879ce515ac8c992d64e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7252b44de49067d0abef603200daf0d4e2961d0e5e3cd879ce515ac8c992d64e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BlastUmod.Variant7252b44de49067d0abef603200daf0d4e2961d0e5e3cd879ce515ac8c992d64e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7252b44de49067d0abef603200daf0d4e2961d0e5e3cd879ce515ac8c992d64e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/Umod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Udiv


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastUmod.Variant7252b44de49067d0abef603200daf0d4e2961d0e5e3cd879ce515ac8c992d64e

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.umod`. The implemented
circuit is a shift subtractor.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastUmod (aig : AIG α) (input : AIG.BinaryRefVec aig w) : AIG.RefVecEntry α w :=
  let zero := blastConst aig 0#w
  let ⟨lhs, rhs⟩ := input

  let res := BVPred.mkEq aig ⟨rhs, zero⟩
  let aig := res.aig
  let discr := res.ref
  have := AIG.LawfulOperator.le_size (f := BVPred.mkEq) ..
  let zero := zero.cast this
  let lhs := lhs.cast this
  let rhs := rhs.cast this

  let res := blastUdiv.go aig w lhs rhs w 0 zero zero
  let aig := res.aig
  let modRes := res.r
  have := blastUdiv.go_le_size ..
  let discr := discr.cast this
  let lhs := lhs.cast this

  AIG.RefVec.ite aig ⟨discr, lhs, modRes⟩

instance : AIG.LawfulVecOperator α AIG.BinaryRefVec blastUmod where
  le_size := by
    intros
    simp only [blastUmod]
    apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := AIG.RefVec.ite)
    refine Nat.le_trans ?_ (by apply blastUdiv.go_le_size)
    apply AIG.LawfulOperator.le_size (f := BVPred.mkEq)
  decl_eq := by
    intros
    simp only [blastUmod]
    rw [AIG.LawfulVecOperator.decl_eq (f := AIG.RefVec.ite)]
    rw [blastUdiv.go_decl_eq]
    rw [AIG.LawfulOperator.decl_eq (f := BVPred.mkEq)]
    · apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := BVPred.mkEq)
      assumption
    · refine Nat.le_trans ?_ (by apply blastUdiv.go_le_size)
      apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := BVPred.mkEq)
      assumption

end bitblast
end BVExpr

end Std.Tactic.BVDecide
