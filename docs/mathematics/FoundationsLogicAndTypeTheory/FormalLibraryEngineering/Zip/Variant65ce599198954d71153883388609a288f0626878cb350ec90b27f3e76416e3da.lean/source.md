# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zip.Variant65ce599198954d71153883388609a288f0626878cb350ec90b27f3e76416e3da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a910c39a0a156555e65469a82633885afa794d1` · SHA-256 `4ac0cf983e26dcb0aa3476dc968ed7f0f9042f937de86e3688d925fca5af24a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulZipOperator.Variant1cd69efd6bdf68f6ba160bc0da2aa0a94ab07096ed8eb98ae2c407bb4d01a377","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cd69efd6bdf68f6ba160bc0da2aa0a94ab07096ed8eb98ae2c407bb4d01a377","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LawfulZipOperator.Variant1cd69efd6bdf68f6ba160bc0da2aa0a94ab07096ed8eb98ae2c407bb4d01a377","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1cd69efd6bdf68f6ba160bc0da2aa0a94ab07096ed8eb98ae2c407bb4d01a377","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sat/AIG/RefVecOperator/Zip.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.AIG.LawfulVecOperator
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulZipOperator.Variant1cd69efd6bdf68f6ba160bc0da2aa0a94ab07096ed8eb98ae2c407bb4d01a377

@[expose] public section

namespace Std
namespace Sat

namespace AIG
namespace RefVec

variable {α : Type} [Hashable α] [DecidableEq α] {aig : AIG α}

class LawfulZipOperator (α : Type) [Hashable α] [DecidableEq α]
    (f : (aig : AIG α) → BinaryInput aig → Entrypoint α) [LawfulOperator α BinaryInput f] : Prop
  where
  chainable : ∀ (aig : AIG α) (input1 input2 : BinaryInput aig) (h) (assign),
                ⟦f (f aig input1).aig (input2.cast h), assign⟧
                  =
                ⟦f aig input2, assign⟧

namespace LawfulZipOperator

@[deprecated chainable (since := "2025-10-29")]
theorem denote_prefix_cast_ref {aig : AIG α} {input1 input2 : BinaryInput aig}
    {f : (aig : AIG α) → BinaryInput aig → Entrypoint α} [LawfulOperator α BinaryInput f]
    [LawfulZipOperator α f] {h} :
    ⟦f (f aig input1).aig (input2.cast h), assign⟧
      =
    ⟦f aig input2, assign⟧ := by
  rw [LawfulZipOperator.chainable]

instance : LawfulZipOperator α mkAndCached where
  chainable := by
    intros
    simp only [BinaryInput.cast, Ref.cast_eq, denote_mkAndCached]
    rw [LawfulOperator.denote_mem_prefix (f := mkAndCached)]
    rw [LawfulOperator.denote_mem_prefix (f := mkAndCached)]

instance : LawfulZipOperator α mkOrCached where
  chainable := by
    intros
    simp only [BinaryInput.cast, Ref.cast_eq, denote_mkOrCached]
    rw [LawfulOperator.denote_mem_prefix (f := mkOrCached)]
    rw [LawfulOperator.denote_mem_prefix (f := mkOrCached)]

instance : LawfulZipOperator α mkXorCached where
  chainable := by
    intros
    simp only [BinaryInput.cast, Ref.cast_eq, denote_mkXorCached]
    rw [LawfulOperator.denote_mem_prefix (f := mkXorCached)]
    rw [LawfulOperator.denote_mem_prefix (f := mkXorCached)]

instance : LawfulZipOperator α mkBEqCached where
  chainable := by
    intros
    simp only [BinaryInput.cast, Ref.cast_eq, denote_mkBEqCached]
    rw [LawfulOperator.denote_mem_prefix (f := mkBEqCached)]
    rw [LawfulOperator.denote_mem_prefix (f := mkBEqCached)]

instance : LawfulZipOperator α mkImpCached where
  chainable := by
    intros
    simp only [BinaryInput.cast, Ref.cast_eq, denote_mkImpCached]
    rw [LawfulOperator.denote_mem_prefix (f := mkImpCached)]
    rw [LawfulOperator.denote_mem_prefix (f := mkImpCached)]

end LawfulZipOperator

@[specialize]
def zip (aig : AIG α) (input : BinaryRefVec aig len)
    (func : (aig : AIG α) → BinaryInput aig → Entrypoint α)
    [LawfulOperator α BinaryInput func] [LawfulZipOperator α func] :
    RefVecEntry α len :=
  go aig 0 (.emptyWithCapacity len) (by omega) input.lhs input.rhs func
where
  @[specialize]
  go (aig : AIG α) (idx : Nat) (s : RefVec aig idx) (hidx : idx ≤ len)
      (lhs rhs : RefVec aig len) (f : (aig : AIG α) → BinaryInput aig → Entrypoint α)
      [LawfulOperator α BinaryInput f] [LawfulZipOperator α f] :
      RefVecEntry α len :=
    if hidx : idx < len then
      let res := f aig ⟨lhs.get idx hidx, rhs.get idx hidx⟩
      let aig := res.aig
      let newRef := res.ref
      have := by
        intros
        apply LawfulOperator.le_size_of_le_aig_size
        omega
      let s := s.cast this
      let s := s.push newRef
      go aig (idx + 1) s (by omega) (lhs.cast this) (rhs.cast this) f
    else
      have : idx = len := by omega
      ⟨aig, this ▸ s⟩
  termination_by len - idx

theorem zip.go_le_size {aig : AIG α} (idx : Nat) (hidx) (s : RefVec aig idx)
    (lhs rhs : RefVec aig len)
    (f : (aig : AIG α) → BinaryInput aig → Entrypoint α) [LawfulOperator α BinaryInput f]
    [LawfulZipOperator α f] :
    aig.decls.size ≤ (go aig idx s hidx lhs rhs f).1.decls.size := by
  unfold go
  split
  · dsimp only
    refine Nat.le_trans ?_ (by apply zip.go_le_size)
    apply LawfulOperator.le_size
  · simp
  termination_by len - idx

theorem zip_le_size (aig : AIG α) (input : BinaryRefVec aig len)
    (func : (aig : AIG α) → BinaryInput aig → Entrypoint α)
    [LawfulOperator α BinaryInput func] [LawfulZipOperator α func] :
    aig.decls.size ≤ (zip aig input func).1.decls.size := by
  unfold zip
  apply zip.go_le_size

theorem zip.go_decl_eq {aig : AIG α} (i) (hi) (lhs rhs : RefVec aig len)
    (s : RefVec aig i) (f : (aig : AIG α) → BinaryInput aig → Entrypoint α)
    [LawfulOperator α BinaryInput f] [LawfulZipOperator α f] :
    ∀ (idx : Nat) (h1) (h2), (go aig i s hi lhs rhs f).1.decls[idx]'h2 = aig.decls[idx]'h1 := by
  generalize hgo : go aig i s hi lhs rhs f = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    rw [← hgo]
    intros
    intros
    rw [go_decl_eq]
    rw [LawfulOperator.decl_eq]
    apply LawfulOperator.lt_size_of_lt_aig_size
    assumption
  · dsimp only at hgo
    rw [← hgo]
    intros
    simp
termination_by len - i

theorem zip_decl_eq {aig : AIG α} (input : BinaryRefVec aig len)
    (func : (aig : AIG α) → BinaryInput aig → Entrypoint α)
    [LawfulOperator α BinaryInput func] [LawfulZipOperator α func] :
    ∀ idx (h1 : idx < aig.decls.size) (h2),
      (zip aig input func).1.decls[idx]'h2 = aig.decls[idx]'h1 := by
  intros
  unfold zip
  apply zip.go_decl_eq

theorem zip_lt_size_of_lt_aig_size (aig : AIG α) (input : BinaryRefVec aig len)
    (func : (aig : AIG α) → BinaryInput aig → Entrypoint α)
    [LawfulOperator α BinaryInput func] [LawfulZipOperator α func] (h : x < aig.decls.size) :
    x < (zip aig input func).aig.decls.size := by
  apply Nat.lt_of_lt_of_le
  · exact h
  · apply zip_le_size

theorem zip_le_size_of_le_aig_size (aig : AIG α) (input : BinaryRefVec aig len)
    (func : (aig : AIG α) → BinaryInput aig → Entrypoint α)
    [LawfulOperator α BinaryInput func] [LawfulZipOperator α func] (h : x ≤ aig.decls.size) :
    x ≤ (zip aig input func).aig.decls.size := by
  apply Nat.le_trans
  · exact h
  · apply zip_le_size

theorem IsPrefix_zip {aig : AIG α} (input : BinaryRefVec aig len)
    (func : (aig : AIG α) → BinaryInput aig → Entrypoint α)
    [LawfulOperator α BinaryInput func] [LawfulZipOperator α func] :
    AIG.IsPrefix aig.decls (zip aig input func).aig.decls := by
  intros
  unfold zip
  apply IsPrefix.of
  · intros
    apply zip_decl_eq
  · intros
    apply zip_le_size

namespace zip

theorem go_get_aux {aig : AIG α} (curr : Nat) (hcurr : curr ≤ len) (s : RefVec aig curr)
    (lhs rhs : RefVec aig len) (f : (aig : AIG α) → BinaryInput aig → Entrypoint α)
    [LawfulOperator α BinaryInput f] [LawfulZipOperator α f] :
    -- The hfoo here is a trick to make the dependent type gods happy
    ∀ (idx : Nat) (hidx : idx < curr) (hfoo),
      (go aig curr s hcurr lhs rhs f).vec.get idx (by omega)
        =
      (s.get idx hidx).cast hfoo := by
  intro idx hidx
  generalize hgo : go aig curr s hcurr lhs rhs f = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    rw [← hgo]
    intro hfoo
    rw [go_get_aux (hfoo := go_le_size ..)]; case hidx => omega
    rw [AIG.RefVec.get_push_ref_lt (hidx := hidx)]
    simp only [Ref.cast, Ref.mk.injEq]
    rw [AIG.RefVec.get_cast]
    simp
  · dsimp only at hgo
    rw [← hgo]
    simp only [Nat.le_refl, get, Ref.cast_eq, Ref.mk.injEq, true_implies]
    have : curr = len := by omega
    subst this
    simp
termination_by len - curr

theorem go_get {aig : AIG α} (curr : Nat) (hcurr : curr ≤ len) (s : RefVec aig curr)
    (lhs rhs : RefVec aig len) (f : (aig : AIG α) → BinaryInput aig → Entrypoint α)
    [LawfulOperator α BinaryInput f] [LawfulZipOperator α f] :
    ∀ (idx : Nat) (hidx : idx < curr),
      (go aig curr s hcurr lhs rhs f).vec.get idx (by omega)
        =
      (s.get idx hidx).cast (by apply go_le_size) := by
  intros
  apply go_get_aux

theorem go_denote_mem_prefix {aig : AIG α} (curr : Nat) (hcurr : curr ≤ len)
    (s : RefVec aig curr) (lhs rhs : RefVec aig len)
    (f : (aig : AIG α) → BinaryInput aig → Entrypoint α) [LawfulOperator α BinaryInput f]
    [LawfulZipOperator α f] (start : Nat) (hstart) :
    ⟦
      (go aig curr s hcurr lhs rhs f).aig,
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

attribute [local simp] LawfulZipOperator.denote_prefix_cast_ref in
theorem denote_go {aig : AIG α} (curr : Nat) (hcurr : curr ≤ len) (s : RefVec aig curr)
    (lhs rhs : RefVec aig len) (f : (aig : AIG α) → BinaryInput aig → Entrypoint α)
    [LawfulOperator α BinaryInput f] [LawfulZipOperator α f] :
    ∀ (idx : Nat) (hidx1 : idx < len),
      curr ≤ idx
        →
      ⟦
        (go aig curr s hcurr lhs rhs f).aig,
        (go aig curr s hcurr lhs rhs f).vec.get idx hidx1,
        assign
      ⟧
        =
      ⟦f aig ⟨lhs.get idx hidx1, rhs.get idx hidx1⟩, assign⟧ := by
  intro idx hidx1 hidx2
  generalize hgo : go aig curr s hcurr lhs rhs f = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    cases Nat.eq_or_lt_of_le hidx2 with
    | inl heq =>
      rw [← hgo]
      rw [go_get]; case hidx => omega
      rw [AIG.RefVec.get_push_ref_eq']
      · simp only [← heq]
        rw [go_denote_mem_prefix]
        · simp
        · simp [Ref.hgate]
      · rw [heq]
    | inr hlt =>
      rw [← hgo]
      rw [denote_go]
      · simp [-Ref.cast_eq]
      · omega
  · omega
termination_by len - curr

end zip

@[simp]
theorem denote_zip {aig : AIG α} (input : BinaryRefVec aig len)
    (func : (aig : AIG α) → BinaryInput aig → Entrypoint α)
    [LawfulOperator α BinaryInput func] [LawfulZipOperator α func] :
    ∀ (idx : Nat) (hidx : idx < len),
      ⟦(zip aig input func).aig, (zip aig input func).vec.get idx hidx, assign⟧
        =
      ⟦func aig ⟨input.lhs.get idx hidx, input.rhs.get idx hidx⟩, assign⟧ := by
  intros
  apply zip.denote_go
  omega

end RefVec
end AIG

end Sat
end Std
```
