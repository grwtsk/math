# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Embedding.Variant5333874ee8762ba3710f1a0b77b4d0fc9d032c3586db397f45fc7099692deb4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77030ba2c21af1370bf8ffa1688f5b2ad83700b2` · SHA-256 `a60845624954475f77aff1be29b222fcd88104d4147d9e7eef96c8d752422df7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Tail.Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Tail.Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d","mathematical_subject":"Algebra.OrderTheory","original_sha256":"797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fin/Tuple/Embedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/
import Mathlib.Data.Fin.Tuple.Basic
import Mathlib.Order.Fin.Basic

/-! # Constructions of embeddings of `Fin n` into a type

* `Fin.Embedding.cons` : from an embedding `x : Fin n ↪ α` and `a : α` such that
  `a ∉ x.range`, construct an embedding `Fin (n + 1) ↪ α` by putting `a` at `0`

* `Fin.Embedding.tail`: the tail of an embedding `x : Fin (n + 1) ↪ α`

* `Fin.Embedding.snoc` : from an embedding `x : Fin n ↪ α` and `a : α`
  such that `a ∉ x.range`, construct an embedding `Fin (n + 1) ↪ α`
  by putting `a` at the end.

* `Fin.Embedding.init`: the init of an embedding `x : Fin (n + 1) ↪ α`

* `Fin.Embedding.append` : merges two embeddings `Fin m ↪ α` and `Fin n ↪ α`
  into an embedding `Fin (m + n) ↪ α` if they have disjoint ranges

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Tail.Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d

open Function.Embedding Fin Set Nat

namespace Fin.Embedding

variable {α : Type*}

/-- Remove the first element from an injective (n + 1)-tuple. -/
def tail {n : ℕ} (x : Fin (n + 1) ↪ α) : Fin n ↪ α :=
  ⟨Fin.tail x, x.injective.comp <| Fin.succ_injective _⟩

@[simp, norm_cast]
theorem coe_tail {n : ℕ} (x : Fin (n + 1) ↪ α) : ↑(tail x) = Fin.tail x := rfl

/-- Adding a new element at the beginning of an injective n-tuple, to get an injective n+1-tuple. -/
def cons {n : ℕ} (x : Fin n ↪ α) {a : α} (ha : a ∉ range x) : Fin (n + 1) ↪ α :=
  ⟨Fin.cons a x, cons_injective_iff.mpr ⟨ha, x.inj'⟩⟩

@[simp, norm_cast]
theorem coe_cons {n : ℕ} (x : Fin n ↪ α) {a : α} (ha : a ∉ range x) :
    ↑(cons x ha) = Fin.cons a x := rfl

theorem tail_cons {n : ℕ} (x : Fin n ↪ α) {a : α} (ha : a ∉ range x) :
    tail (cons x ha) = x := rfl

/-- Remove the last element from an injective (n + 1)-tuple. -/
def init {n : ℕ} (x : Fin (n + 1) ↪ α) : Fin n ↪ α :=
  ⟨Fin.init x, x.injective.comp <| castSucc_injective _⟩

/-- Adding a new element at the end of an injective n-tuple, to get an injective n+1-tuple. -/
def snoc {n : ℕ} (x : Fin n ↪ α) {a : α} (ha : a ∉ range x) :
    Fin (n + 1) ↪ α :=
  ⟨Fin.snoc x a, snoc_injective_iff.mpr ⟨x.inj', ha⟩⟩

@[simp, norm_cast]
theorem coe_snoc {n : ℕ} (x : Fin n ↪ α) {a : α} (ha : a ∉ range x) :
    ↑(snoc x ha) = Fin.snoc x a := rfl

theorem init_snoc {n : ℕ} (x : Fin n ↪ α) {a : α} (ha : a ∉ range x) :
    init (snoc x ha) = x := by
  apply coe_injective
  simp [snoc, init, init_snoc]

theorem snoc_castSucc {n : ℕ} {x : Fin n ↪ α} {a : α} {ha : a ∉ range x} {i : Fin n} :
    snoc x ha i.castSucc  = x i := by
  rw [coe_snoc, Fin.snoc_castSucc]

theorem snoc_last {n : ℕ} {x : Fin n ↪ α} {a : α} {ha : a ∉ range x} :
    snoc x ha (last n) = a := by
  rw [coe_snoc, Fin.snoc_last]

/-- Append a `Fin n ↪ α` at the end of a `Fin m ↪ α` if their ranges are disjoint. -/
def append {m n : ℕ} {x : Fin m ↪ α} {y : Fin n ↪ α} (h : Disjoint (range x) (range y)) :
    Fin (m + n) ↪ α :=
  ⟨Fin.append x y,
    Fin.append_injective_iff.mpr ⟨x.inj', y.inj', disjoint_range_iff.mp h⟩⟩

@[simp, norm_cast]
theorem coe_append {m n : ℕ} {x : Fin m ↪ α} {y : Fin n ↪ α} (h : Disjoint (range x) (range y)) :
    append h = Fin.append x y := rfl

end Fin.Embedding

namespace Function.Embedding

variable {α : Type*}

/-- The natural equivalence of `Fin 2 ↪ α` with pairs `(a, b)` of distinct elements of `α`. -/
def twoEmbeddingEquiv : (Fin 2 ↪ α) ≃ { (a, b) : α × α | a ≠ b } where
  toFun e := ⟨(e 0, e 1), by
    simp only [ne_eq, Fin.isValue, mem_setOf_eq, EmbeddingLike.apply_eq_iff_eq, zero_eq_one_iff,
      succ_ne_self, not_false_eq_true]⟩
  invFun := fun ⟨⟨a, b⟩, h⟩ ↦ {
    toFun i := if i = 0 then a else b
    inj' i j hij := by
      by_cases hi : i = 0
      · by_cases hj : j = 0
        · simp [hi, hj]
        · simp only [if_pos hi, if_neg hj, eq_one_of_ne_zero j hj,
          if_neg (Ne.symm Fin.zero_ne_one)] at hij
          apply (h hij).elim
      · rw [eq_one_of_ne_zero i hi] at hij ⊢
        by_cases hj : j = 0
        · simp [hj] at hij; exact False.elim (h hij.symm)
        · rw [eq_one_of_ne_zero j hj] }
  left_inv e := by
    ext i; simp
    by_cases hi : i = 0
    · rw [if_pos hi, hi]
    · rw [if_neg hi, Fin.eq_one_of_ne_zero i hi]
  right_inv := fun ⟨⟨a, b⟩, h⟩ ↦ by simp

/-- Two distinct elements of `α` give an embedding `Fin 2 ↪ α`. -/
def embFinTwo {a b : α} (h : a ≠ b) : Fin 2 ↪ α :=
  twoEmbeddingEquiv.invFun ⟨(a, b), h⟩

theorem embFinTwo_apply_zero {a b : α} (h : a ≠ b) :
    embFinTwo h 0 = a := rfl

theorem embFinTwo_apply_one {a b : α} (h : a ≠ b) :
    embFinTwo h 1 = b := rfl

end Function.Embedding
```
