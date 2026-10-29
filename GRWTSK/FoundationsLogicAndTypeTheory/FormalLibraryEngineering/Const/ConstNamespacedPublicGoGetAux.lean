-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoGetAux.Variant75b9123a30b4925cc160419737eebc78c9566921481df42bc4ef43642d4bf711","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75b9123a30b4925cc160419737eebc78c9566921481df42bc4ef43642d4bf711","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GoGetAux.Variant75b9123a30b4925cc160419737eebc78c9566921481df42bc4ef43642d4bf711","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"75b9123a30b4925cc160419737eebc78c9566921481df42bc4ef43642d4bf711","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Const.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Const
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoGetAux.Variant75b9123a30b4925cc160419737eebc78c9566921481df42bc4ef43642d4bf711

@[expose] public section

/-!
This module contains the verification of the `BitVec` constant bitblaster from `Impl.Const`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

namespace blastConst

theorem go_get_aux (aig : AIG α) (c : BitVec w) (curr : Nat) (hcurr : curr ≤ w)
    (s : AIG.RefVec aig curr) :
    -- `hfoo` makes it possible to `generalize` below. With a concrete proof term this
    -- `generalize` would produce a type incorrect term as the proof term would talk about
    -- a `go` application instead of the fresh variable.
    ∀ (idx : Nat) (hidx : idx < curr) (hfoo),
        (go aig c curr s hcurr).get idx (by omega) = (s.get idx hidx).cast hfoo := by
  intro idx hidx
  generalize hgo : go aig c curr s hcurr = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    rw [← hgo]
    intro hfoo
    rw [go_get_aux (hfoo := hfoo) (hidx := Nat.lt_succ_of_lt hidx)]
    rw [AIG.RefVec.get_push_ref_lt]
  · dsimp only at hgo
    rw [← hgo]
    simp only [Nat.le_refl]
    obtain rfl : curr = w := by omega
    simp
termination_by w - curr

theorem go_get (aig : AIG α) (c : BitVec w)
    (curr : Nat) (hcurr : curr ≤ w) (s : AIG.RefVec aig curr) :
    ∀ (idx : Nat) (hidx : idx < curr),
        (go aig c curr s hcurr).get idx (by omega) = s.get idx hidx := by
  intros
  apply go_get_aux
  simp

theorem go_denote_eq (aig : AIG α) (c : BitVec w) (assign : α → Bool)
    (curr : Nat) (hcurr : curr ≤ w) (s : AIG.RefVec aig curr) :
    ∀ (idx : Nat) (hidx1 : idx < w),
        curr ≤ idx
          →
        ⟦aig, (go aig c curr s hcurr).get idx hidx1, assign⟧
          =
        c.getLsbD idx := by
  intro idx hidx1 hidx2
  generalize hgo : go aig c curr s hcurr = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    cases Nat.eq_or_lt_of_le hidx2 with
    | inl heq =>
      rw [← hgo]
      rw [go_get]; case hidx => omega
      rw [AIG.RefVec.get_push_ref_eq']
      · rw [← heq]
        simp
      · rw [heq]
    | inr =>
      rw [← hgo]
      rw [go_denote_eq]
      omega
  · omega
termination_by w - curr

end blastConst

@[simp]
theorem denote_blastConst (aig : AIG α) (c : BitVec w) (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦aig, (blastConst aig c).get idx hidx, assign⟧ = c.getLsbD idx := by
  intros
  apply blastConst.go_denote_eq
  omega

end bitblast
end BVExpr

end Std.Tactic.BVDecide
