# Complete source: GRWTSK.NumberTheory.Moebius.DiagonalEnergyBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a2dcb692aca52f506e6375dcd47d714990ed8e3` · SHA-256 `bd6ea2843c5089b58d68a3aa6962fdd41177fb3f03350ed18c96f2f8162c1bf6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
# CCC unconditional actual pickup diagonal budget

The native response gates, closed inventories and actual Möbius coefficients
remain prescribed. This bounds only the diagonal; the signed off-diagonal and
pointwise amplitude budgets remain open.

Research direction and conceptual selection: grwtsk contributors.
Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupDiagonal

open MeasureTheory Set
open ArithmeticPickupSource ArithmeticPickupEnergy

noncomputable section

theorem moebius_coefficient_abs_le_one (n : ℕ) : |moebiusCoefficient n| ≤ 1 := by
  change |((ArithmeticFunction.moebius n : ℤ) : ℝ)| ≤ 1
  exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))

theorem moebius_coefficient_sq_le_one (n : ℕ) : moebiusCoefficient n ^ 2 ≤ 1 := by
  have habs : |moebiusCoefficient n| ≤ |(1 : ℝ)| := by
    simpa only [abs_one] using moebius_coefficient_abs_le_one n
  simpa only [one_pow] using (sq_le_sq).mpr habs

theorem inverse_half_square (n : ℕ) :
    ((n : ℝ) ^ (-(1 / 2 : ℝ))) ^ 2 = (n : ℝ)⁻¹ := by
  rw [← Real.rpow_mul_natCast (Nat.cast_nonneg n)]
  have hexponent : -(1 / 2 : ℝ) * (2 : ℕ) = -1 := by norm_num
  rw [hexponent, Real.rpow_neg_one]

/-- Pointwise bound respects the actual closed arrival gate, including its zero
value at a touching upper atom. -/
theorem response_square_le_reciprocal {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    response n u ^ 2 ≤ 4 * (n : ℝ)⁻¹ := by
  have hnpos : (0 : ℝ) < n := Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
  have ha : 0 ≤ (n : ℝ) ^ (-(1 / 2 : ℝ)) := Real.rpow_nonneg hnpos.le _
  by_cases harrived : Real.log (n : ℝ) ≤ u
  · rw [response_of_arrived harrived]
    have hexp : Real.exp (-(Real.log (n : ℝ)) / 2) =
        (n : ℝ) ^ (-(1 / 2 : ℝ)) := by
      have h := exp_inverse_half (Real.log (n : ℝ))
      rw [Real.exp_log hnpos] at h
      exact h.symm
    have hupper : Real.exp (-u / 2) ≤ (n : ℝ) ^ (-(1 / 2 : ℝ)) := by
      rw [← hexp]
      apply Real.exp_le_exp.mpr
      linarith
    have hb : 0 ≤ Real.exp (-u / 2) := (Real.exp_pos _).le
    have hresponse0 : 0 ≤ responseKernel n u := by
      unfold responseKernel
      exact mul_nonneg zero_le_two (sub_nonneg.mpr hupper)
    have hresponseUpper : responseKernel n u ≤
        2 * (n : ℝ) ^ (-(1 / 2 : ℝ)) := by
      unfold responseKernel
      linarith
    have hsquare := (sq_le_sq₀ hresponse0 (mul_nonneg zero_le_two ha)).mpr hresponseUpper
    rw [mul_pow, inverse_half_square] at hsquare
    norm_num at hsquare
    exact hsquare
  · rw [response_of_not_arrived harrived]
    simp only [zero_pow (by decide : 2 ≠ 0)]
    exact mul_nonneg (by norm_num) (inv_nonneg.mpr hnpos.le)

/-- Completed diagonal density on the original fixed inventory. -/
def diagonalDensity (T u : ℝ) : ℝ :=
  ∑ n ∈ inventory T, moebiusCoefficient n ^ 2 * response n u ^ 2

theorem diagonal_density_active {u T : ℝ} (hut : u ≤ T) :
    diagonalDensity T u = diagonalDensity u u := by
  unfold diagonalDensity
  symm
  apply Finset.sum_subset (inventory_mono hut)
  intro n hn hnot
  have hnOne := (Finset.mem_Icc.mp hn).1
  have hnotArrived : ¬ Real.log (n : ℝ) ≤ u := by
    intro harrived
    exact hnot ((admitted_iff_arrived hnOne).mpr harrived)
  rw [response_of_not_arrived hnotArrived]
  simp

/-- Harmonic majorization is taken only after retaining each literal diagonal
response; it does not estimate the signed cross contribution. -/
theorem diagonal_density_le {u T : ℝ} (hu : 0 ≤ u) (hut : u ≤ T) :
    diagonalDensity T u ≤ 4 * (1 + u) := by
  rw [diagonal_density_active hut]
  have hsum : (∑ n ∈ inventory u, (n : ℝ)⁻¹) =
      (harmonic ⌊Real.exp u⌋₊ : ℝ) := by
    simp only [inventory, harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv,
      Rat.cast_natCast]
  calc
    diagonalDensity u u ≤ ∑ n ∈ inventory u, 4 * (n : ℝ)⁻¹ := by
      unfold diagonalDensity
      apply Finset.sum_le_sum
      intro n hn
      have hnOne := (Finset.mem_Icc.mp hn).1
      calc
        moebiusCoefficient n ^ 2 * response n u ^ 2 ≤ 1 * response n u ^ 2 :=
          mul_le_mul_of_nonneg_right (moebius_coefficient_sq_le_one n) (sq_nonneg _)
        _ ≤ 4 * (n : ℝ)⁻¹ := by
          simpa only [one_mul] using response_square_le_reciprocal hnOne u
    _ = 4 * (harmonic ⌊Real.exp u⌋₊ : ℝ) := by rw [← Finset.mul_sum, hsum]
    _ ≤ 4 * (1 + u) := by
      have hexp : 1 ≤ Real.exp u := by simpa using Real.exp_le_exp.mpr hu
      have hharmonic := harmonic_floor_le_one_add_log (Real.exp u) hexp
      rw [Real.log_exp] at hharmonic
      exact mul_le_mul_of_nonneg_left hharmonic (by norm_num)

private theorem weighted_response_square_integrable (T : ℝ) (n : ℕ) :
    IntegrableOn (fun u ↦ moebiusCoefficient n ^ 2 * response n u ^ 2) (Ioc 0 T) := by
  have hproduct : IntegrableOn (fun u ↦ moebiusCoefficient n ^ 2 *
      (response n u * response n u)) (Ioc 0 T) :=
    (response_product_integrable T n n).const_mul (moebiusCoefficient n ^ 2)
  apply hproduct.congr_fun ?_ measurableSet_Ioc
  intro u _
  simp only [pow_two]

theorem diagonal_density_integrable (T : ℝ) :
    IntegrableOn (diagonalDensity T) (Ioc 0 T) := by
  exact integrable_finsetSum (inventory T)
    (fun n _ ↦ weighted_response_square_integrable T n)

theorem diagonal_density_integral_eq (T : ℝ) :
    (∫ u in Ioc 0 T, diagonalDensity T u) = diagonal T := by
  unfold diagonalDensity ArithmeticPickupEnergy.diagonal
  rw [integral_finsetSum (inventory T)
    (fun n _ ↦ weighted_response_square_integrable T n)]
  apply Finset.sum_congr rfl
  intro n _
  rw [integral_const_mul]
  congr 1
  unfold gram
  apply setIntegral_congr_fun measurableSet_Ioc
  intro u _
  change response n u ^ 2 = response n u * response n u
  exact pow_two _

theorem diagonal_nonnegative (T : ℝ) : 0 ≤ diagonal T := by
  rw [← diagonal_density_integral_eq]
  apply integral_nonneg
  intro u
  unfold diagonalDensity
  exact Finset.sum_nonneg (fun n _ ↦ mul_nonneg (sq_nonneg _) (sq_nonneg _))

private theorem linear_majorant_integrable (T : ℝ) :
    IntegrableOn (fun u : ℝ ↦ 4 * (1 + u)) (Ioc 0 T) :=
  (continuous_const.mul (continuous_const.add continuous_id)).integrableOn_Icc.mono_set
    Ioc_subset_Icc_self

private theorem linear_majorant_integral {T : ℝ} (hT : 0 ≤ T) :
    (∫ u in Ioc 0 T, 4 * (1 + u)) = 4 * T + 2 * T ^ 2 := by
  have hid : IntervalIntegrable (fun u : ℝ ↦ u) volume 0 T :=
    continuous_id.intervalIntegrable 0 T
  rw [← intervalIntegral.integral_of_le hT, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_add (f := fun _ : ℝ ↦ (1 : ℝ)) intervalIntegrable_const hid,
    intervalIntegral.integral_const, integral_id]
  simp only [smul_eq_mul]
  ring

/-- The known unconditional diagonal allowance; all arithmetic cancellation
and pointwise polynomial-return obligations remain separate. -/
theorem diagonal_polynomial_bound {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ diagonal T ∧ diagonal T ≤ 4 * T + 2 * T ^ 2 ∧
      4 * T + 2 * T ^ 2 ≤ 2 * (1 + T) ^ 2 := by
  refine ⟨diagonal_nonnegative T, ?_, by nlinarith⟩
  rw [← diagonal_density_integral_eq]
  calc
    _ ≤ ∫ u in Ioc 0 T, 4 * (1 + u) :=
      setIntegral_mono_on (diagonal_density_integrable T) (linear_majorant_integrable T)
        measurableSet_Ioc (fun u hu ↦ diagonal_density_le hu.1.le hu.2)
    _ = 4 * T + 2 * T ^ 2 := linear_majorant_integral hT

/-- The diagonal-only allowance in the common polynomial budget form. -/
theorem diagonal_upper_bound {T : ℝ} (hT : 0 ≤ T) :
    diagonal T ≤ 2 * (1 + T) ^ 2 := by
  have hbound := diagonal_polynomial_bound hT
  exact hbound.2.1.trans hbound.2.2

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupDiagonal
```
