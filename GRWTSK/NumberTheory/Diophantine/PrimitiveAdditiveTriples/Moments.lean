/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex. Mathlib's finite sums and canonical
Möbius function retain their Apache-2.0 license and upstream attribution.
This module proves finite identities only; it supplies no abc estimate. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.CoprimeDivisorFilter
import Mathlib.Algebra.BigOperators.Ring.Finset

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open scoped BigOperators

/-- Ordered positive pairs with the explicit third-coordinate cutoff
`a + b ≤ N`. The third coordinate is exactly `c = a + b`. -/
def additivePairs (N : ℕ) : Finset (ℕ × ℕ) :=
  ((Finset.Icc 1 N).product (Finset.Icc 1 N)).filter (fun p => p.1 + p.2 ≤ N)

theorem mem_additivePairs {N a b : ℕ} :
    (a, b) ∈ additivePairs N ↔
      1 ≤ a ∧ a ≤ N ∧ 1 ≤ b ∧ b ≤ N ∧ a + b ≤ N := by
  simp only [additivePairs, Finset.mem_filter, Finset.product_eq_sprod,
    Finset.mem_product, Finset.mem_Icc]
  tauto

/-- A general joint ternary weight; no factorization or independence is assumed. -/
def primitiveWeightedMoment {R : Type*} [Ring R] (N : ℕ)
    (W : ℕ → ℕ → ℕ → R) : R :=
  ∑ p ∈ additivePairs N,
    if Nat.Coprime p.1 p.2 then W p.1 p.2 (p.1 + p.2) else 0

/-- The same finite additive region, with both common-divisor restrictions
retained. No coprimality is imposed within this divisor sector. -/
def commonDivisorWeightedMoment {R : Type*} [Ring R] (N d : ℕ)
    (W : ℕ → ℕ → ℕ → R) : R :=
  ∑ p ∈ additivePairs N,
    if d ∣ p.1 ∧ d ∣ p.2 then W p.1 p.2 (p.1 + p.2) else 0

/-- Product-weight specialization, with the multiplication order retained.
The coefficient ring need not have commutative multiplication. -/
def primitiveMoment {R : Type*} [Ring R] (N : ℕ) (A B C : ℕ → R) : R :=
  primitiveWeightedMoment N (fun a b c => A a * B b * C c)

def commonDivisorMoment {R : Type*} [Ring R] (N d : ℕ) (A B C : ℕ → R) : R :=
  commonDivisorWeightedMoment N d (fun a b c => A a * B b * C c)

/-- Finite Möbius filtering of the primitive ternary moment. Both sides use
the same positive-coordinate region and the same cutoff on `a + b`.
The integer-valued Möbius function is cast with its signs into `R`.
This theorem is valid also for `N = 0` and `N = 1`, when the region is empty. -/
theorem primitiveWeightedMoment_eq_moebius_sum {R : Type*} [Ring R] (N : ℕ)
    (W : ℕ → ℕ → ℕ → R) :
    primitiveWeightedMoment N W =
      ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : R) * commonDivisorWeightedMoment N d W := by
  unfold primitiveWeightedMoment commonDivisorWeightedMoment
  calc
    (∑ p ∈ additivePairs N,
        if Nat.Coprime p.1 p.2 then W p.1 p.2 (p.1 + p.2) else 0) =
        ∑ p ∈ additivePairs N,
          (∑ d ∈ Finset.Icc 1 N,
            if d ∣ p.1 ∧ d ∣ p.2 then (ArithmeticFunction.moebius d : R) else 0) *
            W p.1 p.2 (p.1 + p.2) := by
      apply Finset.sum_congr rfl
      intro p hp
      obtain ⟨ha, haN, hb, _, _⟩ := mem_additivePairs.mp hp
      rw [GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.CoprimeDivisorFilter.sum_moebius_common_divisors_Icc
        (show 0 < p.1 from ha) (show 0 < p.2 from hb)
        (le_trans (Nat.min_le_left _ _) haN)]
      by_cases h : Nat.Coprime p.1 p.2 <;> simp [h]
    _ = ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : R) *
          ∑ p ∈ additivePairs N,
            if d ∣ p.1 ∧ d ∣ p.2 then W p.1 p.2 (p.1 + p.2) else 0 := by
      simp_rw [Finset.sum_mul]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro d _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro p _
      by_cases h : d ∣ p.1 ∧ d ∣ p.2 <;> simp [h]

theorem primitiveMoment_eq_moebius_sum {R : Type*} [Ring R] (N : ℕ)
    (A B C : ℕ → R) :
    primitiveMoment N A B C =
      ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : R) * commonDivisorMoment N d A B C :=
  primitiveWeightedMoment_eq_moebius_sum N (fun a b c => A a * B b * C c)

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
