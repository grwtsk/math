/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.SpecialFunctions.CenteredDigammaSourceReturn
import Mathlib.MeasureTheory.Constructions.BorelSpace.Metrizable
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Tactic.FunProp

/-!
# Moment-controlled truncation of the actual archimedean spectral integral

MSC2020: 33B15 (primary), 42A38, 11M06, 11M26.

Consume the actual-source centered digamma identity, prove measurability and
weighted integrability, and integrate the complete rational-series remainder.
The second spectral moment replaces the previous window-supremum T^2 budget.
A finite reciprocal-sum cap controls the omitted retained multiplier, so
only the second moment is needed for both errors. This gives a one-sided
finite-window/finite-series enclosure of the original digamma integrand with
the conductor and constant baseline retained exactly.

The weight may be ||F(t)||^2/(2*pi); no equality of an arbitrary spectrum F
with the Fourier transform of a test is assumed or manufactured. Moment
integrability is explicit. No principal-value or totalized-integral shortcut
is used. The complete Weil prime/pole form is not defined or proved positive
here. The companion gives the exact Fourier consumer and remaining suppliers.

Primary dependencies: CenteredDigammaSourceReturn and Mathlib's measurable
limit, integrable domination, indicator and Bochner integral APIs. Classical
comparator: NIST DLMF 5.7.6. No novelty claim. Local attribution as above.
SOURCE_PROOF_CANDIDATE: elaboration, kernel replay, transitive axiom audit,
independent review and numerical certification NOT_RUN. Refs math#1801.
-/

set_option autoImplicit false
noncomputable section

open Set Filter MeasureTheory
open scoped Topology BigOperators

namespace GRWTSK.SpecialFunctions.ArchimedeanMomentBounds

open CenteredDigamma

/-- Coefficient of t^2 in the complete source budget at imaginary part t/2. -/
def momentCoefficient (sigma : ℝ) : ℝ :=
  (1 / 4 : ℝ) * (1 / sigma ^ 3 + 1 / (2 * sigma ^ 2))

/-- Frequency-independent cap for the first N positive rational terms. -/
def reciprocalCap (sigma : ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N, 1 / (sigma + (n : ℝ))

/-- The actual conductor/digamma spectral integrand, with no positivity shift. -/
def spectralFunctional (q : ℕ) (sigma : ℝ) (w : ℝ → ℝ) : ℝ :=
  ∫ t : ℝ, w t * (Real.log ((q : ℝ) / Real.pi) +
    (Complex.digamma ((sigma : ℂ) + ((t / 2 : ℝ) : ℂ) * Complex.I)).re)

/-- The complete constant baseline; it is not asserted to be nonnegative. -/
def baseline (q : ℕ) (sigma : ℝ) : ℝ :=
  Real.log ((q : ℝ) / Real.pi) + (Complex.digamma (sigma : ℂ)).re

/-- Only the centered part is truncated. Both sides retain the whole baseline. -/
def finiteApproximation (q : ℕ) (sigma : ℝ) (w : ℝ → ℝ) (T : ℝ) (N : ℕ) : ℝ :=
  baseline q sigma * (∫ t : ℝ, w t) +
    ∫ t in Icc (-T) T, w t * partialSum sigma (t / 2) N

/-- Nonnegative spectral density with the plus-Fourier Plancherel normalization. -/
def spectrumWeight (F : ℝ → ℂ) (t : ℝ) : ℝ := ‖F t‖ ^ 2 / (2 * Real.pi)

private theorem coefficient_nonneg {sigma : ℝ} (hsigma : 0 < sigma) :
    0 ≤ momentCoefficient sigma := by
  unfold momentCoefficient
  positivity

private theorem budget_frequency (sigma t : ℝ) :
    remainderBudget sigma (t / 2) = momentCoefficient sigma * t ^ 2 := by
  unfold remainderBudget momentCoefficient
  ring

private theorem partialSum_measurable (sigma : ℝ) (N : ℕ) :
    Measurable (fun y : ℝ => partialSum sigma y N) := by
  unfold partialSum term
  fun_prop

/-- Measurability is derived from the actual-source series and proved convergence. -/
theorem centered_measurable {sigma : ℝ} (hsigma : 0 < sigma) :
    Measurable (centered sigma) := by
  apply measurable_of_tendsto_metrizable (f := fun N y => partialSum sigma y N)
  · exact partialSum_measurable sigma
  · apply tendsto_pi_nhds.2
    intro y
    rw [centered_eq_tsum hsigma y]
    exact (summable_terms hsigma y).hasSum.tendsto_sum_nat

private theorem partialSum_between {sigma : ℝ} (hsigma : 0 < sigma)
    (y : ℝ) (N : ℕ) :
    0 ≤ partialSum sigma y N ∧ partialSum sigma y N ≤ centered sigma y := by
  constructor
  · unfold partialSum
    apply Finset.sum_nonneg
    intro n _
    have hsN : 0 < sigma + (n : ℝ) :=
      add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)
    unfold term
    positivity
  · exact sub_nonneg.mp (centered_tail_enclosure hsigma y N).1

/-- Pointwise source remainder with the actual spectral frequency t, for every N. -/
theorem frequency_remainder_bounds {sigma : ℝ} (hsigma : 0 < sigma)
    (t : ℝ) (N : ℕ) :
    0 ≤ centered sigma (t / 2) - partialSum sigma (t / 2) N ∧
      centered sigma (t / 2) - partialSum sigma (t / 2) N ≤
        momentCoefficient (sigma + (N : ℝ)) * t ^ 2 := by
  simpa only [budget_frequency] using centered_tail_enclosure hsigma (t / 2) N

private theorem frequency_bounds {sigma : ℝ} (hsigma : 0 < sigma) (t : ℝ) :
    0 ≤ centered sigma (t / 2) ∧
      centered sigma (t / 2) ≤ momentCoefficient sigma * t ^ 2 := by
  simpa only [budget_frequency] using centered_bounds hsigma (t / 2)

/-- A finite second moment supplies convergence of the centered spectral integral. -/
theorem integrable_weighted_centered {sigma : ℝ} (hsigma : 0 < sigma)
    {w : ℝ → ℝ} (hw : Measurable w) (hw0 : ∀ t, 0 ≤ w t)
    (h2 : Integrable (fun t : ℝ => w t * t ^ 2)) :
    Integrable (fun t : ℝ => w t * centered sigma (t / 2)) := by
  have hm : Measurable (fun t : ℝ => centered sigma (t / 2)) :=
    (centered_measurable hsigma).comp (measurable_id.div_const 2)
  refine (h2.const_mul (momentCoefficient sigma)).mono'
    (hw.mul hm).aestronglyMeasurable ?_
  exact ae_of_all _ fun t => by
    rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (hw0 t) (frequency_bounds hsigma t).1)]
    calc
      w t * centered sigma (t / 2) ≤ w t * (momentCoefficient sigma * t ^ 2) :=
        mul_le_mul_of_nonneg_left (frequency_bounds hsigma t).2 (hw0 t)
      _ = momentCoefficient sigma * (w t * t ^ 2) := by ring

/-- Every rational partial multiplier is integrable against the same weight. -/
theorem integrable_weighted_partialSum {sigma : ℝ} (hsigma : 0 < sigma)
    {w : ℝ → ℝ} (hw : Measurable w) (hw0 : ∀ t, 0 ≤ w t)
    (h2 : Integrable (fun t : ℝ => w t * t ^ 2)) (N : ℕ) :
    Integrable (fun t : ℝ => w t * partialSum sigma (t / 2) N) := by
  have hm : Measurable (fun t : ℝ => partialSum sigma (t / 2) N) :=
    (partialSum_measurable sigma N).comp (measurable_id.div_const 2)
  refine (integrable_weighted_centered hsigma hw hw0 h2).mono'
    (hw.mul hm).aestronglyMeasurable ?_
  exact ae_of_all _ fun t => by
    rw [Real.norm_eq_abs,
      abs_of_nonneg (mul_nonneg (hw0 t) (partialSum_between hsigma (t / 2) N).1)]
    exact mul_le_mul_of_nonneg_left (partialSum_between hsigma (t / 2) N).2 (hw0 t)

/-- Complete integrated series remainder. No finite-frequency window is needed. -/
theorem integrated_series_remainder {sigma : ℝ} (hsigma : 0 < sigma)
    {w : ℝ → ℝ} (hw : Measurable w) (hw0 : ∀ t, 0 ≤ w t)
    (h2 : Integrable (fun t : ℝ => w t * t ^ 2)) (N : ℕ) :
    0 ≤ (∫ t : ℝ, w t * centered sigma (t / 2)) -
        (∫ t : ℝ, w t * partialSum sigma (t / 2) N) ∧
      (∫ t : ℝ, w t * centered sigma (t / 2)) -
        (∫ t : ℝ, w t * partialSum sigma (t / 2) N) ≤
      momentCoefficient (sigma + (N : ℝ)) * (∫ t : ℝ, w t * t ^ 2) := by
  have hc := integrable_weighted_centered hsigma hw hw0 h2
  have hp := integrable_weighted_partialSum hsigma hw hw0 h2 N
  have hd : Integrable (fun t : ℝ => w t *
      (centered sigma (t / 2) - partialSum sigma (t / 2) N)) := by
    simpa only [mul_sub] using hc.sub hp
  have heq : (∫ t : ℝ, w t * centered sigma (t / 2)) -
      (∫ t : ℝ, w t * partialSum sigma (t / 2) N) =
      ∫ t : ℝ, w t * (centered sigma (t / 2) - partialSum sigma (t / 2) N) := by
    simp only [mul_sub, integral_sub hc hp]
  rw [heq]
  constructor
  · exact integral_nonneg fun t =>
      mul_nonneg (hw0 t) (frequency_remainder_bounds hsigma t N).1
  · calc
      _ ≤ ∫ t : ℝ, momentCoefficient (sigma + (N : ℝ)) * (w t * t ^ 2) := by
        apply integral_mono_ae hd (h2.const_mul _)
        exact ae_of_all _ fun t => by
          have h := mul_le_mul_of_nonneg_left
            (frequency_remainder_bounds hsigma t N).2 (hw0 t)
          simpa only [mul_left_comm, mul_assoc] using h
      _ = _ := integral_const_mul _ _

private theorem term_le_reciprocal {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    term sigma y ≤ 1 / sigma := by
  have hd : 0 < sigma * (sigma ^ 2 + y ^ 2) :=
    mul_pos hsigma (add_pos_of_pos_of_nonneg (sq_pos_of_pos hsigma) (sq_nonneg y))
  unfold term
  apply (div_le_iff₀ hd).2
  have heq : (1 / sigma) * (sigma * (sigma ^ 2 + y ^ 2)) = sigma ^ 2 + y ^ 2 := by
    field_simp [hsigma.ne'] <;> ring
  rw [heq]
  exact le_add_of_nonneg_left (sq_nonneg sigma)

private theorem cap_nonneg {sigma : ℝ} (hsigma : 0 < sigma) (N : ℕ) :
    0 ≤ reciprocalCap sigma N := by
  unfold reciprocalCap
  apply Finset.sum_nonneg
  intro n _
  have hsN : 0 < sigma + (n : ℝ) :=
    add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)
  positivity

/-- The retained multiplier is bounded on the entire frequency line, not just a window. -/
theorem partialSum_le_reciprocalCap {sigma : ℝ} (hsigma : 0 < sigma)
    (y : ℝ) (N : ℕ) : partialSum sigma y N ≤ reciprocalCap sigma N := by
  unfold partialSum reciprocalCap
  apply Finset.sum_le_sum
  intro n _
  exact term_le_reciprocal (add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)) y

private theorem square_le_of_notMem_window {T t : ℝ} (hT : 0 < T)
    (ht : t ∉ Icc (-T) T) : T ^ 2 ≤ t ^ 2 := by
  have habs : T ≤ |t| := by
    by_cases hleft : -T ≤ t
    · have hright : T < t := lt_of_not_ge (fun h => ht ⟨hleft, h⟩)
      exact hright.le.trans (le_abs_self t)
    · have hleft' : t < -T := lt_of_not_ge hleft
      have h := neg_le_abs t
      linarith
  have h := mul_nonneg (sub_nonneg.mpr habs)
    (add_nonneg (abs_nonneg t) hT.le)
  nlinarith [sq_abs t]

private theorem window_error_pointwise {sigma T : ℝ} (hsigma : 0 < sigma)
    (hT : 0 < T) {w : ℝ → ℝ} (hw0 : ∀ t, 0 ≤ w t) (N : ℕ) (t : ℝ) :
    0 ≤ w t * centered sigma (t / 2) -
      (Icc (-T) T).indicator (fun u => w u * partialSum sigma (u / 2) N) t ∧
    w t * centered sigma (t / 2) -
      (Icc (-T) T).indicator (fun u => w u * partialSum sigma (u / 2) N) t ≤
      (momentCoefficient (sigma + (N : ℝ)) + reciprocalCap sigma N / T ^ 2) *
        (w t * t ^ 2) := by
  have hcap := cap_nonneg hsigma N
  have hrem := frequency_remainder_bounds hsigma t N
  have hremw : w t * (centered sigma (t / 2) - partialSum sigma (t / 2) N) ≤
      momentCoefficient (sigma + (N : ℝ)) * (w t * t ^ 2) := by
    have h := mul_le_mul_of_nonneg_left hrem.2 (hw0 t)
    simpa only [mul_left_comm, mul_assoc] using h
  have htail0 : 0 ≤ (reciprocalCap sigma N / T ^ 2) * (w t * t ^ 2) :=
    mul_nonneg (div_nonneg hcap (sq_nonneg T)) (mul_nonneg (hw0 t) (sq_nonneg t))
  by_cases ht : t ∈ Icc (-T) T
  · rw [indicator_of_mem ht]
    have hlo := mul_nonneg (hw0 t) hrem.1
    constructor <;> nlinarith
  · rw [indicator_of_notMem ht, sub_zero]
    refine ⟨mul_nonneg (hw0 t) (frequency_bounds hsigma t).1, ?_⟩
    have hcapScale : reciprocalCap sigma N ≤
        (reciprocalCap sigma N / T ^ 2) * t ^ 2 := by
      calc
        reciprocalCap sigma N = (reciprocalCap sigma N / T ^ 2) * T ^ 2 :=
          (div_mul_cancel₀ _ (sq_pos_of_pos hT).ne').symm
        _ ≤ _ := mul_le_mul_of_nonneg_left (square_le_of_notMem_window hT ht)
          (div_nonneg hcap (sq_nonneg T))
    have htailw : w t * partialSum sigma (t / 2) N ≤
        (reciprocalCap sigma N / T ^ 2) * (w t * t ^ 2) := by
      calc
        w t * partialSum sigma (t / 2) N ≤ w t * reciprocalCap sigma N :=
          mul_le_mul_of_nonneg_left (partialSum_le_reciprocalCap hsigma (t / 2) N) (hw0 t)
        _ ≤ w t * ((reciprocalCap sigma N / T ^ 2) * t ^ 2) :=
          mul_le_mul_of_nonneg_left hcapScale (hw0 t)
        _ = _ := by ring
    calc
      w t * centered sigma (t / 2) =
          w t * (centered sigma (t / 2) - partialSum sigma (t / 2) N) +
            w t * partialSum sigma (t / 2) N := by ring
      _ ≤ momentCoefficient (sigma + (N : ℝ)) * (w t * t ^ 2) +
          (reciprocalCap sigma N / T ^ 2) * (w t * t ^ 2) := add_le_add hremw htailw
      _ = _ := by ring

/-- Both complete omitted tails are controlled by the second moment alone.
The reciprocal cap bounds only the finite retained multiplier; the unbounded
actual multiplier is never incorrectly bounded by a frequency-independent cap. -/
theorem finite_window_remainder {sigma T : ℝ} (hsigma : 0 < sigma)
    (hT : 0 < T) {w : ℝ → ℝ} (hw : Measurable w) (hw0 : ∀ t, 0 ≤ w t)
    (h2 : Integrable (fun t : ℝ => w t * t ^ 2)) (N : ℕ) :
    0 ≤ (∫ t : ℝ, w t * centered sigma (t / 2)) -
        (∫ t in Icc (-T) T, w t * partialSum sigma (t / 2) N) ∧
      (∫ t : ℝ, w t * centered sigma (t / 2)) -
        (∫ t in Icc (-T) T, w t * partialSum sigma (t / 2) N) ≤
      (momentCoefficient (sigma + (N : ℝ)) + reciprocalCap sigma N / T ^ 2) *
        (∫ t : ℝ, w t * t ^ 2) := by
  have hc := integrable_weighted_centered hsigma hw hw0 h2
  have hp := integrable_weighted_partialSum hsigma hw hw0 h2 N
  have hi : Integrable ((Icc (-T) T).indicator
      (fun t : ℝ => w t * partialSum sigma (t / 2) N)) :=
    hp.indicator measurableSet_Icc
  have hd := hc.sub hi
  have heq : (∫ t : ℝ, w t * centered sigma (t / 2)) -
      (∫ t in Icc (-T) T, w t * partialSum sigma (t / 2) N) =
      ∫ t : ℝ, w t * centered sigma (t / 2) -
        (Icc (-T) T).indicator (fun u => w u * partialSum sigma (u / 2) N) t := by
    rw [integral_sub hc hi, integral_indicator measurableSet_Icc]
  rw [heq]
  constructor
  · exact integral_nonneg fun t => (window_error_pointwise hsigma hT hw0 N t).1
  · calc
      _ ≤ ∫ t : ℝ,
          (momentCoefficient (sigma + (N : ℝ)) + reciprocalCap sigma N / T ^ 2) *
            (w t * t ^ 2) := by
        apply integral_mono_ae hd (h2.const_mul _)
        exact ae_of_all _ fun t => (window_error_pointwise hsigma hT hw0 N t).2
      _ = _ := integral_const_mul _ _

private theorem source_integrand_split (q : ℕ) (sigma : ℝ) (w : ℝ → ℝ) :
    (fun t : ℝ => w t * (Real.log ((q : ℝ) / Real.pi) +
      (Complex.digamma ((sigma : ℂ) + ((t / 2 : ℝ) : ℂ) * Complex.I)).re)) =
    (fun t : ℝ => baseline q sigma * w t + w t * centered sigma (t / 2)) := by
  funext t
  unfold baseline centered
  ring

/-- The original, uncentered conductor/digamma integral really is integrable. -/
theorem spectral_integrable (q : ℕ) {sigma : ℝ} (hsigma : 0 < sigma)
    {w : ℝ → ℝ} (hw : Measurable w) (hw0 : ∀ t, 0 ≤ w t)
    (h0 : Integrable w) (h2 : Integrable (fun t : ℝ => w t * t ^ 2)) :
    Integrable (fun t : ℝ => w t * (Real.log ((q : ℝ) / Real.pi) +
      (Complex.digamma ((sigma : ℂ) + ((t / 2 : ℝ) : ℂ) * Complex.I)).re)) := by
  rw [source_integrand_split]
  exact (h0.const_mul _).add (integrable_weighted_centered hsigma hw hw0 h2)

/-- Exact return to the full spectral source, not a definition by a positive model. -/
theorem spectral_eq_baseline_add_centered (q : ℕ) {sigma : ℝ} (hsigma : 0 < sigma)
    {w : ℝ → ℝ} (hw : Measurable w) (hw0 : ∀ t, 0 ≤ w t)
    (h0 : Integrable w) (h2 : Integrable (fun t : ℝ => w t * t ^ 2)) :
    spectralFunctional q sigma w = baseline q sigma * (∫ t : ℝ, w t) +
      ∫ t : ℝ, w t * centered sigma (t / 2) := by
  unfold spectralFunctional
  rw [source_integrand_split,
    integral_add (h0.const_mul _) (integrable_weighted_centered hsigma hw hw0 h2),
    integral_const_mul]

/-- Source-exact archimedean finite-frequency/finite-series enclosure.
The conductor-one zeta source is included; positivity of the baseline is not assumed. -/
theorem spectral_finite_enclosure (q : ℕ) {sigma T : ℝ} (hsigma : 0 < sigma)
    (hT : 0 < T) {w : ℝ → ℝ} (hw : Measurable w) (hw0 : ∀ t, 0 ≤ w t)
    (h0 : Integrable w) (h2 : Integrable (fun t : ℝ => w t * t ^ 2))
    (N : ℕ) :
    0 ≤ spectralFunctional q sigma w - finiteApproximation q sigma w T N ∧
      spectralFunctional q sigma w - finiteApproximation q sigma w T N ≤
      (momentCoefficient (sigma + (N : ℝ)) + reciprocalCap sigma N / T ^ 2) *
        (∫ t : ℝ, w t * t ^ 2) := by
  rw [spectral_eq_baseline_add_centered q hsigma hw hw0 h0 h2]
  unfold finiteApproximation
  have h := finite_window_remainder hsigma hT hw hw0 h2 N
  constructor <;> linarith [h.1, h.2]

/-- Concrete squared-spectrum consumer, retaining actual integral moment hypotheses.
Identifying F with a chosen test Fourier transform and proving its moments
are separate applications, not automatic consequences of this theorem. -/
theorem squared_spectrum_finite_enclosure (q : ℕ) {sigma T : ℝ}
    (hsigma : 0 < sigma) (hT : 0 < T) {F : ℝ → ℂ} (hF : Measurable F)
    (h0 : Integrable (spectrumWeight F))
    (h2 : Integrable (fun t : ℝ => spectrumWeight F t * t ^ 2))
    (N : ℕ) :
    0 ≤ spectralFunctional q sigma (spectrumWeight F) -
        finiteApproximation q sigma (spectrumWeight F) T N ∧
      spectralFunctional q sigma (spectrumWeight F) -
        finiteApproximation q sigma (spectrumWeight F) T N ≤
      (momentCoefficient (sigma + (N : ℝ)) + reciprocalCap sigma N / T ^ 2) *
        (∫ t : ℝ, spectrumWeight F t * t ^ 2) := by
  have hw : Measurable (spectrumWeight F) := by
    unfold spectrumWeight
    fun_prop
  have hw0 : ∀ t, 0 ≤ spectrumWeight F t := by
    intro t
    unfold spectrumWeight
    positivity
  exact spectral_finite_enclosure q hsigma hT hw hw0 h0 h2 N

/-- Exact coefficient arithmetic at both parity parameters, with N=1 and T=8.
The meaningful regression is an enclosure for the original spectral integral. -/
theorem parity_spectral_enclosure_regression (q : ℕ) {w : ℝ → ℝ}
    (hw : Measurable w) (hw0 : ∀ t, 0 ≤ w t) (h0 : Integrable w)
    (h2 : Integrable (fun t : ℝ => w t * t ^ 2)) :
    (0 ≤ spectralFunctional q (1 / 4) w - finiteApproximation q (1 / 4) w 8 1 ∧
      spectralFunctional q (1 / 4) w - finiteApproximation q (1 / 4) w 8 1 ≤
        (541 / 2000 : ℝ) * (∫ t : ℝ, w t * t ^ 2)) ∧
    (0 ≤ spectralFunctional q (3 / 4) w - finiteApproximation q (3 / 4) w 8 1 ∧
      spectralFunctional q (3 / 4) w - finiteApproximation q (3 / 4) w 8 1 ≤
        (1783 / 16464 : ℝ) * (∫ t : ℝ, w t * t ^ 2)) := by
  constructor
  · have h := spectral_finite_enclosure q (sigma := (1 / 4 : ℝ)) (T := 8)
      (by norm_num) (by norm_num) hw hw0 h0 h2 1
    norm_num [momentCoefficient, reciprocalCap] at h
    exact h
  · have h := spectral_finite_enclosure q (sigma := (3 / 4 : ℝ)) (T := 8)
      (by norm_num) (by norm_num) hw hw0 h0 h2 1
    norm_num [momentCoefficient, reciprocalCap] at h
    exact h

end GRWTSK.SpecialFunctions.ArchimedeanMomentBounds
