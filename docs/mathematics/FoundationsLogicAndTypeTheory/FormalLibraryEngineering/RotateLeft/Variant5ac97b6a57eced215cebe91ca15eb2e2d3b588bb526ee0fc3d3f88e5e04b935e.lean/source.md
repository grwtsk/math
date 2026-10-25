# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RotateLeft.Variant5ac97b6a57eced215cebe91ca15eb2e2d3b588bb526ee0fc3d3f88e5e04b935e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3b445ee998461ae035f9c1941c7b4127fdd4270` · SHA-256 `12427be7177c16061d966619569598a8571f8dc2868cb0345505f01a3f8ad164`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoGetAux.Variant634e429d4b9c32621fc6ccbb15f657d8cc855ac9c84553a11195111c333bbfa6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"634e429d4b9c32621fc6ccbb15f657d8cc855ac9c84553a11195111c333bbfa6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GoGetAux.Variant634e429d4b9c32621fc6ccbb15f657d8cc855ac9c84553a11195111c333bbfa6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"634e429d4b9c32621fc6ccbb15f657d8cc855ac9c84553a11195111c333bbfa6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/RotateLeft.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.RotateLeft
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoGetAux.Variant634e429d4b9c32621fc6ccbb15f657d8cc855ac9c84553a11195111c333bbfa6

@[expose] public section

/-!
This module contains the verification of the bitblaster for `BitVec.rotateLeft` from
`Impl.Operations.RotateLeft`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

namespace blastRotateLeft

theorem go_get_aux (aig : AIG α) (distance : Nat) (input : AIG.RefVec aig w)
    (curr : Nat) (hcurr : curr ≤ w) (s : AIG.RefVec aig curr) :
    ∀ (idx : Nat) (hidx : idx < curr),
        (go input distance curr hcurr s).get idx (by omega)
          =
        s.get idx hidx := by
  intro idx hidx
  unfold go
  split
  · dsimp only
    split
    · rw [go_get_aux]; case hidx => omega
      rw [AIG.RefVec.get_push_ref_lt]
    · rw [go_get_aux]; case hidx => omega
      rw [AIG.RefVec.get_push_ref_lt]
  · dsimp only
    simp only [RefVec.get, Ref.mk.injEq]
    obtain rfl : curr = w := by omega
    simp
termination_by w - curr

theorem go_get (aig : AIG α) (distance : Nat) (input : AIG.RefVec aig w)
    (curr : Nat) (hcurr : curr ≤ w) (s : AIG.RefVec aig curr) :
    ∀ (idx : Nat) (hidx1 : idx < w),
        curr ≤ idx
          →
        (go input distance curr hcurr s).get idx hidx1
          =
        if hidx3 : idx < distance % w then
          input.get (w - (distance % w) + idx) (by omega)
        else
          input.get (idx - (distance % w)) (by omega)
        := by
  intro idx hidx1 hidx2
  unfold go
  split
  · dsimp only
    cases Nat.eq_or_lt_of_le hidx2 with
    | inl heq =>
      split
      · split
        · rw [go_get_aux]; case hidx => omega
          rw [AIG.RefVec.get_push_ref_eq']
          · simp [heq]
          · omega
        · omega
      · split
        · omega
        · rw [go_get_aux]; case hidx => omega
          rw [AIG.RefVec.get_push_ref_eq']
          · simp [heq]
          · omega
    | inr heq =>
      split
      · rw [go_get]
        omega
      · rw [go_get]
        omega
  · omega
termination_by w - curr

end blastRotateLeft

@[simp]
theorem denote_blastRotateLeft (aig : AIG α) (target : ShiftTarget aig w)
    (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦
          (blastRotateLeft aig target).aig,
          (blastRotateLeft aig target).vec.get idx hidx,
          assign
        ⟧
          =
        if hidx2 : idx < target.distance % w then
          ⟦aig, target.vec.get (w - (target.distance % w) + idx) (by omega), assign⟧
        else
          ⟦aig, target.vec.get (idx - (target.distance % w)) (by omega), assign⟧
      := by
  intros
  unfold blastRotateLeft
  dsimp only
  rw [blastRotateLeft.go_get]
  · split
    · rfl
    · rfl
  · omega

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
