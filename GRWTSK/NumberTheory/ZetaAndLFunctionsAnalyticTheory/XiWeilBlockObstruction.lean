import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeHarmonicKernel
import Mathlib.Analysis.Calculus.DSlope
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt

/-!
# The continuous harmonic block profile in Weil's logarithmic variable

At a prime power the usual von Mangoldt weight times this profile gives precisely
the harmonic block coefficient, including its prime-power multiplicity. The profile
vanishes at the origin and is positive elsewhere. Two distinct translates give a
negative quadratic form, ruling out a single translation autocorrelation for this
particular interpolation of the arithmetic coefficients.
-/

open MeasureTheory
open scoped ArithmeticFunction

noncomputable section

namespace GRWTSK.XiWeilBlockObstruction

open GRWTSK.XiPrimeHarmonic

private theorem block_zero_arg (N : ℕ) : block N 0 = 0 := by simp [block]

theorem block_pos {N : ℕ} (hN : N ≠ 0) {s : ℝ} (hs : 0 < s) : 0 < block N s := by
  have hb : 0 < 1 - Real.exp (-s) := sub_pos.mpr (Real.exp_lt_one_iff.mpr (by linarith))
  simp only [block, kernel, two_mul, Finset.sum_range_add, add_sub_cancel_left]
  apply Finset.sum_pos
  · intro i hi
    positivity
  · exact ⟨0, Finset.mem_range.mpr (Nat.pos_of_ne_zero hN)⟩

private theorem hasDerivAt_dilated (N : ℕ) (t : ℝ) :
    HasDerivAt (fun x : ℝ => block N (2*x))
      (((1-Real.exp (-(2*t)))^N * (1-(1-Real.exp (-(2*t)))^N)) * 2) t := by
  simpa [Function.comp_def] using
    (hasDerivAt_block N (2*t)).comp t ((hasDerivAt_id t).const_mul 2)

/-- Continuous divided difference, including the derivative at the origin. -/
def profile (N : ℕ) (t : ℝ) : ℝ :=
  Real.exp (-(3*|t|)/2) * dslope (fun x : ℝ => block N (2*x)) 0 |t|

theorem profile_continuous (N : ℕ) : Continuous (profile N) := by
  have hd : Continuous (dslope (fun x : ℝ => block N (2*x)) 0) := by
    apply continuous_iff_continuousAt.mpr
    intro x
    by_cases hx : x = 0
    · subst x
      exact continuousAt_dslope_same.mpr (hasDerivAt_dilated N 0).differentiableAt
    · exact (continuousAt_dslope_of_ne hx).mpr (hasDerivAt_dilated N x).continuousAt
  exact (Real.continuous_exp.comp (((continuous_const.mul continuous_abs).neg).div_const 2)).mul
    (hd.comp continuous_abs)

@[simp] theorem profile_zero (N : ℕ) (hN : N ≠ 0) : profile N 0 = 0 := by
  simp [profile, (hasDerivAt_dilated N 0).deriv, zero_pow hN]

@[simp] theorem profile_neg (N : ℕ) (t : ℝ) : profile N (-t) = profile N t := by
  simp [profile]

theorem profile_of_ne (N : ℕ) {t : ℝ} (ht : t ≠ 0) :
    profile N t = Real.exp (-(3*|t|)/2) * (block N (2*|t|) / |t|) := by
  simp [profile, dslope_of_ne _ (abs_pos.mpr ht).ne', slope_def_field, block_zero_arg]

theorem profile_pos {N : ℕ} (hN : N ≠ 0) {t : ℝ} (ht : t ≠ 0) : 0 < profile N t := by
  rw [profile_of_ne N ht]
  exact mul_pos (Real.exp_pos _) (div_pos (block_pos hN (by positivity)) (abs_pos.mpr ht))

/-- Matching the explicit-formula arithmetic coefficient at each prime power. -/
theorem vonMangoldt_mul_profile_prime_pow (N : ℕ) {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) :
    Λ (p^k) * Real.exp (-Real.log ((p : ℝ)^k)/2) * profile N (Real.log ((p : ℝ)^k)) =
      block N (2*Real.log ((p : ℝ)^k)) / ((k : ℝ)*((p : ℝ)^k)^2) := by
  have hp' : 1 < (p : ℝ) := by exact_mod_cast hp.one_lt
  have hm := one_lt_pow₀ hp' hk
  have hl := Real.log_pos hm
  have hlog : 0 < Real.log p := Real.log_pos hp'
  have he : Real.exp (-Real.log ((p : ℝ)^k)/2) *
      Real.exp (-(3*Real.log ((p : ℝ)^k))/2) = (((p : ℝ)^k)^2)⁻¹ := by
    rw [← Real.exp_add, show -Real.log ((p : ℝ)^k)/2 + -(3*Real.log ((p : ℝ)^k))/2 =
      -(Real.log ((p : ℝ)^k)+Real.log ((p : ℝ)^k)) by ring,
      Real.exp_neg, Real.exp_add, Real.exp_log (by linarith), pow_two]
  rw [ArithmeticFunction.vonMangoldt_apply_pow hk, ArithmeticFunction.vonMangoldt_apply_prime hp,
    profile_of_ne N hl.ne', abs_of_pos hl]
  rw [show ∀ a b c d : ℝ, a*b*(c*d) = a*(b*c)*d from fun _ _ _ _ => by ring, he]
  rw [Real.log_pow]
  have hk' : (k : ℝ) ≠ 0 := by exact_mod_cast hk
  field_simp [hlog.ne', hk', ne_of_gt (by linarith : 0 < (p : ℝ)^k)]

/-- Quadratic form at centers zero and t with coefficients 1 and minus 1. -/
theorem negative_two_point {N : ℕ} (hN : N ≠ 0) {t : ℝ} (ht : t ≠ 0) :
    profile N (0-0) - profile N (0-t) - profile N (t-0) + profile N (t-t) < 0 := by
  simpa [profile_zero N hN] using
    (show -profile N t - profile N t < 0 by linarith [profile_pos hN ht])

/-- No real square-integrable function realizes this profile as its autocorrelation. -/
theorem not_real_autocorrelation {N : ℕ} (hN : N ≠ 0) (f : ℝ → ℝ)
    (hfi : Integrable (fun x => f x ^ 2)) :
    ¬ ∀ t : ℝ, profile N t = ∫ x : ℝ, f x * f (x+t) := by
  intro h
  have hz : (∫ x : ℝ, f x ^ 2) = 0 := by
    simpa [profile_zero N hN, pow_two] using (h 0).symm
  have hae := (integral_eq_zero_iff_of_nonneg (fun x => sq_nonneg (f x)) hfi).mp hz
  have hzero : (∫ x : ℝ, f x * f (x+1)) = 0 := by
    rw [← integral_zero ℝ]
    apply integral_congr_ae
    filter_upwards [hae] with x hx
    have hx' : f x = 0 := sq_eq_zero_iff.mp hx
    simp [hx']
  exact (profile_pos hN (one_ne_zero : (1 : ℝ) ≠ 0)).ne' ((h 1).trans hzero)

end GRWTSK.XiWeilBlockObstruction
