/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.RingTheory.Ideal.Quotient.Defs
import Mathlib.RingTheory.Ideal.Span
import Mathlib.Algebra.Ring.Subring.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic.LinearCombination

/-! # Paired odd-order kernels and a dyadic CM trace

The analytic CM trace is a sum of differences of normalized Weierstrass coordinates.
Negation has no fixed nonzero point on an odd-order kernel. Over the valuation ring
this saves an entire factor of two before solving the isogeny identities.
-/

namespace GRWTSK.NumberTheory.AlpogeDyadicCMTrace

/-- An even function on the nonzero points of an odd-torsion set has even trace. -/
theorem two_dvd_kernel_trace {A R : Type*} [AddCommGroup A] [CommRing R]
    (s : Finset A) (n : ℕ) (hn : Odd n) (hneg : ∀ a ∈ s, -a ∈ s)
    (htors : ∀ a ∈ s, n • a = 0) (hzero : 0 ∉ s)
    (f : A → R) (hf : ∀ a ∈ s, f (-a) = f a) : (2 : R) ∣ ∑ a ∈ s, f a := by
  classical
  let J : Ideal R := Ideal.span {2}
  exact Ideal.mem_span_singleton.mp (by
    change ∑ a ∈ s, f a ∈ J
    apply Ideal.Quotient.eq_zero_iff_mem.mp
    rw [map_sum]
    apply Finset.sum_involution (fun a _ => -a)
    · intro a ha
      rw [hf a ha, ← map_add, ← two_mul, map_mul]
      have hz : Ideal.Quotient.mk J 2 = 0 := Ideal.Quotient.eq_zero_iff_mem.mpr
        (Ideal.mem_span_singleton_self (2 : R))
      rw [hz, zero_mul]
    · intro a ha _ hfix
      obtain ⟨k, hk⟩ := hn
      have haa : (2 : ℕ) • a = 0 := by
        simpa only [two_nsmul, hfix] using neg_add_cancel a
      have han := htors a ha
      rw [hk, add_nsmul, one_nsmul, mul_nsmul, haa, smul_zero, zero_add] at han
      exact hzero (han ▸ ha)
    · intro a _
      exact neg_neg a
    · exact hneg)

/-- Two conjugate trace equations of even right hand side determine an integral
first coordinate when their determinant divided by two is a unit. -/
theorem integral_of_conjugate_traces {K : Type*} [Field K] [CharZero K] (O : Subring K)
    (a b m h₁ h₂ : O) (X Y : K) (hunit : IsUnit (m * (a ^ 2 - b ^ 2)))
    (ha : (a ^ 2 - (1 + 2 * (m : K))) * X - (a ^ 2 - 1) * Y = 2 * h₁)
    (hb : (b ^ 2 - (1 + 2 * (m : K))) * X - (b ^ 2 - 1) * Y = 2 * h₂) :
    X ∈ O := by
  obtain ⟨v, hv⟩ := hunit
  let t : O := (b ^ 2 - 1) * h₁ - (a ^ 2 - 1) * h₂
  have eqn : ((m : K) * (a ^ 2 - b ^ 2)) * X = t := by
    dsimp [t]
    linear_combination (b ^ 2 - 1) / 2 * ha - (a ^ 2 - 1) / 2 * hb
  have hv' : ((v : O) : K) = (m : K) * (a ^ 2 - b ^ 2) := by exact_mod_cast hv
  have ht : X = ((↑(v⁻¹) * t : O) : K) := by
    rw [Subring.coe_mul, ← eqn, ← hv', ← mul_assoc, ← Subring.coe_mul]
    simp
  exact ht ▸ (↑(v⁻¹) * t : O).property

/-- For the split dyadic multiplier, divisibility of d+1 by eight compensates
for the universal four in the unshifted Weierstrass coordinate. -/
theorem integral_of_split_trace {K : Type*} [Field K] [CharZero K] (O : Subring K)
    (d c t y : O) (X Y : K) (hd : IsUnit d) (hc : (d : K) + 1 = 8 * c)
    (hY : 4 * Y = y) (htrace : -(2 * (d : K)) * X + (d + 1) * Y = 2 * t) :
    X ∈ O := by
  obtain ⟨v, hv⟩ := hd
  have eqn : (d : K) * X = (c : K) * y - t := by
    linear_combination -htrace / 2 + (Y / 2) * hc + c * hY
  have ht : X = ((↑(v⁻¹) * (c * y - t) : O) : K) := by
    change X = ((↑(v⁻¹) : O) : K) * ((c : K) * y - t)
    rw [← eqn, ← hv,
      ← mul_assoc, ← Subring.coe_mul]
    simp
  exact ht ▸ (↑(v⁻¹) * (c * y - t) : O).property

/-- A translation of the half-integral CM generator by zero or one provides
an isogeny whose norm is 3 modulo 4 at every inert dyadic discriminant. -/
theorem inert_multiplier_choice {d : ℕ} (hd : d % 8 = 3) :
    ∃ m : ℕ, m ≤ 1 ∧ (m * m + m + (d + 1) / 4) % 4 = 3 := by
  by_cases h : ((d + 1) / 4) % 4 = 3
  · exact ⟨0, by decide, by simpa⟩
  · refine ⟨1, by decide, ?_⟩
    omega

end GRWTSK.NumberTheory.AlpogeDyadicCMTrace
