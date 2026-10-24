# Complete source: GRWTSK.Analysis.ComplexAnalysis.IntegerCompl.Variantd64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b44932dcd48b175b5d4886c1277facf61f77146` · SHA-256 `d64382667f04e1b88d67573fb7de297179945946e16e5d7a671264d184923f48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
module

public import Mathlib.Analysis.Complex.UpperHalfPlane.Basic

/-!
# Integer Complement

We define the complement of the integers in the complex plane and give some basic lemmas about it.
We also show that the upper half plane embeds into the integer complement.

-/

@[expose] public section

open UpperHalfPlane

/-- The complement of the integers in `ℂ` -/
def Complex.integerComplement := (Set.range ((↑) : ℤ → ℂ))ᶜ

namespace Complex

local notation "ℂ_ℤ" => integerComplement

lemma integerComplement_eq : ℂ_ℤ = {z : ℂ | ¬ ∃ (n : ℤ), n = z} := rfl

lemma mem_integerComplement_iff {x : ℂ} : x ∈ ℂ_ℤ ↔ ¬ ∃ (n : ℤ), n = x := Iff.rfl

@[simp]
lemma _root_.UpperHalfPlane.coe_mem_integerComplement (z : ℍ) : ↑z ∈ ℂ_ℤ :=
  not_exists.mpr fun x hx ↦ ne_intCast z x hx.symm

@[simp]
lemma add_intCast_mem_integerComplement {x : ℂ} (a : ℤ) : x + (a : ℂ) ∈ ℂ_ℤ ↔ x ∈ ℂ_ℤ := by
  simp only [mem_integerComplement_iff, not_iff_not]
  exact ⟨(Exists.elim · fun n hn ↦ ⟨n - a, by simp [hn]⟩),
    (Exists.elim · fun n hn ↦ ⟨n + a, by simp [hn]⟩)⟩

lemma integerComplement.ne_zero {x : ℂ} (hx : x ∈ ℂ_ℤ) : x ≠ 0 :=
  fun hx' ↦ hx ⟨0, by exact_mod_cast hx'.symm⟩

lemma integerComplement_add_ne_zero {x : ℂ} (hx : x ∈ ℂ_ℤ) (a : ℤ) : x + (a : ℂ) ≠ 0 :=
  integerComplement.ne_zero ((add_intCast_mem_integerComplement a).mpr hx)

lemma integerComplement.ne_one {x : ℂ} (hx : x ∈ ℂ_ℤ) : x ≠ 1 :=
  fun hx' ↦ hx ⟨1, by exact_mod_cast hx'.symm⟩

lemma integerComplement_pow_two_ne_pow_two {x : ℂ} (hx : x ∈ ℂ_ℤ) (n : ℤ) : x ^ 2 ≠ n ^ 2 := by
  have := not_exists.mp hx n
  have := not_exists.mp hx (-n)
  simp_all [sq_eq_sq_iff_eq_or_eq_neg, eq_comm]

lemma upperHalfPlane_inter_integerComplement :
    {z : ℂ | 0 < z.im} ∩ ℂ_ℤ = {z : ℂ | 0 < z.im} := by
  apply Set.inter_eq_self_of_subset_left
  exact fun z hz ↦ UpperHalfPlane.coe_mem_integerComplement ⟨z, hz⟩

lemma _root_.UpperHalfPlane.int_div_mem_integerComplement (z : ℍ) {n : ℤ} (hn : n ≠ 0) :
    n / (z : ℂ) ∈ ℂ_ℤ := by
  rintro ⟨_, hm⟩
  have : (n / (z : ℂ)).im ≠ 0 := by simp [div_im, z.ne_zero, hn, z.im_ne_zero]
  simpa [← hm]

end Complex
```
