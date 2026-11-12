/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilNegativeWitness
import GRWTSK.SpecialFunctions.ArchimedeanMomentBounds
import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier
import Mathlib.MeasureTheory.Measure.Haar.NormedSpace

/-!
# Actual compact Weil tests supply the archimedean spectral moments

MSC2020: 11M26 (primary), 42A38, 33B15.

Reuse `WeilNegativeWitness.Admissible`: smooth order infinity and compact
support, not analytic order top. The unchanged test is embedded in Mathlib's
Schwartz space. The plus transform is identified with the actual Mathlib
transform at t/(-2*pi). Plancherel and the Fourier derivative theorem then
supply both spectral integrability hypotheses and the zeroth/second moments.
The consumer is `ArchimedeanMomentBounds.squared_spectrum_finite_enclosure`;
no moment identity, Fourier decay or source enclosure is assumed as a premise.

The test may be complex and need not be even. This module does not establish
a completed-L-function explicit formula, prime/pole estimates, positivity of
the full Weil form, RH/GRH, or effective quadrature/certificate existence.
The constant baseline is unchanged and is not asserted nonnegative.

Primary formal sources: Mathlib SchwartzSpace.Basic (Moritz Doll),
SchwartzSpace.Deriv (Moritz Doll), SchwartzSpace.Fourier (Sebastien Gouezel,
Moritz Doll), FourierTransform/FourierTransformDeriv (David Loeffler and
upstream contributors), and Haar.NormedSpace. Exact primary declarations,
source pins, analytical argument and individual provenance are adjacent.
SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit,
independent review and numerical functional certification NOT_RUN.
No novelty claim. Coordination: math#1801, scope comment 6815617192.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped FourierTransform ContDiff

namespace GRWTSK.NumberTheory.WeilFourierMoments

open WeilNegativeWitness
open GRWTSK.SpecialFunctions.ArchimedeanMomentBounds

/-- Literal plus-sign Fourier integral. Applications below prove convergence. -/
def plusFourier (f : ℝ → ℂ) (t : ℝ) : ℂ :=
  ∫ x : ℝ, f x * Complex.exp (((t * x : ℝ) : ℂ) * Complex.I)

/-- Exact normalization: t/(-2*pi) = -t/(2*pi), not the raw frequency t. -/
theorem plusFourier_eq_mathlib (f : ℝ → ℂ) (t : ℝ) :
    plusFourier f t = 𝓕 f (t / (-(2 * Real.pi))) := by
  rw [Real.fourier_real_eq_integral_exp_smul]
  unfold plusFourier
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun x => by
    have hphase : -2 * Real.pi * x * (t / (-(2 * Real.pi))) = t * x := by
      field_simp [Real.pi_ne_zero] <;> ring
    rw [hphase, smul_eq_mul, mul_comm]

private def asSchwartz {f : ℝ → ℂ} (hf : Admissible f) : SchwartzMap ℝ ℂ :=
  hf.2.toSchwartzMap hf.1

private theorem square_integrable (f : SchwartzMap ℝ ℂ) :
    Integrable (fun x : ℝ => ‖f x‖ ^ 2) :=
  (f.memLp 2 volume).integrable_norm_pow (p := 2) (by norm_num)

private theorem schwartz_rescale (f : SchwartzMap ℝ ℂ) (t : ℝ) :
    plusFourier f t = (𝓕 f) (t / (-(2 * Real.pi))) :=
  plusFourier_eq_mathlib f t

private theorem schwartz_continuous (f : SchwartzMap ℝ ℂ) :
    Continuous (plusFourier f) := by
  have heq : plusFourier f = fun t => (𝓕 f) (t / (-(2 * Real.pi))) :=
    funext (schwartz_rescale f)
  rw [heq]
  exact (𝓕 f).continuous.comp (continuous_id.div_const _)

private theorem schwartz_weight_integrable (f : SchwartzMap ℝ ℂ) :
    Integrable (spectrumWeight (plusFourier f)) := by
  have hscale : -(2 * Real.pi) ≠ 0 := neg_ne_zero.mpr Real.two_pi_pos.ne'
  have hi := (square_integrable (𝓕 f)).comp_div (R := -(2 * Real.pi)) hscale
  have heq : spectrumWeight (plusFourier f) =
      fun t : ℝ => ‖(𝓕 f) (t / (-(2 * Real.pi)))‖ ^ 2 / (2 * Real.pi) := by
    funext t
    rw [spectrumWeight, schwartz_rescale]
  rw [heq]
  exact hi.div_const _

private theorem schwartz_mass (f : SchwartzMap ℝ ℂ) :
    (∫ t : ℝ, spectrumWeight (plusFourier f) t) = ∫ x : ℝ, ‖f x‖ ^ 2 := by
  -- Integrability is supplied independently; the substitution is not used to
  -- interpret a divergent integral as zero.
  have hi := schwartz_weight_integrable f
  simp_rw [spectrumWeight, schwartz_rescale]
  rw [integral_div,
    Measure.integral_comp_div (fun u : ℝ => ‖(𝓕 f) u‖ ^ 2) (-(2 * Real.pi)),
    abs_neg, abs_of_pos Real.two_pi_pos, smul_eq_mul,
    SchwartzMap.integral_norm_sq_fourier]
  field_simp [Real.pi_ne_zero] <;> ring

private theorem schwartz_fourier_deriv (f : SchwartzMap ℝ ℂ) (t : ℝ) :
    plusFourier (deriv (f : ℝ → ℂ)) t =
      (-(t : ℂ) * Complex.I) * plusFourier f t := by
  have hd : Integrable (deriv (f : ℝ → ℂ)) :=
    (SchwartzMap.derivCLM ℂ ℂ f).integrable
  rw [plusFourier_eq_mathlib, plusFourier_eq_mathlib,
    Real.fourier_deriv f.integrable f.differentiable hd, smul_eq_mul]
  have hp : (Real.pi : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr Real.pi_ne_zero
  have hscale : (2 * (Real.pi : ℂ) * Complex.I *
      ((t / (-(2 * Real.pi)) : ℝ) : ℂ)) = -(t : ℂ) * Complex.I := by
    push_cast
    field_simp [hp] <;> ring
  rw [hscale]

private theorem schwartz_deriv_weight (f : SchwartzMap ℝ ℂ) (t : ℝ) :
    spectrumWeight (plusFourier (deriv (f : ℝ → ℂ))) t =
      spectrumWeight (plusFourier f) t * t ^ 2 := by
  unfold spectrumWeight
  rw [schwartz_fourier_deriv]
  simp only [norm_mul, norm_neg, Complex.norm_I, Complex.norm_real,
    Real.norm_eq_abs, mul_one, mul_pow, sq_abs]
  ring

private theorem schwartz_second_integrable (f : SchwartzMap ℝ ℂ) :
    Integrable (fun t : ℝ => spectrumWeight (plusFourier f) t * t ^ 2) := by
  have hi : Integrable (spectrumWeight (plusFourier (deriv (f : ℝ → ℂ)))) :=
    schwartz_weight_integrable (SchwartzMap.derivCLM ℂ ℂ f)
  have heq : spectrumWeight (plusFourier (deriv (f : ℝ → ℂ))) =
      fun t : ℝ => spectrumWeight (plusFourier f) t * t ^ 2 :=
    funext (schwartz_deriv_weight f)
  rwa [heq] at hi

private theorem schwartz_second_moment (f : SchwartzMap ℝ ℂ) :
    (∫ t : ℝ, spectrumWeight (plusFourier f) t * t ^ 2) =
      ∫ x : ℝ, ‖deriv (f : ℝ → ℂ) x‖ ^ 2 := by
  have heq : (fun t : ℝ => spectrumWeight (plusFourier f) t * t ^ 2) =
      spectrumWeight (plusFourier (deriv (f : ℝ → ℂ))) :=
    (funext (schwartz_deriv_weight f)).symm
  rw [heq]
  exact schwartz_mass (SchwartzMap.derivCLM ℂ ℂ f)

/-- The actual admissible test and its derivative have finite physical energy. -/
theorem admissible_energy_integrable {f : ℝ → ℂ} (hf : Admissible f) :
    Integrable (fun x : ℝ => ‖f x‖ ^ 2) ∧
      Integrable (fun x : ℝ => ‖deriv f x‖ ^ 2) :=
  ⟨square_integrable (asSchwartz hf),
    square_integrable (SchwartzMap.derivCLM ℂ ℂ (asSchwartz hf))⟩

/-- Absolute convergence of the literal plus integral at every real frequency. -/
theorem admissible_plusFourier_integrable {f : ℝ → ℂ} (hf : Admissible f) (t : ℝ) :
    Integrable (fun x : ℝ => f x * Complex.exp (((t * x : ℝ) : ℂ) * Complex.I)) := by
  have hc : Continuous (fun x : ℝ => Complex.exp (((t * x : ℝ) : ℂ) * Complex.I)) := by
    fun_prop
  have hn (x : ℝ) : ‖Complex.exp (((t * x : ℝ) : ℂ) * Complex.I)‖ = 1 := by
    simp [Complex.norm_exp]
  apply (asSchwartz hf).integrable.norm.mono'
    ((asSchwartz hf).continuous.mul hc).aestronglyMeasurable
  exact Filter.Eventually.of_forall fun x => by
    rw [norm_mul, hn, mul_one]

/-- Continuity of the literal plus transform on the unchanged compact test domain. -/
theorem admissible_plusFourier_continuous {f : ℝ → ℂ} (hf : Admissible f) :
    Continuous (plusFourier f) :=
  schwartz_continuous (asSchwartz hf)

/-- Both Fourier moment convergence obligations are discharged from admissibility. -/
theorem admissible_spectral_integrability {f : ℝ → ℂ} (hf : Admissible f) :
    Integrable (spectrumWeight (plusFourier f)) ∧
      Integrable (fun t : ℝ => spectrumWeight (plusFourier f) t * t ^ 2) :=
  ⟨schwartz_weight_integrable (asSchwartz hf), schwartz_second_integrable (asSchwartz hf)⟩

/-- Plancherel with the actual plus-sign transform and its 1/(2*pi) density. -/
theorem admissible_zeroth_moment {f : ℝ → ℂ} (hf : Admissible f) :
    (∫ t : ℝ, spectrumWeight (plusFourier f) t) = ∫ x : ℝ, ‖f x‖ ^ 2 :=
  schwartz_mass (asSchwartz hf)

/-- The normalized second spectral moment is exactly the physical derivative energy. -/
theorem admissible_second_moment {f : ℝ → ℂ} (hf : Admissible f) :
    (∫ t : ℝ, spectrumWeight (plusFourier f) t * t ^ 2) =
      ∫ x : ℝ, ‖deriv f x‖ ^ 2 :=
  schwartz_second_moment (asSchwartz hf)

/-- A literal source identity checks the sign as well as the squared normalization. -/
theorem admissible_plusFourier_deriv {f : ℝ → ℂ} (hf : Admissible f) (t : ℝ) :
    plusFourier (deriv f) t = (-(t : ℂ) * Complex.I) * plusFourier f t :=
  schwartz_fourier_deriv (asSchwartz hf) t

/-- The retained baseline is the full physical L2 mass, without a frequency cutoff. -/
theorem finiteApproximation_eq_physical_baseline (q : ℕ) (sigma T : ℝ) (N : ℕ)
    {f : ℝ → ℂ} (hf : Admissible f) :
    finiteApproximation q sigma (spectrumWeight (plusFourier f)) T N =
      baseline q sigma * (∫ x : ℝ, ‖f x‖ ^ 2) +
        ∫ t in Icc (-T) T, spectrumWeight (plusFourier f) t *
          GRWTSK.SpecialFunctions.CenteredDigamma.partialSum sigma (t / 2) N := by
  unfold finiteApproximation
  rw [admissible_zeroth_moment hf]

/-- Actual-test enclosure: no Fourier moment or integrability supplier remains a premise.
The conductor-one zeta specialization is retained; prime/pole positivity is not claimed. -/
theorem admissible_archimedean_enclosure (q : ℕ) (hq : 1 ≤ q)
    {sigma T : ℝ} (hsigma : 0 < sigma) (hT : 0 < T)
    {f : ℝ → ℂ} (hf : Admissible f) (N : ℕ) :
    0 ≤ spectralFunctional q sigma (spectrumWeight (plusFourier f)) -
        finiteApproximation q sigma (spectrumWeight (plusFourier f)) T N ∧
      spectralFunctional q sigma (spectrumWeight (plusFourier f)) -
        finiteApproximation q sigma (spectrumWeight (plusFourier f)) T N ≤
      (momentCoefficient (sigma + (N : ℝ)) + reciprocalCap sigma N / T ^ 2) *
        (∫ x : ℝ, ‖deriv f x‖ ^ 2) := by
  have hi := admissible_spectral_integrability hf
  have h := squared_spectrum_finite_enclosure q hsigma hT
    (admissible_plusFourier_continuous hf).measurable hi.1 hi.2 N
  rw [admissible_second_moment hf] at h
  exact h

/-- Two genuine actual-test integral regressions, not an assumed spectrum or True target. -/
theorem admissible_parity_enclosure_regression (q : ℕ) (hq : 1 ≤ q)
    {f : ℝ → ℂ} (hf : Admissible f) :
    (0 ≤ spectralFunctional q (1 / 4) (spectrumWeight (plusFourier f)) -
        finiteApproximation q (1 / 4) (spectrumWeight (plusFourier f)) 8 1 ∧
      spectralFunctional q (1 / 4) (spectrumWeight (plusFourier f)) -
        finiteApproximation q (1 / 4) (spectrumWeight (plusFourier f)) 8 1 ≤
        (541 / 2000 : ℝ) * (∫ x : ℝ, ‖deriv f x‖ ^ 2)) ∧
    (0 ≤ spectralFunctional q (3 / 4) (spectrumWeight (plusFourier f)) -
        finiteApproximation q (3 / 4) (spectrumWeight (plusFourier f)) 8 1 ∧
      spectralFunctional q (3 / 4) (spectrumWeight (plusFourier f)) -
        finiteApproximation q (3 / 4) (spectrumWeight (plusFourier f)) 8 1 ≤
        (1783 / 16464 : ℝ) * (∫ x : ℝ, ‖deriv f x‖ ^ 2)) := by
  constructor
  · have h := admissible_archimedean_enclosure q hq
      (sigma := (1 / 4 : ℝ)) (T := 8) (by norm_num) (by norm_num) hf 1
    norm_num [momentCoefficient, reciprocalCap] at h
    exact h
  · have h := admissible_archimedean_enclosure q hq
      (sigma := (3 / 4 : ℝ)) (T := 8) (by norm_num) (by norm_num) hf 1
    norm_num [momentCoefficient, reciprocalCap] at h
    exact h

end GRWTSK.NumberTheory.WeilFourierMoments
