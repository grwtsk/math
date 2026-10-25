# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replicate.Variant250063447e7d674972ed541b357b274a1713000aac2594b903e2b04a19287121

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e4075aaec69460ff1d1a320e62fa61b68ac039e` · SHA-256 `ef26e92b4d3c4aeb8c417cc319fc007b3aa4a2318ea1b91ef61c72e681570f3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aux1.Variantae9d9a0bf7042b6107f9cb752f745bf2ea75cc53d53a9e53f4f302e99e108e3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae9d9a0bf7042b6107f9cb752f745bf2ea75cc53d53a9e53f4f302e99e108e3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Aux1.Variantae9d9a0bf7042b6107f9cb752f745bf2ea75cc53d53a9e53f4f302e99e108e3e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ae9d9a0bf7042b6107f9cb752f745bf2ea75cc53d53a9e53f4f302e99e108e3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/Replicate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Replicate
import Init.ByCases
import Init.Data.Nat.Mod
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aux1.Variantae9d9a0bf7042b6107f9cb752f745bf2ea75cc53d53a9e53f4f302e99e108e3e

@[expose] public section

/-!
This module contains the verification of the bitblaster for `BitVec.replicate` from `Impl.Operations.Replicate`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

namespace blastReplicate

private theorem aux1 {a b c : Nat} (h : b < a * c) : 0 < a := by
  by_cases a = 0
  · simp_all
  · omega

theorem aux2 {a b c : Nat} (hidx1 : b < c * a) : b % c < c := by
  apply Nat.mod_lt
  apply aux1
  assumption

private theorem aux3 {a b c : Nat} (hidx : a < b * c) (h : c < n) : a < b * n := by
  apply Nat.lt_trans
  · exact hidx
  · apply (Nat.mul_lt_mul_left _).mpr h
    apply aux1
    assumption

theorem aux4 {a b c : Nat} (hidx : a < b * c) (h : c ≤ n) : a < b * n := by
  cases Nat.lt_or_eq_of_le h with
  | inl h => apply aux3 <;> assumption
  | inr h => simp_all

theorem go_get_aux (aig : AIG α) (n : Nat) (curr : Nat) (hcurr : curr ≤ n)
    (input : AIG.RefVec aig w) (s : AIG.RefVec aig (w * curr)) :
    ∀ (idx : Nat) (hidx : idx < w * curr),
        (go n input curr hcurr s).get idx (aux4 hidx hcurr)
          =
        s.get idx hidx := by
  intro idx hidx
  unfold go
  split
  · dsimp only
    rw [go_get_aux]; case hidx => rw [Nat.mul_add]; omega
    rw [AIG.RefVec.get_append]
    simp only [hidx, ↓reduceDIte]
  · dsimp only
    simp only [RefVec.get, Ref.mk.injEq]
    have : curr = n := by omega
    subst this
    simp
termination_by n - curr

theorem go_get (aig : AIG α) (n : Nat) (curr : Nat) (hcurr : curr ≤ n)
    (input : AIG.RefVec aig w) (s : AIG.RefVec aig (w * curr)) :
    ∀ (idx : Nat) (hidx1 : idx < w * n),
        w * curr ≤ idx
          →
        (go n input curr hcurr s).get idx hidx1
          =
        input.get (idx % w) (aux2 hidx1) := by
  intro idx hidx1 hidx2
  unfold go
  dsimp only
  split
  · cases Nat.lt_or_ge idx (w * (curr + 1)) with
    | inl h =>
      rw [go_get_aux]
      rw [AIG.RefVec.get_append]
      · have : ¬ (idx < w * curr) := by omega
        simp only [this, ↓reduceDIte]
        congr 1
        rw [← Nat.sub_mul_mod (k := curr)]
        · rw [Nat.mod_eq_of_lt]
          apply Nat.sub_lt_left_of_lt_add <;> assumption
        · assumption
      · simpa using h
    | inr h =>
      rw [go_get]
      assumption
  · have : curr = n := by omega
    rw [this] at hidx2
    omega
termination_by n - curr

end blastReplicate

@[simp]
theorem denote_blastReplicate (aig : AIG α) (target : ReplicateTarget aig newWidth)
    (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < newWidth),
        ⟦(blastReplicate aig target).aig, (blastReplicate aig target).vec.get idx hidx, assign⟧
          =
        ⟦aig, target.inner.get (idx % target.w) (blastReplicate.aux2 (target.h ▸ hidx)), assign⟧ := by
  intro idx hidx
  rcases target with ⟨n, input, h⟩
  unfold blastReplicate
  dsimp only
  subst h
  rw [blastReplicate.go_get]
  omega

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
