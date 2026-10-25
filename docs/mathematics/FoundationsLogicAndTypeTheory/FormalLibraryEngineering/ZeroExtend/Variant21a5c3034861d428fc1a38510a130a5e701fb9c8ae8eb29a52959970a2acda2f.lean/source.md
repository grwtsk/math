# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZeroExtend.Variant21a5c3034861d428fc1a38510a130a5e701fb9c8ae8eb29a52959970a2acda2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fbeb81365db5432ef2211f8b39ecdf46614acee` · SHA-256 `be5a28b477600ba381b044666ad4f86f3638a0938f90eb6db619785ab5eb6f9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoGetAux.Variantee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GoGetAux.Variantee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/ZeroExtend.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.ZeroExtend
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoGetAux.Variantee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c

@[expose] public section

/-!
This module contains the verification of the bitblaster `BitVec.zeroExtend` from `Impl.Operations.ZeroExtend`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

namespace blastZeroExtend

theorem go_get_aux (aig : AIG α) (w : Nat) (input : AIG.RefVec aig w) (newWidth curr : Nat)
    (hcurr : curr ≤ newWidth) (s : AIG.RefVec aig curr) :
    ∀ (idx : Nat) (hidx : idx < curr) (hfoo),
        (go aig w input newWidth curr hcurr s).vec.get idx (by omega)
          =
        (s.get idx hidx).cast hfoo := by
  intro idx hidx
  generalize hgo : go aig w input newWidth curr hcurr s = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    split at hgo
    · rw [← hgo]
      intro hfoo
      rw [go_get_aux (hfoo := hfoo)]; case hidx => omega
      rw [AIG.RefVec.get_push_ref_lt]
    · rw [← hgo]
      intro hfoo
      rw [go_get_aux (hfoo := hfoo)]; case hidx => omega
      rw [AIG.RefVec.get_push_ref_lt]
  · dsimp only at hgo
    rw [← hgo]
    simp only [Nat.le_refl]
    have : curr = newWidth := by omega
    subst this
    simp
termination_by newWidth - curr

theorem go_get (aig : AIG α) (w : Nat) (input : AIG.RefVec aig w) (newWidth curr : Nat)
    (hcurr : curr ≤ newWidth) (s : AIG.RefVec aig curr) :
    ∀ (idx : Nat) (hidx : idx < curr),
        (go aig w input newWidth curr hcurr s).vec.get idx (by omega)
          =
        (s.get idx hidx).cast (by apply go_le_size) := by
  intros
  apply go_get_aux

theorem go_denote_mem_prefix (aig : AIG α) (w : Nat) (input : AIG.RefVec aig w) (newWidth curr : Nat)
    (hcurr : curr ≤ newWidth) (s : AIG.RefVec aig curr) (start : Nat) (hstart) :
    ⟦
      (go aig w input newWidth curr hcurr s).aig,
      ⟨start, inv, by apply Nat.lt_of_lt_of_le; exact hstart; apply go_le_size⟩,
      assign
    ⟧
      =
    ⟦aig, ⟨start, inv, hstart⟩, assign⟧ := by
  apply denote.eq_of_isPrefix (entry := ⟨aig, start, inv, hstart⟩)
  apply IsPrefix.of
  · intros
    apply go_decl_eq
  · intros
    apply go_le_size

theorem go_denote_eq (aig : AIG α) (w : Nat) (input : AIG.RefVec aig w) (newWidth curr : Nat)
    (hcurr : curr ≤ newWidth) (s : AIG.RefVec aig curr) (assign : α → Bool) :
    ∀ (idx : Nat) (hidx1 : idx < newWidth),
        curr ≤ idx
          →
        ⟦
          (go aig w input newWidth curr hcurr s).aig,
          (go aig w input newWidth curr hcurr s).vec.get idx hidx1,
          assign
        ⟧
          =
        if hidx : idx < w then
           ⟦aig, input.get idx hidx, assign⟧
        else
           false
    := by
  intro idx hidx1 hidx2
  generalize hgo : go aig w input newWidth curr hcurr s = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    cases Nat.eq_or_lt_of_le hidx2 with
    | inl heq =>
      split at hgo
      next hsplit =>
        rw [heq] at hsplit
        simp only [hsplit, ↓reduceDIte]
        rw [← hgo]
        rw [go_get]; case hidx => omega
        rw [AIG.RefVec.get_push_ref_eq']
        · rw [go_denote_mem_prefix]
          · simp [heq]
          · simp [Ref.hgate]
        · omega
      next hsplit =>
        rw [heq] at hsplit
        simp only [hsplit, ↓reduceDIte]
        rw [← hgo]
        rw [go_get]; case hidx => omega
        rw [AIG.RefVec.get_push_ref_eq']
        · rw [go_denote_mem_prefix]
          · simp only [Ref.cast_eq]
            rw [denote_mkConstCached]
          · simp [Ref.hgate]
        · omega
    | inr =>
      split at hgo
      · rw [← hgo]
        rw [go_denote_eq]
        omega
      · rw [← hgo]
        rw [go_denote_eq]
        omega
  · omega
termination_by newWidth - curr

end blastZeroExtend

@[simp]
theorem denote_blastZeroExtend (aig : AIG α) (target : ExtendTarget aig newWidth)
    (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < newWidth),
        ⟦(blastZeroExtend aig target).aig, (blastZeroExtend aig target).vec.get idx hidx, assign⟧
          =
        if hidx : idx < target.w then
           ⟦aig, target.vec.get idx hidx, assign⟧
        else
           false
    := by
  intro idx hidx
  unfold blastZeroExtend
  apply blastZeroExtend.go_denote_eq
  omega

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
