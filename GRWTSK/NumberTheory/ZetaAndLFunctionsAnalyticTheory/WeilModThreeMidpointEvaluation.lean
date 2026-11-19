/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.CenteredMidpointQuadrature
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSmallCharacterPhases

/-!
# Curvature-controlled evaluation of the original modulus-three bump

MSC2020: 11M26 (primary), 11M41, 65D30, 65G20.
Retain the original oddExpBump, correlation, gamma correction, prime inventory
and primitiveArithmeticValue. Flat-glue differentiation supplies an actual
whole-line second derivative bound, including the support endpoints.

The adjacent note derives and executes outward dyadic interval arithmetic for
one fixed test. The last formal theorem deliberately retains four numerical
component bounds: that external calculation has NOT become a closed Lean proof.
No claim of all-test positivity, conductor-one transfer, RH or GRH is made.

WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Lean parsing, elaboration, exact types, builds, kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.BumpMidpoint

open SourcePrimeCorrelation OddRootProjection CharacterWindow DirichletStageChain
open SmallCharacterPhases
open GRWTSK.MeasureAndIntegration.ExponentialBumpCells
open GRWTSK.MeasureAndIntegration.CenteredMidpointQuadrature

private def glueMoment (k : ℕ) (s : ℝ) : ℝ := s⁻¹ ^ k * expNegInvGlue s

/-- BMQ-1. Exponential flatness controls every inverse-gap power, at and outside
zero as well as inside the positive branch. This is not a finite sampling bound. -/
theorem abs_inv_pow_mul_glue_le_factorial (k : ℕ) (s : ℝ) :
    |s⁻¹ ^ k * expNegInvGlue s| ≤ (k.factorial : ℝ) := by
  by_cases hs : s ≤ 0
  · simp [expNegInvGlue.zero_of_nonpos hs]
  · have hpos : 0 < s := lt_of_not_ge hs
    have hpow := Real.pow_div_factorial_le_exp (inv_nonneg.mpr hpos.le) k
    have hfact : (0 : ℝ) < k.factorial := by positivity
    rw [div_le_iff₀ hfact] at hpow
    rw [abs_of_nonneg (mul_nonneg (pow_nonneg (inv_nonneg.mpr hpos.le) _) (expNegInvGlue.nonneg _))]
    simp only [expNegInvGlue, if_neg hs, Real.exp_neg, ← div_eq_mul_inv]
    exact (div_le_iff₀ (Real.exp_pos _)).mpr (by simpa only [mul_comm] using hpow)

private theorem hasDerivAt_glue (s : ℝ) :
    HasDerivAt expNegInvGlue (glueMoment 2 s) s := by
  simpa [glueMoment] using
    expNegInvGlue.hasDerivAt_polynomial_eval_inv_mul (1 : Polynomial ℝ) s

private theorem hasDerivAt_glueMoment_two (s : ℝ) :
    HasDerivAt (glueMoment 2) (glueMoment 4 s - 2 * glueMoment 3 s) s := by
  have h := expNegInvGlue.hasDerivAt_polynomial_eval_inv_mul
    (Polynomial.X ^ 2 : Polynomial ℝ) s
  convert h using 1 <;> simp [glueMoment] <;> ring

/-- BMQ-2. Differentiate the actual flat formula, not a singular interior-only
expression. The equality is valid at both support endpoints as well. -/
theorem hasDerivAt_deriv_oddExpBump (T t : ℝ) :
    HasDerivAt (deriv (oddExpBump T))
      (-6 * t * ((T ^ 2 - t ^ 2)⁻¹ ^ 2 * expNegInvGlue (T ^ 2 - t ^ 2)) -
        8 * t ^ 3 * ((T ^ 2 - t ^ 2)⁻¹ ^ 3 * expNegInvGlue (T ^ 2 - t ^ 2)) +
        4 * t ^ 3 * ((T ^ 2 - t ^ 2)⁻¹ ^ 4 * expNegInvGlue (T ^ 2 - t ^ 2))) t := by
  have hid : deriv (oddExpBump T) = fun u =>
      expNegInvGlue (T ^ 2 - u ^ 2) - 2 * u ^ 2 * glueMoment 2 (T ^ 2 - u ^ 2) := by
    funext u
    exact (hasDerivAt_oddExpBump T u).deriv
  rw [hid]
  have hs : HasDerivAt (fun u : ℝ => T ^ 2 - u ^ 2) (-2 * t) t := by
    convert (hasDerivAt_const t (T ^ 2)).sub ((hasDerivAt_id t).pow 2) using 1 <;>
      norm_num <;> ring
  have hg := (hasDerivAt_glue (T ^ 2 - t ^ 2)).comp t hs
  have hp := (hasDerivAt_glueMoment_two (T ^ 2 - t ^ 2)).comp t hs
  convert hg.sub ((((hasDerivAt_id t).pow 2).const_mul 2).mul hp) using 1 <;>
    dsimp [glueMoment] <;> ring

/-- BMQ-3. A conservative GLOBAL curvature constant for the unit-radius test. -/
theorem abs_iteratedDeriv_two_unit_bump_le (t : ℝ) :
    |iteratedDeriv 2 (oddExpBump 1) t| ≤ 156 := by
  rw [show (2 : ℕ) = 1 + 1 by rfl, iteratedDeriv_succ, iteratedDeriv_one,
    (hasDerivAt_deriv_oddExpBump 1 t).deriv]
  simp only [one_pow]
  change |-6 * t * glueMoment 2 (1 - t ^ 2) -
    8 * t ^ 3 * glueMoment 3 (1 - t ^ 2) +
    4 * t ^ 3 * glueMoment 4 (1 - t ^ 2)| ≤ 156
  by_cases ht : |t| ≤ 1
  · have ht3 : |t| ^ 3 ≤ 1 := pow_le_one₀ (abs_nonneg _) ht
    have h2 := abs_inv_pow_mul_glue_le_factorial 2 (1 - t ^ 2)
    have h3 := abs_inv_pow_mul_glue_le_factorial 3 (1 - t ^ 2)
    have h4 := abs_inv_pow_mul_glue_le_factorial 4 (1 - t ^ 2)
    norm_num only [Nat.factorial, Nat.cast_ofNat] at h2 h3 h4
    have hA : |-6 * t * glueMoment 2 (1 - t ^ 2)| ≤ 12 := by
      simp only [abs_mul, abs_neg, abs_ofNat]
      change 6 * |t| * |(1 - t ^ 2)⁻¹ ^ 2 * expNegInvGlue (1 - t ^ 2)| ≤ 12
      calc
        _ ≤ 6 * 1 * 2 := by gcongr <;> assumption
        _ = 12 := by norm_num
    have hB : |8 * t ^ 3 * glueMoment 3 (1 - t ^ 2)| ≤ 48 := by
      simp only [abs_mul, abs_pow, abs_ofNat]
      calc
        _ ≤ 8 * 1 * 6 := by dsimp [glueMoment]; gcongr <;> assumption
        _ = 48 := by norm_num
    have hC : |4 * t ^ 3 * glueMoment 4 (1 - t ^ 2)| ≤ 96 := by
      simp only [abs_mul, abs_pow, abs_ofNat]
      calc
        _ ≤ 4 * 1 * 24 := by dsimp [glueMoment]; gcongr <;> assumption
        _ = 96 := by norm_num
    exact (abs_add _ _).trans ((add_le_add (abs_sub_le _ _) le_rfl).trans
      (by change _ ≤ 156; linarith [hA, hB, hC]))
  · have hsq : (1 : ℝ) ≤ t ^ 2 := by
      have h := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 1) (le_of_not_ge ht) 2
      simpa only [sq_abs, one_pow] using h
    simp [glueMoment, expNegInvGlue.zero_of_nonpos (sub_nonpos.mpr hsq)]

private theorem unit_bump_deriv_bound (t : ℝ) : |deriv (oddExpBump 1) t| ≤ 5 := by
  by_cases ht : |t| ≤ 1
  · simpa [bumpDerivativeBound] using abs_deriv_oddExpBump_le 1 (by norm_num) t ht
  · have hsq : (1 : ℝ) ≤ t ^ 2 := by
      have h := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 1) (le_of_not_ge ht) 2
      simpa only [sq_abs, one_pow] using h
    rw [(hasDerivAt_oddExpBump 1 t).deriv]
    simp only [one_pow]
    simp [expNegInvGlue.zero_of_nonpos (sub_nonpos.mpr hsq)]

private theorem unit_bump_bound (t : ℝ) : |oddExpBump 1 t| ≤ 1 := by
  simpa only [liftReal, Complex.norm_real, Real.norm_eq_abs] using
    norm_lift_oddExpBump_le 1 (by norm_num) t

/-- BMQ-4. The bound is uniform in the REAL lag, including support crossings.
The mixed derivative term 2*f'(t)*f'(t+r) is retained. -/
theorem abs_iteratedDeriv_two_unit_bump_product_le (r t : ℝ) :
    |iteratedDeriv 2 (fun u => oddExpBump 1 u * oddExpBump 1 (u + r)) t| ≤ 362 := by
  let f := oddExpBump 1
  have hf (u : ℝ) : HasDerivAt f (deriv f u) u :=
    (hasDerivAt_oddExpBump 1 u).differentiableAt.hasDerivAt
  have hd (u : ℝ) : HasDerivAt (deriv f) (deriv (deriv f) u) u :=
    (hasDerivAt_deriv_oddExpBump 1 u).differentiableAt.hasDerivAt
  have hshift (u : ℝ) : HasDerivAt (fun v => f (v + r)) (deriv f (u + r)) u := by
    simpa only [mul_one] using (hf (u + r)).comp u ((hasDerivAt_id u).add_const r)
  have hdshift (u : ℝ) : HasDerivAt (fun v => deriv f (v + r))
      (deriv (deriv f) (u + r)) u := by
    simpa only [mul_one] using (hd (u + r)).comp u ((hasDerivAt_id u).add_const r)
  have hfirst : deriv (fun u => f u * f (u + r)) =
      fun u => deriv f u * f (u + r) + f u * deriv f (u + r) := by
    funext u
    exact ((hf u).mul (hshift u)).deriv
  have hsecond : HasDerivAt (fun u => deriv f u * f (u + r) + f u * deriv f (u + r))
      (deriv (deriv f) t * f (t + r) + 2 * deriv f t * deriv f (t + r) +
        f t * deriv (deriv f) (t + r)) t := by
    convert ((hd t).mul (hshift t)).add ((hf t).mul (hdshift t)) using 1 <;> ring
  change |iteratedDeriv 2 (fun u => f u * f (u + r)) t| ≤ 362
  rw [show (2 : ℕ) = 1 + 1 by rfl, iteratedDeriv_succ, iteratedDeriv_one,
    hfirst, hsecond.deriv]
  have hb (u : ℝ) : |f u| ≤ 1 := unit_bump_bound u
  have hd1 (u : ℝ) : |deriv f u| ≤ 5 := unit_bump_deriv_bound u
  have hd2 (u : ℝ) : |deriv (deriv f) u| ≤ 156 := by
    simpa only [show (2 : ℕ) = 1 + 1 by rfl, iteratedDeriv_succ, iteratedDeriv_one, f]
      using abs_iteratedDeriv_two_unit_bump_le u
  calc
    _ ≤ |deriv (deriv f) t * f (t + r)| +
        |2 * deriv f t * deriv f (t + r)| + |f t * deriv (deriv f) (t + r)| :=
      (abs_add _ _).trans (add_le_add_right (abs_add _ _) _)
    _ ≤ 156 * 1 + 2 * 5 * 5 + 1 * 156 := by
      simp only [abs_mul, abs_ofNat]
      gcongr <;> first | exact hb _ | exact hd1 _ | exact hd2 _
    _ = 362 := by norm_num

/-- BMQ-5. The actual real correlation is enclosed with the same smooth test.
The caller supplies bounded product samples; the curvature premise is discharged.
The note constructs these samples by outward finite dyadic arithmetic. -/
theorem real_correlation_midpoint_error (r : ℝ) (x v e : ℕ → ℝ) (N : ℕ)
    (hx0 : x 0 = -1) (hxN : x N = 1) (hx : ∀ j < N, x j ≤ x (j + 1))
    (hv : ∀ j < N,
      |oddExpBump 1 ((x j + x (j + 1)) / 2) *
        oddExpBump 1 ((x j + x (j + 1)) / 2 + r) - v j| ≤ e j) :
    |(correlation (liftReal (oddExpBump 1)) r).re -
      ∑ j ∈ Finset.range N, (x (j + 1) - x j) * v j| ≤
      ∑ j ∈ Finset.range N,
        (362 * (x (j + 1) - x j) ^ 3 / 24 + e j * (x (j + 1) - x j)) := by
  let f := oddExpBump 1
  let F := fun t => f t * f (t + r)
  have hF : ContDiff ℝ 2 F := by
    exact ((oddExpBump_contDiff 1).mul
      ((oddExpBump_contDiff 1).comp (contDiff_id.add contDiff_const))).of_le (by simp)
  have hc : Continuous (liftReal f) := Complex.continuous_ofReal.comp (oddExpBump_contDiff 1).continuous
  have hs : HasCompactSupport (liftReal f) :=
    (oddExpBump_hasCompactSupport 1 (by norm_num)).comp_left Complex.ofReal_zero
  have hf2 : MemLp (liftReal f) 2 volume := hc.memLp_of_hasCompactSupport hs
  have hid : (correlation (liftReal f) r).re = ∫ t : ℝ, F t := by
    rw [correlation, integral_re (integrable_correlation_integrand hf2 r)]
    apply integral_congr_ae
    exact Filter.Eventually.of_forall (fun t => by simp [F, liftReal])
  have hsupport : (∫ t in (-1 : ℝ)..1, F t) = ∫ t : ℝ, F t := by
    rw [intervalIntegral.integral_of_le (by norm_num : (-1 : ℝ) ≤ 1),
      ← MeasureTheory.integral_Icc_eq_integral_Ioc]
    apply MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero
    intro t ht
    have ht' : 1 ≤ |t| := by
      by_contra h
      exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h)))
    simp [F, f, oddExpBump_zero_of_le_abs 1 (by norm_num) t ht']
  have h := sum_midpoint_error hF x v e (fun _ => 362) N hx
    (fun j hj t ht => abs_iteratedDeriv_two_unit_bump_product_le r t) hv
  rw [hx0, hxN, hsupport, ← hid] at h
  exact h

/-- BMQ-6. Conditional formal return for the fixed positive test. The four
numerical premises are supplied by the adjacent WRITTEN + EXECUTED calculation,
not by a hidden axiom or an unrun native_decide. This is NOT universal positivity. -/
theorem three_unit_bump_pos_of_component_bounds
    (hE : energy (liftReal (oddExpBump 1)) ≤ (153 / 10000 : ℝ))
    (hc : -(57 / 50 : ℝ) ≤ gammaConstant 3 1)
    (hG : (5359 / 250000 : ℝ) ≤
      ∫ r in (17 / 8192 : ℝ)..(32769 / 8192 : ℝ),
        gammaCorrectionDensity 1 (liftReal (oddExpBump 1)) r)
    (hP : twistedPrime 1 three
      (fun n => correlation (liftReal (oddExpBump 1)) (Real.log (n : ℝ))) ≤
        (8611 / 2500000 : ℝ)) :
    (1 / 2000 : ℝ) <
      primitiveArithmeticValue three three_isPrimitive three_ne_one 1
        (liftReal (oddExpBump 1)) := by
  have hE0 : 0 ≤ energy (liftReal (oddExpBump 1)) :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hmass : -(57 / 50 : ℝ) * (153 / 10000 : ℝ) ≤
      gammaConstant 3 1 * energy (liftReal (oddExpBump 1)) := by
    nlinarith [mul_le_mul_of_nonneg_right hc hE0]
  have h := (primitiveArithmeticValue_oddExpBump_finiteLag_enclosure three
    three_isPrimitive three_ne_one (by norm_num : (0 : ℝ) < 1)
    (by norm_num : (0 : ℝ) < 17 / 8192) (by norm_num : (17 / 8192 : ℝ) ≤ 1)
    (by norm_num : (1 : ℝ) ≤ 32769 / 8192)).1
  dsimp only at h
  simp only [gammaParity_three] at h
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.BumpMidpoint
