# Complete source: GRWTSK.NumberTheory.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9947c0a84cc53c3e7258e08596fe1e0c71d628c` · SHA-256 `bf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing
import Mathlib.NumberTheory.SumPrimeReciprocals

/-!
# Absolute weighted Möbius jump mass is not uniformly bounded

Prime reciprocal divergence gives a concrete obstruction to replacing all
signed primitive jumps by their total absolute mass. The statement concerns
`sum |mu(d)|/sqrt(d)`, not `|H|` or the signed source residual. It does not assert
that the residual is unbounded, and does not refute RH.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateAbsoluteMobiusObstruction

open Set
open EstimateWeightedMobiusPairing EstimateMertensAbel EstimateSourceMobiusKernel

noncomputable section

/-- Absolute weighted Möbius coefficients dominate reciprocal primes. -/
theorem prime_reciprocal_le_abs_weightedMoebius (d : ℕ) :
    ({p : ℕ | p.Prime}.indicator (fun n : ℕ ↦ (1 : ℝ) / n)) d ≤
      |weightedMoebius d| := by
  by_cases hp : d.Prime
  · rw [Set.indicator_of_mem (show d ∈ {p : ℕ | p.Prime} from hp)]
    have hd : (1 : ℝ) ≤ d := by exact_mod_cast hp.one_lt.le
    have hd0 : (0 : ℝ) < d := by linarith
    have hs : 0 < Real.sqrt (d : ℝ) := Real.sqrt_pos.mpr hd0
    have hsle : Real.sqrt (d : ℝ) ≤ d := by
      nlinarith [Real.sq_sqrt hd0.le, Real.sqrt_nonneg (d : ℝ)]
    have hmu : realMoebius d = -1 := by
      simp [realMoebius, ArithmeticFunction.moebius_apply_prime hp]
    rw [weightedMoebius, hmu, abs_div, abs_neg, abs_one,
      abs_of_nonneg (Real.sqrt_nonneg _)]
    exact one_div_le_one_div_of_le hs hsle
  · rw [Set.indicator_of_notMem (show d ∉ {p : ℕ | p.Prime} from hp)]
    exact abs_nonneg _

/-- The unsigned jump coefficients have divergent total mass. -/
theorem abs_weightedMoebius_not_summable :
    ¬ Summable (fun d : ℕ ↦ |weightedMoebius d|) := by
  intro h
  apply not_summable_one_div_on_primes
  apply h.of_nonneg_of_le
  · intro d
    exact Set.indicator_nonneg (fun _ _ ↦ by positivity) _
  · exact prime_reciprocal_le_abs_weightedMoebius

/-- Including the zeroth coefficient does not alter an unsigned inventory. -/
theorem abs_weightedMoebius_sum_zero_eq (N : ℕ) :
    (∑ d ∈ Finset.Icc 0 N, |weightedMoebius d|) =
      ∑ d ∈ Finset.Icc 1 N, |weightedMoebius d| := by
  symm
  apply Finset.sum_subset
  · intro d hd
    exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hd).2⟩
  · intro d hd hdnot
    have hd0 : d = 0 := by
      simp only [Finset.mem_Icc] at hd hdnot
      omega
    subst d
    simp only [weightedMoebius_zero, abs_zero]

/-- The unsigned jump mass exceeds every constant at some real scale beyond
any requested threshold. This is not a statement about the signed primitive. -/
theorem absolute_weighted_mobius_mass_unbounded (D R : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ R ≤ A ∧
      D < ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), |weightedMoebius d| := by
  have hN : ∃ N : ℕ, D < ∑ d ∈ Finset.range N, |weightedMoebius d| := by
    by_contra h
    have hb : ∀ N : ℕ, (∑ d ∈ Finset.range N, |weightedMoebius d|) ≤ D := by
      simpa only [not_exists, not_lt] using h
    exact abs_weightedMoebius_not_summable
      (summable_of_sum_range_le (fun _ ↦ abs_nonneg _) hb)
  obtain ⟨N, hN⟩ := hN
  let A : ℝ := max R ((N : ℝ) + 1)
  have hNA : (N : ℝ) + 1 ≤ A := le_max_right _ _
  have hA : 1 ≤ A := by have := Nat.cast_nonneg (α := ℝ) N; linarith
  have hcut : N ≤ sourceKernelCutoff A := by
    apply Nat.le_floor
    have h := Real.add_one_le_exp (2*A)
    change (N : ℝ) ≤ Real.exp (2*A)
    linarith
  refine ⟨A, hA, le_max_left _ _, hN.trans_le ?_⟩
  rw [← abs_weightedMoebius_sum_zero_eq]
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro d hd
    exact Finset.mem_Icc.mpr ⟨Nat.zero_le _,
      (Finset.mem_range.mp hd).le.trans hcut⟩
  · intro d hd hdnot
    exact abs_nonneg _

/-- An eventual constant upper envelope for the entire absolute jump mass is false. -/
theorem absolute_weighted_mobius_mass_not_tail_bounded :
    ¬ (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), |weightedMoebius d|) ≤ D) := by
  rintro ⟨D, _, R, _, h⟩
  obtain ⟨A, _, hRA, hgt⟩ := absolute_weighted_mobius_mass_unbounded D R
  exact (not_lt_of_ge (h A hRA)) hgt

end
end EstimateAbsoluteMobiusObstruction
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
