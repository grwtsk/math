/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Calculus.ContDiff.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.MeasureTheory.Function.LocallyIntegrable
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Compact-support Fourier conditioning at a reflected pair

MSC2020: 28A25, 42A38, 26D15; consumer 11M26, 11M41.

The transform is the literal Lebesgue integral `integral f(t) * exp(I*z*t) dt`.
No replacement Fourier transform or arithmetic Weil form is defined here.
`support_bound` means that f vanishes outside [-A,A] when A is nonnegative.
Integrability of every complex-frequency integrand is proved before subtracting
integrals. The L1 cost is the integral of the complex norm, not its square.

For opposite approximate values at xi ± I*eta, the triangle inequality gives
a lower bound on their separation. The exact exponential factorization and the
support bound give the upper bound `2*sinh(A*abs eta)*integral norm(f)`.
Division occurs only after proving positivity of the denominator. At eta=0 the
nondivided theorem instead shows that the error sum must be at least two.

Source: the supplied research execution mandate, RP-OC-02, collision-conditioning
requirement (2026-11-11); attachment SHA-256
77acba975792729ceaf80d12e3a91bddfd3556a4be88bbcf4f358af48023535f.
Coordination: grwtsk/math#1801. Individual declaration records and the written
argument are in the adjacent FourierCollisionBound.provenance directory.

This is a necessary conditioning estimate, not existence of interpolation in an
admissible test space, a bound for a varying-test infinite tail, or identification
with the pole-inclusive arithmetic Weil form. No RH/GRH hypothesis is used.
SOURCE_PROOF_CANDIDATE: elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED; no novelty claim.
-/

set_option autoImplicit false
noncomputable section
open scoped ContDiff

open MeasureTheory

namespace GRWTSK.MeasureAndIntegration.FourierCollisionBound

private theorem kernel_norm (z : ℂ) (t : ℝ) :
    ‖Complex.exp (Complex.I * z * (t : ℂ))‖ = Real.exp (-z.im * t) := by
  rw [Complex.norm_exp]
  congr 1
  simp [Complex.mul_re, Complex.mul_im]

private theorem integrand_norm_le (f : ℝ → ℂ) (A : ℝ) (z : ℂ)
    (support_bound : ∀ t, A < |t| → f t = 0) (t : ℝ) :
    ‖f t * Complex.exp (Complex.I * z * (t : ℂ))‖ ≤
      ‖f t‖ * Real.exp (A * |z.im|) := by
  by_cases ht : |t| ≤ A
  · rw [norm_mul, kernel_norm]
    apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
    apply Real.exp_le_exp.mpr
    calc
      -z.im * t = -(z.im * t) := by ring
      _ ≤ |z.im * t| := neg_le_abs _
      _ = |z.im| * |t| := abs_mul _ _
      _ ≤ |z.im| * A := mul_le_mul_of_nonneg_left ht (abs_nonneg _)
      _ = A * |z.im| := mul_comm _ _
  · rw [support_bound t (lt_of_not_ge ht)]
    simp

/-- All complex-frequency integrands are integrable for a supported L1 function.
The support hypothesis also covers the empty-support case when A is negative. -/
theorem integrable_fourier_integrand (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume)
    (support_bound : ∀ t, A < |t| → f t = 0) (z : ℂ) :
    Integrable (fun t : ℝ => f t * Complex.exp (Complex.I * z * (t : ℂ))) volume := by
  have hc : Continuous (fun t : ℝ => Complex.exp (Complex.I * z * (t : ℂ))) := by
    fun_prop
  exact (hf.norm.mul_const (Real.exp (A * |z.im|))).mono'
    (hf.aestronglyMeasurable.mul hc.aestronglyMeasurable)
    (Filter.Eventually.of_forall (integrand_norm_le f A z support_bound))

/-- The compact-support Fourier envelope, with its full imaginary displacement. -/
theorem norm_fourier_integral_le (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume)
    (support_bound : ∀ t, A < |t| → f t = 0) (z : ℂ) :
    ‖∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))‖ ≤
      Real.exp (A * |z.im|) * ∫ t : ℝ, ‖f t‖ := by
  have hF := integrable_fourier_integrand f A hf support_bound z
  calc
    ‖∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))‖ ≤
        ∫ t : ℝ, ‖f t * Complex.exp (Complex.I * z * (t : ℂ))‖ :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ, ‖f t‖ * Real.exp (A * |z.im|) :=
      integral_mono hF.norm (hf.norm.mul_const _)
        (integrand_norm_le f A z support_bound)
    _ = Real.exp (A * |z.im|) * ∫ t : ℝ, ‖f t‖ := by
      rw [integral_mul_const]
      ring

private theorem kernel_difference (xi eta t : ℝ) :
    Complex.exp (Complex.I * ((xi : ℂ) + Complex.I * (eta : ℂ)) * (t : ℂ)) -
        Complex.exp (Complex.I * ((xi : ℂ) - Complex.I * (eta : ℂ)) * (t : ℂ)) =
      Complex.exp (Complex.I * (xi : ℂ) * (t : ℂ)) *
        ((Real.exp (-eta * t) - Real.exp (eta * t) : ℝ) : ℂ) := by
  have hp : Complex.I * ((xi : ℂ) + Complex.I * (eta : ℂ)) * (t : ℂ) =
      Complex.I * (xi : ℂ) * (t : ℂ) + ((-eta * t : ℝ) : ℂ) := by
    apply Complex.ext <;> simp [Complex.mul_re, Complex.mul_im] <;> ring
  have hm : Complex.I * ((xi : ℂ) - Complex.I * (eta : ℂ)) * (t : ℂ) =
      Complex.I * (xi : ℂ) * (t : ℂ) + ((eta * t : ℝ) : ℂ) := by
    apply Complex.ext <;> simp [Complex.mul_re, Complex.mul_im] <;> ring
  rw [hp, hm, Complex.exp_add, Complex.exp_add,
    ← Complex.ofReal_exp, ← Complex.ofReal_exp, Complex.ofReal_sub]
  ring

private theorem exp_difference_le (u v : ℝ) (huv : |u| ≤ v) :
    |Real.exp (-u) - Real.exp u| ≤ 2 * Real.sinh v := by
  obtain ⟨hl, hu⟩ := abs_le.mp huv
  have h1 := Real.exp_le_exp.mpr hu
  have h2 := Real.exp_le_exp.mpr hl
  have h3 := Real.exp_le_exp.mpr (show -u ≤ v by linarith)
  have h4 := Real.exp_le_exp.mpr (show -v ≤ -u by linarith)
  rw [Real.sinh_eq, abs_le]
  constructor <;> linarith

/-- The reflected complex kernels have a support-uniform separation bound.
The oscillatory phase has norm one; both nonreal displacements are retained. -/
theorem norm_kernel_difference_le (A xi eta t : ℝ) (ht : |t| ≤ A) :
    ‖Complex.exp (Complex.I * ((xi : ℂ) + Complex.I * (eta : ℂ)) * (t : ℂ)) -
        Complex.exp (Complex.I * ((xi : ℂ) - Complex.I * (eta : ℂ)) * (t : ℂ))‖ ≤
      2 * Real.sinh (A * |eta|) := by
  rw [kernel_difference, norm_mul, kernel_norm]
  simp only [Complex.ofReal_im, neg_zero, zero_mul, Real.exp_zero, one_mul,
    Complex.norm_real, Real.norm_eq_abs]
  rw [neg_mul]
  apply exp_difference_le (eta * t) (A * |eta|)
  calc
    |eta * t| = |eta| * |t| := abs_mul _ _
    _ ≤ |eta| * A := mul_le_mul_of_nonneg_left ht (abs_nonneg _)
    _ = A * |eta| := mul_comm _ _

/-- Separation of actual Fourier integrals, not freely assignable evaluations. -/
theorem norm_fourier_difference_le (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume)
    (support_bound : ∀ t, A < |t| → f t = 0) (xi eta : ℝ) :
    ‖(∫ t : ℝ, f t *
        Complex.exp (Complex.I * ((xi : ℂ) + Complex.I * (eta : ℂ)) * (t : ℂ))) -
      (∫ t : ℝ, f t *
        Complex.exp (Complex.I * ((xi : ℂ) - Complex.I * (eta : ℂ)) * (t : ℂ)))‖ ≤
      (2 * Real.sinh (A * |eta|)) * ∫ t : ℝ, ‖f t‖ := by
  have hp := integrable_fourier_integrand f A hf support_bound
    ((xi : ℂ) + Complex.I * (eta : ℂ))
  have hm := integrable_fourier_integrand f A hf support_bound
    ((xi : ℂ) - Complex.I * (eta : ℂ))
  have hpoint (t : ℝ) :
      ‖f t * Complex.exp (Complex.I * ((xi : ℂ) + Complex.I * (eta : ℂ)) * (t : ℂ)) -
          f t * Complex.exp (Complex.I * ((xi : ℂ) - Complex.I * (eta : ℂ)) * (t : ℂ))‖ ≤
        ‖f t‖ * (2 * Real.sinh (A * |eta|)) := by
    by_cases ht : |t| ≤ A
    · rw [← mul_sub, norm_mul]
      exact mul_le_mul_of_nonneg_left (norm_kernel_difference_le A xi eta t ht)
        (norm_nonneg _)
    · rw [support_bound t (lt_of_not_ge ht)]
      simp
  rw [← integral_sub hp hm]
  calc
    _ ≤ ∫ t : ℝ,
        ‖f t * Complex.exp (Complex.I * ((xi : ℂ) + Complex.I * (eta : ℂ)) * (t : ℂ)) -
          f t * Complex.exp (Complex.I * ((xi : ℂ) - Complex.I * (eta : ℂ)) * (t : ℂ))‖ :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ, ‖f t‖ * (2 * Real.sinh (A * |eta|)) :=
      integral_mono (hp.sub hm).norm (hf.norm.mul_const _) hpoint
    _ = (2 * Real.sinh (A * |eta|)) * ∫ t : ℝ, ‖f t‖ := by
      rw [integral_mul_const]
      ring

private theorem opposite_values_gap (a b : ℂ) (ea eb : ℝ)
    (ha : ‖a - 1‖ ≤ ea) (hb : ‖b + 1‖ ≤ eb) :
    2 - ea - eb ≤ ‖a - b‖ := by
  have h1 := norm_add_le (1 - a) (a - b)
  have h2 := norm_add_le ((1 - a) + (a - b)) (b + 1)
  have heq : (1 - a) + (a - b) + (b + 1) = (2 : ℂ) := by ring
  rw [heq] at h2
  have ha' : ‖1 - a‖ ≤ ea := (norm_sub_rev (1 : ℂ) a).trans_le ha
  norm_num at h2
  linarith

/-- Nondivided collision estimate. It remains meaningful at eta=0 and A=0. -/
theorem interpolation_cost (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume)
    (support_bound : ∀ t, A < |t| → f t = 0) (xi eta ea eb : ℝ)
    (ha : ‖(∫ t : ℝ, f t *
      Complex.exp (Complex.I * ((xi : ℂ) + Complex.I * (eta : ℂ)) * (t : ℂ))) - 1‖ ≤ ea)
    (hb : ‖(∫ t : ℝ, f t *
      Complex.exp (Complex.I * ((xi : ℂ) - Complex.I * (eta : ℂ)) * (t : ℂ))) + 1‖ ≤ eb) :
    2 - ea - eb ≤ (2 * Real.sinh (A * |eta|)) * ∫ t : ℝ, ‖f t‖ :=
  (opposite_values_gap _ _ ea eb ha hb).trans
    (norm_fourier_difference_le f A hf support_bound xi eta)

/-- Positive support width and nonzero displacement justify the division.
The error-sum hypothesis records the nonvacuous, strictly positive numerator. -/
theorem l1_lower_bound (f : ℝ → ℂ) (A : ℝ) (hA : 0 < A)
    (hf : Integrable f volume)
    (support_bound : ∀ t, A < |t| → f t = 0) (xi eta ea eb : ℝ)
    (heta : eta ≠ 0) (hsum : ea + eb < 2)
    (ha : ‖(∫ t : ℝ, f t *
      Complex.exp (Complex.I * ((xi : ℂ) + Complex.I * (eta : ℂ)) * (t : ℂ))) - 1‖ ≤ ea)
    (hb : ‖(∫ t : ℝ, f t *
      Complex.exp (Complex.I * ((xi : ℂ) - Complex.I * (eta : ℂ)) * (t : ℂ))) + 1‖ ≤ eb) :
    0 < (2 - ea - eb) / (2 * Real.sinh (A * |eta|)) ∧
      (2 - ea - eb) / (2 * Real.sinh (A * |eta|)) ≤ ∫ t : ℝ, ‖f t‖ := by
  have harg : 0 < A * |eta| := mul_pos hA (abs_pos.mpr heta)
  have hden : 0 < 2 * Real.sinh (A * |eta|) := by
    rw [Real.sinh_eq]
    have hexp := Real.exp_lt_exp.mpr (show -(A * |eta|) < A * |eta| by linarith)
    linarith
  refine ⟨div_pos (by linarith) hden, ?_⟩
  apply (div_le_iff₀ hden).mpr
  simpa only [mul_comm] using interpolation_cost f A hf support_bound xi eta ea eb ha hb

/-- At a collided pair, opposite interpolation with total error below two is impossible.
No totalized division by zero or assertion of an off-critical arithmetic zero is used. -/
theorem collided_error_sum_ge_two (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume)
    (support_bound : ∀ t, A < |t| → f t = 0) (xi ea eb : ℝ)
    (ha : ‖(∫ t : ℝ, f t * Complex.exp (Complex.I * (xi : ℂ) * (t : ℂ))) - 1‖ ≤ ea)
    (hb : ‖(∫ t : ℝ, f t * Complex.exp (Complex.I * (xi : ℂ) * (t : ℂ))) + 1‖ ≤ eb) :
    2 ≤ ea + eb := by
  have h := interpolation_cost f A hf support_bound xi 0 ea eb
    (by simpa using ha) (by simpa using hb)
  simp only [abs_zero, mul_zero, Real.sinh_zero, zero_mul] at h
  linarith

/-- Application on the actual compact-smooth test domain used by RP-OC-02.
Its existing `WeilNegativeWitness.Admissible` predicate supplies `hf` and `hcompact`.
This supplies the necessary cost, not the interpolation or the arithmetic identity.
Domain migration v2 (2026-11-11): the smooth order is scoped `∞`, not `⊤`.
The adjacent declaration-local v2 record supersedes the old domain description. -/
theorem smooth_l1_lower_bound (f : ℝ → ℂ) (A : ℝ) (hA : 0 < A)
    (hf : ContDiff ℝ ∞ f) (hcompact : HasCompactSupport f)
    (hsupported : ∀ t, t ∉ Set.Icc (-A) A → f t = 0) (xi eta ea eb : ℝ)
    (heta : eta ≠ 0) (hsum : ea + eb < 2)
    (ha : ‖(∫ t : ℝ, f t *
      Complex.exp (Complex.I * ((xi : ℂ) + Complex.I * (eta : ℂ)) * (t : ℂ))) - 1‖ ≤ ea)
    (hb : ‖(∫ t : ℝ, f t *
      Complex.exp (Complex.I * ((xi : ℂ) - Complex.I * (eta : ℂ)) * (t : ℂ))) + 1‖ ≤ eb) :
    0 < (2 - ea - eb) / (2 * Real.sinh (A * |eta|)) ∧
      (2 - ea - eb) / (2 * Real.sinh (A * |eta|)) ≤ ∫ t : ℝ, ‖f t‖ := by
  have hInt : Integrable f volume := hf.continuous.integrable_of_hasCompactSupport hcompact
  have hsupport : ∀ t, A < |t| → f t = 0 := by
    intro t ht
    apply hsupported t
    intro hmem
    exact (not_le_of_gt ht) (abs_le.mpr hmem)
  exact l1_lower_bound f A hA hInt hsupport xi eta ea eb heta hsum ha hb

end GRWTSK.MeasureAndIntegration.FourierCollisionBound
