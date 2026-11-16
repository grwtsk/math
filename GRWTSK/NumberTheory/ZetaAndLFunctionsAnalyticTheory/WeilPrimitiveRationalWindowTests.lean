/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import Mathlib.Analysis.Calculus.ContDiff.Polynomial
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveSmoothTestAdmission

/-! # Rational polynomial codes for supported primitive Weil tests -/

set_option autoImplicit false

open Filter Set
open scoped Topology ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

private theorem hasDerivAt_positivePart_pow (n : ℕ) (x : ℝ) :
    HasDerivAt (fun t : ℝ => max t 0 ^ (n + 2))
      ((n + 2 : ℕ) * max x 0 ^ (n + 1)) x := by
  rcases lt_trichotomy x 0 with hx | rfl | hx
  · rw [max_eq_right hx.le, zero_pow (by omega : n + 1 ≠ 0), mul_zero]
    apply (hasDerivAt_const x (0 : ℝ)).congr_of_eventuallyEq
    filter_upwards [gt_mem_nhds hx] with t ht
    rw [max_eq_right ht.le, zero_pow (by omega : n + 2 ≠ 0)]
  · simp only [max_self, zero_pow (by omega : n + 1 ≠ 0), mul_zero]
    rw [hasDerivAt_iff_tendsto_slope]
    have hc : Continuous (fun t : ℝ => max t 0 ^ (n + 1)) :=
      (continuous_id.max continuous_const).pow _
    have ht : Tendsto (fun t : ℝ => max t 0 ^ (n + 1)) (𝓝[≠] (0 : ℝ)) (𝓝 0) := by
      have h := hc.continuousAt (x := (0 : ℝ))
      have hw : Tendsto (fun t : ℝ => max t 0 ^ (n + 1)) (𝓝[≠] 0)
          (𝓝 (max (0 : ℝ) 0 ^ (n + 1))) := h.continuousWithinAt
      simpa only [max_self, zero_pow (by omega : n + 1 ≠ 0)] using hw
    apply ht.congr'
    filter_upwards [self_mem_nhdsWithin] with t ht
    have hne : t ≠ 0 := ht
    rw [slope_def_field, sub_zero, max_self, zero_pow (by omega : n + 2 ≠ 0), sub_zero]
    rcases le_or_gt 0 t with hpos | hneg
    · rw [max_eq_left hpos, pow_succ t (n + 1), mul_div_cancel_right₀ _ hne]
    · simp [max_eq_right hneg.le, zero_pow (by omega : n + 1 ≠ 0),
        zero_pow (by omega : n + 2 ≠ 0)]
  · rw [max_eq_left hx.le]
    have hp : HasDerivAt (fun t : ℝ => t ^ (n + 2))
        ((n + 2 : ℕ) * x ^ (n + 1)) x := by
      simpa only [id_eq, mul_one, show n + 2 - 1 = n + 1 by omega,
        show (id : ℝ → ℝ) ^ (n + 2) = (fun t : ℝ => t ^ (n + 2)) from rfl] using
        (hasDerivAt_id x).pow (n + 2)
    apply hp.congr_of_eventuallyEq
    filter_upwards [lt_mem_nhds hx] with t ht
    rw [max_eq_left ht.le]

private theorem contDiff_positivePart_cube :
    ContDiff ℝ 2 (fun t : ℝ => max t 0 ^ 3) := by
  have h2 (t : ℝ) : HasDerivAt (fun x : ℝ => max x 0 ^ 2) (2 * max t 0) t := by
    simpa using hasDerivAt_positivePart_pow 0 t
  have h3 (t : ℝ) : HasDerivAt (fun x : ℝ => max x 0 ^ 3) (3 * max t 0 ^ 2) t := by
    simpa using hasDerivAt_positivePart_pow 1 t
  have hsq : ContDiff ℝ 1 (fun t : ℝ => max t 0 ^ 2) := by
    rw [contDiff_one_iff_deriv]
    refine ⟨fun t => (h2 t).differentiableAt, ?_⟩
    rw [funext fun t => (h2 t).deriv]
    exact continuous_const.mul (continuous_id.max continuous_const)
  rw [show (2 : ℕ∞ω) = 1 + 1 by norm_num, contDiff_succ_iff_deriv]
  refine ⟨fun t => (h3 t).differentiableAt, by simp, ?_⟩
  rw [funext fun t => (h3 t).deriv]
  exact contDiff_const.mul hsq

/-- Interpret coefficients in ascending degree order. -/
noncomputable def rationalWindowPolynomial : List ℚ → Polynomial ℚ
  | [] => 0
  | c :: cs => Polynomial.C c + Polynomial.X * rationalWindowPolynomial cs

private def rationalWindowHorner (x : ℚ) : List ℚ → ℚ
  | [] => 0
  | c :: cs => c + x * rationalWindowHorner x cs

private theorem rationalWindowHorner_eq_eval (x : ℚ) (cs : List ℚ) :
    rationalWindowHorner x cs = (rationalWindowPolynomial cs).eval x := by
  induction cs with
  | nil => simp [rationalWindowHorner, rationalWindowPolynomial]
  | cons c cs ih => simp [rationalWindowHorner, rationalWindowPolynomial, ih]

/-- The real test of a rational polynomial code. The cubic cutoff makes the
zero extension twice continuously differentiable at the window endpoints. -/
noncomputable def rationalWindowTest (T : ℝ) (cs : List ℚ) (t : ℝ) : ℝ :=
  t * (rationalWindowPolynomial cs).aeval (t ^ 2) * max (T ^ 2 - t ^ 2) 0 ^ 3

/-- Exact evaluation of the same code at rational window and test coordinates. -/
def evalRationalWindowTest (T : ℚ) (cs : List ℚ) (t : ℚ) : ℚ :=
  t * rationalWindowHorner (t ^ 2) cs * max (T ^ 2 - t ^ 2) 0 ^ 3

theorem evalRationalWindowTest_cast (T : ℚ) (cs : List ℚ) (t : ℚ) :
    (evalRationalWindowTest T cs t : ℝ) = rationalWindowTest T cs t := by
  unfold evalRationalWindowTest rationalWindowTest
  rw [rationalWindowHorner_eq_eval]
  let p := rationalWindowPolynomial cs
  have hmax (a : ℚ) : (↑(max a 0) : ℝ) = max (a : ℝ) 0 := by
    rcases le_or_gt 0 a with h | h
    · rw [max_eq_left h, max_eq_left (by exact_mod_cast h : (0 : ℝ) ≤ a)]
    · rw [max_eq_right h.le, max_eq_right (by exact_mod_cast h.le : (a : ℝ) ≤ 0)]
      norm_num
  have he : ((p.eval (t ^ 2) : ℚ) : ℝ) =
      p.eval₂ (algebraMap ℚ ℝ) ((t : ℝ) ^ 2) := by
    have h := (Polynomial.eval₂_at_apply (algebraMap ℚ ℝ) (t ^ 2) (p := p)).symm
    change ((p.eval (t ^ 2) : ℚ) : ℝ) =
      p.eval₂ (algebraMap ℚ ℝ) ((t ^ 2 : ℚ) : ℝ) at h
    rwa [Rat.cast_pow] at h
  simp only [Rat.cast_mul, Rat.cast_pow, hmax, Rat.cast_sub, Polynomial.aeval_def]
  dsimp only [p] at he
  rw [he]

/-- Every rational code yields an admissible test in the same positive window. -/
theorem rationalWindowTest_admissible {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) {T : ℝ} (hT : 0 < T) (cs : List ℚ) :
    Admissible χ T (rationalWindowTest T cs) := by
  apply (admissible_iff_smooth_odd_supported χ hT _).mpr
  refine ⟨?_, ?_, ?_⟩
  · have hpol : ContDiff ℝ 2 (fun t : ℝ => (rationalWindowPolynomial cs).aeval (t ^ 2)) :=
      ((rationalWindowPolynomial cs).contDiff_aeval (𝕜 := ℝ) 2).comp (contDiff_id.pow 2)
    have hcut : ContDiff ℝ 2 (fun t : ℝ => max (T ^ 2 - t ^ 2) 0 ^ 3) :=
      contDiff_positivePart_cube.comp (contDiff_const.sub (contDiff_id.pow 2))
    exact (contDiff_id.mul hpol).mul hcut
  · intro t
    simp only [rationalWindowTest, even_two.neg_pow, neg_mul]
  · intro t ht
    have hsq : T ^ 2 ≤ t ^ 2 := by
      by_contra h
      have hh : t ^ 2 < T ^ 2 := lt_of_not_ge h
      exact ht ⟨by nlinarith, by nlinarith⟩
    simp [rationalWindowTest, max_eq_right (sub_nonpos.mpr hsq)]

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
