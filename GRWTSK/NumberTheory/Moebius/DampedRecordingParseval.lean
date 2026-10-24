/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.AngularFrequencyParseval
import GRWTSK.NumberTheory.Moebius.FinitePrimeProductDebt

/-!
# Plancherel for the actual damped finite Möbius recording

This module constructs the literal compactly supported recording, identifies
its angular Fourier kernel with the finite-window Laplace transform on a
vertical line, and applies the already proved raw-integral/L² Plancherel
theorem.  Substitution of the finite prime-product identity retains the unborn
debt and both signed endpoint corrections.

No uniform-in-horizon estimate, P04 witness, or Riemann-hypothesis premise is
introduced.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.Moebius.DampedRecording

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PrimeProductDebt

/-- The actual pickup, damped at rate `σ` and zero-extended from the closed
physical recording `[0,T]` to the whole real line. -/
def window (σ T u : ℝ) : ℂ :=
  (Icc (0 : ℝ) T).indicator
    (fun v => (Real.exp (-σ * v) * wholePickup v : ℂ)) u

private theorem window_base_continuous (σ : ℝ) :
    Continuous (fun u : ℝ => (Real.exp (-σ * u) * wholePickup u : ℂ)) := by
  have he : Continuous (fun u : ℝ => (Real.exp (-σ * u) : ℂ)) :=
    Complex.continuous_ofReal.comp
      (Real.continuous_exp.comp (continuous_const.mul continuous_id))
  have hw : Continuous (fun u : ℝ => (wholePickup u : ℂ)) :=
    Complex.continuous_ofReal.comp wholePickup_continuous
  exact he.mul hw

theorem window_integrable (σ T : ℝ) : Integrable (window σ T) := by
  unfold window
  exact ((window_base_continuous σ).integrableOn_Icc).integrable_indicator measurableSet_Icc

theorem window_memLp_two (σ T : ℝ) : MemLp (window σ T) 2 volume := by
  have hm : AEStronglyMeasurable (window σ T) volume := by
    unfold window
    exact (window_base_continuous σ).aestronglyMeasurable.indicator measurableSet_Icc
  apply (memLp_two_iff_integrable_sq_norm hm).2
  have hc : Continuous (fun u : ℝ =>
      ‖(Real.exp (-σ * u) * wholePickup u : ℂ)‖ ^ 2) :=
    (window_base_continuous σ).norm.pow 2
  have hi : IntegrableOn (fun u : ℝ =>
      ‖(Real.exp (-σ * u) * wholePickup u : ℂ)‖ ^ 2) (Icc 0 T) :=
    hc.integrableOn_Icc
  have heq : (fun u : ℝ => ‖window σ T u‖ ^ 2) =
      (Icc (0 : ℝ) T).indicator
        (fun u => ‖(Real.exp (-σ * u) * wholePickup u : ℂ)‖ ^ 2) := by
    funext u
    by_cases hu : u ∈ Icc (0 : ℝ) T <;> simp [window, hu]
  rw [heq]
  exact hi.integrable_indicator measurableSet_Icc

/-- The angular Fourier kernel of the zero-extended damped recording is the
finite-window Laplace transform at `σ + iξ`. -/
theorem rawFourier_window {σ T : ℝ} (hT : 0 ≤ T) (ξ : ℝ) :
    PPNC.rawFourier (window σ T) ξ =
      noteWindowLaplace wholePickup ((σ : ℂ) + (ξ : ℂ) * Complex.I) T := by
  rw [PPNC.rawFourier_eq_integral]
  unfold window noteWindowLaplace
  rw [max_eq_right hT, intervalIntegral.integral_of_le hT,
    ← integral_Icc_eq_integral_Ioc]
  have hindicator :
      (fun u : ℝ =>
        (Icc (0 : ℝ) T).indicator
            (fun v => (Real.exp (-σ * v) * wholePickup v : ℂ)) u *
          Complex.exp (-(u * ξ : ℂ) * Complex.I)) =
      (Icc (0 : ℝ) T).indicator (fun u =>
        (Real.exp (-σ * u) * wholePickup u : ℂ) *
          Complex.exp (-(u * ξ : ℂ) * Complex.I)) := by
    funext u
    by_cases hu : u ∈ Icc (0 : ℝ) T <;> simp [hu]
  rw [hindicator, integral_indicator measurableSet_Icc]
  apply integral_congr_ae
  filter_upwards [] with u
  simp only [Complex.ofReal_mul, Complex.ofReal_exp]
  have he :
      Complex.exp (((-σ : ℝ) : ℂ) * (u : ℂ)) *
          Complex.exp (-(u * ξ : ℂ) * Complex.I) =
        Complex.exp (-((σ : ℂ) + (ξ : ℂ) * Complex.I) * u) := by
    rw [← Complex.exp_add]
    congr 1
    push_cast
    ring
  calc
    Complex.exp (((-σ : ℝ) : ℂ) * (u : ℂ)) * (wholePickup u : ℂ) *
        Complex.exp (-(u * ξ : ℂ) * Complex.I) =
      (Complex.exp (((-σ : ℝ) : ℂ) * (u : ℂ)) *
        Complex.exp (-(u * ξ : ℂ) * Complex.I)) * (wholePickup u : ℂ) := by ring
    _ = _ := by rw [he]

/-- The squared norm of the compact recording is exactly the actual weighted
physical energy on `[0,T]`. -/
theorem window_norm_sq_integral (σ T : ℝ) :
    (∫ u : ℝ, ‖window σ T u‖ ^ 2) =
      ∫ u in Icc (0 : ℝ) T, Real.exp (-2 * σ * u) * wholePickup u ^ 2 := by
  unfold window
  rw [← integral_indicator measurableSet_Icc]
  apply integral_congr_ae
  filter_upwards [] with u
  by_cases hu : u ∈ Icc (0 : ℝ) T
  · simp only [Set.indicator_of_mem hu, Complex.norm_mul, Complex.norm_real,
      Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
    have he : Real.exp (-σ * u) ^ 2 = Real.exp (-2 * σ * u) := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    rw [mul_pow, sq_abs, he]
  · simp [hu]

/-- Exact finite-window angular Plancherel identity for the literal pickup.
The result is valid for every real damping; positivity is needed only by later
half-line arguments. -/
theorem verticalLine_parseval {σ T : ℝ} (hT : 0 ≤ T) :
    (2 * Real.pi)⁻¹ *
        (∫ ξ : ℝ,
          ‖noteWindowLaplace wholePickup ((σ : ℂ) + (ξ : ℂ) * Complex.I) T‖ ^ 2) =
      ∫ u in Icc (0 : ℝ) T, Real.exp (-2 * σ * u) * wholePickup u ^ 2 := by
  have hp := PPNCP04.Plancherel.rawFourier_parseval
    (window σ T) (window_integrable σ T) (window_memLp_two σ T)
  rw [window_norm_sq_integral] at hp
  simpa only [rawFourier_window hT] using hp

/-- Nonzero denominator on a positive vertical line. -/
theorem verticalZ_ne_zero {σ ξ : ℝ} (hσ : 0 < σ) :
    (σ : ℂ) + (ξ : ℂ) * Complex.I ≠ 0 := by
  intro h
  have := congrArg Complex.re h
  simp at this
  linarith

/-- The shifted reciprocal-zeta parameter is also nonzero on a positive
vertical line. -/
theorem verticalS_ne_zero {σ ξ : ℝ} (hσ : 0 < σ) :
    (σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2 ≠ 0 := by
  intro h
  have := congrArg Complex.re h
  norm_num at this
  linarith

/-- Pointwise completed-numerator representation on a positive vertical line.
Every correction term remains inside `cutoffCorrection`. -/
theorem verticalLine_completed_formula {σ T : ℝ} (hσ : 0 < σ) (hT : 0 ≤ T)
    (ξ : ℝ) :
    noteWindowLaplace wholePickup ((σ : ℂ) + (ξ : ℂ) * Complex.I) T =
      (rawPrimeProduct ⌊Real.exp T⌋₊
          ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2) -
        cutoffCorrection ⌊Real.exp T⌋₊ T
          ((σ : ℂ) + (ξ : ℂ) * Complex.I)
          ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2)) /
      (((σ : ℂ) + (ξ : ℂ) * Complex.I) *
        ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2)) := by
  exact wholePickup_cutoff_laplace_prime_product hT rfl
    (verticalZ_ne_zero hσ) (verticalS_ne_zero hσ)

/-- The exact completed prime-product/debt expression has precisely the
physical damped recording energy as its vertical-line L² mass.  A bound
uniform in `T` is therefore the still-open arithmetic input, not a Fourier
normalization issue. -/
theorem completedNumerator_verticalLine_parseval {σ T : ℝ}
    (hσ : 0 < σ) (hT : 0 ≤ T) :
    (2 * Real.pi)⁻¹ *
        (∫ ξ : ℝ,
          ‖(rawPrimeProduct ⌊Real.exp T⌋₊
                ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2) -
              cutoffCorrection ⌊Real.exp T⌋₊ T
                ((σ : ℂ) + (ξ : ℂ) * Complex.I)
                ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2)) /
            (((σ : ℂ) + (ξ : ℂ) * Complex.I) *
              ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2))‖ ^ 2) =
      ∫ u in Icc (0 : ℝ) T, Real.exp (-2 * σ * u) * wholePickup u ^ 2 := by
  rw [← verticalLine_parseval hT]
  congr 2
  funext ξ
  rw [verticalLine_completed_formula hσ hT ξ]

end GRWTSK.NumberTheory.Moebius.DampedRecording

#print axioms GRWTSK.NumberTheory.Moebius.DampedRecording.rawFourier_window
#print axioms GRWTSK.NumberTheory.Moebius.DampedRecording.verticalLine_parseval
#print axioms GRWTSK.NumberTheory.Moebius.DampedRecording.verticalLine_completed_formula
#print axioms GRWTSK.NumberTheory.Moebius.DampedRecording.completedNumerator_verticalLine_parseval
