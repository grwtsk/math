/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DensityCorrectionReciprocalMass
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.MoebiusReciprocalPrefix

/-!
# Actual signed reciprocal density prefix with closed real cutoffs

Human mathematical direction: grwtsk contributors.
Formal recovery: OpenAI Codex. 
The signed source identity is completed before its absolute value is bounded.
This uniform prefix bound asserts no decay rate or pickup energy budget.
-/
noncomputable section
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
open scoped ArithmeticFunction.Moebius

def densityReciprocalPrefix (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, densityMobiusCoefficient n / (n : ℝ)

theorem density_coefficient_correction_divisors (n : ℕ) :
    densityMobiusCoefficient n =
      ∑ d ∈ n.divisors, densityMoebiusCorrection d * moebiusReal (n/d) := by
  calc
    densityMobiusCoefficient n = (densityMoebiusCorrection * (μ : ArithmeticFunction ℝ)) n := by
      rw [mul_comm, density_moebius_correction_return]
      rfl
    _ = _ := by
      rw [ArithmeticFunction.mul_apply]
      change (∑ v ∈ n.divisorsAntidiagonal, densityMoebiusCorrection v.1 * moebiusReal v.2) = _
      exact Nat.sum_divisorsAntidiagonal (fun a b => densityMoebiusCorrection a * moebiusReal b)

theorem density_reciprocal_correction_divisors (n : ℕ) :
    densityMobiusCoefficient n / (n : ℝ) =
      ∑ d ∈ n.divisors, densityCorrectionReciprocal d * (moebiusReal (n/d) / ((n/d : ℕ) : ℝ)) := by
  rw [density_coefficient_correction_divisors, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro d hd
  have he : (d : ℝ) * ((n/d : ℕ) : ℝ) = (n : ℝ) := by
    exact_mod_cast Nat.mul_div_cancel' (Nat.mem_divisors.mp hd).1
  dsimp [densityCorrectionReciprocal]
  rw [div_mul_div_comm, he]

theorem mobius_reciprocal_prefix_all_real (x : ℝ) :
    |densityMobiusReciprocalPrefix x| ≤ 1 := by
  by_cases hx : 1 ≤ x
  · exact density_mobius_reciprocal_prefix_abs_le_one hx
  · rw [density_mobius_reciprocal_prefix_zero_of_lt_one (lt_of_not_ge hx)]
    norm_num

theorem density_reciprocal_prefix_zero {x : ℝ} (hx : x < 1) :
    densityReciprocalPrefix x = 0 := by
  simp [densityReciprocalPrefix, Nat.floor_eq_zero.mpr hx]

theorem density_reciprocal_prefix_return (x : ℝ) :
    densityReciprocalPrefix x =
      ∑ d ∈ Finset.Icc 1 ⌊x⌋₊, densityCorrectionReciprocal d * densityMobiusReciprocalPrefix (x/(d : ℝ)) := by
  classical
  by_cases hx : 1 ≤ x
  · have hx0 : 0 < x := by linarith
    have H := density_closed_convolution_regroup
      (fun d k => densityCorrectionReciprocal d * (moebiusReal k / (k : ℝ))) (Real.log x)
    have hl : (∑ n ∈ densityClosedInventory (Real.log x),
        ∑ d ∈ n.divisors, densityCorrectionReciprocal d * (moebiusReal (n/d) / ((n/d : ℕ) : ℝ))) =
        densityReciprocalPrefix x := by
      simp_rw [← density_reciprocal_correction_divisors]
      simp [densityReciprocalPrefix, densityClosedInventory, Real.exp_log hx0]
    rw [hl] at H
    rw [H]
    simp only [densityClosedInventory, Real.exp_log hx0]
    apply Finset.sum_congr rfl
    intro d hd
    have hd0 : (0 : ℝ) < d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    rw [← Finset.mul_sum]
    congr 1
    simp [densityMobiusReciprocalPrefix, Real.exp_sub,
      Real.exp_log hx0, Real.exp_log hd0]
  · have hx1 : x < 1 := lt_of_not_ge hx
    simp [density_reciprocal_prefix_zero hx1, Nat.floor_eq_zero.mpr hx1]

theorem density_reciprocal_prefix_abs_le_mass (x : ℝ) :
    |densityReciprocalPrefix x| ≤ ∑' n : ℕ, reciprocalSquare n := by
  rw [density_reciprocal_prefix_return]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊x⌋₊,
        |densityCorrectionReciprocal d * densityMobiusReciprocalPrefix (x/(d : ℝ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊x⌋₊, densityCorrectionReciprocal d := by
      apply Finset.sum_le_sum
      intro d _
      rw [abs_mul, abs_of_nonneg (density_reciprocal_nonneg d)]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (mobius_reciprocal_prefix_all_real (x/(d : ℝ))) (density_reciprocal_nonneg d)
    _ ≤ ∑' n : ℕ, densityCorrectionReciprocal n :=
      density_reciprocal_summable.sum_le_tsum _ (fun n _ => density_reciprocal_nonneg n)
    _ = ∑' n : ℕ, reciprocalSquare n := density_reciprocal_tsum

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
