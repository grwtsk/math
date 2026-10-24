# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Multiset.Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4dae7bc32f08c45aa839d55c18938aac4430736` · SHA-256 `227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Ruben Van de Velde. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ruben Van de Velde, Daniel Weber
-/
import Mathlib.Algebra.BigOperators.Group.Multiset.Defs
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.List

/-!
# Big operators on a multiset in ordered groups with zeros

This file contains the results concerning the interaction of multiset big operators with ordered
groups with zeros.
-/

namespace Multiset

variable {R : Type*} [CommMonoidWithZero R] [PartialOrder R] [ZeroLEOneClass R] [PosMulMono R]

lemma prod_nonneg {s : Multiset R} (h : ∀ a ∈ s, 0 ≤ a) : 0 ≤ s.prod := by
  cases s using Quotient.ind
  simp only [quot_mk_to_coe, mem_coe, prod_coe] at *
  apply List.prod_nonneg h

lemma one_le_prod {s : Multiset R} (h : ∀ a ∈ s, 1 ≤ a) : 1 ≤ s.prod := by
  cases s using Quotient.ind
  simp only [quot_mk_to_coe, mem_coe, prod_coe] at *
  apply List.one_le_prod h

theorem prod_map_le_prod_map₀ {ι : Type*} {s : Multiset ι} (f : ι → R) (g : ι → R)
    (h0 : ∀ i ∈ s, 0 ≤ f i) (h : ∀ i ∈ s, f i ≤ g i) :
    (map f s).prod ≤ (map g s).prod := by
  cases s using Quotient.ind
  simp only [quot_mk_to_coe, mem_coe, map_coe, prod_coe] at *
  apply List.prod_map_le_prod_map₀ f g h0 h

theorem prod_map_le_pow_card {F L : Type*} [FunLike F L R] {f : F} {r : R} {t : Multiset L}
    (hf0 : ∀ x ∈ t, 0 ≤ f x) (hf : ∀ x ∈ t, f x ≤ r) :
    (map f t).prod ≤ r ^ card t := by
  induction t using Quotient.inductionOn
  simp_all [List.prod_map_le_pow_length₀]

omit [PosMulMono R]
variable [PosMulStrictMono R] [NeZero (1 : R)]

lemma prod_pos {s : Multiset R} (h : ∀ a ∈ s, 0 < a) : 0 < s.prod := by
  cases s using Quotient.ind
  simp only [quot_mk_to_coe, mem_coe, map_coe, prod_coe] at *
  apply List.prod_pos h

theorem prod_map_lt_prod_map {ι : Type*} {s : Multiset ι} (hs : s ≠ 0)
    (f : ι → R) (g : ι → R) (h0 : ∀ i ∈ s, 0 < f i) (h : ∀ i ∈ s, f i < g i) :
    (map f s).prod < (map g s).prod := by
  cases s using Quotient.ind
  simp only [quot_mk_to_coe, mem_coe, map_coe, prod_coe, ne_eq, coe_eq_zero] at *
  apply List.prod_map_lt_prod_map hs f g h0 h

end Multiset
```
