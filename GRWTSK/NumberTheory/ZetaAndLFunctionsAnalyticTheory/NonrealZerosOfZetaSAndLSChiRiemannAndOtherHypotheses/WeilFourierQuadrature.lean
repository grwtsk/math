/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilFourierMoments
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic.FieldSimp

/-!
# Whole-cell quadrature for the actual archimedean Fourier core

MSC2020: 11M26 (primary), 65D32, 42A38.

Derive the regularity of the retained core from the unchanged admissible
complex test and the actual rational digamma partial sum. A midpoint value
is never treated as an enclosure for its cell. The proved global Lipschitz
constant pays the entire cell error; sample and baseline inaccuracies are
separate hypotheses with separate budgets. The old nonnegative infinite
series/frequency remainder is retained unchanged.

This is source-bound quadrature soundness, not an executed numerical
certificate, effective evaluation of every smooth function, positivity of
the full pole-inclusive Weil form, or RH/GRH. See the adjacent analytical
argument and individual declaration provenance. Classical elementary
estimates; no novelty claimed. Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit,
independent review and numerical functional certification NOT_RUN.
Coordination: math#1801, scope comment 6815942210.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators ContDiff

namespace GRWTSK.NumberTheory.WeilFourierQuadrature

open WeilNegativeWitness WeilFourierMoments
open GRWTSK.SpecialFunctions.CenteredDigamma
open GRWTSK.SpecialFunctions.ArchimedeanMomentBounds

/-- Physical L1 mass; its convergence is supplied from admissibility. -/
def l1Mass (f : ℝ → ℂ) : ℝ := ∫ x : ℝ, ‖f x‖

/-- First absolute physical moment, not a spectral moment. -/
def firstMoment (f : ℝ → ℂ) : ℝ := ∫ x : ℝ, |x| * ‖f x‖

/-- A global Lipschitz constant for the finite multiplier at imaginary part t/2. -/
def slopeCap (sigma : ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N, 1 / (2 * (sigma + (n : ℝ)) ^ 2)

/-- The unchanged centered finite-frequency integrand. -/
def core (sigma : ℝ) (N : ℕ) (f : ℝ → ℂ) (t : ℝ) : ℝ :=
  spectrumWeight (plusFourier f) t * partialSum sigma (t / 2) N

/-- Explicit whole-line Lipschitz budget for the core. -/
def coreSlope (sigma : ℝ) (N : ℕ) (f : ℝ → ℂ) : ℝ :=
  reciprocalCap sigma N * (l1Mass f * firstMoment f / Real.pi) +
    slopeCap sigma N * (l1Mass f ^ 2 / (2 * Real.pi))

/-- Composite midpoint sum, with mesh h and left endpoint a. -/
def midpointSum (a h : ℝ) (m : ℕ) (g : ℝ → ℝ) : ℝ :=
  h * ∑ j ∈ Finset.range m, g (a + (j : ℝ) * h + h / 2)

/-- Midpoint sum for the whole frequency window; conclusions require m > 0. -/
def coreMidpoint (sigma : ℝ) (N : ℕ) (f : ℝ → ℂ) (T : ℝ) (m : ℕ) : ℝ :=
  midpointSum (-T) (2 * T / (m : ℝ)) m (core sigma N f)

/-- Conservative whole-cell error. The sharper factor 1 is not claimed here. -/
def gridBudget (sigma : ℝ) (N : ℕ) (f : ℝ → ℂ) (T : ℝ) (m : ℕ) : ℝ :=
  2 * coreSlope sigma N f * T ^ 2 / (m : ℝ)

/-- The earlier complete series/frequency budget in physical derivative energy. -/
def tailBudget (sigma : ℝ) (N : ℕ) (f : ℝ → ℂ) (T : ℝ) : ℝ :=
  (momentCoefficient (sigma + (N : ℝ)) + reciprocalCap sigma N / T ^ 2) *
    (∫ x : ℝ, ‖deriv f x‖ ^ 2)

private theorem physical_moments_integrable {f : ℝ → ℂ} (hf : Admissible f) :
    Integrable (fun x : ℝ => ‖f x‖) ∧
      Integrable (fun x : ℝ => |x| * ‖f x‖) := by
  let s := hf.2.toSchwartzMap hf.1
  refine ⟨s.integrable.norm, ?_⟩
  simpa only [pow_one, Real.norm_eq_abs] using s.integrable_pow_mul volume 1

private theorem mass_nonneg (f : ℝ → ℂ) : 0 ≤ l1Mass f :=
  integral_nonneg fun x => norm_nonneg (f x)

private theorem moment_nonneg (f : ℝ → ℂ) : 0 ≤ firstMoment f :=
  integral_nonneg fun x => mul_nonneg (abs_nonneg x) (norm_nonneg (f x))

private theorem phase_sub_bound (u v : ℝ) :
    ‖Complex.exp ((u : ℂ) * Complex.I) - Complex.exp ((v : ℂ) * Complex.I)‖ ≤
      |u - v| := by
  have heq : Complex.exp ((u : ℂ) * Complex.I) - Complex.exp ((v : ℂ) * Complex.I) =
      Complex.exp ((v : ℂ) * Complex.I) *
        (Complex.exp (((u - v : ℝ) : ℂ) * Complex.I) - 1) := by
    have harg : (v : ℂ) * Complex.I + (((u - v : ℝ) : ℂ) * Complex.I) =
        (u : ℂ) * Complex.I := by push_cast; ring
    rw [mul_sub, mul_one, ← Complex.exp_add, harg]
  rw [heq, norm_mul]
  have hn : ‖Complex.exp ((v : ℂ) * Complex.I)‖ = 1 := by
    simp [Complex.norm_exp]
  rw [hn, one_mul]
  simpa only [mul_comm, Real.norm_eq_abs] using
    (Real.norm_exp_I_mul_ofReal_sub_one_le (x := u - v))

/-- Actual plus-Fourier mass bound and Lipschitz estimate, with no supplied spectrum. -/
theorem admissible_plusFourier_bounds {f : ℝ → ℂ} (hf : Admissible f) (s t : ℝ) :
    ‖plusFourier f s‖ ≤ l1Mass f ∧
      ‖plusFourier f s - plusFourier f t‖ ≤ firstMoment f * |s - t| := by
  constructor
  · unfold plusFourier l1Mass
    calc
      _ ≤ ∫ x : ℝ, ‖f x * Complex.exp (((s * x : ℝ) : ℂ) * Complex.I)‖ :=
        norm_integral_le_integral_norm _
      _ = _ := by simp [norm_mul, Complex.norm_exp]
  · have hs := admissible_plusFourier_integrable hf s
    have ht := admissible_plusFourier_integrable hf t
    have hm := (physical_moments_integrable hf).2
    unfold plusFourier
    rw [← integral_sub hs ht]
    calc
      _ ≤ ∫ x : ℝ,
          ‖f x * Complex.exp (((s * x : ℝ) : ℂ) * Complex.I) -
            f x * Complex.exp (((t * x : ℝ) : ℂ) * Complex.I)‖ :=
        norm_integral_le_integral_norm _
      _ ≤ ∫ x : ℝ, |s - t| * (|x| * ‖f x‖) := by
        apply integral_mono_ae (hs.sub ht).norm (hm.const_mul _)
        exact Filter.Eventually.of_forall fun x => by
          rw [← mul_sub, norm_mul]
          calc
            _ ≤ ‖f x‖ * |s * x - t * x| :=
              mul_le_mul_of_nonneg_left (phase_sub_bound (s * x) (t * x))
                (norm_nonneg (f x))
            _ = _ := by rw [← sub_mul, abs_mul]; ring
      _ = firstMoment f * |s - t| := by
        rw [integral_const_mul]
        unfold firstMoment
        ring

/-- Energy density has a whole-line Lipschitz budget from physical L1 moments. -/
theorem admissible_spectrumWeight_sub_bound {f : ℝ → ℂ} (hf : Admissible f)
    (s t : ℝ) :
    |spectrumWeight (plusFourier f) s - spectrumWeight (plusFourier f) t| ≤
      (l1Mass f * firstMoment f / Real.pi) * |s - t| := by
  have hs := (admissible_plusFourier_bounds hf s t).1
  have ht := (admissible_plusFourier_bounds hf t s).1
  have hd := (abs_norm_sub_norm_le (plusFourier f s) (plusFourier f t)).trans
    (admissible_plusFourier_bounds hf s t).2
  have hsum : ‖plusFourier f s‖ + ‖plusFourier f t‖ ≤ 2 * l1Mass f := by linarith
  have hsq : |‖plusFourier f s‖ ^ 2 - ‖plusFourier f t‖ ^ 2| ≤
      2 * l1Mass f * firstMoment f * |s - t| := by
    calc
      _ = |‖plusFourier f s‖ - ‖plusFourier f t‖| *
          (‖plusFourier f s‖ + ‖plusFourier f t‖) := by
        rw [show ‖plusFourier f s‖ ^ 2 - ‖plusFourier f t‖ ^ 2 =
          (‖plusFourier f s‖ - ‖plusFourier f t‖) *
            (‖plusFourier f s‖ + ‖plusFourier f t‖) by ring,
          abs_mul, abs_of_nonneg (add_nonneg (norm_nonneg _) (norm_nonneg _))]
      _ ≤ (firstMoment f * |s - t|) * (2 * l1Mass f) :=
        mul_le_mul hd hsum (add_nonneg (norm_nonneg _) (norm_nonneg _))
          (mul_nonneg (moment_nonneg f) (abs_nonneg _))
      _ = _ := by ring
  unfold spectrumWeight
  rw [← sub_div, abs_div, abs_of_pos Real.two_pi_pos]
  apply (div_le_iff₀ Real.two_pi_pos).2
  calc
    _ ≤ 2 * l1Mass f * firstMoment f * |s - t| := hsq
    _ = _ := by field_simp [Real.pi_ne_zero] <;> ring

private theorem weight_bounds {f : ℝ → ℂ} (hf : Admissible f) (t : ℝ) :
    0 ≤ spectrumWeight (plusFourier f) t ∧
      spectrumWeight (plusFourier f) t ≤ l1Mass f ^ 2 / (2 * Real.pi) := by
  have h := (admissible_plusFourier_bounds hf t t).1
  constructor
  · unfold spectrumWeight; positivity
  · unfold spectrumWeight
    apply div_le_div_of_nonneg_right _ Real.two_pi_pos.le
    nlinarith [norm_nonneg (plusFourier f t), mass_nonneg f]

private theorem term_sub_bound {s : ℝ} (hs : 0 < s) (y z : ℝ) :
    |term s y - term s z| ≤ |y - z| * (1 / s ^ 2) := by
  let A := s ^ 2 + y ^ 2
  let B := s ^ 2 + z ^ 2
  have hA : 0 < A := add_pos_of_pos_of_nonneg (sq_pos_of_pos hs) (sq_nonneg y)
  have hB : 0 < B := add_pos_of_pos_of_nonneg (sq_pos_of_pos hs) (sq_nonneg z)
  have hAB : 0 < A * B := mul_pos hA hB
  have hid : term s y - term s z = s * (y - z) * (y + z) / (A * B) := by
    unfold term
    dsimp [A, B]
    field_simp [hs.ne', hA.ne', hB.ne'] <;> ring
  have hlin : s * (|y| + |z|) ≤ (A + B) / 2 := by
    dsimp [A, B]
    nlinarith [sq_nonneg (s - |y|), sq_nonneg (s - |z|), sq_abs y, sq_abs z]
  have hsum : s * |y + z| ≤ (A + B) / 2 :=
    (mul_le_mul_of_nonneg_left (abs_add y z) hs.le).trans hlin
  have hprod : ((A + B) / 2) * s ^ 2 ≤ A * B := by
    dsimp [A, B]
    nlinarith [mul_nonneg (sq_nonneg y) (sq_nonneg z),
      mul_nonneg (sq_nonneg s) (add_nonneg (sq_nonneg y) (sq_nonneg z))]
  have hcoef : s * |y + z| / (A * B) ≤ 1 / s ^ 2 := by
    apply (div_le_iff₀ hAB).2
    rw [show (1 / s ^ 2) * (A * B) = (A * B) / s ^ 2 by ring]
    apply (le_div_iff₀ (sq_pos_of_pos hs)).2
    exact (mul_le_mul_of_nonneg_right hsum (sq_nonneg s)).trans hprod
  rw [hid, abs_div, abs_mul, abs_mul, abs_of_pos hs, abs_of_pos hAB]
  calc
    _ = |y - z| * (s * |y + z| / (A * B)) := by ring
    _ ≤ _ := mul_le_mul_of_nonneg_left hcoef (abs_nonneg _)

/-- Rational multiplier Lipschitz bound over every pair of real frequencies. -/
theorem partialSum_frequency_sub_bound {sigma : ℝ} (hsigma : 0 < sigma)
    (N : ℕ) (s t : ℝ) :
    |partialSum sigma (s / 2) N - partialSum sigma (t / 2) N| ≤
      slopeCap sigma N * |s - t| := by
  unfold partialSum slopeCap
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ n ∈ Finset.range N,
        |term (sigma + (n : ℝ)) (s / 2) - term (sigma + (n : ℝ)) (t / 2)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.range N, (1 / (2 * (sigma + (n : ℝ)) ^ 2)) * |s - t| := by
      apply Finset.sum_le_sum
      intro n _
      have hp := term_sub_bound
        (add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)) (s / 2) (t / 2)
      calc
        _ ≤ |s / 2 - t / 2| * (1 / (sigma + (n : ℝ)) ^ 2) := hp
        _ = _ := by rw [← sub_div, abs_div]; norm_num <;> ring
    _ = _ := (Finset.sum_mul ..).symm

private theorem partial_nonneg {sigma : ℝ} (hsigma : 0 < sigma)
    (N : ℕ) (t : ℝ) : 0 ≤ partialSum sigma (t / 2) N := by
  unfold partialSum
  apply Finset.sum_nonneg
  intro n _
  have hp : 0 < sigma + (n : ℝ) :=
    add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)
  unfold term
  positivity

private theorem coreSlope_nonneg {sigma : ℝ} (hsigma : 0 < sigma)
    (N : ℕ) (f : ℝ → ℂ) : 0 ≤ coreSlope sigma N f := by
  have hH : 0 ≤ reciprocalCap sigma N := by
    unfold reciprocalCap
    apply Finset.sum_nonneg
    intro n _
    have hp : 0 < sigma + (n : ℝ) :=
      add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)
    positivity
  have hJ : 0 ≤ slopeCap sigma N := by
    unfold slopeCap
    apply Finset.sum_nonneg
    intro n _
    positivity
  unfold coreSlope
  exact add_nonneg
    (mul_nonneg hH (div_nonneg (mul_nonneg (mass_nonneg f) (moment_nonneg f)) Real.pi_pos.le))
    (mul_nonneg hJ (div_nonneg (sq_nonneg _) Real.two_pi_pos.le))

/-- The actual finite core is controlled between samples, on the whole frequency line. -/
theorem admissible_core_sub_bound {sigma : ℝ} (hsigma : 0 < sigma)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f) (s t : ℝ) :
    |core sigma N f s - core sigma N f t| ≤ coreSlope sigma N f * |s - t| := by
  let w := spectrumWeight (plusFourier f)
  let S := fun t : ℝ => partialSum sigma (t / 2) N
  have hw := admissible_spectrumWeight_sub_bound hf s t
  have hS := partialSum_frequency_sub_bound hsigma N s t
  have hs0 := partial_nonneg hsigma N s
  have hsH := partialSum_le_reciprocalCap hsigma (s / 2) N
  have hw0 := (weight_bounds hf t).1
  have hwM := (weight_bounds hf t).2
  have hK : 0 ≤ (l1Mass f * firstMoment f / Real.pi) * |s - t| :=
    mul_nonneg (div_nonneg (mul_nonneg (mass_nonneg f) (moment_nonneg f))
      Real.pi_pos.le) (abs_nonneg _)
  have hM : 0 ≤ l1Mass f ^ 2 / (2 * Real.pi) := by positivity
  change |w s * S s - w t * S t| ≤ _
  calc
    _ = |(w s - w t) * S s + w t * (S s - S t)| := by congr 1; ring
    _ ≤ |w s - w t| * S s + w t * |S s - S t| := by
      simpa only [abs_mul, abs_of_nonneg hs0, abs_of_nonneg hw0] using
        (abs_add ((w s - w t) * S s) (w t * (S s - S t)))
    _ ≤ ((l1Mass f * firstMoment f / Real.pi) * |s - t|) * reciprocalCap sigma N +
        (l1Mass f ^ 2 / (2 * Real.pi)) * (slopeCap sigma N * |s - t|) :=
      add_le_add (mul_le_mul hw hsH hs0 hK)
        (mul_le_mul hwM hS (abs_nonneg _) hM)
    _ = _ := by unfold coreSlope; ring

private theorem core_continuous {sigma : ℝ} (hsigma : 0 < sigma)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f) : Continuous (core sigma N f) := by
  have hw : Continuous (spectrumWeight (plusFourier f)) :=
    ((admissible_plusFourier_continuous hf).norm.pow 2).div_const _
  have hS : Continuous (fun t : ℝ => partialSum sigma (t / 2) N) := by
    unfold partialSum
    apply continuous_finset_sum
    intro n _
    have hp : 0 < sigma + (n : ℝ) :=
      add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)
    unfold term
    exact ((continuous_id.div_const 2).pow 2).div
      (continuous_const.mul (continuous_const.add ((continuous_id.div_const 2).pow 2)))
      (fun t => (mul_pos hp (add_pos_of_pos_of_nonneg
        (sq_pos_of_pos hp) (sq_nonneg (t / 2)))).ne')
  exact hw.mul hS

private theorem midpoint_cell {g : ℝ → ℝ} (hg : Continuous g) {L : ℝ}
    (hL : 0 ≤ L) (hLip : ∀ s t : ℝ, |g s - g t| ≤ L * |s - t|)
    (a h : ℝ) (hh : 0 ≤ h) :
    |(∫ t in a..a + h, g t) - h * g (a + h / 2)| ≤ L * h ^ 2 / 2 := by
  have heq : (∫ t in a..a + h, g t) - h * g (a + h / 2) =
      ∫ t in a..a + h, g t - g (a + h / 2) := by
    rw [intervalIntegral.integral_sub (hg.intervalIntegrable _ _) intervalIntegrable_const,
      intervalIntegral.integral_const]
    simp only [add_sub_cancel_left, smul_eq_mul]
  rw [heq]
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := a) (b := a + h) (C := L * h / 2)
    (f := fun t => g t - g (a + h / 2)) (fun t ht => by
      have ht' : t ∈ Ioc a (a + h) := by
        simpa only [uIoc_of_le (show a ≤ a + h by linarith)] using ht
      have hd : |t - (a + h / 2)| ≤ h / 2 :=
        abs_le.mpr ⟨by linarith [ht'.1], by linarith [ht'.2]⟩
      calc
        ‖g t - g (a + h / 2)‖ = |g t - g (a + h / 2)| := Real.norm_eq_abs _
        _ ≤ L * |t - (a + h / 2)| := hLip t (a + h / 2)
        _ ≤ L * (h / 2) := mul_le_mul_of_nonneg_left hd hL
        _ = L * h / 2 := by ring)
  simpa only [Real.norm_eq_abs, add_sub_cancel_left, abs_of_nonneg hh,
    show L * h / 2 * h = L * h ^ 2 / 2 by ring] using hb

private theorem midpoint_composite {g : ℝ → ℝ} (hg : Continuous g) {L : ℝ}
    (hL : 0 ≤ L) (hLip : ∀ s t : ℝ, |g s - g t| ≤ L * |s - t|)
    (a h : ℝ) (hh : 0 ≤ h) (m : ℕ) :
    |(∫ t in a..a + (m : ℝ) * h, g t) - midpointSum a h m g| ≤
      (m : ℝ) * L * h ^ 2 / 2 := by
  have hsplit : (∑ j ∈ Finset.range m,
      ∫ t in (a + (j : ℝ) * h)..(a + ((j + 1 : ℕ) : ℝ) * h), g t) =
      ∫ t in a..a + (m : ℝ) * h, g t := by
    simpa only [Nat.cast_zero, zero_mul, add_zero] using
      (intervalIntegral.sum_integral_adjacent_intervals
        (a := fun j : ℕ => a + (j : ℝ) * h) (n := m)
        (fun j _ => hg.intervalIntegrable _ _))
  have hends (j : ℕ) : a + ((j + 1 : ℕ) : ℝ) * h = a + (j : ℝ) * h + h := by
    push_cast
    ring
  simp_rw [hends] at hsplit
  have heq : (∫ t in a..a + (m : ℝ) * h, g t) - midpointSum a h m g =
      ∑ j ∈ Finset.range m,
        ((∫ t in (a + (j : ℝ) * h)..(a + (j : ℝ) * h + h), g t) -
          h * g (a + (j : ℝ) * h + h / 2)) := by
    rw [← hsplit, midpointSum, Finset.sum_sub_distrib, Finset.mul_sum]
  rw [heq]
  calc
    _ ≤ ∑ j ∈ Finset.range m,
        |(∫ t in (a + (j : ℝ) * h)..(a + (j : ℝ) * h + h), g t) -
          h * g (a + (j : ℝ) * h + h / 2)| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _j ∈ Finset.range m, L * h ^ 2 / 2 :=
      Finset.sum_le_sum fun j _ => midpoint_cell hg hL hLip (a + (j : ℝ) * h) h hh
    _ = _ := by simp <;> ring

/-- Whole-window quadrature bound on the actual compact-test core. -/
theorem admissible_core_midpoint_error {sigma T : ℝ} (hsigma : 0 < sigma)
    (hT : 0 < T) (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f)
    (m : ℕ) (hm : 0 < m) :
    |(∫ t in Icc (-T) T, core sigma N f t) - coreMidpoint sigma N f T m| ≤
      gridBudget sigma N f T m := by
  have hmR : 0 < (m : ℝ) := Nat.cast_pos.mpr hm
  have hp := midpoint_composite (core_continuous hsigma N hf)
    (coreSlope_nonneg hsigma N f) (admissible_core_sub_bound hsigma N hf)
    (-T) (2 * T / (m : ℝ)) (by positivity) m
  have hend : -T + (m : ℝ) * (2 * T / (m : ℝ)) = T := by
    field_simp [hmR.ne'] <;> ring
  rw [hend] at hp
  have hset : (∫ t in Icc (-T) T, core sigma N f t) =
      ∫ t in (-T)..T, core sigma N f t := by
    rw [intervalIntegral.integral_of_le (show -T ≤ T by linarith),
      integral_Icc_eq_integral_Ioc]
  rw [hset]
  change |(∫ t in (-T)..T, core sigma N f t) -
      midpointSum (-T) (2 * T / (m : ℝ)) m (core sigma N f)| ≤ _
  convert hp using 1
  unfold gridBudget
  field_simp [hmR.ne'] <;> ring

/-- Source-exact enclosure by a finite sum plus explicit quadrature and infinite tails. -/
theorem admissible_archimedean_midpoint_enclosure (q : ℕ) (hq : 1 ≤ q)
    {sigma T : ℝ} (hsigma : 0 < sigma) (hT : 0 < T)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f) (m : ℕ) (hm : 0 < m) :
    let estimate := baseline q sigma * (∫ x : ℝ, ‖f x‖ ^ 2) +
      coreMidpoint sigma N f T m
    estimate - gridBudget sigma N f T m ≤
        spectralFunctional q sigma (spectrumWeight (plusFourier f)) ∧
      spectralFunctional q sigma (spectrumWeight (plusFourier f)) ≤
        estimate + gridBudget sigma N f T m + tailBudget sigma N f T := by
  dsimp only
  have ht := admissible_archimedean_enclosure q hq hsigma hT hf N
  rw [finiteApproximation_eq_physical_baseline q sigma T N hf] at ht
  have hg := admissible_core_midpoint_error hsigma hT N hf m hm
  rw [abs_le] at hg
  unfold core at hg
  unfold tailBudget
  constructor <;> linarith [ht.1, ht.2, hg.1, hg.2]

/-- Separate sample-value errors are paid; a midpoint is not a whole-cell enclosure. -/
theorem coreMidpoint_sample_error {sigma T : ℝ} (hT : 0 < T)
    (N : ℕ) (f : ℝ → ℂ) (m : ℕ) (hm : 0 < m)
    (v e : ℕ → ℝ)
    (hvalues : ∀ j < m,
      |core sigma N f (-T + (j : ℝ) * (2 * T / (m : ℝ)) + T / (m : ℝ)) - v j| ≤ e j) :
    |coreMidpoint sigma N f T m - (2 * T / (m : ℝ)) *
        (∑ j ∈ Finset.range m, v j)| ≤
      (2 * T / (m : ℝ)) * (∑ j ∈ Finset.range m, e j) := by
  have hmR : 0 < (m : ℝ) := Nat.cast_pos.mpr hm
  have hh : 0 ≤ 2 * T / (m : ℝ) := by positivity
  unfold coreMidpoint midpointSum
  rw [← mul_sub, abs_mul, abs_of_nonneg hh, ← Finset.sum_sub_distrib]
  apply mul_le_mul_of_nonneg_left _ hh
  calc
    _ ≤ ∑ j ∈ Finset.range m,
        |core sigma N f (-T + (j : ℝ) * (2 * T / (m : ℝ)) +
          (2 * T / (m : ℝ)) / 2) - v j| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro j hj
      rw [show (2 * T / (m : ℝ)) / 2 = T / (m : ℝ) by ring]
      exact hvalues j (Finset.mem_range.mp hj)

/-- A complex Fourier sample enclosure supplies the corresponding core sample error.
This does not assume the test or its spectrum is real or even. -/
theorem core_sample_error_of_fourier_error {sigma : ℝ} (hsigma : 0 < sigma)
    (N : ℕ) (f : ℝ → ℂ) (t : ℝ) (z : ℂ) {epsilon : ℝ}
    (hepsilon : 0 ≤ epsilon) (hz : ‖plusFourier f t - z‖ ≤ epsilon) :
    |core sigma N f t - (‖z‖ ^ 2 / (2 * Real.pi)) * partialSum sigma (t / 2) N| ≤
      ((2 * ‖z‖ * epsilon + epsilon ^ 2) / (2 * Real.pi)) *
        partialSum sigma (t / 2) N := by
  have hnorm : ‖plusFourier f t‖ ≤ ‖z‖ + epsilon := by
    calc
      _ = ‖(plusFourier f t - z) + z‖ := by congr 1; ring
      _ ≤ ‖plusFourier f t - z‖ + ‖z‖ := norm_add_le _ _
      _ ≤ _ := by linarith
  have hdiff := (abs_norm_sub_norm_le (plusFourier f t) z).trans hz
  have hsq : |‖plusFourier f t‖ ^ 2 - ‖z‖ ^ 2| ≤
      2 * ‖z‖ * epsilon + epsilon ^ 2 := by
    calc
      _ = |‖plusFourier f t‖ - ‖z‖| * (‖plusFourier f t‖ + ‖z‖) := by
        rw [show ‖plusFourier f t‖ ^ 2 - ‖z‖ ^ 2 =
          (‖plusFourier f t‖ - ‖z‖) * (‖plusFourier f t‖ + ‖z‖) by ring,
          abs_mul, abs_of_nonneg (add_nonneg (norm_nonneg _) (norm_nonneg _))]
      _ ≤ epsilon * (2 * ‖z‖ + epsilon) :=
        mul_le_mul hdiff (by linarith) (add_nonneg (norm_nonneg _) (norm_nonneg _))
          hepsilon
      _ = _ := by ring
  unfold core spectrumWeight
  rw [← sub_mul, ← sub_div, abs_mul, abs_div, abs_of_pos Real.two_pi_pos,
    abs_of_nonneg (partial_nonneg hsigma N t)]
  exact mul_le_mul_of_nonneg_right
    (div_le_div_of_nonneg_right hsq Real.two_pi_pos.le) (partial_nonneg hsigma N t)

/-- Complete conditional scalar certificate consumer. The only computational premises
are explicit enclosures of the true baseline and true finite samples, not positivity. -/
theorem admissible_archimedean_sample_enclosure (q : ℕ) (hq : 1 ≤ q)
    {sigma T : ℝ} (hsigma : 0 < sigma) (hT : 0 < T)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f) (m : ℕ) (hm : 0 < m)
    (B eta : ℝ) (v e : ℕ → ℝ)
    (hbaseline : |baseline q sigma * (∫ x : ℝ, ‖f x‖ ^ 2) - B| ≤ eta)
    (hvalues : ∀ j < m,
      |core sigma N f (-T + (j : ℝ) * (2 * T / (m : ℝ)) + T / (m : ℝ)) - v j| ≤ e j) :
    let estimate := B + (2 * T / (m : ℝ)) * (∑ j ∈ Finset.range m, v j)
    let error := eta + gridBudget sigma N f T m +
      (2 * T / (m : ℝ)) * (∑ j ∈ Finset.range m, e j)
    estimate - error ≤ spectralFunctional q sigma (spectrumWeight (plusFourier f)) ∧
      spectralFunctional q sigma (spectrumWeight (plusFourier f)) ≤
        estimate + error + tailBudget sigma N f T := by
  dsimp only
  have ha := admissible_archimedean_midpoint_enclosure q hq hsigma hT N hf m hm
  have hv := coreMidpoint_sample_error hT N f m hm v e hvalues
  rw [abs_le] at hbaseline hv
  dsimp only at ha
  constructor <;> linarith [ha.1, ha.2, hbaseline.1, hbaseline.2, hv.1, hv.2]

end GRWTSK.NumberTheory.WeilFourierQuadrature
