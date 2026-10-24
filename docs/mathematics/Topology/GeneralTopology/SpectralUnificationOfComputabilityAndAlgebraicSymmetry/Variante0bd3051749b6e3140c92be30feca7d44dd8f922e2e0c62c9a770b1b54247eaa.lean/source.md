# Complete source: GRWTSK.Topology.GeneralTopology.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edaad9990003b638d717db8c0db2108e6cf46bfa` · SHA-256 `e0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMovingFrontTransport
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceKernelAnchor

/-!
# A negligible growing initial interval in the actual signed pairing

The elementary arithmetic envelope grows like exp(s / 2). Combined with the
origin-anchored source derivative, it bounds the endpoint-compensated prefix;
it does not bound the uncompensated small-divisor sum or the remaining tail.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateMovingFrontBound

open MeasureTheory Set Filter
open scoped Topology
open EstimateMertensAbel EstimateWeightedMobiusPairing EstimateSourceKernelLogProfile
open EstimateMovingFrontTransport
open EstimateSourceKernelAnchor

noncomputable section

/-- A telescoping square-root estimate, including the empty sum. -/
theorem sum_reciprocal_sqrt_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, 1 / Real.sqrt (n : ℝ)) ≤ 2 * Real.sqrt N := by
  induction N with
  | zero => simp
  | succ N hN =>
    rw [Finset.sum_Icc_succ_top (by omega)]
    have hp : 0 < Real.sqrt ((N + 1 : ℕ) : ℝ) := Real.sqrt_pos.mpr (by positivity)
    have ha := Real.sq_sqrt (by positivity : (0 : ℝ) ≤ ((N + 1 : ℕ) : ℝ))
    have hb := Real.sq_sqrt (Nat.cast_nonneg N : (0 : ℝ) ≤ N)
    have hstep : 1 / Real.sqrt ((N + 1 : ℕ) : ℝ) ≤
        2 * (Real.sqrt ((N + 1 : ℕ) : ℝ) - Real.sqrt (N : ℝ)) := by
      apply (div_le_iff₀ hp).2
      have hd : Real.sqrt ((N + 1 : ℕ) : ℝ) ^ 2 - Real.sqrt (N : ℝ) ^ 2 = 1 := by
        rw [ha, hb]
        push_cast
        ring
      nlinarith [sq_nonneg (Real.sqrt ((N + 1 : ℕ) : ℝ) - Real.sqrt (N : ℝ))]
    linarith

/-- The unit bound for the genuine integer Möbius coefficient. -/
theorem realMoebius_abs_le_one (n : ℕ) : |realMoebius n| ≤ 1 := by
  simpa only [realMoebius, ← Int.cast_abs, Int.cast_one] using
    (Int.cast_le.mpr (ArithmeticFunction.abs_moebius_le_one (n := n)) :
      ((|ArithmeticFunction.moebius n| : ℤ) : ℝ) ≤ (1 : ℤ))

/-- An elementary growing envelope, with no hypothesis about cancellation. -/
theorem weightedMobiusPrimitive_abs_le {s : ℝ} (_hs : 0 ≤ s) :
    |weightedMobiusPrimitive s| ≤ 2 * Real.exp (s / 2) := by
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp s⌋₊, |weightedMoebius n| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp s⌋₊, 1 / Real.sqrt (n : ℝ) := by
      apply Finset.sum_le_sum
      intro n _
      rw [weightedMoebius, abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
      exact div_le_div_of_nonneg_right (realMoebius_abs_le_one n) (Real.sqrt_nonneg _)
    _ ≤ 2 * Real.sqrt (⌊Real.exp s⌋₊ : ℝ) := sum_reciprocal_sqrt_le _
    _ ≤ 2 * Real.exp (s / 2) := by
      rw [Real.exp_half]
      exact mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt (Nat.floor_le (by positivity)))
        (by norm_num)

/-- Exact integral of the elementary majorant for the anchored derivative. -/
theorem integral_exp_half_linear (S : ℝ) :
    (∫ s in (0 : ℝ)..S, Real.exp (s / 2) * (s + 4)) =
      2 * (Real.exp (S / 2) * (S + 2) - 2) := by
  have hd (s : ℝ) : HasDerivAt (fun s : ℝ => 2 * Real.exp (s / 2) * (s + 2))
      (Real.exp (s / 2) * (s + 4)) s := by
    apply ((((hasDerivAt_id s).div_const 2).exp.const_mul 2).mul
      ((hasDerivAt_id s).add_const 2)).congr_deriv
    simp only [id_eq]
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
    ((by fun_prop : Continuous (fun s : ℝ => Real.exp (s / 2) * (s + 4))).intervalIntegrable _ _)]
  simp only [zero_div, Real.exp_zero, zero_add, mul_one]
  ring

/-- Integrating the growing arithmetic envelope against an anchored linear
derivative bound keeps the real upper endpoint explicitly. -/
theorem weighted_prefix_abs_le {G : ℝ → ℝ} {S B : ℝ}
    (hS : 0 ≤ S)
    (hderiv : ∀ s ∈ Icc (0 : ℝ) S, |deriv G s| ≤ B * (s + 4)) :
    |-(∫ s in (0 : ℝ)..S, weightedMobiusPrimitive s * deriv G s)| ≤
      4 * B * (Real.exp (S / 2) * (S + 2) - 2) := by
  have hbound := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hS
    (f := fun s : ℝ => weightedMobiusPrimitive s * deriv G s)
    (g := fun s : ℝ => (2 * B) * (Real.exp (s / 2) * (s + 4))) ?_
    ((by fun_prop : Continuous (fun s : ℝ =>
      (2 * B) * (Real.exp (s / 2) * (s + 4)))).intervalIntegrable _ _)
  · rw [intervalIntegral.integral_const_mul, integral_exp_half_linear] at hbound
    rw [Real.norm_eq_abs] at hbound
    rw [abs_neg]
    convert hbound using 1
    ring
  · filter_upwards with s hs
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (2 * Real.exp (s / 2)) * (B * (s + 4)) :=
        mul_le_mul (weightedMobiusPrimitive_abs_le hs.1.le)
          (hderiv s ⟨hs.1.le, hs.2⟩) (abs_nonneg _) (by positivity)
      _ = _ := by ring

private theorem moving_majorant_eq (A : ℝ) (hA : 1 ≤ A) :
    2080 / (3 * A ^ 2) *
        (Real.exp ((2 * Real.log A) / 2) * (2 * Real.log A + 2) - 2) =
      4160 / (3 * A) * (Real.log A + 1) - 4160 / (3 * A ^ 2) := by
  have hp : 0 < A := lt_of_lt_of_le zero_lt_one hA
  rw [show (2 * Real.log A) / 2 = Real.log A by ring, Real.exp_log hp]
  field_simp
  ring

private theorem moving_majorant_le_uniform (A : ℝ) (hA : 1 ≤ A) :
    4160 / (3 * A) * (Real.log A + 1) - 4160 / (3 * A ^ 2) ≤ 4160 / 3 := by
  have hp : 0 < A := lt_of_lt_of_le zero_lt_one hA
  have hl : Real.log A + 1 ≤ A := by linarith [Real.log_le_sub_one_of_pos hp]
  have heq : 4160 / (3 * A) * A = (4160 / 3 : ℝ) := by field_simp
  calc
    _ ≤ 4160 / (3 * A) * A - 4160 / (3 * A ^ 2) :=
      sub_le_sub_right (mul_le_mul_of_nonneg_left hl (by positivity)) _
    _ ≤ 4160 / 3 := by rw [heq]; exact sub_le_self _ (by positivity)

private theorem moving_majorant_le_decaying (A : ℝ) (hA : 1 ≤ A) :
    4160 / (3 * A) * (Real.log A + 1) - 4160 / (3 * A ^ 2) ≤
      (4160 / 3) * (Real.log A / A + 1 / A) := by
  have hp : 0 < A := lt_of_lt_of_le zero_lt_one hA
  have heq : 4160 / (3 * A) * (Real.log A + 1) =
      (4160 / 3) * (Real.log A / A + 1 / A) := by ring
  rw [heq]
  exact sub_le_self _ (by positivity)

private theorem moving_decaying_tendsto :
    Tendsto (fun A : ℝ => (4160 / 3) * (Real.log A / A + 1 / A)) atTop (𝓝 0) := by
  have hl : Tendsto (fun A : ℝ => Real.log A / A) atTop (𝓝 0) := by
    simpa using Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 one_ne_zero
  have hi : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 0) := by
    simpa only [one_div] using (tendsto_inv_atTop_zero :
      Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0))
  simpa using (hl.add hi).const_mul (4160 / 3)

/-- The actual prefix estimate keeps the exponentially growing envelope inside
the integral. It holds for every nonnegative real prefix length. -/
theorem sourcePrefixPairing_abs_le (A S : ℝ) (hA : 1 ≤ A) (hS : 0 ≤ S) :
    |sourcePrefixPairing A S| ≤
      2080 / (3 * A ^ 2) * (Real.exp (S / 2) * (S + 2) - 2) := by
  have h := weighted_prefix_abs_le (G := sourceLogKernel A) (B := 520 / (3 * A ^ 2))
    hS (fun s hs => by
      simpa only [div_mul_eq_mul_div] using sourceLogKernel_deriv_abs_le_anchored A s hA hs.1)
  dsimp only [sourcePrefixPairing]
  convert h using 1
  ring

/-- At the real square-divisor front the compensated prefix has a vanishing
explicit envelope; the weighted endpoint is part of its definition. -/
theorem sourcePrefixPairing_moving_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |sourcePrefixPairing A (2 * Real.log A)| ≤
      4160 / (3 * A) * (Real.log A + 1) - 4160 / (3 * A ^ 2) := by
  have h := sourcePrefixPairing_abs_le A (2 * Real.log A) hA (square_front_mem A hA).1
  rwa [moving_majorant_eq A hA] at h

/-- A uniform estimate on every real scale, with no arithmetic tail premise. -/
theorem sourcePrefixPairing_moving_abs_le_uniform (A : ℝ) (hA : 1 ≤ A) :
    |sourcePrefixPairing A (2 * Real.log A)| ≤ 4160 / 3 :=
  (sourcePrefixPairing_moving_abs_le A hA).trans (moving_majorant_le_uniform A hA)

/-- The moving compensated prefix tends to zero through real, not merely
integer, source scales. -/
theorem sourcePrefixPairing_moving_tendsto_zero :
    Tendsto (fun A : ℝ => sourcePrefixPairing A (2 * Real.log A)) atTop (𝓝 0) := by
  apply squeeze_zero_norm' (a := fun A : ℝ =>
    (4160 / 3) * (Real.log A / A + 1 / A)) ?_ moving_decaying_tendsto
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [Real.norm_eq_abs]
  exact (sourcePrefixPairing_moving_abs_le A hA).trans (moving_majorant_le_decaying A hA)

/-- At scale one the moving interval is empty, including its endpoint. -/
theorem sourcePrefixPairing_moving_one :
    sourcePrefixPairing 1 (2 * Real.log 1) = 0 := by simp

end
end EstimateMovingFrontBound
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
