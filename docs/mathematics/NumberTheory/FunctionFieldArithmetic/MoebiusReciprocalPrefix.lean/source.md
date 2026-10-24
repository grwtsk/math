# Complete source: GRWTSK.NumberTheory.FunctionFieldArithmetic.MoebiusReciprocalPrefix

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ec442b10b1903350226742519bf17305d658ce8` · SHA-256 `adb67e8ac0ee5ed445e5e696932f44be039d72e84fb0677f296e92abdbeda984`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityFiniteSums
import Mathlib.Algebra.Order.Floor.Semifield

/-!
Exact elementary all-real closed reciprocal Möbius prefix, independently of RH.
Human mathematical direction: grwtsk contributors.
Written recovery and formal implementation assistance: OpenAI Codex.
This finite unconditional arithmetic lemma does not pay a pickup budget.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.ArithmeticFunctions
open scoped BigOperators

def densityMobiusReciprocalPrefix (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, moebiusReal n / (n : ℝ)

theorem density_mobius_reciprocal_prefix_source_inventory {x : ℝ} (hx : 0 < x) :
    densityMobiusReciprocalPrefix x =
      ∑ n ∈ densityClosedInventory (Real.log x), moebiusReal n / (n : ℝ) := by
  simp [densityMobiusReciprocalPrefix, densityClosedInventory, Real.exp_log hx]

theorem density_mobius_reciprocal_prefix_zero_of_lt_one {x : ℝ} (hx : x < 1) :
    densityMobiusReciprocalPrefix x = 0 := by
  simp [densityMobiusReciprocalPrefix, Nat.floor_eq_zero.mpr hx]

theorem density_mobius_closed_floor_convolution {x : ℝ} (hx : 1 ≤ x) :
    (∑ n ∈ densityClosedInventory (Real.log x),
      moebiusReal n * (⌊x / (n : ℝ)⌋₊ : ℝ)) = 1 := by
  classical
  have hx0 : 0 < x := by linarith
  have hxlog : 0 ≤ Real.log x := Real.log_nonneg hx
  have h1 := density_closed_inventory_one_of_nonneg hxlog
  have H := density_closed_convolution_regroup (fun k _ ↦ moebiusReal k) (Real.log x)
  have hleft : (∑ q ∈ densityClosedInventory (Real.log x),
      ∑ k ∈ q.divisors, moebiusReal k) = 1 := by
    simp_rw [density_moebius_divisor_sum]
    simp [h1]
  rw [hleft] at H
  rw [H]
  apply Finset.sum_congr rfl
  intro n hn
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (Finset.mem_Icc.mp hn).1
  have he : Real.exp (Real.log x - Real.log n) = x / n := by
    rw [Real.exp_sub, Real.exp_log hx0, Real.exp_log hnpos]
  simp [densityClosedInventory, he, Nat.card_Icc, mul_comm]

theorem density_mobius_reciprocal_prefix_abs_le_one {x : ℝ} (hx : 1 ≤ x) :
    |densityMobiusReciprocalPrefix x| ≤ 1 := by
  classical
  have hx0 : 0 < x := by linarith
  let S := densityClosedInventory (Real.log x)
  let f (n : ℕ) : ℝ := x / n - (⌊x / (n : ℝ)⌋₊ : ℝ)
  let R := ∑ n ∈ S.erase 1, moebiusReal n * f n
  have h1 : 1 ∈ S := density_closed_inventory_one_of_nonneg (Real.log_nonneg hx)
  have hcard : (S.card : ℝ) = (⌊x⌋₊ : ℝ) := by
    simp [S, densityClosedInventory, Real.exp_log hx0, Nat.card_Icc]
  have hR : |R| ≤ (⌊x⌋₊ : ℝ) - 1 := by
    calc
      |R| ≤ ∑ n ∈ S.erase 1, |moebiusReal n * f n| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ _n ∈ S.erase 1, (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro n hn
        have hnpos : (0 : ℝ) < n := by
          exact_mod_cast (Finset.mem_Icc.mp (Finset.mem_of_mem_erase hn)).1
        have hn0 : 0 ≤ x / (n : ℝ) := div_nonneg hx0.le hnpos.le
        have hf0 : 0 ≤ f n := sub_nonneg.mpr (Nat.floor_le hn0)
        have hf1 : f n ≤ 1 := by
          dsimp [f]
          have := Nat.lt_floor_add_one (x / (n : ℝ))
          linarith
        rw [abs_mul, abs_of_nonneg hf0]
        exact (mul_le_mul_of_nonneg_right (moebiusReal_abs_le_one n) hf0).trans
          (by simpa using hf1)
      _ = (⌊x⌋₊ : ℝ) - 1 := by
        simp only [Finset.sum_const, nsmul_eq_mul, mul_one]
        have hc := Finset.card_erase_add_one h1
        have hr := congrArg (fun n : ℕ ↦ (n : ℝ)) hc
        push_cast at hr
        linarith
  have hsum : (∑ n ∈ S, moebiusReal n * f n) = R + (x - (⌊x⌋₊ : ℝ)) := by
    have H := Finset.sum_erase_add S (fun n ↦ moebiusReal n * f n) h1
    simpa [R, f, moebiusReal, ArithmeticFunction.moebius_apply_one] using H.symm
  have he : x * densityMobiusReciprocalPrefix x = 1 + (∑ n ∈ S, moebiusReal n * f n) := by
    rw [density_mobius_reciprocal_prefix_source_inventory hx0, Finset.mul_sum]
    have H := density_mobius_closed_floor_convolution hx
    change (∑ n ∈ S, moebiusReal n * (⌊x / (n : ℝ)⌋₊ : ℝ)) = 1 at H
    rw [← H, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n _
    dsimp [f]
    ring
  have hf : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le hx0.le
  have hRl := (abs_le.mp hR).1
  have hRu := (abs_le.mp hR).2
  rw [hsum] at he
  apply abs_le.mpr
  constructor
  · apply (le_of_mul_le_mul_left ?_ hx0)
    nlinarith
  · apply (le_of_mul_le_mul_left ?_ hx0)
    nlinarith

end GRWTSK.NumberTheory.ArithmeticFunctions
```
