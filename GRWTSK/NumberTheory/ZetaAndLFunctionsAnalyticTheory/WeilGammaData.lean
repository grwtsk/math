/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import Mathlib.NumberTheory.LSeries.DirichletContinuation
import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma
import Mathlib.Analysis.Real.Pi.Bounds

set_option autoImplicit false
noncomputable section

/-!
# The gamma data of the Weil sine source

The parity, kernel, and constant are the original declarations from
`WeilOddRootProjection` at grwtsk/math 3f0aeba8431abc1322bf3453a38aeb0847a5709e.
The source and its fixed-window conductor comparison share these declarations.

The two digamma constants follow from duplication at 1/4 and reflection at
1/4, with cotangent of pi/4 equal to one. Mathlib's real derivative of Gamma
is compared with the complex logarithmic derivative on positive real inputs.
These are special-value identities of the actual gamma factor. The prime and
pole terms remain separate. NIST DLMF §5.4(ii) gives the standard special
values and §5.5 gives the reflection and duplication formulas.
Independent analytical review and novelty assessment are pending.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection

variable {q : ℕ}

def gammaParity (χ : DirichletCharacter ℂ q) : ℕ := by
  classical
  exact if χ (-1) = 1 then 0 else 1

def parityKernel (a : ℕ) (r : ℝ) : ℝ :=
  Real.exp (-((a : ℝ) + 1 / 2) * r) / (1 - Real.exp (-2 * r))

/-- The genuine parity-dependent gamma kernel has the same positive majorant.
This bound does not assert positivity of the completed arithmetic form. -/
theorem parityKernel_le_base (a : ℕ) {r : ℝ} (hr : 0 < r) :
    parityKernel a r ≤ parityKernel 0 r := by
  have he : Real.exp (-2 * r) < 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  unfold parityKernel
  apply div_le_div_of_nonneg_right _ (sub_nonneg.mpr he.le)
  apply Real.exp_le_exp.mpr
  simp only [Nat.cast_zero, zero_add]
  nlinarith [mul_nonneg (Nat.cast_nonneg a) hr.le]

/-- Real digamma on a positive argument, expressed using the actual Gamma.
Only a=0,1 is used in the intended source interpretation. -/
def gammaConstant (q a : ℕ) : ℝ :=
  Real.log ((q : ℝ) / Real.pi) +
    deriv Real.Gamma (1 / 4 + (a : ℝ) / 2) / Real.Gamma (1 / 4 + (a : ℝ) / 2)

private theorem digamma_quarters :
    (Complex.digamma (1 / 4)).re =
      -Real.eulerMascheroniConstant - Real.pi / 2 - 3 * Real.log 2 ∧
    (Complex.digamma (3 / 4)).re =
      -Real.eulerMascheroniConstant + Real.pi / 2 - 3 * Real.log 2 := by
  have hnoninteger (n : ℤ) : (1 / 4 : ℂ) ≠ n := by
    intro h
    have hr := congrArg Complex.re h
    norm_num at hr
    have hpos : 0 < n := by exact_mod_cast (show (0 : ℝ) < n by linarith)
    have hn : (1 : ℝ) ≤ n := by exact_mod_cast (show 1 ≤ n by omega)
    linarith
  have hpole (n : ℕ) : 2 * (1 / 4 : ℂ) ≠ -(n : ℂ) := by
    intro h
    have hr := congrArg Complex.re h
    norm_num at hr
    linarith [Nat.cast_nonneg (α := ℝ) n]
  have hcot : Complex.cot ((Real.pi : ℂ) * (1 / 4 : ℂ)) = 1 := by
    rw [show (Real.pi : ℂ) * (1 / 4 : ℂ) = ((Real.pi / 4 : ℝ) : ℂ) by push_cast; ring,
      ← Complex.ofReal_cot, Real.cot_eq_cos_div_sin, Real.cos_pi_div_four, Real.sin_pi_div_four,
      div_self (by positivity), Complex.ofReal_one]
  have hreflection := Complex.digamma_one_sub hnoninteger
  rw [show (1 - (1 / 4) : ℂ) = 3 / 4 by norm_num, hcot, mul_one] at hreflection
  have hduplicate := Complex.digamma_two_mul hpole
  rw [show (2 * (1 / 4) : ℂ) = 1 / 2 by norm_num,
      show ((1 / 4) + 1 / 2 : ℂ) = 3 / 4 by norm_num, Complex.digamma_one_half] at hduplicate
  have hr := congrArg Complex.re hreflection
  have hd := congrArg Complex.re hduplicate
  have hlog : (Complex.log 2).re = Real.log 2 := by
    simpa only [Complex.ofReal_ofNat] using Complex.log_ofReal_re 2
  norm_num [Complex.add_re, Complex.sub_re, Complex.neg_re, Complex.mul_re,
    hlog] at hr hd
  constructor <;> linarith

/-- The real Gamma logarithmic derivative is the real part of the
actual complex digamma at positive real arguments. -/
theorem real_digamma_eq {x : ℝ} (hx : 0 < x) :
    deriv Real.Gamma x / Real.Gamma x = (Complex.digamma (x : ℂ)).re := by
  have hd := Complex.differentiableAt_Gamma (x : ℂ) (by
    intro n h
    have hr := congrArg Complex.re h
    simp only [Complex.ofReal_re, Complex.neg_re, Complex.natCast_re] at hr
    linarith [Nat.cast_nonneg (α := ℝ) n])
  have hderiv : deriv Real.Gamma x = (deriv Complex.Gamma (x : ℂ)).re := by
    simpa only [Complex.Gamma_ofReal, Complex.ofReal_re] using
      hd.hasDerivAt.real_of_complex.deriv
  rw [Complex.digamma_def, logDeriv_apply, Complex.Gamma_ofReal, hderiv]
  simp

/-- The two actual parity constants, with the conductor separated from the archimedean value. -/
theorem gammaConstant_lower (q : ℕ) (hq : 0 < q) (a : ℕ) (ha : a ≤ 1) :
    Real.log (q : ℝ) - 6 ≤ gammaConstant q a := by
  have hqR : (0 : ℝ) < q := by exact_mod_cast hq
  have hlogpi : Real.log Real.pi ≤ 2 * Real.log 2 := by
    have h := Real.log_le_log Real.pi_pos Real.pi_lt_four.le
    have hfour : Real.log 4 = 2 * Real.log 2 := by
      rw [show (4 : ℝ) = 2 * 2 by norm_num, Real.log_mul (by norm_num) (by norm_num)]
      ring
    rwa [hfour] at h
  have hpi := Real.pi_lt_d2
  have hEuler := Real.eulerMascheroniConstant_lt_two_thirds
  have hlogtwo := Real.log_two_lt_d9
  have hparity : a = 0 ∨ a = 1 := by omega
  unfold gammaConstant
  rw [Real.log_div hqR.ne' Real.pi_pos.ne', real_digamma_eq (by positivity)]
  rcases hparity with rfl | rfl
  · norm_num only [Nat.cast_zero, zero_div, add_zero, Complex.ofReal_div, Complex.ofReal_one,
      Complex.ofReal_ofNat]
    linarith [digamma_quarters.1]
  · have harg : ((1 / 4 + ((1 : ℕ) : ℝ) / 2 : ℝ) : ℂ) = 3 / 4 := by
      push_cast
      norm_num
    rw [harg, digamma_quarters.2]
    linarith [Real.pi_pos]

/-- The exact unshifted zeta gamma constant in elementary terms. -/
theorem gammaConstant_one_zero_eq :
    gammaConstant 1 0 = -Real.log Real.pi - Real.eulerMascheroniConstant - Real.pi/2 -
      3 * Real.log 2 := by
  unfold gammaConstant
  rw [Real.log_div (by norm_num) Real.pi_pos.ne', real_digamma_eq (by positivity)]
  norm_num only [Nat.cast_one, Real.log_one, zero_sub, Nat.cast_zero, zero_div, add_zero,
    Complex.ofReal_div, Complex.ofReal_one, Complex.ofReal_ofNat, Nat.cast_ofNat]
  linarith [digamma_quarters.1]

/-- An outward lower bound for the unshifted zeta gamma constant. The
logarithm of `π` is bounded using `π < (4/3)^4`. -/
theorem gammaConstant_one_zero_ge : -(11 / 2 : ℝ) ≤ gammaConstant 1 0 := by
  have hpi := Real.pi_lt_d2
  have hlogpi := Real.log_le_log Real.pi_pos
    (show Real.pi ≤ (4/3 : ℝ) ^ (4 : ℕ) by linarith)
  rw [Real.log_pow, Real.log_div (by norm_num) (by norm_num), Real.log_four_eq] at hlogpi
  have hEuler := Real.eulerMascheroniConstant_lt_two_thirds
  have hlogtwo := Real.log_two_lt_d9
  have hlogthree := Real.log_three_gt_d9
  rw [gammaConstant_one_zero_eq]
  norm_num only [Nat.cast_ofNat] at hlogpi
  linarith

theorem gammaParity_le_one (χ : DirichletCharacter ℂ q) : gammaParity χ ≤ 1 := by
  unfold gammaParity
  split_ifs <;> decide

/-- The parity in the arithmetic kernel is the parity in Mathlib's gamma factor. -/
theorem gammaFactor_eq_gammaParity (χ : DirichletCharacter ℂ q) (s : ℂ) :
    χ.gammaFactor s = Complex.Gammaℝ (s + (gammaParity χ : ℂ)) := by
  classical
  unfold DirichletCharacter.gammaFactor DirichletCharacter.Even gammaParity
  split_ifs <;> simp

end GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
