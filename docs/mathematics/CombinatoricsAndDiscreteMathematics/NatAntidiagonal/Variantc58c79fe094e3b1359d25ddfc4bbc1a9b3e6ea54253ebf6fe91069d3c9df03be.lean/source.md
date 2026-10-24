# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.NatAntidiagonal.Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dd962be15d82d98918b8417847fc3ced864a060` · SHA-256 `18de2f7229e2dec8fa1d1c5a668f4ecb461d83010fe06274cd1c50f0fc910f42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.AntidiagonalTuple.Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.AntidiagonalTuple.Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fin/Tuple/NatAntidiagonal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.Group.Fin.Tuple
import Mathlib.Data.Finset.NatAntidiagonal
import Mathlib.Order.Fin.Tuple

/-!
# Collections of tuples of naturals with the same sum

This file generalizes `List.Nat.Antidiagonal n`, `Multiset.Nat.Antidiagonal n`, and
`Finset.Nat.Antidiagonal n` from the pair of elements `x : ℕ × ℕ` such that `n = x.1 + x.2`, to
the sequence of elements `x : Fin k → ℕ` such that `n = ∑ i, x i`.

## Main definitions

* `List.Nat.antidiagonalTuple`
* `Multiset.Nat.antidiagonalTuple`
* `Finset.Nat.antidiagonalTuple`

## Main results

* `antidiagonalTuple 2 n` is analogous to `antidiagonal n`:

  * `List.Nat.antidiagonalTuple_two`
  * `Multiset.Nat.antidiagonalTuple_two`
  * `Finset.Nat.antidiagonalTuple_two`

## Implementation notes

While we could implement this by filtering `(Fintype.PiFinset fun _ ↦ range (n + 1))` or similar,
this implementation would be much slower.

In the future, we could consider generalizing `Finset.Nat.antidiagonalTuple` further to
support finitely-supported functions, as is done with `cut` in
`archive/100-theorems-list/45_partition.lean`.
-/


/-! ### Lists -/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.AntidiagonalTuple.Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c

namespace List.Nat

/-- `List.antidiagonalTuple k n` is a list of all `k`-tuples which sum to `n`.

This list contains no duplicates (`List.Nat.nodup_antidiagonalTuple`), and is sorted
lexicographically (`List.Nat.antidiagonalTuple_pairwise_pi_lex`), starting with `![0, ..., n]`
and ending with `![n, ..., 0]`.

```
#eval antidiagonalTuple 3 2
-- [![0, 0, 2], ![0, 1, 1], ![0, 2, 0], ![1, 0, 1], ![1, 1, 0], ![2, 0, 0]]
```
-/
def antidiagonalTuple : ∀ k, ℕ → List (Fin k → ℕ)
  | 0, 0 => [![]]
  | 0, _ + 1 => []
  | k + 1, n =>
    (List.Nat.antidiagonal n).flatMap fun ni =>
      (antidiagonalTuple k ni.2).map fun x => Fin.cons ni.1 x

@[simp]
theorem antidiagonalTuple_zero_zero : antidiagonalTuple 0 0 = [![]] :=
  rfl

@[simp]
theorem antidiagonalTuple_zero_succ (n : ℕ) : antidiagonalTuple 0 (n + 1) = [] :=
  rfl

theorem mem_antidiagonalTuple {n : ℕ} {k : ℕ} {x : Fin k → ℕ} :
    x ∈ antidiagonalTuple k n ↔ ∑ i, x i = n := by
  induction x using Fin.consInduction generalizing n with
  | h0 =>
    cases n
    · decide
    · simp [eq_comm]
  | h x₀ x ih =>
    simp_rw [Fin.sum_cons, antidiagonalTuple, List.mem_flatMap, List.mem_map,
      List.Nat.mem_antidiagonal, Fin.cons_inj, exists_eq_right_right, ih,
      @eq_comm _ _ (Prod.snd _), and_comm (a := Prod.snd _ = _),
      ← Prod.mk_inj (a₁ := Prod.fst _), exists_eq_right]

/-- The antidiagonal of `n` does not contain duplicate entries. -/
theorem nodup_antidiagonalTuple (k n : ℕ) : List.Nodup (antidiagonalTuple k n) := by
  induction' k with k ih generalizing n
  · cases n
    · simp
    · simp [eq_comm]
  simp_rw [antidiagonalTuple, List.nodup_flatMap]
  constructor
  · intro i _
    exact (ih i.snd).map (Fin.cons_right_injective (α := fun _ => ℕ) i.fst)
  induction' n with n n_ih
  · exact List.pairwise_singleton _ _
  · rw [List.Nat.antidiagonal_succ]
    refine List.Pairwise.cons (fun a ha x hx₁ hx₂ => ?_) (n_ih.map _ fun a b h x hx₁ hx₂ => ?_)
    · rw [List.mem_map] at hx₁ hx₂ ha
      obtain ⟨⟨a, -, rfl⟩, ⟨x₁, -, rfl⟩, ⟨x₂, -, h⟩⟩ := ha, hx₁, hx₂
      rw [Fin.cons_inj] at h
      injection h.1
    · rw [List.mem_map] at hx₁ hx₂
      obtain ⟨⟨x₁, hx₁, rfl⟩, ⟨x₂, hx₂, h₁₂⟩⟩ := hx₁, hx₂
      dsimp at h₁₂
      rw [Fin.cons_inj, Nat.succ_inj] at h₁₂
      obtain ⟨h₁₂, rfl⟩ := h₁₂
      rw [Function.onFun, h₁₂] at h
      exact h (List.mem_map_of_mem hx₁) (List.mem_map_of_mem hx₂)

theorem antidiagonalTuple_zero_right : ∀ k, antidiagonalTuple k 0 = [0]
  | 0 => (congr_arg fun x => [x]) <| Subsingleton.elim _ _
  | k + 1 => by
    rw [antidiagonalTuple, antidiagonal_zero, List.flatMap_singleton,
      antidiagonalTuple_zero_right k, List.map_singleton]
    exact congr_arg (fun x => [x]) Matrix.cons_zero_zero

@[simp]
theorem antidiagonalTuple_one (n : ℕ) : antidiagonalTuple 1 n = [![n]] := by
  simp_rw [antidiagonalTuple, antidiagonal, List.range_succ, List.map_append, List.map_singleton,
    Nat.sub_self, List.flatMap_append, List.flatMap_singleton, List.flatMap_map]
  conv_rhs => rw [← List.nil_append [![n]]]
  congr 1
  simp_rw [List.flatMap_eq_nil_iff, List.mem_range, List.map_eq_nil_iff]
  intro x hx
  obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_lt hx
  rw [add_assoc, add_tsub_cancel_left, antidiagonalTuple_zero_succ]

theorem antidiagonalTuple_two (n : ℕ) :
    antidiagonalTuple 2 n = (antidiagonal n).map fun i => ![i.1, i.2] := by
  rw [antidiagonalTuple]
  simp_rw [antidiagonalTuple_one, List.map_singleton]
  rw [List.map_eq_flatMap]
  rfl

theorem antidiagonalTuple_pairwise_pi_lex :
    ∀ k n, (antidiagonalTuple k n).Pairwise (Pi.Lex (· < ·) @fun _ => (· < ·))
  | 0, 0 => List.pairwise_singleton _ _
  | 0, _ + 1 => List.Pairwise.nil
  | k + 1, n => by
    simp_rw [antidiagonalTuple, List.pairwise_flatMap, List.pairwise_map, List.mem_map,
      forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
    simp only [mem_antidiagonal, Prod.forall, and_imp, forall_apply_eq_imp_iff₂]
    simp only [Fin.pi_lex_lt_cons_cons, eq_self_iff_true, true_and, lt_self_iff_false,
      false_or]
    refine ⟨fun _ _ _ => antidiagonalTuple_pairwise_pi_lex k _, ?_⟩
    induction' n with n n_ih
    · rw [antidiagonal_zero]
      exact List.pairwise_singleton _ _
    · rw [antidiagonal_succ, List.pairwise_cons, List.pairwise_map]
      refine ⟨fun p hp x hx y hy => ?_, ?_⟩
      · rw [List.mem_map, Prod.exists] at hp
        obtain ⟨a, b, _, rfl : (Nat.succ a, b) = p⟩ := hp
        exact Or.inl (Nat.zero_lt_succ _)
      dsimp
      simp_rw [Nat.succ_inj, Nat.succ_lt_succ_iff]
      exact n_ih

end List.Nat

/-! ### Multisets -/


namespace Multiset.Nat

/-- `Multiset.Nat.antidiagonalTuple k n` is a multiset of `k`-tuples summing to `n` -/
def antidiagonalTuple (k n : ℕ) : Multiset (Fin k → ℕ) :=
  List.Nat.antidiagonalTuple k n

@[simp]
theorem antidiagonalTuple_zero_zero : antidiagonalTuple 0 0 = {![]} :=
  rfl

@[simp]
theorem antidiagonalTuple_zero_succ (n : ℕ) : antidiagonalTuple 0 n.succ = 0 :=
  rfl

theorem mem_antidiagonalTuple {n : ℕ} {k : ℕ} {x : Fin k → ℕ} :
    x ∈ antidiagonalTuple k n ↔ ∑ i, x i = n :=
  List.Nat.mem_antidiagonalTuple

theorem nodup_antidiagonalTuple (k n : ℕ) : (antidiagonalTuple k n).Nodup :=
  List.Nat.nodup_antidiagonalTuple _ _

theorem antidiagonalTuple_zero_right (k : ℕ) : antidiagonalTuple k 0 = {0} :=
  congr_arg _ (List.Nat.antidiagonalTuple_zero_right k)

@[simp]
theorem antidiagonalTuple_one (n : ℕ) : antidiagonalTuple 1 n = {![n]} :=
  congr_arg _ (List.Nat.antidiagonalTuple_one n)

theorem antidiagonalTuple_two (n : ℕ) :
    antidiagonalTuple 2 n = (antidiagonal n).map fun i => ![i.1, i.2] :=
  congr_arg _ (List.Nat.antidiagonalTuple_two n)

end Multiset.Nat

/-! ### Finsets -/


namespace Finset.Nat

/-- `Finset.Nat.antidiagonalTuple k n` is a finset of `k`-tuples summing to `n` -/
def antidiagonalTuple (k n : ℕ) : Finset (Fin k → ℕ) :=
  ⟨Multiset.Nat.antidiagonalTuple k n, Multiset.Nat.nodup_antidiagonalTuple k n⟩

@[simp]
theorem antidiagonalTuple_zero_zero : antidiagonalTuple 0 0 = {![]} :=
  rfl

@[simp]
theorem antidiagonalTuple_zero_succ (n : ℕ) : antidiagonalTuple 0 n.succ = ∅ :=
  rfl

theorem mem_antidiagonalTuple {n : ℕ} {k : ℕ} {x : Fin k → ℕ} :
    x ∈ antidiagonalTuple k n ↔ ∑ i, x i = n :=
  List.Nat.mem_antidiagonalTuple

theorem antidiagonalTuple_zero_right (k : ℕ) : antidiagonalTuple k 0 = {0} :=
  Finset.eq_of_veq (Multiset.Nat.antidiagonalTuple_zero_right k)

@[simp]
theorem antidiagonalTuple_one (n : ℕ) : antidiagonalTuple 1 n = {![n]} :=
  Finset.eq_of_veq (Multiset.Nat.antidiagonalTuple_one n)

theorem antidiagonalTuple_two (n : ℕ) :
    antidiagonalTuple 2 n = (antidiagonal n).map (piFinTwoEquiv fun _ => ℕ).symm.toEmbedding :=
  Finset.eq_of_veq (Multiset.Nat.antidiagonalTuple_two n)

section EquivProd

/-- The disjoint union of antidiagonal tuples `Σ n, antidiagonalTuple k n` is equivalent to the
`k`-tuple `Fin k → ℕ`. This is such an equivalence, obtained by mapping `(n, x)` to `x`.

This is the tuple version of `Finset.sigmaAntidiagonalEquivProd`. -/
@[simps]
def sigmaAntidiagonalTupleEquivTuple (k : ℕ) : (Σ n, antidiagonalTuple k n) ≃ (Fin k → ℕ) where
  toFun x := x.2
  invFun x := ⟨∑ i, x i, x, mem_antidiagonalTuple.mpr rfl⟩
  left_inv := fun ⟨_, _, h⟩ => Sigma.subtype_ext (mem_antidiagonalTuple.mp h) rfl
  right_inv _ := rfl

end EquivProd

end Finset.Nat
````
