# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LemmasExtra.Variant2e42a680f0024408e8988c30c90e03e8afe2b94dc91b2a418b68620ad762b55a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dbbd038a1028cf52ae6eb80c1fdf946fb368e6d` · SHA-256 `8f3316c848811f76e788b792aa993f661880680208d8aeef0df297b10a0b020d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompareEqEqIffEq.Variant91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CompareEqEqIffEq.Variant91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Order/LemmasExtra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
import Init.ByCases
public import Init.Classical
public import Init.Data.Order.Classes
public import Init.Data.Order.ClassesExtra
public import Init.Data.Order.Ord
import Init.Data.Bool
import Init.Data.Order.FactoriesExtra
import Init.Data.Order.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompareEqEqIffEq.Variant91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e

namespace Std

public instance {α : Type u} [LE α] [Ord α] [LawfulOrderOrd α] : OrientedOrd α where
  eq_swap := by
    open Classical.Order in
    intro a b
    apply Eq.symm
    cases h : compare a b
    · rw [compare_eq_lt] at h
      simpa [Ordering.swap_eq_lt, compare_eq_gt] using h
    · rw [compare_eq_eq] at h
      simpa [Ordering.swap_eq_eq, compare_eq_eq] using BEq.symm h
    · rw [compare_eq_gt] at h
      simpa [Ordering.swap_eq_gt, compare_eq_lt] using h

public instance {α : Type u} [Ord α] [LE α] [LawfulOrderOrd α] [IsPreorder α] : TransOrd α where
  isLE_trans := by
    simp only [isLE_compare]
    apply le_trans

public instance {α : Type u} [Ord α] [BEq α] [LE α] [LawfulOrderOrd α] [LawfulOrderBEq α] :
    LawfulBEqOrd α where
  compare_eq_iff_beq := by
    simp [Ordering.eq_eq_iff_isLE_and_isGE, isLE_compare, isGE_compare, beq_iff_le_and_ge]

public instance {α : Type u} [Ord α] [LE α] [LawfulOrderOrd α] [IsPartialOrder α] : LawfulEqOrd α where
  eq_of_compare {a b} := by
    intro h
    apply le_antisymm
    · simp [← isLE_compare, h]
    · simp [← isGE_compare, h]

public instance [Ord α] [LE α] [LawfulOrderOrd α] :
    Total (α := α) (· ≤ ·) where
  total a b := by
    rw [← isLE_compare, ← isGE_compare]
    cases compare a b <;> simp

public instance {α : Type u} [Ord α] [LE α] [LawfulOrderOrd α] [Antisymm (α := α) (· ≤ ·)] :
    LawfulEqOrd α where
  eq_of_compare := by
    open Classical.Order in
    simp [Ordering.eq_eq_iff_isLE_and_isGE, isLE_compare, isGE_compare, le_antisymm_iff]

public instance {α : Type u} [Ord α] [LE α] [LawfulOrderOrd α] [LawfulEqOrd α] :
     Antisymm (α := α) (· ≤ ·) where
  antisymm a b := by
    simp [← and_imp, ← isLE_compare (a := a), ← isGE_compare (a := a),
      ← Ordering.eq_eq_iff_isLE_and_isGE]

public theorem compare_eq_eq_iff_eq {α : Type u} [Ord α] [LawfulEqOrd α] {a b : α} :
    compare a b = .eq ↔ a = b :=
  LawfulEqOrd.compare_eq_iff_eq

public theorem IsLinearPreorder.of_ord {α : Type u} [LE α] [Ord α] [LawfulOrderOrd α]
    [TransOrd α] : IsLinearPreorder α where
  le_refl a := by simp
  le_trans a b c := by simpa [← isLE_compare] using TransOrd.isLE_trans
  le_total a b := Total.total a b

public theorem IsLinearOrder.of_ord {α : Type u} [LE α] [Ord α] [LawfulOrderOrd α]
    [TransOrd α] [LawfulEqOrd α] : IsLinearOrder α where
  toIsLinearPreorder := .of_ord
  le_antisymm a b hab hba := by
    apply LawfulEqOrd.eq_of_compare
    rw [← isLE_compare] at hab
    rw [← isGE_compare] at hba
    rw [Ordering.eq_eq_iff_isLE_and_isGE, hab, hba, and_self]

/--
This lemma derives a `LawfulOrderLT α` instance from a property involving an `Ord α` instance.
-/
public theorem LawfulOrderLT.of_ord (α : Type u) [Ord α] [LT α] [LE α] [LawfulOrderOrd α]
    (lt_iff_compare_eq_lt : ∀ a b : α, a < b ↔ compare a b = .lt) :
    LawfulOrderLT α where
  lt_iff a b := by
    simp +contextual [lt_iff_compare_eq_lt, ← isLE_compare (a := a), ← isGE_compare (a := a)]

/--
This lemma derives a `LawfulOrderBEq α` instance from a property involving an `Ord α` instance.
-/
public theorem LawfulOrderBEq.of_ord (α : Type u) [Ord α] [BEq α] [LE α] [LawfulOrderOrd α]
    (beq_iff_compare_eq_eq : ∀ a b : α, a == b ↔ compare a b = .eq) :
    LawfulOrderBEq α where
  beq_iff_le_and_ge := by
    simp [beq_iff_compare_eq_eq, Ordering.eq_eq_iff_isLE_and_isGE, isLE_compare, isGE_compare]

/--
This lemma derives a `LawfulOrderInf α` instance from a property involving an `Ord α` instance.
-/
public theorem LawfulOrderInf.of_ord (α : Type u) [Ord α] [Min α] [LE α] [LawfulOrderOrd α]
    (compare_min_isLE_iff : ∀ a b c : α,
        (compare a (min b c)).isLE ↔ (compare a b).isLE ∧ (compare a c).isLE) :
    LawfulOrderInf α where
  le_min_iff := by simpa [isLE_compare] using compare_min_isLE_iff

/--
This lemma derives a `LawfulOrderMin α` instance from a property involving an `Ord α` instance.
-/
public theorem LawfulOrderMin.of_ord (α : Type u) [Ord α] [Min α] [LE α] [LawfulOrderOrd α]
    (compare_min_isLE_iff : ∀ a b c : α,
        (compare a (min b c)).isLE ↔ (compare a b).isLE ∧ (compare a c).isLE)
    (min_eq_or : ∀ a b : α, min a b = a ∨ min a b = b) :
    LawfulOrderMin α where
  toLawfulOrderInf := .of_ord α compare_min_isLE_iff
  min_eq_or := min_eq_or

/--
This lemma derives a `LawfulOrderSup α` instance from a property involving an `Ord α` instance.
-/
public theorem LawfulOrderSup.of_ord (α : Type u) [Ord α] [Max α] [LE α] [LawfulOrderOrd α]
    (compare_max_isLE_iff : ∀ a b c : α,
        (compare (max a b) c).isLE ↔ (compare a c).isLE ∧ (compare b c).isLE) :
    LawfulOrderSup α where
  max_le_iff := by simpa [isLE_compare] using compare_max_isLE_iff

/--
This lemma derives a `LawfulOrderMax α` instance from a property involving an `Ord α` instance.
-/
public theorem LawfulOrderMax.of_ord (α : Type u) [Ord α] [Max α] [LE α] [LawfulOrderOrd α]
    (compare_max_isLE_iff : ∀ a b c : α,
        (compare (max a b) c).isLE ↔ (compare a c).isLE ∧ (compare b c).isLE)
    (max_eq_or : ∀ a b : α, max a b = a ∨ max a b = b) :
    LawfulOrderMax α where
  toLawfulOrderSup := .of_ord α compare_max_isLE_iff
  max_eq_or := max_eq_or

public theorem min_eq_if_isLE_compare {α : Type u} [Ord α] [LE α] {_ : Min α}
    [LawfulOrderOrd α] [LawfulOrderLeftLeaningMin α] {a b : α} :
    min a b = if (compare a b).isLE then a else b := by
  open Classical in simp [min_eq_if, isLE_compare]

public theorem max_eq_if_isGE_compare {α : Type u} [Ord α] [LE α] {_ : Max α}
    [LawfulOrderOrd α] [LawfulOrderLeftLeaningMax α]
    {a b : α} : max a b = if (compare a b).isGE then a else b := by
  open Classical in simp [max_eq_if, isGE_compare]

theorem min_le_min [LE α] [Min α] [Std.LawfulOrderLeftLeaningMin α] [IsLinearOrder α] (a b : α) : min a b ≤ min b a := by
  apply (LawfulOrderInf.le_min_iff (min a b) b a).2
  rw [And.comm]
  by_cases h : a ≤ b
  case pos =>
    simp [LawfulOrderLeftLeaningMin.min_eq_left, h, le_refl]
  case neg =>
    simp [LawfulOrderLeftLeaningMin.min_eq_right _ _ h, le_of_not_ge h, le_refl]

public instance [LE α] [Min α] [Std.LawfulOrderLeftLeaningMin α] [IsLinearOrder α] : Commutative (min : α → α → α) where
  comm a b := by apply le_antisymm <;> simp [min_le_min]

end Std

namespace Classical.Order
open Std

/--
Derives an `Ord α` instance from an `LE α` instance. Because all elements are comparable with
`compare`, the resulting `Ord α` instance only makes sense if `LE α` is total.
-/
public noncomputable scoped instance instOrd {α : Type u} [LE α] :
    Ord α where
  compare a b := if a ≤ b then if b ≤ a then .eq else .lt else .gt

public instance instLawfulOrderOrd {α : Type u} [LE α]
    [Total (α := α) (· ≤ ·)] :
    LawfulOrderOrd α where
  isLE_compare a b := by
    simp only [compare]
    by_cases a ≤ b <;> rename_i h
    · simp only [h, ↓reduceIte, iff_true]
      split <;> simp
    · simp [h]
  isGE_compare a b := by
    simp only [compare]
    cases Total.total (r := (· ≤ ·)) a b <;> rename_i h
    · simp only [h, ↓reduceIte]
      split <;> simp [*]
    · simp only [h, ↓reduceIte, iff_true]
      split <;> simp

end Classical.Order
```
