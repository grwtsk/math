/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex. Mathlib's finite sums and natural-number
division retain their Apache-2.0 license and upstream attribution.
This module proves finite identities only; it supplies no abc estimate. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open scoped BigOperators

/-- Scaling a positive additive pair by a positive divisor gives the exact
closed floor cutoff `N / d`. The additive constraint remains in the region. -/
theorem mem_additivePairs_scaled_iff {N d u v : ℕ} (hd : 0 < d) :
    (d * u, d * v) ∈ additivePairs N ↔ (u, v) ∈ additivePairs (N / d) := by
  constructor
  · intro hp
    obtain ⟨hu, _, hv, _, hsum⟩ := mem_additivePairs.mp hp
    have hu1 : 1 ≤ u := by
      by_contra h
      have hu0 : u = 0 := by omega
      simp only [hu0, Nat.mul_zero] at hu
      omega
    have hv1 : 1 ≤ v := by
      by_contra h
      have hv0 : v = 0 := by omega
      simp only [hv0, Nat.mul_zero] at hv
      omega
    have hsum' : u + v ≤ N / d := by
      apply (Nat.le_div_iff_mul_le hd).mpr
      simpa only [Nat.add_mul, Nat.mul_add, Nat.mul_comm] using hsum
    exact mem_additivePairs.mpr ⟨hu1, by omega, hv1, by omega, hsum'⟩
  · intro hp
    obtain ⟨hu, _, hv, _, hsum⟩ := mem_additivePairs.mp hp
    have hu1 : 1 ≤ d * u := Nat.mul_pos hd hu
    have hv1 : 1 ≤ d * v := Nat.mul_pos hd hv
    have hsum' : d * u + d * v ≤ N := by
      have hmul := (Nat.le_div_iff_mul_le hd).mp hsum
      simpa only [Nat.add_mul, Nat.mul_add, Nat.mul_comm] using hmul
    exact mem_additivePairs.mpr ⟨hu1, by omega, hv1, by omega, hsum'⟩

/-- Multiplication by a positive divisor is injective on coordinate pairs.
This is the cancellation step in the sector bijection. -/
theorem scaledPair_injective {d : ℕ} (hd : 0 < d) :
    Function.Injective (fun p : ℕ × ℕ => (d * p.1, d * p.2)) := by
  intro p q hpq
  exact Prod.ext (Nat.mul_left_cancel hd (congrArg Prod.fst hpq))
    (Nat.mul_left_cancel hd (congrArg Prod.snd hpq))

/-- Reindex one common-divisor sector by `a = d*u`, `b = d*v`.
The divisor is positive, the quotient cutoff is exact natural-number division,
and the third coordinate is scaled along with the first two. The joint weight
is arbitrary and need not factor into coordinate weights. -/
theorem commonDivisorWeightedMoment_eq_scaled_sum {R : Type*} [Ring R]
    (N d : ℕ) (W : ℕ → ℕ → ℕ → R) (hd : 0 < d) :
    commonDivisorWeightedMoment N d W =
      ∑ p ∈ additivePairs (N / d),
        W (d * p.1) (d * p.2) (d * (p.1 + p.2)) := by
  classical
  unfold commonDivisorWeightedMoment
  rw [← Finset.sum_filter]
  symm
  refine Finset.sum_bij (fun p _ => (d * p.1, d * p.2)) ?_ ?_ ?_ ?_
  · intro p hp
    exact Finset.mem_filter.mpr ⟨(mem_additivePairs_scaled_iff hd).mpr hp,
      ⟨⟨p.1, rfl⟩, ⟨p.2, rfl⟩⟩⟩
  · intro p _ q _ hpq
    exact scaledPair_injective hd hpq
  · intro p hp
    obtain ⟨hp, ha, hb⟩ := Finset.mem_filter.mp hp
    obtain ⟨u, hu⟩ := ha
    obtain ⟨v, hv⟩ := hb
    have hpair : (d * u, d * v) = p := Prod.ext hu.symm hv.symm
    refine ⟨(u, v), (mem_additivePairs_scaled_iff hd).mp ?_, hpair⟩
    rw [hpair]
    exact hp
  · intro p _
    simp only [Nat.mul_add]

/-- Product weights specialize the exact sector reindexing, with the original
multiplication order retained in an arbitrary ring. -/
theorem commonDivisorMoment_eq_scaled_sum {R : Type*} [Ring R]
    (N d : ℕ) (A B C : ℕ → R) (hd : 0 < d) :
    commonDivisorMoment N d A B C =
      ∑ p ∈ additivePairs (N / d),
        A (d * p.1) * B (d * p.2) * C (d * (p.1 + p.2)) :=
  commonDivisorWeightedMoment_eq_scaled_sum N d (fun a b c => A a * B b * C c) hd

/-- Finite Möbius filtering followed by exact divisor-sector reindexing.
Every sector keeps its closed floor cutoff and additive constraint. -/
theorem primitiveWeightedMoment_eq_moebius_scaled_sum {R : Type*} [Ring R]
    (N : ℕ) (W : ℕ → ℕ → ℕ → R) :
    primitiveWeightedMoment N W =
      ∑ d ∈ Finset.Icc 1 N, (ArithmeticFunction.moebius d : R) *
        ∑ p ∈ additivePairs (N / d),
          W (d * p.1) (d * p.2) (d * (p.1 + p.2)) := by
  rw [primitiveWeightedMoment_eq_moebius_sum]
  apply Finset.sum_congr rfl
  intro d hd
  rw [commonDivisorWeightedMoment_eq_scaled_sum N d W (Finset.mem_Icc.mp hd).1]

/-- The same exact finite divisor-sector formula for typed primitive triples.
No estimate or all-height conclusion follows from the reindexing alone. -/
theorem typedPrimitiveWeightedMoment_eq_moebius_scaled_sum {R : Type*} [Ring R]
    (N : ℕ) (W : ℕ → ℕ → ℕ → R) :
    typedPrimitiveWeightedMoment N W =
      ∑ d ∈ Finset.Icc 1 N, (ArithmeticFunction.moebius d : R) *
        ∑ p ∈ additivePairs (N / d),
          W (d * p.1) (d * p.2) (d * (p.1 + p.2)) := by
  rw [typedPrimitiveWeightedMoment_eq_primitiveWeightedMoment,
    primitiveWeightedMoment_eq_moebius_scaled_sum]

/-- The product-weight typed primitive moment has the same exact scaled
sectors. The coefficient ring need not have commutative multiplication. -/
theorem typedPrimitiveMoment_eq_moebius_scaled_sum {R : Type*} [Ring R]
    (N : ℕ) (A B C : ℕ → R) :
    typedPrimitiveMoment N A B C =
      ∑ d ∈ Finset.Icc 1 N, (ArithmeticFunction.moebius d : R) *
        ∑ p ∈ additivePairs (N / d),
          A (d * p.1) * B (d * p.2) * C (d * (p.1 + p.2)) :=
  typedPrimitiveWeightedMoment_eq_moebius_scaled_sum N (fun a b c => A a * B b * C c)

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
