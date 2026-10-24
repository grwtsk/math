# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Tree.Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48782d2e6baeb905f47b95a31507352d84872147` · SHA-256 `a3f7083154bda69ba224660a7c2b08d8ab3e80f662e268ab0a588fa1029db2a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootedTree.Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.RootedTree.Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc","mathematical_subject":"Algebra.OrderTheory","original_sha256":"33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/SuccPred/Tree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Daniel Weber. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Weber
-/

import Mathlib.Order.SuccPred.Archimedean
import Mathlib.Data.Nat.Find
import Mathlib.Order.Atoms
import Mathlib.Data.SetLike.Basic

/-!
# Rooted trees

This file proves basic results about rooted trees, represented using the ancestorship order.
This is a `PartialOrder`, with `PredOrder` with the immediate parent as a predecessor, and an
`OrderBot` which is the root. We also have an `IsPredArchimedean` assumption to prevent infinite
dangling chains.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootedTree.Variant33f7624edbd8b6fd1f4450bb68fb72d4a75a554320843c590ee3df07ecaefefc

variable {α : Type*} [PartialOrder α] [PredOrder α] [IsPredArchimedean α]

namespace IsPredArchimedean

variable [OrderBot α]

section DecidableEq

variable [DecidableEq α]

/--
The unique atom less than an element in an `OrderBot` with archimedean predecessor.
-/
def findAtom (r : α) : α :=
  Order.pred^[Nat.find (bot_le (a := r)).exists_pred_iterate - 1] r

@[simp]
lemma findAtom_le (r : α) : findAtom r ≤ r :=
  Order.pred_iterate_le _ _

@[simp]
lemma findAtom_bot : findAtom (⊥ : α) = ⊥ := by
  apply Function.iterate_fixed
  simp

@[simp]
lemma pred_findAtom (r : α) : Order.pred (findAtom r) = ⊥ := by
  unfold findAtom
  generalize h : Nat.find (bot_le (a := r)).exists_pred_iterate = n
  cases n
  · have : Order.pred^[0] r = ⊥ := by
      rw [← h]
      apply Nat.find_spec (bot_le (a := r)).exists_pred_iterate
    simp only [Function.iterate_zero, id_eq] at this
    simp [this]
  · simp only [Nat.add_sub_cancel_right, ← Function.iterate_succ_apply', Nat.succ_eq_add_one]
    rw [← h]
    apply Nat.find_spec (bot_le (a := r)).exists_pred_iterate

@[simp]
lemma findAtom_eq_bot {r : α} :
    findAtom r = ⊥ ↔ r = ⊥ where
  mp h := by
    unfold findAtom at h
    have := Nat.find_min' (bot_le (a := r)).exists_pred_iterate h
    replace : Nat.find (bot_le (a := r)).exists_pred_iterate = 0 := by omega
    simpa [this] using h
  mpr h := by simp [h]

lemma findAtom_ne_bot {r : α} :
    findAtom r ≠ ⊥ ↔ r ≠ ⊥ := findAtom_eq_bot.not

lemma isAtom_findAtom {r : α} (hr : r ≠ ⊥) :
    IsAtom (findAtom r) := by
  constructor
  · simp [hr]
  · intro b hb
    apply Order.le_pred_of_lt at hb
    simpa using hb

@[simp]
lemma isAtom_findAtom_iff {r : α} :
    IsAtom (findAtom r) ↔ r ≠ ⊥ where
  mpr := isAtom_findAtom
  mp h nh := by simp only [nh, findAtom_bot] at h; exact h.1 rfl

end DecidableEq

instance instIsAtomic : IsAtomic α where
  eq_bot_or_exists_atom_le b := by classical
    rw [or_iff_not_imp_left]
    intro hb
    use findAtom b, isAtom_findAtom hb, findAtom_le b

end IsPredArchimedean

/--
The type of rooted trees.
-/
structure RootedTree where
  /-- The type representing the elements in the tree. -/
  α : Type*
  /-- The type should be a `SemilatticeInf`,
    where `inf` is the least common ancestor in the tree. -/
  [semilatticeInf : SemilatticeInf α]
  /-- The type should have a bottom, the root. -/
  [orderBot : OrderBot α]
  /-- The type should have a predecessor for every element, its parent. -/
  [predOrder : PredOrder α]
  /-- The predecessor relationship should be archimedean. -/
  [isPredArchimedean : IsPredArchimedean α]

attribute [coe] RootedTree.α

instance : CoeSort RootedTree Type* := ⟨RootedTree.α⟩

attribute [instance] RootedTree.semilatticeInf RootedTree.predOrder
    RootedTree.orderBot RootedTree.isPredArchimedean

/--
A subtree is represented by its root, therefore this is a type synonym.
-/
def SubRootedTree (t : RootedTree) : Type* := t

/--
The root of a `SubRootedTree`.
-/
def SubRootedTree.root {t : RootedTree} (v : SubRootedTree t) : t := v

/--
The `SubRootedTree` rooted at a given node.
-/
def RootedTree.subtree (t : RootedTree) (r : t) : SubRootedTree t := r

@[simp]
lemma RootedTree.root_subtree (t : RootedTree) (r : t) : (t.subtree r).root = r := rfl

@[simp]
lemma RootedTree.subtree_root (t : RootedTree) (v : SubRootedTree t) : t.subtree v.root = v := rfl

@[ext]
lemma SubRootedTree.ext {t : RootedTree} {v₁ v₂ : SubRootedTree t}
    (h : v₁.root = v₂.root) : v₁ = v₂ := h

instance (t : RootedTree) : SetLike (SubRootedTree t) t where
  coe v := Set.Ici v.root
  coe_injective' a₁ a₂ h := by
    simpa only [Set.Ici_inj, ← SubRootedTree.ext_iff] using h

lemma SubRootedTree.mem_iff {t : RootedTree} {r : SubRootedTree t} {v : t} :
    v ∈ r ↔ r.root ≤ v := Iff.rfl

/--
The coercion from a `SubRootedTree` to a `RootedTree`.
-/
@[coe, reducible]
noncomputable def SubRootedTree.coeTree {t : RootedTree} (r : SubRootedTree t) : RootedTree where
  α := Set.Ici r.root

noncomputable instance (t : RootedTree) : CoeOut (SubRootedTree t) RootedTree :=
  ⟨SubRootedTree.coeTree⟩

@[simp]
lemma SubRootedTree.bot_mem_iff {t : RootedTree} (r : SubRootedTree t) :
    ⊥ ∈ r ↔ r.root = ⊥ := by
  simp [mem_iff]

/--
All of the immediate subtrees of a given rooted tree, that is subtrees which are rooted at a direct
child of the root (or, order theoretically, at an atom).
-/
def RootedTree.subtrees (t : RootedTree) : Set (SubRootedTree t) :=
  {x | IsAtom x.root}

variable {t : RootedTree}

lemma SubRootedTree.root_ne_bot_of_mem_subtrees (r : SubRootedTree t) (hr : r ∈ t.subtrees) :
    r.root ≠ ⊥ := by
  simp only [RootedTree.subtrees, Set.mem_setOf_eq] at hr
  exact hr.1

lemma RootedTree.mem_subtrees_disjoint_iff {t₁ t₂ : SubRootedTree t}
    (ht₁ : t₁ ∈ t.subtrees) (ht₂ : t₂ ∈ t.subtrees) (v₁ v₂ : t) (h₁ : v₁ ∈ t₁)
    (h₂ : v₂ ∈ t₂) :
    Disjoint v₁ v₂ ↔ t₁ ≠ t₂ where
  mp h := by
    intro nh
    have : t₁.root ≤ (v₁ : t) ⊓ (v₂ : t) := by
      simp only [le_inf_iff]
      exact ⟨h₁, nh ▸ h₂⟩
    rw [h.eq_bot] at this
    simp only [le_bot_iff] at this
    exact t₁.root_ne_bot_of_mem_subtrees ht₁ this
  mpr h := by
    rw [SubRootedTree.mem_iff] at h₁ h₂
    contrapose! h
    rw [disjoint_iff, ← ne_eq, ← bot_lt_iff_ne_bot] at h
    rcases lt_or_le_of_directed (by simp : v₁ ⊓ v₂ ≤ v₁) h₁ with oh | oh
    · simp_all [RootedTree.subtrees, IsAtom.lt_iff]
    rw [le_inf_iff] at oh
    ext
    simpa only [ht₂.le_iff_eq ht₁.1, ht₁.le_iff_eq ht₂.1, eq_comm, or_self] using
      le_total_of_directed oh.2 h₂

lemma RootedTree.subtrees_disjoint : t.subtrees.PairwiseDisjoint ((↑) : _ → Set t) := by
  intro t₁ ht₁ t₂ ht₂ h
  rw [Function.onFun_apply, Set.disjoint_left]
  intro a ha hb
  rw [← mem_subtrees_disjoint_iff ht₁ ht₂ a a ha hb, disjoint_self] at h
  subst h
  simp only [SetLike.mem_coe, SubRootedTree.bot_mem_iff] at ha
  exact t₁.root_ne_bot_of_mem_subtrees ht₁ ha

/--
The immediate subtree of `t` containing `v`, or all of `t` if `v` is the root.
-/
def RootedTree.subtreeOf (t : RootedTree) [DecidableEq t] (v : t) : SubRootedTree t :=
  t.subtree (IsPredArchimedean.findAtom v)

@[simp]
lemma RootedTree.mem_subtreeOf [DecidableEq t] {v : t} :
    v ∈ t.subtreeOf v := by
  simp [SubRootedTree.mem_iff, RootedTree.subtreeOf]

lemma RootedTree.subtreeOf_mem_subtrees [DecidableEq t] {v : t} (hr : v ≠ ⊥) :
    t.subtreeOf v ∈ t.subtrees := by
  simpa [RootedTree.subtrees, RootedTree.subtreeOf]
```
