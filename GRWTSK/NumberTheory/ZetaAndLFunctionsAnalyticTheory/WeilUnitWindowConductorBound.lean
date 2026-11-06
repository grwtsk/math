/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowPrimeNorm

/-!
# Primitive conductor bound for the literal unit window

The norm of the complex correlation is bounded by the real correlation of
the pointwise norm. This preserves the full prime-power inventory and lets
the supported real row estimate pay the literal signed character term.
Reflection compares the two gamma constants at the same conductor. The
lower constant and the rational exponential comparison at `17/2` pay the
prime cost of three when the actual primitive conductor is at least 5000.

The theorem concerns the arithmetic value on the stated complex `L²` and
gamma-energy domain. The completed Dirichlet explicit formula and its test
criterion remain separate. Independent analytical review is pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowConductorBound

open LowSchur OddRootProjection SourcePrimeCorrelation CharacterWindow

/-- The same unit-window row bound holds for the literal complex character
correlations after taking absolute values. -/
theorem abs_twistedPrime_one_le_three {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-1 : ℝ) 1 → f t = 0) :
    |twistedPrime 1 χ (fun n => correlation f (Real.log (n : ℝ)))| ≤ 3 * energy f := by
  let g : ℝ → ℝ := fun t => ‖f t‖
  let C (n : ℕ) : ℂ := correlation f (Real.log (n : ℝ))
  have hsNorm : ∀ᵐ t : ℝ, t ∉ Icc (-1 : ℝ) 1 → g t = 0 := by
    filter_upwards [hs] with t ht hnot
    simp [g, ht hnot]
  have hterm (n : ℕ) : |(conj (χ n) * C n).re| ≤ ∫ t : ℝ, g t * g (t + Real.log n) := by
    calc
      _ ≤ ‖conj (χ n) * C n‖ := Complex.abs_re_le_norm _
      _ = ‖χ n‖ * ‖C n‖ := by rw [norm_mul]; simp
      _ ≤ ‖C n‖ := mul_le_of_le_one_left (norm_nonneg _) (χ.norm_le_one n)
      _ ≤ _ := by
        simpa only [C, g, correlation, norm_mul, Complex.norm_conj] using
          (norm_integral_le_integral_norm (fun t : ℝ => conj (f t) * f (t + Real.log n)))
  change |twistedPrime 1 χ C| ≤ _
  calc
    _ ≤ 2 * ∑ n ∈ activePrimePowers 1, |primeWeight n * (conj (χ n) * C n).re| := by
      rw [twistedPrime, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
      exact mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ OddSineForm.primeEnergy 1 g := by
      unfold OddSineForm.primeEnergy
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      apply Finset.sum_le_sum
      intro n _
      rw [abs_mul, abs_of_nonneg (primeWeight_nonneg n)]
      exact mul_le_mul_of_nonneg_left (hterm n) (primeWeight_nonneg n)
    _ ≤ |OddSineForm.primeEnergy 1 g| := le_abs_self _
    _ ≤ _ := UnitWindowPrimeNorm.abs_primeEnergy_one_le_three hf.norm hsNorm

private theorem digamma_quarters_difference :
    (Complex.digamma (3 / 4)).re = (Complex.digamma (1 / 4)).re + Real.pi := by
  have hnoninteger (n : ℤ) : (1 / 4 : ℂ) ≠ n := by
    intro h
    have hr := congrArg Complex.re h
    norm_num at hr
    have hpos : 0 < n := by exact_mod_cast (show (0 : ℝ) < n by linarith)
    have hn : (1 : ℝ) ≤ n := by exact_mod_cast (show 1 ≤ n by omega)
    linarith
  have hcot : Complex.cot ((Real.pi : ℂ) * (1 / 4 : ℂ)) = 1 := by
    rw [show (Real.pi : ℂ) * (1 / 4 : ℂ) = ((Real.pi / 4 : ℝ) : ℂ) by push_cast; ring,
      ← Complex.ofReal_cot, Real.cot_eq_cos_div_sin, Real.cos_pi_div_four, Real.sin_pi_div_four,
      div_self (by positivity), Complex.ofReal_one]
  have hreflection := Complex.digamma_one_sub hnoninteger
  rw [show (1 - (1 / 4) : ℂ) = 3 / 4 by norm_num, hcot, mul_one] at hreflection
  simpa only [Complex.add_re, Complex.ofReal_re] using congrArg Complex.re hreflection

private theorem gammaConstant_ge_log_sub (q a : ℕ) (hq : 0 < q) (ha : a ≤ 1) :
    Real.log (q : ℝ) - 11 / 2 ≤ gammaConstant q a := by
  have hqR : 0 < (q : ℝ) := by exact_mod_cast hq
  have hzero : gammaConstant q 0 = Real.log q + gammaConstant 1 0 := by
    unfold gammaConstant
    rw [Nat.cast_one, Real.log_div hqR.ne' Real.pi_pos.ne',
      Real.log_div one_ne_zero Real.pi_pos.ne', Real.log_one]
    ring
  have hparity : gammaConstant q 0 ≤ gammaConstant q a := by
    rcases (show a = 0 ∨ a = 1 by omega) with rfl | rfl
    · rfl
    · unfold gammaConstant
      rw [real_digamma_eq (by positivity), real_digamma_eq (by positivity)]
      push_cast
      norm_num at *
      linarith [digamma_quarters_difference, Real.pi_pos]
  have hbase := gammaConstant_one_zero_ge
  linarith only [hzero, hparity, hbase]

private theorem log_conductor_ge {q : ℕ} (hq : 5000 ≤ q) : (17 / 2 : ℝ) ≤ Real.log q := by
  have hqR : (5000 : ℝ) ≤ q := by exact_mod_cast hq
  apply (Real.le_log_iff_exp_le (by linarith : (0 : ℝ) < q)).2
  apply le_trans _ hqR
  apply le_of_pow_le_pow_left₀ (by decide : 2 ≠ 0) (by norm_num : (0 : ℝ) ≤ 5000)
  rw [← Real.exp_nat_mul,
    show (2 : ℕ) * (17 / 2 : ℝ) = (17 : ℕ) * (1 : ℝ) by norm_num, Real.exp_nat_mul]
  exact (pow_le_pow_left₀ (Real.exp_nonneg _) Real.exp_one_lt_d9.le 17).trans (by norm_num)

/-- The literal arithmetic value is nonnegative at radius one for every
primitive nonprincipal character whose actual conductor is at least 5000. -/
theorem primitiveArithmeticValue_nonneg_of_conductor_ge_5000 {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hnp : χ ≠ 1) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) (hs : ∀ᵐ t : ℝ, t ∉ Icc (-1 : ℝ) 1 → f t = 0)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity χ) f) (Ioi 0))
    (hc : 5000 ≤ χ.conductor) : 0 ≤ primitiveArithmeticValue χ hp hnp 1 f := by
  have hq : 5000 ≤ q := (show χ.conductor = q from hp) ▸ hc
  have hgamma := gammaConstant_ge_log_sub q (gammaParity χ) (by omega) (gammaParity_le_one χ)
  have hcost : (3 : ℝ) ≤ gammaConstant q (gammaParity χ) := by linarith [log_conductor_ge hq]
  have henergy : 0 ≤ energy f := integral_nonneg (fun _ => sq_nonneg _)
  have harch0 : 0 ≤ ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r := by
    have hzero : Integrable (fun _ : ℝ => (0 : ℝ)) (volume.restrict (Ioi 0)) :=
      integrable_zero _ _ _
    have hpoint : ∀ᵐ r ∂volume.restrict (Ioi (0 : ℝ)),
        0 ≤ gammaCorrectionDensity (gammaParity χ) f r := by
      filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
      have he : Real.exp (-2 * r) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith [show 0 < r from hr])
      exact mul_nonneg (div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr he))
        (integral_nonneg (fun _ => sq_nonneg _))
    simpa using integral_mono_ae hzero harch hpoint
  have hprime := (le_abs_self _).trans (abs_twistedPrime_one_le_three χ hf hs)
  have hpay := mul_le_mul_of_nonneg_right hcost henergy
  unfold primitiveArithmeticValue
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowConductorBound
