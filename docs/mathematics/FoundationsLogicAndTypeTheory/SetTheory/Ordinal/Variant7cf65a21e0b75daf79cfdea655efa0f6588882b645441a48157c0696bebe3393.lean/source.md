# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Ordinal.Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f40a2ae12c1639cdf9070fa3d9f9c80afe07c466` · SHA-256 `8fbd946bda205dd07d28df24018f8b16ce8c7de044cf27b4237e10ea616e9d73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.IsOrdinal.Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53","mathematical_subject":"Logic.SetTheory","original_sha256":"c62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/SetTheory/ZFC/Ordinal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
import Mathlib.Order.GameAdd
import Mathlib.Order.RelIso.Set
import Mathlib.SetTheory.ZFC.Basic

/-!
# Von Neumann ordinals

This file works towards the development of von Neumann ordinals, i.e. transitive sets, well-ordered
under `∈`.

## Definitions

- `ZFSet.IsTransitive` means that every element of a set is a subset.
- `ZFSet.IsOrdinal` means that the set is transitive and well-ordered under `∈`. We show multiple
  equivalences to this definition.

## TODO

- Define the von Neumann hierarchy.
- Build correspondences between these set notions and those of the standard `Ordinal` type.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53

universe u

variable {x y z w : ZFSet.{u}}

namespace ZFSet

/-! ### Transitive sets -/

/-- A transitive set is one where every element is a subset.

This is equivalent to being an infinite-open interval in the transitive closure of membership. -/
def IsTransitive (x : ZFSet) : Prop :=
  ∀ y ∈ x, y ⊆ x

@[simp]
theorem isTransitive_empty : IsTransitive ∅ := fun y hy => (notMem_empty y hy).elim

theorem IsTransitive.subset_of_mem (h : x.IsTransitive) : y ∈ x → y ⊆ x := h y

theorem isTransitive_iff_mem_trans : z.IsTransitive ↔ ∀ {x y : ZFSet}, x ∈ y → y ∈ z → x ∈ z :=
  ⟨fun h _ _ hx hy => h.subset_of_mem hy hx, fun H _ hx _ hy => H hy hx⟩

alias ⟨IsTransitive.mem_trans, _⟩ := isTransitive_iff_mem_trans

protected theorem IsTransitive.inter (hx : x.IsTransitive) (hy : y.IsTransitive) :
    (x ∩ y).IsTransitive := fun z hz w hw => by
  rw [mem_inter] at hz ⊢
  exact ⟨hx.mem_trans hw hz.1, hy.mem_trans hw hz.2⟩

/-- The union of a transitive set is transitive. -/
protected theorem IsTransitive.sUnion (h : x.IsTransitive) :
    (⋃₀ x : ZFSet).IsTransitive := fun y hy z hz => by
  rcases mem_sUnion.1 hy with ⟨w, hw, hw'⟩
  exact mem_sUnion_of_mem hz (h.mem_trans hw' hw)

/-- The union of transitive sets is transitive. -/
theorem IsTransitive.sUnion' (H : ∀ y ∈ x, IsTransitive y) :
    (⋃₀ x : ZFSet).IsTransitive := fun y hy z hz => by
  rcases mem_sUnion.1 hy with ⟨w, hw, hw'⟩
  exact mem_sUnion_of_mem ((H w hw).mem_trans hz hw') hw

protected theorem IsTransitive.union (hx : x.IsTransitive) (hy : y.IsTransitive) :
    (x ∪ y).IsTransitive := by
  rw [← sUnion_pair]
  apply IsTransitive.sUnion'
  intro
  rw [mem_pair]
  rintro (rfl | rfl)
  assumption'

protected theorem IsTransitive.powerset (h : x.IsTransitive) : (powerset x).IsTransitive :=
  fun y hy z hz => by
  rw [mem_powerset] at hy ⊢
  exact h.subset_of_mem (hy hz)

theorem isTransitive_iff_sUnion_subset : x.IsTransitive ↔ (⋃₀ x : ZFSet) ⊆ x := by
  constructor <;>
  intro h y hy
  · obtain ⟨z, hz, hz'⟩ := mem_sUnion.1 hy
    exact h.mem_trans hz' hz
  · exact fun z hz ↦ h <| mem_sUnion_of_mem hz hy

alias ⟨IsTransitive.sUnion_subset, _⟩ := isTransitive_iff_sUnion_subset

theorem isTransitive_iff_subset_powerset : x.IsTransitive ↔ x ⊆ powerset x :=
  ⟨fun h _ hy => mem_powerset.2 <| h.subset_of_mem hy, fun H _ hy _ hz => mem_powerset.1 (H hy) hz⟩

alias ⟨IsTransitive.subset_powerset, _⟩ := isTransitive_iff_subset_powerset

/-! ### Ordinals -/

/-- A set `x` is a von Neumann ordinal when it's a transitive set, that's transitive under `∈`. We
prove that this further implies that `x` is well-ordered under `∈` in `isOrdinal_iff_isWellOrder`.

The transitivity condition `a ∈ b → b ∈ c → a ∈ c` can be written without assuming `a ∈ x` and
`b ∈ x`. The lemma `isOrdinal_iff_isTrans` shows this condition is equivalent to the usual one. -/
structure IsOrdinal (x : ZFSet) : Prop where
  /-- An ordinal is a transitive set. -/
  isTransitive : x.IsTransitive
  /-- The membership operation within an ordinal is transitive. -/
  mem_trans' {y z w : ZFSet} : y ∈ z → z ∈ w → w ∈ x → y ∈ w

namespace IsOrdinal

theorem subset_of_mem (h : x.IsOrdinal) : y ∈ x → y ⊆ x :=
  h.isTransitive.subset_of_mem

theorem mem_trans (h : z.IsOrdinal) : x ∈ y → y ∈ z → x ∈ z :=
  h.isTransitive.mem_trans

protected theorem isTrans (h : x.IsOrdinal) : IsTrans _ (Subrel (· ∈ ·) (· ∈ x)) :=
  ⟨fun _ _ c hab hbc => h.mem_trans' hab hbc c.2⟩

/-- The simplified form of transitivity used within `IsOrdinal` yields an equivalent definition to
the standard one. -/
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.ZFSet.isOrdinal_iff_isTrans :
    x.IsOrdinal ↔ x.IsTransitive ∧ IsTrans _ (Subrel (· ∈ ·) (· ∈ x)) where
  mp h := ⟨h.isTransitive, h.isTrans⟩
  mpr := by
    rintro ⟨h₁, ⟨h₂⟩⟩
    refine ⟨h₁, fun {y z w} hyz hzw hwx ↦ ?_⟩
    have hzx := h₁.mem_trans hzw hwx
    exact h₂ ⟨y, h₁.mem_trans hyz hzx⟩ ⟨z, hzx⟩ ⟨w, hwx⟩ hyz hzw

protected theorem mem (hx : x.IsOrdinal) (hy : y ∈ x) : y.IsOrdinal :=
  have := hx.isTrans
  let f : _ ↪r Subrel (· ∈ ·) (· ∈ x) := Subrel.inclusionEmbedding (· ∈ ·) (hx.subset_of_mem hy)
  isOrdinal_iff_isTrans.2 ⟨fun _ hz _ ha ↦ hx.mem_trans' ha hz hy, f.isTrans⟩

/-- An ordinal is a transitive set of transitive sets. -/
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.ZFSet.isOrdinal_iff_forall_mem_isTransitive :
    x.IsOrdinal ↔ x.IsTransitive ∧ ∀ y ∈ x, y.IsTransitive where
  mp h := ⟨h.isTransitive, fun _ hy ↦ (h.mem hy).isTransitive⟩
  mpr := fun ⟨h₁, h₂⟩ ↦ ⟨h₁, fun hyz hzw hwx ↦ (h₂ _ hwx).mem_trans hyz hzw⟩

/-- An ordinal is a transitive set of ordinals. -/
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.ZFSet.isOrdinal_iff_forall_mem_isOrdinal :
    x.IsOrdinal ↔ x.IsTransitive ∧ ∀ y ∈ x, y.IsOrdinal where
  mp h := ⟨h.isTransitive, fun _ ↦ h.mem⟩
  mpr := fun ⟨h₁, h₂⟩ ↦ isOrdinal_iff_forall_mem_isTransitive.2
    ⟨h₁, fun y hy ↦ (h₂ y hy).isTransitive⟩

theorem subset_iff_eq_or_mem (hx : x.IsOrdinal) (hy : y.IsOrdinal) : x ⊆ y ↔ x = y ∨ x ∈ y := by
  constructor
  · revert hx hy
    apply Sym2.GameAdd.induction mem_wf _ x y
    intro x y IH hx hy hxy
    by_cases hyx : y ⊆ x
    · exact Or.inl (subset_antisymm hxy hyx)
    · obtain ⟨m, hm, hm'⟩ := mem_wf.has_min (y.toSet \ x.toSet) (Set.diff_nonempty.2 hyx)
      have hmy : m ∈ y := show m ∈ y.toSet from Set.mem_of_mem_diff hm
      have hmx : m ⊆ x := by
        intro z hzm
        by_contra hzx
        exact hm' _ ⟨hy.mem_trans hzm hmy, hzx⟩ hzm
      obtain rfl | H := IH m x (Sym2.GameAdd.fst_snd hmy) (hy.mem hmy) hx hmx
      · exact Or.inr hmy
      · cases Set.notMem_of_mem_diff hm H
  · rintro (rfl | h)
    · rfl
    · exact hy.subset_of_mem h

alias ⟨eq_or_mem_of_subset, _⟩ := subset_iff_eq_or_mem

theorem mem_of_subset_of_mem (h : x.IsOrdinal) (hz : z.IsOrdinal) (hx : x ⊆ y) (hy : y ∈ z) :
    x ∈ z := by
  obtain rfl | hx := h.eq_or_mem_of_subset (hz.mem hy) hx
  · exact hy
  · exact hz.mem_trans hx hy

theorem notMem_iff_subset (hx : x.IsOrdinal) (hy : y.IsOrdinal) : x ∉ y ↔ y ⊆ x := by
  refine ⟨?_, fun hxy hyx ↦ mem_irrefl _ (hxy hyx)⟩
  revert hx hy
  apply Sym2.GameAdd.induction mem_wf _ x y
  intros x y IH hx hy hyx z hzy
  by_contra hzx
  exact hyx (mem_of_subset_of_mem hx hy (IH z x (Sym2.GameAdd.fst_snd hzy) (hy.mem hzy) hx hzx) hzy)

@[deprecated (since := "2025-05-23")] alias not_mem_iff_subset := notMem_iff_subset

theorem not_subset_iff_mem (hx : x.IsOrdinal) (hy : y.IsOrdinal) : ¬ x ⊆ y ↔ y ∈ x := by
  rw [not_iff_comm, notMem_iff_subset hy hx]

theorem mem_or_subset (hx : x.IsOrdinal) (hy : y.IsOrdinal) : x ∈ y ∨ y ⊆ x := by
  rw [or_iff_not_imp_left, notMem_iff_subset hx hy]
  exact id

theorem subset_total (hx : x.IsOrdinal) (hy : y.IsOrdinal) : x ⊆ y ∨ y ⊆ x := by
  obtain h | h := mem_or_subset hx hy
  · exact Or.inl (hy.subset_of_mem h)
  · exact Or.inr h

theorem mem_trichotomous (hx : x.IsOrdinal) (hy : y.IsOrdinal) : x ∈ y ∨ x = y ∨ y ∈ x := by
  rw [eq_comm, ← subset_iff_eq_or_mem hy hx]
  exact mem_or_subset hx hy

protected theorem isTrichotomous (h : x.IsOrdinal) : IsTrichotomous _ (Subrel (· ∈ ·) (· ∈ x)) :=
  ⟨fun ⟨a, ha⟩ ⟨b, hb⟩ ↦ by simpa using mem_trichotomous (h.mem ha) (h.mem hb)⟩

/-- An ordinal is a transitive set, trichotomous under membership. -/
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.ZFSet.isOrdinal_iff_isTrichotomous :
    x.IsOrdinal ↔ x.IsTransitive ∧ IsTrichotomous _ (Subrel (· ∈ ·) (· ∈ x)) where
  mp h := ⟨h.isTransitive, h.isTrichotomous⟩
  mpr := by
    rintro ⟨h₁, h₂⟩
    rw [isOrdinal_iff_isTrans]
    refine ⟨h₁, ⟨@fun y z w hyz hzw ↦ ?_⟩⟩
    obtain hyw | rfl | hwy := trichotomous_of (Subrel (· ∈ ·) (· ∈ x)) y w
    · exact hyw
    · cases asymm hyz hzw
    · cases mem_wf.asymmetric₃ _ _ _ hyz hzw hwy

protected theorem isWellOrder (h : x.IsOrdinal) : IsWellOrder _ (Subrel (· ∈ ·) (· ∈ x)) where
  wf := (Subrel.relEmbedding _ _).wellFounded mem_wf
  trans := h.isTrans.1
  trichotomous := h.isTrichotomous.1

/-- An ordinal is a transitive set, well-ordered under membership. -/
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.ZFSet.isOrdinal_iff_isWellOrder : x.IsOrdinal ↔
    x.IsTransitive ∧ IsWellOrder _ (Subrel (· ∈ ·) (· ∈ x)) := by
  use fun h ↦ ⟨h.isTransitive, h.isWellOrder⟩
  rintro ⟨h₁, h₂⟩
  refine isOrdinal_iff_isTrans.2 ⟨h₁, ?_⟩
  infer_instance

end IsOrdinal

@[simp]
theorem isOrdinal_empty : IsOrdinal ∅ :=
  ⟨isTransitive_empty, fun _ _ H ↦ (notMem_empty _ H).elim⟩

end ZFSet
```
