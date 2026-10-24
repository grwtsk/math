/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Lean and Mathlib retain their original attribution and licenses.
Status: proof source; not elaborated in the pinned environment.
-/
import Mathlib
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.PositiveCoordinates
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.ComplexReadout

/-! # Literal complex Mellin scaling and its source-energy bound

The half-open integer inventory and continuous integral use the original
normalizations. No zero-free region or analytic-return premise is assumed.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.MellinReadout
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.PositiveCoordinates
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.ComplexReadout

/-- The actual derivative with respect to the unit-interval variable. -/
def mellinSlope (s : ℂ) (t : ℝ) : ℂ :=
  (1-s)*mellinTest s t/(1+(t:ℂ))

theorem mellinTest_hasDerivAt (s : ℂ) {t : ℝ} (ht : t ∈ Icc (0:ℝ) 1) :
    HasDerivAt (mellinTest s) (mellinSlope s t) t := by
  have hy : 0 < 1+t := by linarith [ht.1]
  have h := (power_hasDerivAt hy (1-s)).scomp t ((hasDerivAt_id t).const_add 1)
  convert! h using 1
  simp [mellinSlope, mellinTest, power]

theorem mellinTest_continuous (s : ℂ) :
    ContinuousOn (mellinTest s) (Icc (0:ℝ) 1) := by
  intro t ht
  exact (mellinTest_hasDerivAt s ht).continuousAt.continuousWithinAt

theorem mellinSlope_continuous (s : ℂ) :
    ContinuousOn (mellinSlope s) (Icc (0:ℝ) 1) := by
  apply (continuousOn_const.mul (mellinTest_continuous s)).div (by fun_prop)
  intro t ht
  have hy : (0:ℝ) < 1+t := by linarith [ht.1]
  exact_mod_cast ne_of_gt hy

def mellinC1 (s : ℂ) : ComplexTest where
  value := mellinTest s
  slope := mellinSlope s
  slope_continuous := mellinSlope_continuous s
  hasDeriv := fun _ ht => mellinTest_hasDerivAt s ht

theorem mellin_at_zero (s : ℂ) : mellinTest s 0 = 1 := by simp [mellinTest]

theorem mellin_at_one (s : ℂ) : mellinTest s 1 = power 2 (1-s) := by
  norm_num [mellinTest, power]

theorem mellin_norm (s : ℂ) (t : ℝ) :
    ‖mellinTest s t‖ = Real.exp ((1-s.re)*Real.log (1+t)) := by
  simpa [power, mellinTest] using norm_power (1+t) (1-s)

/-- The old Mellin identity goal has an actual source proof here. The source
energy estimate is not a premise of this identity. -/
theorem dirichletBlock_eq_scaled_action {X : ℕ} (hX : 0 < X) (s : ℂ) :
    dirichletBlock X s =
      Complex.exp ((1-s)*(Real.log X : ℂ))*action X (mellinTest s) := by
  have hXr : (0:ℝ) < X := by exact_mod_cast hX
  have hatom (n : ℕ) (hn : n ∈ window X) :
      power (X:ℝ) (1-s)*(coefficient n : ℂ)*mellinTest s (location X n) =
        (mangoldt n : ℂ)*power (n:ℝ) (-s) := by
    have hnr : (0:ℝ) < n := by exact_mod_cast (lt_trans hX (window_lower hn))
    have hloc : 1+location X n = (n:ℝ)/(X:ℝ) := by unfold location; ring
    simpa only [coefficient, mellinTest, hloc, power] using
      atom_scaling hXr hnr (mangoldt n) s
  have hbackground := integral_scaling hXr s
  unfold dirichletBlock action
  change (∑ n ∈ window X, (mangoldt n : ℂ)*power (n:ℝ) (-s)) -
    (∫ u in (X:ℝ)..(2*X:ℝ), power u (-s)) =
      power (X:ℝ) (1-s) *
        ((∑ n ∈ window X, (coefficient n : ℂ)*mellinTest s (location X n)) -
          (∫ t in (0:ℝ)..1, mellinTest s t/(1+(t:ℂ))))
  rw [mul_sub, Finset.mul_sum, hbackground]
  congr 1
  apply Finset.sum_congr rfl
  intro n hn
  simpa only [mul_assoc] using (hatom n hn).symm

/-- The point s=1 is handled without a removable-value convention. -/
theorem block_at_one {X : ℕ} (hX : 0 < X) :
    dirichletBlock X 1 = (mass0 X : ℂ) := by
  rw [dirichletBlock_eq_scaled_action hX]
  simp only [sub_self, zero_mul, Complex.exp_zero, one_mul]
  have hreal : (∫ t in (0:ℝ)..1, (1:ℝ)/(1+t)) = Real.log 2 :=
    GRWTSK.Analysis.RealAnalysis.Integration.UnitIntervalPrimitives.integral_inverse_one_add
  simp only [action, mellinTest, sub_self, zero_mul, Complex.exp_zero, mul_one]
  have hi : (∫ t in (0:ℝ)..1, (1:ℂ)/(1+(t:ℂ))) = (Real.log 2 : ℂ) := by
    have he : (fun t : ℝ => (1:ℂ)/(1+(t:ℂ))) =
        fun t : ℝ => ((1/(1+t):ℝ):ℂ) := by funext t; push_cast; rfl
    rw [he, intervalIntegral.integral_ofReal, hreal]
  rw [hi]
  simp [mass0]

/-- The two boundary moments also record the complete octave Mangoldt mass. -/
theorem mass0_add_mass1 {X : ℕ} (hX : 0 < X) :
    mass0 X+mass1 X =
      (∑ n ∈ window X, mangoldt n)/(X:ℝ)-1 := by
  have hx : (X:ℝ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hX
  have hterm (n : ℕ) (hn : n ∈ window X) :
      coefficient n + coefficient n*location X n = mangoldt n/(X:ℝ) := by
    have hn0 : (n:ℝ) ≠ 0 := by
      exact_mod_cast Nat.ne_of_gt (lt_trans hX (window_lower hn))
    unfold coefficient location
    field_simp [hx, hn0]
    ring
  unfold mass0 mass1
  calc
    _ = (∑ n ∈ window X, (coefficient n + coefficient n * location X n))-1 := by
      rw [Finset.sum_add_distrib]
      ring
    _ = (∑ n ∈ window X, mangoldt n/(X:ℝ))-1 := by
      congr 1
      exact Finset.sum_congr rfl hterm
    _ = _ := by rw [Finset.sum_div]

/-- A compact-parameter majorant; it depends on the test region, not on X. -/
def radiusFactor (M : ℝ) : ℝ := Real.exp ((1+M)*Real.log 2)
def radiusBudget (M : ℝ) : ℝ :=
  1+(radiusFactor M+1)^2+((1+M)*radiusFactor M)^2

theorem radiusBudget_nonneg (M : ℝ) : 0 ≤ radiusBudget M := by
  unfold radiusBudget
  positivity

theorem test_norm_bound {s : ℂ} {M t : ℝ} (hM : 0 ≤ M)
    (hs : ‖s‖ ≤ M) (ht : t ∈ Icc (0:ℝ) 1) :
    ‖mellinTest s t‖ ≤ radiusFactor M := by
  have hlog0 : 0 ≤ Real.log (1+t) := Real.log_nonneg (by linarith [ht.1])
  have hlog2 : Real.log (1+t) ≤ Real.log 2 :=
    Real.log_le_log (by linarith [ht.1]) (by linarith [ht.2])
  have hre : -M ≤ s.re := by
    have h := Complex.abs_re_le_norm s
    have h' := neg_abs_le s.re
    linarith
  rw [mellin_norm]
  apply Real.exp_le_exp.mpr
  calc
    (1-s.re)*Real.log (1+t) ≤ (1+M)*Real.log (1+t) := by gcongr; linarith
    _ ≤ (1+M)*Real.log 2 := mul_le_mul_of_nonneg_left hlog2 (by linarith)

theorem slope_norm_bound {s : ℂ} {M t : ℝ} (hM : 0 ≤ M)
    (hs : ‖s‖ ≤ M) (ht : t ∈ Icc (0:ℝ) 1) :
    ‖mellinSlope s t‖ ≤ (1+M)*radiusFactor M := by
  have hden : ‖(1:ℂ)+(t:ℂ)‖ = 1+t := by
    rw [show (1:ℂ)+(t:ℂ)=((1+t:ℝ):ℂ) by push_cast; rfl,
      Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by linarith [ht.1])]
  have hs' : ‖(1:ℂ)-s‖ ≤ 1+M :=
    (norm_sub_le _ _).trans (by simpa using add_le_add_left hs 1)
  unfold mellinSlope
  rw [norm_div, norm_mul, hden]
  apply (div_le_iff₀ (show 0 < 1+t by linarith [ht.1])).2
  calc
    ‖(1:ℂ)-s‖*‖mellinTest s t‖ ≤ (1+M)*radiusFactor M :=
      mul_le_mul hs' (test_norm_bound hM hs ht) (norm_nonneg _) (by linarith)
    _ ≤ ((1+M)*radiusFactor M)*(1+t) := by
      have ha : 0 ≤ (1+M)*radiusFactor M := by unfold radiusFactor; positivity
      nlinarith [ht.1]

theorem testEnergy_bound {s : ℂ} {M : ℝ} (hM : 0 ≤ M) (hs : ‖s‖ ≤ M) :
    testEnergy (mellinC1 s) ≤ radiusBudget M := by
  have h1 := test_norm_bound hM hs (show (1:ℝ) ∈ Icc 0 1 by norm_num)
  have hdiff : ‖mellinTest s 1-mellinTest s 0‖ ≤ radiusFactor M+1 := by
    apply (norm_sub_le _ _).trans
    simpa [mellin_at_zero] using add_le_add_right h1 1
  have hsq : Integrable (fun t => ‖mellinSlope s t‖^2) unitVolume :=
    ((mellinSlope_continuous s).norm.pow 2).integrableOn_Icc
  have hInt : (∫ t, ‖mellinSlope s t‖^2 ∂unitVolume) ≤
      ((1+M)*radiusFactor M)^2 := by
    calc
      _ ≤ ∫ _ : ℝ, ((1+M)*radiusFactor M)^2 ∂unitVolume := by
        apply integral_mono_ae hsq (integrable_const _)
        filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
        exact pow_le_pow_left₀ (norm_nonneg _) (slope_norm_bound hM hs ht) 2
      _ = _ := by simp
  have hd2 : ‖mellinTest s 1-mellinTest s 0‖^2 ≤ (radiusFactor M+1)^2 :=
    pow_le_pow_left₀ (norm_nonneg _) hdiff 2
  simpa only [testEnergy, mellinC1, mellin_at_zero, norm_one, one_pow,
    radiusBudget] using add_le_add (add_le_add le_rfl hd2) hInt

/-- A complete square-root energy bound, uniform on each bounded parameter set. -/
theorem dirichletBlock_norm_bound {X : ℕ} (hX : 0 < X)
    {s : ℂ} {M : ℝ} (hM : 0 ≤ M) (hs : ‖s‖ ≤ M) :
    ‖dirichletBlock X s‖ ≤
      Real.exp ((1-s.re)*Real.log X)*
        (Real.sqrt (augmentedEnergy X)*Real.sqrt (radiusBudget M)) := by
  rw [dirichletBlock_eq_scaled_action hX, norm_mul]
  have hread := action_norm_le (mellinC1 s) hX
  have hbudget := Real.sqrt_le_sqrt (testEnergy_bound hM hs)
  have hsqrt : ‖action X (mellinTest s)‖ ≤
      Real.sqrt (augmentedEnergy X)*Real.sqrt (radiusBudget M) := by
    exact hread.trans (mul_le_mul_of_nonneg_left hbudget (Real.sqrt_nonneg _))
  have hexp : ‖Complex.exp ((1-s)*(Real.log X:ℂ))‖ =
      Real.exp ((1-s.re)*Real.log X) := by
    simp only [Complex.norm_exp, Complex.mul_re, Complex.sub_re, Complex.one_re,
      Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]
  rw [hexp]
  exact mul_le_mul_of_nonneg_left hsqrt (Real.exp_pos _).le

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.MellinReadout
