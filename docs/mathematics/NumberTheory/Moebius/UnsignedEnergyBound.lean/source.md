# Complete source: GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d37ae70ed8afc41273ce756de212688c0be90576` · SHA-256 `84c446eb63ba55e6220ffc5f037a44f9bd4e9919587fbe6c32cb81aad6aee521`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion
import Mathlib.Algebra.Order.Chebyshev

/-!
# The exponential allowance from finite Cauchy Schwarz

The positive response Gram and coefficient norms supply an exponential upper
allowance. This inequality does not witness the polynomial arithmetic premise.
The exact signed pickup is retained throughout the calculation.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory

/-- Cauchy Schwarz prices the completed response by its full integer count. -/
theorem pickupEnergy_le_count_mul_diagonal {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T ≤ (⌊Real.exp T⌋₊ : ℝ) * pickupDiagonal T := by
  let S := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hc : Continuous (fun u : ℝ ↦ (⌊Real.exp T⌋₊ : ℝ) *
      ∑ n ∈ S, moebiusReal n ^ 2 * pickupResponse n u ^ 2) := by
    apply continuous_const.mul
    apply continuous_finsetSum
    intro n hn
    exact continuous_const.mul ((pickupResponse_continuous (Finset.mem_Icc.mp hn).1).pow 2)
  calc
    pickupEnergy T ≤ ∫ u in (0 : ℝ)..T, (⌊Real.exp T⌋₊ : ℝ) *
        ∑ n ∈ S, moebiusReal n ^ 2 * pickupResponse n u ^ 2 := by
      apply intervalIntegral.integral_mono_on hT (wholePickup_sq_intervalIntegrable 0 T)
        (hc.intervalIntegrable 0 T)
      intro u hu
      rw [wholePickup_fixed_inventory hu.1 hu.2]
      have h := sq_sum_le_card_mul_sum_sq (s := S)
        (f := fun n ↦ moebiusReal n * pickupResponse n u)
      simpa only [S, Nat.card_Icc, Nat.add_sub_cancel, mul_pow] using h
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, pickupDiagonal_eq_integral_density]

/-- The unconditionally available count allowance has exponential time growth. -/
theorem pickupEnergy_exponential_allowance {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T ≤ 2 * Real.exp T * T ^ 2 := by
  have hd := (pickupDiagonal_quadratic_bound hT).2
  have hN := Nat.floor_le (Real.exp_pos T).le
  calc
    pickupEnergy T ≤ (⌊Real.exp T⌋₊ : ℝ) * pickupDiagonal T :=
      pickupEnergy_le_count_mul_diagonal hT
    _ ≤ (⌊Real.exp T⌋₊ : ℝ) * (2 * T ^ 2) :=
      mul_le_mul_of_nonneg_left hd (Nat.cast_nonneg _)
    _ ≤ Real.exp T * (2 * T ^ 2) :=
      mul_le_mul_of_nonneg_right hN (by positivity)
    _ = _ := by ring

end GRWTSK.RiemannHypothesis.CCC
```
