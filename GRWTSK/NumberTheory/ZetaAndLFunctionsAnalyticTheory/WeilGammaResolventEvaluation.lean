/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeGammaAssembly
import GRWTSK.SpecialFunctions.GammaEulerLimit
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
# Compensated finite gamma evaluation on the original Weil line

MSC2020: 11M41, 33B15, 42A38. Evaluate each actual reciprocal gamma term
by an absolutely integrable Laplace/Fourier product, then assemble finite
compensated sums. Native vertical inversion supplies the test evaluation.
The original two line orientations are retained. The approximation converges
to the actual digamma multiplier by native Euler-Gamma convergence; a full
complex tail estimate supplies uniform domination before integrating the limit.
No Gauss integral representation is assumed (it is TODO in pinned Mathlib).

The finite physical formula is a consumer of the reciprocal evaluation, not
a positivity model or an assumed Fourier-inversion interface. Passing its
limit through the whole-line integral uses the supplied uniform majorant,
not pointwise convergence alone. Summing the physical correction to the
canonical parityKernel is supplied separately by WeilGammaPhysicalReturn,
using the concurrently available compensated source. The arithmetic
prime/conductor/pole assembly remains WeilPrimeGammaAssembly.

SOURCE_PROOF_CANDIDATE. Elaboration, full dependency build, fresh kernel replay,
transitive axiom audit and independent analytical review: NOT_RUN.
Novelty UNASSESSED. Local source attribution: grwtsk contributors. Refs #1801.
-/

set_option autoImplicit false
noncomputable section
open Set Filter MeasureTheory
open scoped Topology BigOperators
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

private theorem resolvent_laplace_fubini (phi : ℝ → ℂ)
    (hphi : Integrable phi volume) {b : ℝ} (hb : 0 < b) :
    Integrable (fun t : ℝ => phi t / ((b : ℂ) + Complex.I * (t : ℂ))) volume ∧
    IntegrableOn (fun r : ℝ => Complex.exp ((-b : ℂ) * (r : ℂ)) *
      (∫ t : ℝ, phi t * Complex.exp (-Complex.I * (t : ℂ) * (r : ℂ)))) (Ioi 0) ∧
    (∫ t : ℝ, phi t / ((b : ℂ) + Complex.I * (t : ℂ))) =
      ∫ r in Ioi (0 : ℝ), Complex.exp ((-b : ℂ) * (r : ℂ)) *
        (∫ t : ℝ, phi t * Complex.exp (-Complex.I * (t : ℂ) * (r : ℂ))) := by
  let F : ℝ × ℝ → ℂ := fun p => phi p.1 *
    Complex.exp (-((b : ℂ) + Complex.I * (p.1 : ℂ)) * (p.2 : ℂ))
  have hexp := integrableOn_exp_mul_Ioi (a := -b) (by linarith) 0
  have hbound : Integrable (fun p : ℝ × ℝ => ‖phi p.1‖ * Real.exp (-b * p.2))
      (volume.prod (volume.restrict (Ioi (0 : ℝ)))) := hphi.norm.mul_prod hexp
  have hm : AEStronglyMeasurable F
      (volume.prod (volume.restrict (Ioi (0 : ℝ)))) :=
    hphi.aestronglyMeasurable.comp_fst.mul
      (show Continuous (fun p : ℝ × ℝ =>
        Complex.exp (-((b : ℂ) + Complex.I * (p.1 : ℂ)) * (p.2 : ℂ))) by
          fun_prop).aestronglyMeasurable
  have hF : Integrable F (volume.prod (volume.restrict (Ioi (0 : ℝ)))) := by
    apply hbound.mono' hm
    exact Eventually.of_forall fun p => by simp [F, norm_mul, Complex.norm_exp]
  have hleft (t : ℝ) : (∫ r in Ioi (0 : ℝ), F (t, r)) =
      phi t / ((b : ℂ) + Complex.I * (t : ℂ)) := by
    dsimp only [F]
    rw [integral_const_mul, integral_exp_mul_complex_Ioi (by simpa using (show -b < 0 by linarith)) 0]
    simp [div_eq_mul_inv]
  have hright (r : ℝ) : (∫ t : ℝ, F (t, r)) =
      Complex.exp ((-b : ℂ) * (r : ℂ)) *
        (∫ t : ℝ, phi t * Complex.exp (-Complex.I * (t : ℂ) * (r : ℂ))) := by
    rw [← integral_const_mul]
    apply integral_congr_ae
    exact Eventually.of_forall fun t => by
      dsimp only [F]
      rw [show -((b : ℂ) + Complex.I * (t : ℂ)) * (r : ℂ) =
        (-b : ℂ) * (r : ℂ) + (-Complex.I * (t : ℂ) * (r : ℂ)) by ring,
        Complex.exp_add]
      ring
  refine ⟨hF.integral_prod_left.congr (Eventually.of_forall hleft),
    hF.integral_prod_right.congr (Eventually.of_forall hright), ?_⟩
  simpa only [hleft, hright] using
    (integral_integral_swap (f := fun t r => F (t, r)) hF)

private theorem gamma_pair_line_integrable
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    Integrable (fun t : ℝ => W (2 + Complex.I * (t : ℂ)) +
      W (1 - (2 + Complex.I * (t : ℂ)))) volume := by
  intro W
  have hr := (integrable_correlation_contour_weight_vertical f A hA hf hs 2).1
  have hl := (integrable_correlation_contour_weight_vertical f A hA hf hs (-1)).1.comp_neg
  have he (t : ℝ) : (-1 : ℂ) + Complex.I * ((-t : ℝ) : ℂ) =
      1 - (2 + Complex.I * (t : ℂ)) := by push_cast; ring
  exact hr.add (hl.congr (Eventually.of_forall fun t => congrArg W (he t)))

/-- Both original vertical orientations have one exact inverse-transform value.
All finite-integral and whole-line L1 premises come from the actual test. -/
theorem weil_gamma_pair_fourier_inversion
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (r : ℝ) :
    let W := fun s : ℂ => ∫ u : ℝ, correlation f u * Complex.exp ((s - 1 / 2) * (u : ℂ))
    let H := fun t : ℝ => W (2 + Complex.I * (t : ℂ)) + W (1 - (2 + Complex.I * (t : ℂ)))
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, H t * Complex.exp (-Complex.I * (t : ℂ) * (r : ℂ))) =
      (correlation f r + correlation f (-r)) * (Real.exp ((3 / 2 : ℝ) * r) : ℂ) := by
  intro W H
  let phase := fun t : ℝ => Complex.exp (-Complex.I * (t : ℂ) * (r : ℂ))
  have hp : Continuous phase := by fun_prop
  have hn (t : ℝ) : ‖phase t‖ ≤ 1 := by simp [phase, Complex.norm_exp]
  have hr := (integrable_correlation_contour_weight_vertical f A hA hf hs 2).1
  have hl0 := (integrable_correlation_contour_weight_vertical f A hA hf hs (-1)).1.comp_neg
  have harg (t : ℝ) : (-1 : ℂ) + Complex.I * ((-t : ℝ) : ℂ) =
      1 - (2 + Complex.I * (t : ℂ)) := by push_cast; ring
  have hl := hl0.congr (Eventually.of_forall fun t => congrArg W (harg t))
  have hrp := hr.mul_bdd hp.aestronglyMeasurable (Eventually.of_forall hn)
  have hlp := hl.mul_bdd hp.aestronglyMeasurable (Eventually.of_forall hn)
  have eR := correlation_weight_inversion f A hA hf hs 2 r
  have eL := correlation_weight_inversion f A hA hf hs (-1) (-r)
  have eleft : (∫ t : ℝ, W (1 - (2 + Complex.I * (t : ℂ))) * phase t) =
      ∫ t : ℝ, W (-1 + Complex.I * (t : ℂ)) *
        Complex.exp (-Complex.I * (t : ℂ) * ((-r : ℝ) : ℂ)) := by
    calc
      _ = ∫ t : ℝ, W (1 - (2 + Complex.I * ((-t : ℝ) : ℂ))) * phase (-t) :=
        (integral_neg_eq_self
          (fun t : ℝ => W (1 - (2 + Complex.I * (t : ℂ))) * phase t) volume).symm
      _ = _ := by
        apply integral_congr_ae
        exact Eventually.of_forall fun t => by
          dsimp only [phase]
          push_cast
          congr 2 <;> ring
  change (1 / (2 * (Real.pi : ℂ))) * (∫ t : ℝ, H t * phase t) = _
  have he : (fun t : ℝ => H t * phase t) = fun t =>
      W (2 + Complex.I * (t : ℂ)) * phase t +
      W (1 - (2 + Complex.I * (t : ℂ))) * phase t := by funext t; dsimp [H]; ring
  rw [he, integral_add hrp hlp, mul_add, eleft]
  dsimp only [phase]
  rw [eR, eL]
  rw [show (2 : ℝ) - 1 / 2 = 3 / 2 by norm_num,
    show ((-1 : ℝ) - 1 / 2) * (-r) = (3 / 2 : ℝ) * r by ring]
  ring

/-- Exact reciprocal-kernel evaluation, including joint integrability before
Fubini. The parameter b is genuinely positive; no artificial pole rounding is
used. The shifted physical exponential is valid even when b<3/2. -/
theorem weil_gamma_pair_resolvent_evaluation
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) {b : ℝ} (hb : 0 < b) :
    let W := fun s : ℂ => ∫ u : ℝ, correlation f u * Complex.exp ((s - 1 / 2) * (u : ℂ))
    let H := fun t : ℝ => W (2 + Complex.I * (t : ℂ)) + W (1 - (2 + Complex.I * (t : ℂ)))
    Integrable (fun t : ℝ => H t / ((b : ℂ) + Complex.I * (t : ℂ))) volume ∧
    IntegrableOn (fun r : ℝ => (correlation f r + correlation f (-r)) *
      (Real.exp ((3 / 2 - b) * r) : ℂ)) (Ioi 0) ∧
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, H t / ((b : ℂ) + Complex.I * (t : ℂ))) =
      ∫ r in Ioi (0 : ℝ), (correlation f r + correlation f (-r)) *
        (Real.exp ((3 / 2 - b) * r) : ℂ) := by
  intro W H
  obtain ⟨hi, hj, he⟩ := resolvent_laplace_fubini H
    (gamma_pair_line_integrable f A hA hf hs) hb
  let c : ℂ := 1 / (2 * (Real.pi : ℂ))
  have hvalue (r : ℝ) :
      c * (Complex.exp ((-b : ℂ) * (r : ℂ)) *
        (∫ t : ℝ, H t * Complex.exp (-Complex.I * (t : ℂ) * (r : ℂ)))) =
        (correlation f r + correlation f (-r)) * (Real.exp ((3 / 2 - b) * r) : ℂ) := by
    have hInv := weil_gamma_pair_fourier_inversion f A hA hf hs r
    change c * (∫ t : ℝ, H t * Complex.exp (-Complex.I * (t : ℂ) * (r : ℂ))) = _ at hInv
    rw [mul_left_comm c, hInv]
    rw [show (-b : ℂ) * (r : ℂ) = ((-b * r : ℝ) : ℂ) by push_cast; rfl,
      ← Complex.ofReal_exp]
    calc
      _ = (correlation f r + correlation f (-r)) *
          ((Real.exp (-b * r) * Real.exp ((3 / 2 : ℝ) * r) : ℝ) : ℂ) := by push_cast; ring
      _ = _ := by rw [← Real.exp_add]; congr 3 <;> ring
  refine ⟨hi, (hj.const_mul c).congr (Eventually.of_forall hvalue), ?_⟩
  rw [he, ← integral_const_mul]
  exact integral_congr_ae (Eventually.of_forall hvalue)

/-- Finite compensated approximant to the ACTUAL gamma logarithmic derivative.
It is not a new Weil form. Every approximant retains the same constant baseline. -/
def gammaEulerMultiplier (a n : ℕ) (t : ℝ) : ℂ :=
  -((Real.log Real.pi + Real.eulerMascheroniConstant : ℝ) : ℂ) / 2 +
    ∑ j ∈ Finset.range (n + 1),
      (1 / (2 * ((j : ℂ) + 1)) -
        1 / (2 + (a : ℂ) + 2 * (j : ℂ) + Complex.I * (t : ℂ)))

/-- The finite physical formula consumes the literal two-leg resolvent theorem.
No infinite gamma interchange, positivity assertion or tail supplier is a premise. -/
theorem weil_finite_gamma_evaluation
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (a n : ℕ) :
    let W := fun s : ℂ => ∫ u : ℝ, correlation f u * Complex.exp ((s - 1 / 2) * (u : ℂ))
    let H := fun t : ℝ => W (2 + Complex.I * (t : ℂ)) + W (1 - (2 + Complex.I * (t : ℂ)))
    Integrable (fun t : ℝ => H t * gammaEulerMultiplier a n t) volume ∧
    (1 / (2 * (Real.pi : ℂ))) * (∫ t : ℝ, H t * gammaEulerMultiplier a n t) =
      -((Real.log Real.pi + Real.eulerMascheroniConstant : ℝ) : ℂ) * correlation f 0 +
      ∑ j ∈ Finset.range (n + 1),
        (correlation f 0 / ((j : ℂ) + 1) -
          ∫ r in Ioi (0 : ℝ), (correlation f r + correlation f (-r)) *
            (Real.exp (-((a : ℝ) + 1 / 2 + 2 * (j : ℝ)) * r) : ℂ)) := by
  intro W H
  let c : ℂ := 1 / (2 * (Real.pi : ℂ))
  let d : ℂ := -((Real.log Real.pi + Real.eulerMascheroniConstant : ℝ) : ℂ) / 2
  let R : ℕ → ℝ → ℂ := fun j t =>
    H t / (2 * ((j : ℂ) + 1)) -
      H t / (2 + (a : ℂ) + 2 * (j : ℂ) + Complex.I * (t : ℂ))
  have hH : Integrable H volume := gamma_pair_line_integrable f A hA hf hs
  have hmass : c * (∫ t : ℝ, H t) = 2 * correlation f 0 := by
    have h := weil_gamma_pair_fourier_inversion f A hA hf hs 0
    simpa only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, mul_one,
      neg_zero, Real.exp_zero, Complex.ofReal_one, ← two_mul] using h
  have hres (j : ℕ) := weil_gamma_pair_resolvent_evaluation f A hA hf hs
    (b := 2 + (a : ℝ) + 2 * (j : ℝ)) (by positivity)
  have hRi (j : ℕ) : Integrable (R j) volume := by
    have hj := (hres j).1
    push_cast at hj
    exact (hH.div_const _).sub hj
  have hRe (j : ℕ) : c * (∫ t : ℝ, R j t) =
      correlation f 0 / ((j : ℂ) + 1) -
        ∫ r in Ioi (0 : ℝ), (correlation f r + correlation f (-r)) *
          (Real.exp (-((a : ℝ) + 1 / 2 + 2 * (j : ℝ)) * r) : ℂ) := by
    have hi := (hres j).1
    have he := (hres j).2.2
    push_cast at hi he
    have hj : (j : ℂ) + 1 ≠ 0 := by
      intro h
      have hr := congrArg Complex.re h
      simp only [Complex.add_re, Complex.natCast_re, Complex.one_re, Complex.zero_re] at hr
      linarith [Nat.cast_nonneg (α := ℝ) j]
    dsimp only [R]
    rw [integral_sub (hH.div_const _) hi, mul_sub, integral_div, ← mul_div_assoc, hmass, he]
    rw [show (3 / 2 : ℝ) - (2 + (a : ℝ) + 2 * (j : ℝ)) =
      -((a : ℝ) + 1 / 2 + 2 * (j : ℝ)) by ring]
    congr 1
    field_simp [hj]
    <;> ring
  have hsplit : (fun t : ℝ => H t * gammaEulerMultiplier a n t) =
      fun t : ℝ => H t * d + ∑ j ∈ Finset.range (n + 1), R j t := by
    funext t
    dsimp [gammaEulerMultiplier, d, R]
    rw [mul_add, Finset.mul_sum]
    congr 1
    apply Finset.sum_congr rfl
    intro j _
    ring
  have hsumi : Integrable (fun t : ℝ => ∑ j ∈ Finset.range (n + 1), R j t) volume :=
    integrable_finset_sum _ (fun j _ => hRi j)
  refine ⟨by rw [hsplit]; exact (hH.mul_const d).add hsumi, ?_⟩
  rw [hsplit, integral_add (hH.mul_const d) hsumi,
    integral_mul_const, integral_finset_sum _ (fun j _ => hRi j), mul_add, Finset.mul_sum]
  change c * ((∫ t : ℝ, H t) * d) + _ = _
  rw [← mul_assoc, hmass]
  simp_rw [hRe]
  dsimp only [d]
  ring

/-- Actual complex-source pointwise convergence, from native Euler-Gamma limits.
This is not convergence under an integral: that requires a uniform majorant. -/
theorem gammaEulerMultiplier_tendsto (a : ℕ) (t : ℝ) :
    Tendsto (fun n : ℕ => gammaEulerMultiplier a n t) atTop
      (𝓝 (-(Real.log Real.pi : ℂ) / 2 +
        Complex.digamma (((2 : ℂ) + Complex.I * (t : ℂ) + (a : ℂ)) / 2) / 2)) := by
  let z : ℂ := ((2 : ℂ) + Complex.I * (t : ℂ) + (a : ℂ)) / 2
  have hz : 0 < z.re := by
    have he : z.re = (2 + (a : ℝ)) / 2 := by simp [z]
    rw [he]
    positivity
  have hlim := ((GRWTSK.SpecialFunctions.GammaEulerLimit.logDeriv_GammaSeq_tendsto hz).sub
    (GRWTSK.SpecialFunctions.GammaEulerLimit.logDeriv_GammaSeq_tendsto
      (z := (1 : ℂ)) (by norm_num))).add_const (Complex.digamma 1)
  have hlim' := (hlim.div_const (2 : ℂ)).const_add (-(Real.log Real.pi : ℂ) / 2)
  have htarget : -(Real.log Real.pi : ℂ) / 2 +
      (logDeriv Complex.Gamma z - logDeriv Complex.Gamma 1 + Complex.digamma 1) / 2 =
      -(Real.log Real.pi : ℂ) / 2 + Complex.digamma z / 2 := by
    simp only [Complex.digamma_def]
    ring
  rw [htarget] at hlim'
  apply hlim'.congr'
  filter_upwards [eventually_ne_atTop 0] with n hn
  rw [GRWTSK.SpecialFunctions.GammaEulerLimit.logDeriv_GammaSeq hn hz,
    GRWTSK.SpecialFunctions.GammaEulerLimit.logDeriv_GammaSeq hn (z := (1 : ℂ)) (by norm_num),
    Complex.digamma_one]
  have hsum : (∑ j ∈ Finset.range (n + 1),
      (1 / (2 * ((j : ℂ) + 1)) -
        1 / (2 + (a : ℂ) + 2 * (j : ℂ) + Complex.I * (t : ℂ)))) =
      ((∑ j ∈ Finset.range (n + 1), (1 + (j : ℂ))⁻¹) -
        ∑ j ∈ Finset.range (n + 1), (z + (j : ℂ))⁻¹) / 2 := by
    rw [← Finset.sum_sub_distrib, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro j _
    rw [show z + (j : ℂ) =
      (2 + (a : ℂ) + 2 * (j : ℂ) + Complex.I * (t : ℂ)) / 2 by dsimp [z]; ring,
      inv_div]
    rw [show (1 : ℂ) + (j : ℂ) = (j : ℂ) + 1 by ring]
    simp only [one_div, mul_inv_rev]
    ring
  rw [gammaEulerMultiplier, hsum]
  push_cast
  ring

private def gammaReciprocalTerm (a j : ℕ) (t : ℝ) : ℂ :=
  1 / (2 * ((j : ℂ) + 1)) -
    1 / (2 + (a : ℂ) + 2 * (j : ℂ) + Complex.I * (t : ℂ))

private theorem norm_gammaReciprocalTerm_le (a j : ℕ) (t : ℝ) :
    ‖gammaReciprocalTerm a j t‖ ≤
      ((a : ℝ) + |t|) / (4 * ((j : ℝ) + 1) ^ 2) := by
  let x : ℝ := 2 * ((j : ℝ) + 1)
  let u : ℂ := (a : ℂ) + Complex.I * (t : ℂ)
  have hx : 0 < x := by dsimp [x]; positivity
  have hxC : (x : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hx.ne'
  have hD : (x : ℂ) + u ≠ 0 := by
    intro he
    have hr := congrArg Complex.re he
    simp only [Complex.add_re, Complex.ofReal_re, Complex.zero_re] at hr
    have hu : 0 ≤ u.re := by simp [u]
    linarith
  have hid : gammaReciprocalTerm a j t = u / ((x : ℂ) * ((x : ℂ) + u)) := by
    have he : 2 + (a : ℂ) + 2 * (j : ℂ) + Complex.I * (t : ℂ) = (x : ℂ) + u := by
      dsimp [x, u]
      push_cast
      ring
    have hxcast : 2 * ((j : ℂ) + 1) = (x : ℂ) := by dsimp [x]; push_cast; ring
    rw [gammaReciprocalTerm, he, hxcast]
    field_simp [hxC, hD]
    <;> ring
  have hu : ‖u‖ ≤ (a : ℝ) + |t| := by
    simpa [u, norm_mul] using norm_add_le (a : ℂ) (Complex.I * (t : ℂ))
  have hd : x ≤ ‖(x : ℂ) + u‖ := by
    calc
      x ≤ ((x : ℂ) + u).re := by simp [u]
      _ ≤ |((x : ℂ) + u).re| := le_abs_self _
      _ ≤ _ := Complex.abs_re_le_norm _
  rw [hid, norm_div, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hx]
  calc
    _ ≤ ((a : ℝ) + |t|) / (x * ‖(x : ℂ) + u‖) :=
      div_le_div_of_nonneg_right hu (mul_nonneg hx.le (norm_nonneg _))
    _ ≤ ((a : ℝ) + |t|) / x ^ 2 := by
      apply div_le_div_of_nonneg_left (by positivity) (sq_pos_of_pos hx)
      nlinarith [mul_le_mul_of_nonneg_left hd hx.le]
    _ = _ := by dsimp [x]; ring

private theorem reciprocal_telescope {x : ℝ} (hx : 0 < x) :
    1 / (x + 1) ^ 2 ≤ 1 / x - 1 / (x + 1) := by
  have hx1 : 0 < x + 1 := by linarith
  have he : 1 / x - 1 / (x + 1) - 1 / (x + 1) ^ 2 =
      1 / (x * (x + 1) ^ 2) := by
    field_simp [hx.ne', hx1.ne']
    <;> ring
  have hp : 0 ≤ 1 / (x * (x + 1) ^ 2) := by positivity
  linarith

private theorem gammaEulerMultiplier_increment (a n : ℕ) (t : ℝ) :
    gammaEulerMultiplier a (n + 1) t =
      gammaEulerMultiplier a n t + gammaReciprocalTerm a (n + 1) t := by
  simp only [gammaEulerMultiplier, Finset.sum_range_succ, gammaReciprocalTerm]
  ring

/-- A full complex-norm tail estimate for the actual gamma multiplier, not just
its real part. It supplies the missing n-uniform domination for integration.
The bound holds at t=0 and for every natural parity parameter a. -/
theorem norm_gammaEulerMultiplier_error_le (a n : ℕ) (t : ℝ) :
    ‖(-(Real.log Real.pi : ℂ) / 2 +
        Complex.digamma (((2 : ℂ) + Complex.I * (t : ℂ) + (a : ℂ)) / 2) / 2) -
      gammaEulerMultiplier a n t‖ ≤
        ((a : ℝ) + |t|) / (4 * ((n : ℝ) + 1)) := by
  let C : ℝ := ((a : ℝ) + |t|) / 4
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hfinite (k : ℕ) :
      ‖gammaEulerMultiplier a (n + k) t - gammaEulerMultiplier a n t‖ ≤
        C * (1 / ((n : ℝ) + 1) - 1 / ((n : ℝ) + (k : ℝ) + 1)) := by
    induction k with
    | zero => simp
    | succ k ih =>
      have hx : 0 < (n : ℝ) + (k : ℝ) + 1 := by positivity
      have hd := norm_gammaReciprocalTerm_le a (n + k + 1) t
      have ht := mul_le_mul_of_nonneg_left (reciprocal_telescope hx) hC
      have hdcap : ‖gammaReciprocalTerm a (n + k + 1) t‖ ≤
          C * (1 / ((n : ℝ) + (k : ℝ) + 1) -
            1 / ((n : ℝ) + (k : ℝ) + 1 + 1)) := by
        calc
          _ ≤ ((a : ℝ) + |t|) / (4 * (((n + k + 1 : ℕ) : ℝ) + 1) ^ 2) := hd
          _ = C * (1 / ((n : ℝ) + (k : ℝ) + 1 + 1) ^ 2) := by
            dsimp [C]
            push_cast
            ring
          _ ≤ _ := ht
      rw [show n + (k + 1) = (n + k) + 1 by omega, gammaEulerMultiplier_increment]
      calc
        _ = ‖(gammaEulerMultiplier a (n + k) t - gammaEulerMultiplier a n t) +
            gammaReciprocalTerm a (n + k + 1) t‖ := by congr 1; ring
        _ ≤ ‖gammaEulerMultiplier a (n + k) t - gammaEulerMultiplier a n t‖ +
            ‖gammaReciprocalTerm a (n + k + 1) t‖ := norm_add_le _ _
        _ ≤ C * (1 / ((n : ℝ) + 1) - 1 / ((n : ℝ) + (k : ℝ) + 1)) +
            C * (1 / ((n : ℝ) + (k : ℝ) + 1) -
              1 / ((n : ℝ) + (k : ℝ) + 1 + 1)) := add_le_add ih hdcap
        _ = _ := by push_cast; ring
  have hshift : Tendsto (fun k : ℕ => n + k) atTop atTop := by
    apply tendsto_atTop_mono (fun k => show k ≤ n + k by omega) tendsto_id
  have hlim := (((gammaEulerMultiplier_tendsto a t).comp hshift).
    sub_const (gammaEulerMultiplier a n t)).norm
  apply le_of_tendsto hlim
  refine Eventually.of_forall fun k => (hfinite k).trans ?_
  calc
    _ ≤ C * (1 / ((n : ℝ) + 1)) := by
      apply mul_le_mul_of_nonneg_left _ hC
      exact sub_le_self _ (by positivity)
    _ = _ := by dsimp [C]; ring

/-- Native fourth-order decay for the original pair; consumed by both gamma limits. -/
theorem weil_gamma_pair_norm_le
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (t : ℝ) :
    let W := fun s : ℂ => ∫ u : ℝ, correlation f u * Complex.exp ((s - 1 / 2) * (u : ℂ))
    let B := derivativeL1Cost f 2 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2
    ‖W (2 + Complex.I * (t : ℂ)) + W (1 - (2 + Complex.I * (t : ℂ)))‖ ≤
      2 * B / (1 + |t|) ^ 4 := by
  intro W B
  let s : ℂ := 2 + Complex.I * (t : ℂ)
  have hx : 0 < 1 + |t| := by positivity
  have hr : ‖W s‖ ≤ B / (1 + |t|) ^ 4 := by
    have h := norm_correlation_contour_weight_le_strip f A hA hf hs 2 (3 / 2) s
      (by norm_num [s])
    have he : |s.im| = |t| := by simp [s]
    rw [he] at h
    calc
      _ ≤ derivativeL1Cost f 2 ^ 2 *
          (Real.exp (A * (3 / 2 : ℝ)) / (1 + |t|) ^ 2) ^ 2 := h
      _ = _ := by dsimp [B]; field_simp [hx.ne'] <;> ring
  have hl : ‖W (1 - s)‖ ≤ B / (1 + |t|) ^ 4 := by
    have h := norm_correlation_contour_weight_le_strip f A hA hf hs 2 (3 / 2) (1 - s)
      (by norm_num [s])
    have he : |(1 - s).im| = |t| := by simp [s]
    rw [he] at h
    calc
      _ ≤ derivativeL1Cost f 2 ^ 2 *
          (Real.exp (A * (3 / 2 : ℝ)) / (1 + |t|) ^ 2) ^ 2 := h
      _ = _ := by dsimp [B]; field_simp [hx.ne'] <;> ring
  exact (norm_add_le _ _).trans ((add_le_add hr hl).trans_eq (by ring))

/-- The compensated physical finite expressions converge to the ACTUAL gamma
line integral. Both pointwise convergence and an n-uniform integrable majorant
are supplied. The source character is primitive; every admissible complex test
and every support window is retained, including conductor-one zeta. -/
theorem weil_gamma_physical_partials_tendsto
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let a := gammaParity chi
    let W := fun s : ℂ => ∫ u : ℝ, correlation f u * Complex.exp ((s - 1 / 2) * (u : ℂ))
    let H := fun t : ℝ => W (2 + Complex.I * (t : ℂ)) + W (1 - (2 + Complex.I * (t : ℂ)))
    Tendsto (fun n : ℕ =>
      -((Real.log Real.pi + Real.eulerMascheroniConstant : ℝ) : ℂ) * correlation f 0 +
      ∑ j ∈ Finset.range (n + 1),
        (correlation f 0 / ((j : ℂ) + 1) -
          ∫ r in Ioi (0 : ℝ), (correlation f r + correlation f (-r)) *
            (Real.exp (-((a : ℝ) + 1 / 2 + 2 * (j : ℝ)) * r) : ℂ))) atTop
      (𝓝 ((1 / (2 * (Real.pi : ℂ))) *
        (∫ t : ℝ, H t * (-(Real.log Real.pi : ℂ) / 2 +
          Complex.digamma (((2 : ℂ) + Complex.I * (t : ℂ) + (a : ℂ)) / 2) / 2)))) := by
  intro a W H
  let g := fun t : ℝ => -(Real.log Real.pi : ℂ) / 2 +
    Complex.digamma (((2 : ℂ) + Complex.I * (t : ℂ) + (a : ℂ)) / 2) / 2
  let G := fun t : ℝ => H t * g t
  let B : ℝ := derivativeL1Cost f 2 ^ 2 * Real.exp (A * (3 / 2 : ℝ)) ^ 2
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hG : Integrable G volume := by
    have h := (weil_full_line_eq_gamma_native_prime chi hprim f A hA hf hs).1
    simpa only [G, H, g, a, mul_comm Complex.I] using h
  let bound := fun t : ℝ => ‖G t‖ + (2 * B * ((a : ℝ) + 1)) * (1 + t ^ 2)⁻¹
  have hbound : Integrable bound volume :=
    hG.norm.add (integrable_inv_one_add_sq.const_mul (2 * B * ((a : ℝ) + 1)))
  have hdom (n : ℕ) : ∀ᵐ t : ℝ,
      ‖H t * gammaEulerMultiplier a n t‖ ≤ bound t := by
    refine Eventually.of_forall fun t => ?_
    let x : ℝ := 1 + |t|
    have hx : 0 < x := by dsimp [x]; positivity
    have he : ‖gammaEulerMultiplier a n t - g t‖ ≤ (a : ℝ) + |t| := by
      have h := norm_gammaEulerMultiplier_error_le a n t
      rw [norm_sub_rev] at h
      apply h.trans
      exact div_le_self (by positivity) (by nlinarith [Nat.cast_nonneg (α := ℝ) n])
    have hH : ‖H t‖ ≤ 2 * B / x ^ 4 := weil_gamma_pair_norm_le f A hA hf hs t
    have hnum : (a : ℝ) + |t| ≤ ((a : ℝ) + 1) * x := by
      dsimp [x]
      nlinarith [mul_nonneg (Nat.cast_nonneg (α := ℝ) a) (abs_nonneg t)]
    have hden : 1 + t ^ 2 ≤ x ^ 3 := by
      have hsq : 1 + t ^ 2 ≤ x ^ 2 := by dsimp [x]; nlinarith [sq_abs t, abs_nonneg t]
      have hpow : x ^ 2 ≤ x ^ 3 := by
        dsimp [x]
        nlinarith [mul_nonneg (sq_nonneg (1 + |t|)) (abs_nonneg t)]
      exact hsq.trans hpow
    have herror : ‖H t‖ * ‖gammaEulerMultiplier a n t - g t‖ ≤
        (2 * B * ((a : ℝ) + 1)) * (1 + t ^ 2)⁻¹ := by
      calc
        _ ≤ (2 * B / x ^ 4) * ((a : ℝ) + |t|) :=
          mul_le_mul hH he (norm_nonneg _) (by positivity)
        _ ≤ (2 * B / x ^ 4) * (((a : ℝ) + 1) * x) :=
          mul_le_mul_of_nonneg_left hnum (by positivity)
        _ = (2 * B * ((a : ℝ) + 1)) / x ^ 3 := by
          field_simp [hx.ne']
          <;> ring
        _ ≤ (2 * B * ((a : ℝ) + 1)) / (1 + t ^ 2) :=
          div_le_div_of_nonneg_left (by positivity) (by positivity) hden
        _ = _ := div_eq_mul_inv _ _
    calc
      _ = ‖G t + H t * (gammaEulerMultiplier a n t - g t)‖ := by
        congr 1
        dsimp [G]
        ring
      _ ≤ ‖G t‖ + ‖H t * (gammaEulerMultiplier a n t - g t)‖ := norm_add_le _ _
      _ ≤ bound t := by rw [norm_mul]; exact add_le_add_left herror _
  have hlim : Tendsto (fun n : ℕ => ∫ t : ℝ, H t * gammaEulerMultiplier a n t) atTop
      (𝓝 (∫ t : ℝ, G t)) :=
    tendsto_integral_of_dominated_convergence bound
      (fun n => (weil_finite_gamma_evaluation f A hA hf hs a n).1.aestronglyMeasurable)
      hbound hdom (Eventually.of_forall fun t => (gammaEulerMultiplier_tendsto a t).const_mul (H t))
  apply (hlim.const_mul (1 / (2 * (Real.pi : ℂ)))).congr'
  exact Eventually.of_forall fun n => (weil_finite_gamma_evaluation f A hA hf hs a n).2

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
