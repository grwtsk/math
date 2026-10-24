# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualCenteredPrimePhaseSupportNative02.Variante6f95b81e6dba669a00fb0c1f4db04e379d527ed7772b701e674a17232bae7af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `360e7397b02d810d387236a5990ae3f1b464e6f3` · SHA-256 `e6f95b81e6dba669a00fb0c1f4db04e379d527ed7772b701e674a17232bae7af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualCenteredPrimePhase

/-!
Actual finite positive-coefficient phase disk and its signed support-function upper
bound. The entire original closed inventory and the imaginary Mellin cross-term
remain. The integrated allowance retains both exact FTC endpoints and need not be
bounded uniformly in A. No original residual cap or RH assertion is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualCenteredPrimePhaseSupport
open MeasureTheory Set Complex
open SourceActualCenteredPrimePhase SourceActualEulerPotentialPhase
open SourceActualEulerLogarithmicPrimitive SourceActualInitialPrimeContour
open SourceBumpLaplace

private def coefficient (c : ℝ) (n : ℕ) : ℝ :=
  (ArithmeticFunction.vonMangoldt n / Real.log n) * Real.exp (-c * Real.log n)

private theorem coefficient_nonneg (c : ℝ) (n : ℕ) : 0 ≤ coefficient c n := by
  rcases eq_or_ne n 0 with rfl | hn0
  · simp [coefficient]
  rcases eq_or_ne n 1 with rfl | hn1
  · simp [coefficient]
  have hn : 2 ≤ n := by omega
  exact mul_nonneg (div_nonneg ArithmeticFunction.vonMangoldt_nonneg
    (Real.log_pos (by exact_mod_cast hn)).le) (Real.exp_pos _).le

/-- Literal mass of the complete actual closed logarithmic coefficients. -/
def actualClosedPrimeLogMass (A c : ℝ) : ℝ :=
  (actualClosedPrimeLogPotential A (c : ℂ)).re

private theorem mass_eq_sum (A c : ℝ) :
    actualClosedPrimeLogMass A c =
      ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), coefficient c n := by
  have h := actualClosedPrimeLogPotential_re A c 0
  simpa only [Complex.ofReal_zero, zero_mul, add_zero, Real.cos_zero, mul_one,
    actualClosedPrimeLogMass, coefficient] using h

/-- Finite actual coefficient positivity, including the true zero/unit terms. -/
theorem actualClosedPrimeLogMass_nonneg (A c : ℝ) :
    0 ≤ actualClosedPrimeLogMass A c := by
  rw [mass_eq_sum]
  exact Finset.sum_nonneg fun n _ => coefficient_nonneg c n

private theorem potential_at_real_im (A c : ℝ) :
    (actualClosedPrimeLogPotential A (c : ℂ)).im = 0 := by
  simp only [actualClosedPrimeLogPotential, Complex.im_sum, Complex.mul_im,
    Complex.ofReal_re, Complex.ofReal_im, Complex.exp_im, Complex.neg_im,
    Complex.mul_im, zero_mul, mul_zero, add_zero, neg_zero,
    Real.sin_zero, mul_zero, Finset.sum_const_zero]

private theorem term_norm (c t : ℝ) (n : ℕ) :
    ‖((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ) : ℂ) *
        Complex.exp (-((c : ℂ)+(t : ℂ)*I)*(Real.log n : ℂ))‖ = coefficient c n := by
  have hp : 0 ≤ ArithmeticFunction.vonMangoldt n / Real.log (n : ℝ) := by
    rcases eq_or_ne n 0 with rfl | hn0
    · simp
    rcases eq_or_ne n 1 with rfl | hn1
    · simp
    have hn : 2 ≤ n := by omega
    exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg
      (Real.log_pos (by exact_mod_cast hn)).le
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hp,
    Complex.norm_exp]
  simp only [coefficient, Complex.mul_re, Complex.neg_re, Complex.add_re,
    Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im,
    zero_mul, mul_zero, add_zero, sub_zero, neg_mul]

/-- Genuine phase-linked mass bound for the entire actual finite potential. -/
theorem actualClosedPrimeLogPotential_norm_le_mass (A c t : ℝ) :
    ‖actualClosedPrimeLogPotential A ((c : ℂ)+(t : ℂ)*I)‖ ≤
      actualClosedPrimeLogMass A c := by
  unfold actualClosedPrimeLogPotential
  calc
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        ‖((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ) : ℂ) *
          Complex.exp (-((c : ℂ)+(t : ℂ)*I)*(Real.log n : ℂ))‖ := norm_sum_le _ _
    _ = _ := by simp only [term_norm, mass_eq_sum]

/-- The actual Q and S share one coefficient disk; they are not independent budgets. -/
theorem actualClosedPrimePhase_disk (A c t : ℝ) :
    actualClosedPrimeCosineDeficit A c t ^ 2 +
      actualClosedPrimeSineComponent A c t ^ 2 ≤
        2 * actualClosedPrimeLogMass A c * actualClosedPrimeCosineDeficit A c t := by
  have hn := actualClosedPrimeLogPotential_norm_le_mass A c t
  have hm := actualClosedPrimeLogMass_nonneg A c
  have hs := sq_le_sq₀ (norm_nonneg _) hm |>.mpr hn
  rw [Complex.sq_norm, Complex.normSq_apply] at hs
  simp only [actualClosedPrimeCosineDeficit, actualClosedPrimeSineComponent,
    Complex.sub_re, Complex.sub_im, potential_at_real_im, sub_zero,
    actualClosedPrimeLogMass] at *
  nlinarith

/-- One-sided support function of the actual linked finite phases, keeping b*S-a*Q. -/
theorem actualCenteredPrimePhase_density_le (A c t : ℝ) :
    (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).im *
        actualClosedPrimeSineComponent A c t -
      (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re *
        actualClosedPrimeCosineDeficit A c t ≤
      actualClosedPrimeLogMass A c *
        (‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖ -
          (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re) := by
  have he : (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).im *
        actualClosedPrimeSineComponent A c t -
      (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re *
        actualClosedPrimeCosineDeficit A c t =
      (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I) *
        actualClosedPrimeLogPotential A ((c : ℂ)+(t : ℂ)*I)).re -
      actualClosedPrimeLogMass A c *
        (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re := by
    simp only [actualClosedPrimeCosineDeficit, actualClosedPrimeSineComponent,
      actualClosedPrimeLogMass, Complex.sub_re, Complex.sub_im,
      potential_at_real_im, sub_zero, Complex.mul_re]
    ring
  rw [he]
  calc
    _ ≤ ‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I) *
        actualClosedPrimeLogPotential A ((c : ℂ)+(t : ℂ)*I)‖ -
      actualClosedPrimeLogMass A c *
        (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re :=
      sub_le_sub_right (Complex.re_le_norm _) _
    _ ≤ ‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖ *
        actualClosedPrimeLogMass A c -
      actualClosedPrimeLogMass A c *
        (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re := by
      rw [norm_mul]
      exact sub_le_sub_right (mul_le_mul_of_nonneg_left
        (actualClosedPrimeLogPotential_norm_le_mass A c t) (norm_nonneg _)) _
    _ = _ := by ring

private theorem slope_continuous (A : ℝ) : Continuous (actualEulerMellinSlope A) := by
  have hb : Continuous bumpLaplace := by
    have hf : bumpLaplaceMoment 0 = bumpLaplace := funext bump_laplace_moment_zero
    simpa only [hf] using bump_laplace_moment_continuous 0
  have hm := bump_laplace_moment_continuous 1
  unfold actualEulerMellinSlope
  fun_prop

private theorem potential_continuous (A : ℝ) :
    Continuous (actualClosedPrimeLogPotential A) :=
  continuous_iff_continuousAt.mpr fun s =>
    (actualClosedPrimeLogPotential_hasDerivAt A s).continuousAt

/-- Signed full-interval upper allowance; all phases and genuine compact L1 remain. -/
theorem actualCenteredPrimePhaseBulk_le_support (A c T : ℝ) (hT : 0 ≤ T) :
    actualCenteredPrimePhaseBulk A c T ≤
      (actualClosedPrimeLogMass A c / (2 * Real.pi)) * ∫ t in -T..T,
        (‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖ -
          (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re) := by
  have hs := slope_continuous A
  have hp := potential_continuous A
  have hl : Continuous (fun t : ℝ => (c : ℂ)+(t : ℂ)*I) := by fun_prop
  have hr := Complex.continuous_re.comp (hs.comp hl)
  have him := Complex.continuous_im.comp (hs.comp hl)
  have hq : Continuous (actualClosedPrimeCosineDeficit A c) := by
    unfold actualClosedPrimeCosineDeficit
    fun_prop
  have hsi : Continuous (actualClosedPrimeSineComponent A c) := by
    unfold actualClosedPrimeSineComponent
    fun_prop
  have hi1 : IntervalIntegrable (fun t : ℝ =>
      (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).im *
          actualClosedPrimeSineComponent A c t -
        (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re *
          actualClosedPrimeCosineDeficit A c t) volume (-T) T :=
    ((him.mul hsi).sub (hr.mul hq)).intervalIntegrable _ _
  have hi2 : IntervalIntegrable (fun t : ℝ => actualClosedPrimeLogMass A c *
      (‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖ -
        (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re)) volume (-T) T :=
    (continuous_const.mul ((hs.comp hl).norm.sub hr)).intervalIntegrable _ _
  unfold actualCenteredPrimePhaseBulk
  calc
    _ ≤ (1 / (2 * Real.pi)) * ∫ t in -T..T, actualClosedPrimeLogMass A c *
        (‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖ -
          (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re) :=
      mul_le_mul_of_nonneg_left
        (intervalIntegral.integral_mono_on (by linarith : -T ≤ T) hi1 hi2
          (fun t _ => actualCenteredPrimePhase_density_le A c t)) (by positivity)
    _ = _ := by rw [intervalIntegral.integral_const_mul]; ring

/-- Exact real slope FTC with both true frequency endpoints, at every real T. -/
theorem actualEulerMellinSlope_re_integral_eq_boundary (A c T : ℝ) (hA : 1 ≤ A) :
    (∫ t in -T..T, (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re) =
      (actualInitialPrimeMellin A ((c : ℂ)+(T : ℂ)*I)).im -
        (actualInitialPrimeMellin A ((c : ℂ)+(-T : ℂ)*I)).im := by
  let s : ℝ → ℂ := fun t => (c : ℂ)+(t : ℂ)*I
  have hs (t : ℝ) : HasDerivAt s I t := by
    simpa [s] using ((hasDerivAt_id t).ofReal_comp.mul_const I).const_add (c : ℂ)
  have hh (t : ℝ) : HasDerivAt (fun t => actualInitialPrimeMellin A (s t))
      (I * actualEulerMellinSlope A (s t)) t := by
    convert! (actualEulerMellin_hasDerivAt A hA (s t)).comp t (hs t) using 1
    exact mul_comm _ _
  have hc := slope_continuous A
  have hi : IntervalIntegrable (fun t => I * actualEulerMellinSlope A (s t))
      volume (-T) T := (by fun_prop : Continuous _).intervalIntegrable _ _
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hh t) hi
  have hm := congrArg Complex.im he
  have him : (∫ t in -T..T, I * actualEulerMellinSlope A (s t)).im =
      ∫ t in -T..T, (I * actualEulerMellinSlope A (s t)).im :=
    ((RCLike.imCLM : ℂ →L[ℝ] ℝ).intervalIntegral_comp_comm hi).symm
  rw [him] at hm
  simpa only [s, Complex.mul_im, Complex.I_re, Complex.I_im, zero_mul, one_mul,
    zero_add, Complex.sub_im] using hm

/-- Integrated support-function payment with its exact two-endpoint subtraction. -/
theorem actualCenteredPrimePhaseBulk_le_support_endpoints
    (A c T : ℝ) (hA : 1 ≤ A) (hT : 0 ≤ T) :
    actualCenteredPrimePhaseBulk A c T ≤
      (actualClosedPrimeLogMass A c / (2 * Real.pi)) *
        ((∫ t in -T..T, ‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖) -
          ((actualInitialPrimeMellin A ((c : ℂ)+(T : ℂ)*I)).im -
            (actualInitialPrimeMellin A ((c : ℂ)+(-T : ℂ)*I)).im)) := by
  have hs := slope_continuous A
  have hl : Continuous (fun t : ℝ => (c : ℂ)+(t : ℂ)*I) := by fun_prop
  have hi1 : IntervalIntegrable (fun t : ℝ =>
      ‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖) volume (-T) T :=
    (hs.comp hl).norm.intervalIntegrable _ _
  have hi2 : IntervalIntegrable (fun t : ℝ =>
      (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re) volume (-T) T :=
    (Complex.continuous_re.comp (hs.comp hl)).intervalIntegrable _ _
  have h := actualCenteredPrimePhaseBulk_le_support A c T hT
  rw [intervalIntegral.integral_sub hi1 hi2,
    actualEulerMellinSlope_re_integral_eq_boundary A c T hA] at h
  exact h

end FormalResearch.RiemannHypothesis.SourceActualCenteredPrimePhaseSupport
```
