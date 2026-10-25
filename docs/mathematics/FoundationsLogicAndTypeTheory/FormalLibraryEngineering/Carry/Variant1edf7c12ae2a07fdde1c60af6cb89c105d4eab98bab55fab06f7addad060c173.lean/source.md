# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Carry.Variant1edf7c12ae2a07fdde1c60af6cb89c105d4eab98bab55fab06f7addad060c173

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5aa2699831a529111f345d5bf014292a3aa702a0` · SHA-256 `adb9485fde9b9cc44ef8dc6700be209916d23719ff313773a634200c14ed36ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoEqCarry.Variant9ea4bbf6edbb2f5f8db6274ca772b182d1ed2ed4a08fc65aa5f17a74aabe2063","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ea4bbf6edbb2f5f8db6274ca772b182d1ed2ed4a08fc65aa5f17a74aabe2063","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GoEqCarry.Variant9ea4bbf6edbb2f5f8db6274ca772b182d1ed2ed4a08fc65aa5f17a74aabe2063","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9ea4bbf6edbb2f5f8db6274ca772b182d1ed2ed4a08fc65aa5f17a74aabe2063","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Carry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Operations.Add
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Carry
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoEqCarry.Variant9ea4bbf6edbb2f5f8db6274ca772b182d1ed2ed4a08fc65aa5f17a74aabe2063

@[expose] public section

/-!
This module contains the verification of the overflow detection bitblaster from `Impl.Carry`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

namespace mkOverflowBit

theorem go_eq_carry (aig : AIG α) (curr : Nat) (hcurr : curr ≤ w) (cin : Ref aig) (origCin : Ref aig)
    (lhs rhs : RefVec aig w) (lhsExpr rhsExpr : BitVec w) (assign : α → Bool)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, lhs.get idx hidx, assign⟧ = lhsExpr.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, rhs.get idx hidx, assign⟧ = rhsExpr.getLsbD idx)
    (hcin : ⟦aig, cin, assign⟧ = BitVec.carry curr lhsExpr rhsExpr ⟦aig, origCin, assign⟧) :
    ⟦go aig lhs rhs curr cin, assign⟧
      =
    BitVec.carry w lhsExpr rhsExpr ⟦aig, origCin, assign⟧ := by
  unfold go
  dsimp only
  split
  · rw [go_eq_carry]
    · congr 1
      rw [AIG.LawfulOperator.denote_mem_prefix (f := mkFullAdderCarry)]
    · omega
    · intros
      rw [AIG.LawfulOperator.denote_mem_prefix (f := mkFullAdderCarry)]
      · simp [hleft]
      · simp [Ref.hgate]
    · intros
      rw [AIG.LawfulOperator.denote_mem_prefix (f := mkFullAdderCarry)]
      · simp [hright]
      · simp [Ref.hgate]
    · simp only [denote_projected_entry, blastAdd.denote_mkFullAdderCarry, BitVec.carry_succ]
      rw [AIG.LawfulOperator.denote_mem_prefix (f := mkFullAdderCarry)]
      rw [hleft, hright, hcin]
      rw [blastAdd.atLeastTwo_eq_halfAdder]
  · have : w = curr := by omega
    rw [hcin]
    simp [this]
termination_by w - curr

end mkOverflowBit

theorem mkOverflowBit_eq_carry (aig : AIG α) (input : OverflowInput aig) (lhs rhs : BitVec input.w)
    (assign : α → Bool)
    (hleft : ∀ (idx : Nat) (hidx : idx < input.w), ⟦aig, input.vec.lhs.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < input.w), ⟦aig, input.vec.rhs.get idx hidx, assign⟧ = rhs.getLsbD idx) :
    ⟦mkOverflowBit aig input, assign⟧
      =
    BitVec.carry input.w lhs rhs ⟦aig, input.cin, assign⟧ := by
  unfold mkOverflowBit
  dsimp only
  apply mkOverflowBit.go_eq_carry
  · omega
  · assumption
  · assumption
  · simp [BitVec.carry_zero]

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
