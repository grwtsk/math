-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteGoEqDivRecR.Variant041fa2fc91c30eb1f952d5eebd2b294ef28afa4b89c374a6e3b9c79f05753a9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"041fa2fc91c30eb1f952d5eebd2b294ef28afa4b89c374a6e3b9c79f05753a9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DenoteGoEqDivRecR.Variant041fa2fc91c30eb1f952d5eebd2b294ef28afa4b89c374a6e3b9c79f05753a9a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"041fa2fc91c30eb1f952d5eebd2b294ef28afa4b89c374a6e3b9c79f05753a9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/Umod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Operations.Udiv
import all Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Udiv
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Umod


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteGoEqDivRecR.Variant041fa2fc91c30eb1f952d5eebd2b294ef28afa4b89c374a6e3b9c79f05753a9a

@[expose] public section

/-!
This module contains the verification of the `BitVec.umod` bitblaster from `Impl.Operations.Umod`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

namespace blastUmod

open blastUdiv

theorem denote_go_eq_divRec_r (aig : AIG α) (assign : α → Bool) (curr : Nat) (lhs rhs rbv qbv : BitVec w)
    (n d q r : AIG.RefVec aig w) (wn wr : Nat)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, n.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, d.get idx hidx, assign⟧ = rhs.getLsbD idx)
    (hq : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, q.get idx hidx, assign⟧ = qbv.getLsbD idx)
    (hr : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, r.get idx hidx, assign⟧ = rbv.getLsbD idx)
      :
    ∀ (idx : Nat) (hidx : idx < w),
      ⟦
        (go aig curr n d wn wr q r).aig,
        (go aig curr n d wn wr q r).r.get idx hidx,
        assign
      ⟧
        =
      (BitVec.divRec curr { n := lhs, d := rhs} { wn, wr, q := qbv, r := rbv }).r.getLsbD idx := by
  induction curr generalizing aig wn wr q r qbv rbv with
  | zero =>
    intro idx hidx
    simp [go, hr]
  | succ curr ih =>
    intro idx hidx
    rw [go, BitVec.divRec_succ, BitVec.divSubtractShift]
    split
    next hdiscr =>
      rw [ih]
      · rfl
      · intro idx hidx
        rw [blastDivSubtractShift_denote_mem_prefix]
        · simp [hleft]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [blastDivSubtractShift_denote_mem_prefix]
        · simp [hright]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [denote_blastDivSubtractShift_q (rbv := rbv) (qbv := qbv) (lhs := lhs) (rhs := rhs)]
        · rw [BitVec.divSubtractShift]
          simp [hdiscr]
        · exact hleft
        · exact hright
        · exact hq
        · exact hr
      · intro idx hidx
        rw [denote_blastDivSubtractShift_r (rbv := rbv) (qbv := qbv) (lhs := lhs) (rhs := rhs)]
        · rw [BitVec.divSubtractShift]
          simp [hdiscr]
        · exact hleft
        · exact hright
        · exact hr
    next hdiscr =>
      rw [ih]
      · rfl
      · intro idx hidx
        rw [blastDivSubtractShift_denote_mem_prefix]
        · simp [hleft]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [blastDivSubtractShift_denote_mem_prefix]
        · simp [hright]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [denote_blastDivSubtractShift_q (rbv := rbv) (qbv := qbv) (lhs := lhs) (rhs := rhs)]
        · rw [BitVec.divSubtractShift]
          simp [hdiscr]
        · exact hleft
        · exact hright
        · exact hq
        · exact hr
      · intro idx hidx
        rw [denote_blastDivSubtractShift_r (rbv := rbv) (qbv := qbv) (lhs := lhs) (rhs := rhs)]
        · rw [BitVec.divSubtractShift]
          simp [hdiscr]
        · exact hleft
        · exact hright
        · exact hr

theorem denote_go (aig : AIG α) (assign : α → Bool) (lhs rhs : BitVec w)
    (n d q r : AIG.RefVec aig w)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, n.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, d.get idx hidx, assign⟧ = rhs.getLsbD idx)
    (hq : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, q.get idx hidx, assign⟧ = false)
    (hr : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, r.get idx hidx, assign⟧ = false)
    (hzero : 0#w < rhs)
      :
    ∀ (idx : Nat) (hidx : idx < w),
      ⟦
        (go aig w n d w 0 q r).aig,
        (go aig w n d w 0 q r).r.get idx hidx,
        assign
      ⟧
        =
      (lhs % rhs).getLsbD idx := by
  intro idx hidx
  rw [BitVec.umod_eq_divRec hzero]
  rw [BitVec.DivModState.init]
  rw [denote_go_eq_divRec_r (lhs := lhs) (rhs := rhs) (qbv := 0#w) (rbv := 0#w)]
  · exact hleft
  · exact hright
  · simp [hq]
  · simp [hr]

end blastUmod

theorem denote_blastUmod (aig : AIG α) (lhs rhs : BitVec w) (assign : α → Bool)
      (input : BinaryRefVec aig w)
      (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.lhs.get idx hidx, assign⟧ = lhs.getLsbD idx)
      (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.rhs.get idx hidx, assign⟧ = rhs.getLsbD idx) :
      ∀ (idx : Nat) (hidx : idx < w),
        ⟦(blastUmod aig input).aig, (blastUmod aig input).vec.get idx hidx, assign⟧
          =
        (lhs % rhs).getLsbD idx := by
  intro idx hidx
  unfold blastUmod
  simp only [Ref.cast_eq, RefVec.denote_ite,
    RefVec.get_cast]
  split
  next hdiscr =>
    rw [blastUdiv.go_denote_mem_prefix (hstart := Ref.hgate _)] at hdiscr
    rw [BVPred.mkEq_denote_eq (lhs := rhs) (rhs := 0#w)] at hdiscr
    · simp only [beq_iff_eq] at hdiscr
      rw [hdiscr]
      rw [blastUdiv.go_denote_mem_prefix (hstart := ?h)]
      case h =>
        apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := BVPred.mkEq)
        exact Ref.hgate _
      rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
      · simp [hleft]
      · simp [Ref.hgate]
    · intro idx hidx
      simp [hright]
    · intro idx hidx
      simp only [BitVec.getLsbD_zero]
      rw [denote_blastConst]
      simp
  next hdiscr =>
    rw [blastUdiv.go_denote_mem_prefix (hstart := Ref.hgate _)] at hdiscr
    rw [BVPred.mkEq_denote_eq (lhs := rhs) (rhs := 0#w)] at hdiscr
    · have hzero : 0#w < rhs := by
        rw [Normalize.BitVec.zero_lt_iff_zero_neq]
        simpa using hdiscr
      rw [blastUmod.denote_go (hzero := hzero)]
      · intro idx hidx
        rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
        · simp [hleft]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
        · simp [hright]
        · simp [Ref.hgate]
      · intro idx hidx
        rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
        · simp only [RefVec.get_cast, Ref.cast_eq]
          rw [denote_blastConst]
          simp
        · simp [Ref.hgate]
      · intro idx hidx
        rw [AIG.LawfulOperator.denote_mem_prefix (f := BVPred.mkEq)]
        · simp only [RefVec.get_cast, Ref.cast_eq]
          rw [denote_blastConst]
          simp
        · simp [Ref.hgate]
    · intro idx hdix
      simp [hright]
    · intro idx hdix
      simp

end bitblast
end BVExpr

end Std.Tactic.BVDecide
