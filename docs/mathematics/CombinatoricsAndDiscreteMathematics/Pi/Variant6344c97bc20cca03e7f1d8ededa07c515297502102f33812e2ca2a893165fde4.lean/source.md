# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fa2d585efbca9f4f01fb95cfc30a01ec2457b40` · SHA-256 `a8c5d4a6fdf35c92601a16da737291267a3101e7e2cd2831a7a5eae7906f1a59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PiFinset.Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PiFinset.Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Fintype/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Finset.Pi


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PiFinset.Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60

#align_import data.fintype.pi from "leanprover-community/mathlib"@"9003f28797c0664a49e4179487267c494477d853"

/-!
# Fintype instances for pi types
-/


variable {α : Type*}

open Finset

namespace Fintype

variable [DecidableEq α] [Fintype α] {δ : α → Type*}

/-- Given for all `a : α` a finset `t a` of `δ a`, then one can define the
finset `Fintype.piFinset t` of all functions taking values in `t a` for all `a`. This is the
analogue of `Finset.pi` where the base finset is `univ` (but formally they are not the same, as
there is an additional condition `i ∈ Finset.univ` in the `Finset.pi` definition). -/
def piFinset (t : ∀ a, Finset (δ a)) : Finset (∀ a, δ a) :=
  (Finset.univ.pi t).map ⟨fun f a => f a (mem_univ a), fun _ _ =>
    by simp (config := {contextual := true}) [Function.funext_iff]⟩
#align fintype.pi_finset Fintype.piFinset

@[simp]
theorem mem_piFinset {t : ∀ a, Finset (δ a)} {f : ∀ a, δ a} : f ∈ piFinset t ↔ ∀ a, f a ∈ t a := by
  constructor
  · simp only [piFinset, mem_map, and_imp, forall_prop_of_true, exists_prop, mem_univ, exists_imp,
      mem_pi]
    rintro g hg hgf a
    rw [← hgf]
    exact hg a
  · simp only [piFinset, mem_map, forall_prop_of_true, exists_prop, mem_univ, mem_pi]
    exact fun hf => ⟨fun a _ => f a, hf, rfl⟩
#align fintype.mem_pi_finset Fintype.mem_piFinset

@[simp]
theorem coe_piFinset (t : ∀ a, Finset (δ a)) :
    (piFinset t : Set (∀ a, δ a)) = Set.pi Set.univ fun a => t a :=
  Set.ext fun x => by
    rw [Set.mem_univ_pi]
    exact Fintype.mem_piFinset
#align fintype.coe_pi_finset Fintype.coe_piFinset

theorem piFinset_subset (t₁ t₂ : ∀ a, Finset (δ a)) (h : ∀ a, t₁ a ⊆ t₂ a) :
    piFinset t₁ ⊆ piFinset t₂ := fun _ hg => mem_piFinset.2 fun a => h a <| mem_piFinset.1 hg a
#align fintype.pi_finset_subset Fintype.piFinset_subset

@[simp]
theorem piFinset_empty [Nonempty α] : piFinset (fun _ => ∅ : ∀ i, Finset (δ i)) = ∅ :=
  eq_empty_of_forall_not_mem fun _ => by simp
#align fintype.pi_finset_empty Fintype.piFinset_empty

@[simp]
theorem piFinset_singleton (f : ∀ i, δ i) : piFinset (fun i => {f i} : ∀ i, Finset (δ i)) = {f} :=
  ext fun _ => by simp only [Function.funext_iff, Fintype.mem_piFinset, mem_singleton]
#align fintype.pi_finset_singleton Fintype.piFinset_singleton

theorem piFinset_subsingleton {f : ∀ i, Finset (δ i)} (hf : ∀ i, (f i : Set (δ i)).Subsingleton) :
    (Fintype.piFinset f : Set (∀ i, δ i)).Subsingleton := fun _ ha _ hb =>
  funext fun _ => hf _ (mem_piFinset.1 ha _) (mem_piFinset.1 hb _)
#align fintype.pi_finset_subsingleton Fintype.piFinset_subsingleton

theorem piFinset_disjoint_of_disjoint (t₁ t₂ : ∀ a, Finset (δ a)) {a : α}
    (h : Disjoint (t₁ a) (t₂ a)) : Disjoint (piFinset t₁) (piFinset t₂) :=
  disjoint_iff_ne.2 fun f₁ hf₁ f₂ hf₂ eq₁₂ =>
    disjoint_iff_ne.1 h (f₁ a) (mem_piFinset.1 hf₁ a) (f₂ a) (mem_piFinset.1 hf₂ a)
      (congr_fun eq₁₂ a)
#align fintype.pi_finset_disjoint_of_disjoint Fintype.piFinset_disjoint_of_disjoint

end Fintype

/-! ### pi -/

/-- A dependent product of fintypes, indexed by a fintype, is a fintype. -/
instance Pi.fintype {α : Type*} {β : α → Type*} [DecidableEq α] [Fintype α]
    [∀ a, Fintype (β a)] : Fintype (∀ a, β a) :=
  ⟨Fintype.piFinset fun _ => univ, by simp⟩
#align pi.fintype Pi.fintype

@[simp]
theorem Fintype.piFinset_univ {α : Type*} {β : α → Type*} [DecidableEq α] [Fintype α]
    [∀ a, Fintype (β a)] :
    (Fintype.piFinset fun a : α => (Finset.univ : Finset (β a))) =
      (Finset.univ : Finset (∀ a, β a)) :=
  rfl
#align fintype.pi_finset_univ Fintype.piFinset_univ

-- porting note: this instance used to be computable in Lean3 and used `decidable_eq`, but
-- it makes things a lot harder to work with here. in some ways that was because in Lean3
-- we could make this instance irreducible when needed and in the worst case use `congr/convert`,
-- but those don't work with subsingletons in lean4 as-is so we cannot do this here.
noncomputable instance _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.PiFinset.Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.Function.Embedding.fintype {α β} [Fintype α] [Fintype β] :
  Fintype (α ↪ β) :=
  by classical. exact Fintype.ofEquiv _ (Equiv.subtypeInjectiveEquivEmbedding α β)
#align function.embedding.fintype Function.Embedding.fintype

@[simp]
theorem Finset.univ_pi_univ {α : Type*} {β : α → Type*} [DecidableEq α] [Fintype α]
    [∀ a, Fintype (β a)] :
    (Finset.univ.pi fun a : α => (Finset.univ : Finset (β a))) = Finset.univ := by
  ext; simp
#align finset.univ_pi_univ Finset.univ_pi_univ
```
