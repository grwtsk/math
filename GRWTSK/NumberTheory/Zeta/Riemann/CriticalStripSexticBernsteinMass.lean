/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticTailDefect

set_option autoImplicit false

/-!
# Integrating the existing sextic Bernstein envelope

The old signed 16-by-7 kernel table is unchanged. Rather than replacing each row
by its largest coefficient, this module retains the whole absolute-coefficient
polynomial. Its deficit has nonnegative Bernstein coefficients. Exact polynomial
moments and rational tangent weights integrate that deficit without quadrature.
The 49-entry power-basis table is checked by polynomial identity, not trusted.
SOURCE SCRIPTS: Lean elaboration and transitive axiom audit remain NOT_RUN.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.BernsteinMass
open Complex MeasureTheory Set KernelDefect
noncomputable section

/-- Expansion of v^j(1-v)^(6-j) in powers of v. -/
def powerCoefficients : Fin 7 → Fin 7 → ℤ :=
  ![![1,-6,15,-20,15,-6,1], ![0,1,-5,10,-10,5,-1],
    ![0,0,1,-4,6,-4,1], ![0,0,0,1,-3,3,-1],
    ![0,0,0,0,1,-2,1], ![0,0,0,0,0,1,-1], ![0,0,0,0,0,0,1]]

lemma basis_polynomial (j : Fin 7) (v : ℝ) :
    basis j v = ∑ k : Fin 7, (powerCoefficients j k : ℝ) * v ^ k.val := by
  fin_cases j <;> norm_num [basis, powerCoefficients, Fin.sum_univ_succ] <;> ring

@[fun_prop] lemma basis_continuous (j : Fin 7) : Continuous (basis j) := by
  unfold basis
  fun_prop

/-- Exact integral of a basis function times a monomial; no sampled moments. -/
def moment (j : Fin 7) (m : ℕ) : ℝ :=
  ∑ k : Fin 7, (powerCoefficients j k : ℝ) / ((k.val + m + 1 : ℕ) : ℝ)

lemma moment_integral (j : Fin 7) (m : ℕ) :
    (∫ v : ℝ in (0 : ℝ)..1, basis j v * v ^ m) = moment j m := by
  have hf : (fun v : ℝ => basis j v * v ^ m) =
      fun v => ∑ k : Fin 7, (powerCoefficients j k : ℝ) * v ^ (k.val + m) := by
    funext v
    rw [basis_polynomial, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro k _
    rw [pow_add]
    ring
  rw [hf, intervalIntegral.integral_finsetSum]
  · unfold moment
    apply Finset.sum_congr rfl
    intro k _
    rw [intervalIntegral.integral_const_mul, integral_pow]
    simp
  · intro k _
    exact (continuous_const.mul (continuous_id.pow _)).intervalIntegrable _ _

lemma linear_moment (j : Fin 7) (a b : ℝ) :
    (∫ v : ℝ in (0 : ℝ)..1, basis j v * (a + b * v)) =
      a * moment j 0 + b * moment j 1 := by
  have hf : (fun v : ℝ => basis j v * (a + b * v)) =
      fun v => a * (basis j v * v ^ 0) + b * (basis j v * v ^ 1) := by
    funext v
    ring
  rw [hf, intervalIntegral.integral_add,
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    moment_integral, moment_integral]
  all_goals exact (by fun_prop : Continuous _).intervalIntegrable _ _

lemma quadratic_moment (j : Fin 7) (a b c : ℝ) :
    (∫ v : ℝ in (0 : ℝ)..1, basis j v * (a + b * v + c * v ^ 2)) =
      a * moment j 0 + b * moment j 1 + c * moment j 2 := by
  have hf : (fun v : ℝ => basis j v * (a + b * v + c * v ^ 2)) =
      fun v => basis j v * (a + b * v) + c * (basis j v * v ^ 2) := by
    funext v
    ring
  rw [hf, intervalIntegral.integral_add, linear_moment,
    intervalIntegral.integral_const_mul, moment_integral]
  all_goals exact (by fun_prop : Continuous _).intervalIntegrable _ _

/-- Binomial weight minus absolute normalized coefficient of the SAME kernel. -/
def deficitCoefficient (i : Fin 16) (j : Fin 7) : ℝ :=
  (binomialWeight j : ℝ) - |(coefficients i j : ℝ)| / 16777216

lemma deficitCoefficient_nonneg (i : Fin 16) (j : Fin 7) :
    0 ≤ deficitCoefficient i j := by
  have ha : |(coefficients i j : ℝ)| ≤
      (16777216 * cap i) * (binomialWeight j : ℝ) :=
    abs_le.mpr (by simpa only [neg_mul] using coefficient_bounds i j)
  have hb := mul_le_mul_of_nonneg_right (cap_bounds i).2
    (show 0 ≤ (binomialWeight j : ℝ) by positivity)
  unfold deficitCoefficient
  nlinarith

def density (i : Fin 16) (v : ℝ) : ℝ :=
  ∑ j : Fin 7, deficitCoefficient i j * basis j v

@[fun_prop] lemma density_continuous (i : Fin 16) : Continuous (density i) := by
  unfold density
  fun_prop

lemma density_nonneg (i : Fin 16) {v : ℝ} (hv : 0 ≤ v) (hv1 : v ≤ 1) :
    0 ≤ density i v := by
  apply Finset.sum_nonneg
  intro j _
  exact mul_nonneg (deficitCoefficient_nonneg i j)
    (mul_nonneg (pow_nonneg hv _) (pow_nonneg (sub_nonneg.mpr hv1) _))

lemma density_eq (i : Fin 16) (v : ℝ) :
    density i v = 1 - (∑ j : Fin 7, |(coefficients i j : ℝ)| * basis j v) / 16777216 := by
  unfold density deficitCoefficient
  simp_rw [sub_mul, div_mul_eq_mul_div]
  rw [Finset.sum_sub_distrib, partition_identity, Finset.sum_div]

lemma density_le_deficit (i : Fin 16) {v : ℝ} (hv : 0 ≤ v) (hv1 : v ≤ 1) :
    density i v ≤ 1 - |normalized (((i.val : ℝ) + v) / 16)| := by
  have hb (j : Fin 7) : 0 ≤ basis j v :=
    mul_nonneg (pow_nonneg hv _) (pow_nonneg (sub_nonneg.mpr hv1) _)
  have h := norm_sum_le (Finset.univ : Finset (Fin 7))
    (fun j => (coefficients i j : ℝ) * basis j v)
  have heq : (∑ j : Fin 7, ‖(coefficients i j : ℝ) * basis j v‖) =
      ∑ j : Fin 7, |(coefficients i j : ℝ)| * basis j v := by
    apply Finset.sum_congr rfl
    intro j _
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (hb j)]
  rw [heq, Real.norm_eq_abs, polynomial_identity, abs_mul] at h
  norm_num at h
  rw [density_eq]
  linarith

lemma kernel_density_bound (i : Fin 16) {t : ℝ}
    (ht : node i.val ≤ t) (ht1 : t ≤ node (i.val + 1)) :
    30240 * ‖sixthKernel.value t‖ ≤
      1 - density i (16 * (t - 1) - (i.val : ℝ)) := by
  have hi : (i.val : ℝ) ≤ 15 := by exact_mod_cast (show i.val ≤ 15 by omega)
  have htlo : 1 ≤ t := (node_order i.val).1.trans ht
  have hthi : t ≤ 2 := by dsimp [node] at ht1; push_cast at ht1; linarith
  have hv : 0 ≤ 16 * (t - 1) - (i.val : ℝ) := by dsimp [node] at ht; linarith
  have hv1 : 16 * (t - 1) - (i.val : ℝ) ≤ 1 := by
    dsimp [node] at ht1; push_cast at ht1; linarith
  have hd := density_le_deficit i hv hv1
  rw [show ((i.val : ℝ) + (16 * (t - 1) - (i.val : ℝ))) / 16 = t - 1 by ring] at hd
  rw [source_on_first_cell htlo hthi, Complex.norm_real, Real.norm_eq_abs, abs_div]
  norm_num
  linarith

/-- Midpoint of the same source subcell, not an evaluation of H. -/
def center (i : Fin 16) : ℝ := (node i.val + node (i.val + 1)) / 2

def tangent7 (c t : ℝ) : ℝ := (8 * c - 7 * t) / c ^ 8
def tangent8 (c t : ℝ) : ℝ := (9 * c - 8 * t) / c ^ 9

def lower0 (i : Fin 16) (t : ℝ) : ℝ :=
  density i (16 * (t - 1) - (i.val : ℝ)) * tangent7 (center i) t

def lower1 (i : Fin 16) (t : ℝ) : ℝ :=
  density i (16 * (t - 1) - (i.val : ℝ)) * (t - 1) * tangent8 (center i) t

/-- Exact moments of the two rational polynomial lower weights. -/
def mass0 (i : Fin 16) : ℝ := (1 / 16 : ℝ) *
  (∑ j : Fin 7, deficitCoefficient i j *
    ((8 * center i - 7 * node i.val) * moment j 0 - (7 / 16) * moment j 1)) /
      (center i) ^ 8

def mass1 (i : Fin 16) : ℝ := (1 / 16 : ℝ) *
  (∑ j : Fin 7, deficitCoefficient i j *
    (((node i.val - 1) * (9 * center i - 8 * node i.val)) * moment j 0 +
      ((9 * center i - 8 * node i.val) / 16 - (node i.val - 1) / 2) * moment j 1 -
      (1 / 32) * moment j 2)) / (center i) ^ 9

lemma lower0_integral (i : Fin 16) :
    (∫ t : ℝ in node i.val..node (i.val + 1), lower0 i t) = mass0 i := by
  have hs := intervalIntegral.mul_integral_comp_mul_add (f := lower0 i)
    (a := 0) (b := 1) (1 / 16 : ℝ) (node i.val)
  have hnext : (1 / 16 : ℝ) + node i.val = node (i.val + 1) := by
    unfold node; push_cast; ring
  simp only [mul_zero, zero_add, mul_one, hnext] at hs
  rw [← hs]
  have hf : (fun v : ℝ => lower0 i (v / 16 + node i.val)) = fun v =>
      (∑ j : Fin 7, deficitCoefficient i j * (basis j v *
        ((8 * center i - 7 * node i.val) + (-(7 / 16)) * v))) / center i ^ 8 := by
    funext v
    unfold lower0 density tangent7
    rw [show 16 * (v / 16 + node i.val - 1) - (i.val : ℝ) = v by unfold node; ring]
    rw [Finset.sum_mul, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro j _
    ring
  simp only [one_div, inv_mul_eq_div]
  rw [hf, intervalIntegral.integral_div, intervalIntegral.integral_finsetSum]
  · simp_rw [intervalIntegral.integral_const_mul, linear_moment]
    unfold mass0
    simp only [neg_mul, add_neg_eq_sub]
    ring
  · intro j _
    exact (by fun_prop : Continuous _).intervalIntegrable _ _

lemma lower1_integral (i : Fin 16) :
    (∫ t : ℝ in node i.val..node (i.val + 1), lower1 i t) = mass1 i := by
  have hs := intervalIntegral.mul_integral_comp_mul_add (f := lower1 i)
    (a := 0) (b := 1) (1 / 16 : ℝ) (node i.val)
  have hnext : (1 / 16 : ℝ) + node i.val = node (i.val + 1) := by
    unfold node; push_cast; ring
  simp only [mul_zero, zero_add, mul_one, hnext] at hs
  rw [← hs]
  have hf : (fun v : ℝ => lower1 i (v / 16 + node i.val)) = fun v =>
      (∑ j : Fin 7, deficitCoefficient i j * (basis j v *
        ((node i.val - 1) * (9 * center i - 8 * node i.val) +
          ((9 * center i - 8 * node i.val) / 16 - (node i.val - 1) / 2) * v +
          (-(1 / 32)) * v ^ 2))) / center i ^ 9 := by
    funext v
    unfold lower1 density tangent8
    rw [show 16 * (v / 16 + node i.val - 1) - (i.val : ℝ) = v by unfold node; ring]
    rw [Finset.sum_mul, Finset.sum_mul, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro j _
    ring
  simp only [one_div, inv_mul_eq_div]
  rw [hf, intervalIntegral.integral_div, intervalIntegral.integral_finsetSum]
  · simp_rw [intervalIntegral.integral_const_mul, quadratic_moment]
    unfold mass1
    simp only [neg_mul, add_neg_eq_sub]
    ring
  · intro j _
    exact (by fun_prop : Continuous _).intervalIntegrable _ _

/-- Finite rational inequalities, not numerical quadrature. -/
theorem total_mass0 : (23 / 480 : ℝ) ≤ ∑ i : Fin 16, mass0 i := by
  norm_num [mass0, moment, center, node, deficitCoefficient, powerCoefficients,
    coefficients, binomialWeight, Fin.sum_univ_succ]

theorem total_mass1 : (9 / 1000 : ℝ) ≤ ∑ i : Fin 16, mass1 i := by
  norm_num [mass1, moment, center, node, deficitCoefficient, powerCoefficients,
    coefficients, binomialWeight, Fin.sum_univ_succ]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.BernsteinMass
