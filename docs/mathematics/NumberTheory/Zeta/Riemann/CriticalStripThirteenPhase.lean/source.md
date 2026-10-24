# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThirteenPhase

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecc986c09813aee6204c4dd29827daa5b9f24cd0` · SHA-256 `a5c32b327c86297d0b71edf748927b9b81f0338aae933d42afbf6820788ffe45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoPhase

set_option autoImplicit false

/-!
# Signed phase bounds on the next closed band

The source is still the positive-real base 2, not a fitted phase. Both signs of
height are retained. The new cone allows a negative finite-term projection;
it does not reuse the preceding nonnegative-projection conclusion.
SOURCE SCRIPTS: exact elaboration and transitive axiom audit NOT_RUN.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo.ThirteenPhase
open Complex
noncomputable section

lemma eighth_angle_bounds :
    Real.cos (Real.pi / 8) ≤ (37 / 40 : ℝ) ∧
      (3 / 8 : ℝ) ≤ Real.sin (Real.pi / 8) := by
  have hs2 := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)
  have hr2 := Real.sqrt_nonneg (2 : ℝ)
  have h2 : Real.sqrt 2 ≤ (99 / 70 : ℝ) := by nlinarith
  constructor
  · rw [Real.cos_pi_div_eight]
    have h := Real.sq_sqrt (by positivity : (0 : ℝ) ≤ 2 + Real.sqrt 2)
    nlinarith [Real.sqrt_nonneg (2 + Real.sqrt 2)]
  · rw [Real.sin_pi_div_eight]
    have h := Real.sq_sqrt (by linarith : (0 : ℝ) ≤ 2 - Real.sqrt 2)
    nlinarith [Real.sqrt_nonneg (2 - Real.sqrt 2)]

lemma reduced_angle_interval {t : ℝ} (hlo : 12 ≤ t) (hhi : t ≤ 13) :
    Real.pi / 2 ≤ t * Real.log 2 - 2 * Real.pi ∧
      t * Real.log 2 - 2 * Real.pi ≤ 7 * Real.pi / 8 := by
  have hl := Phase.log_two_interval
  have ht : 0 ≤ t := by linarith
  have ha := mul_le_mul_of_nonneg_left hl.1 ht
  have hb := mul_le_mul_of_nonneg_left hl.2 ht
  have hp0 := Real.pi_gt_d4
  have hp1 := Real.pi_lt_d2
  constructor <;> nlinarith

lemma sector_bounds {a : ℝ} (hlo : Real.pi / 2 ≤ a) (hhi : a ≤ 7 * Real.pi / 8) :
    -(37 / 40 : ℝ) ≤ Real.cos a ∧ (3 / 8 : ℝ) ≤ Real.sin a := by
  have hp := Real.pi_pos
  have hcos := Real.cos_le_cos_of_nonneg_of_le_pi
    (x := a) (y := 7 * Real.pi / 8) (by linarith) (by linarith) hhi
  rw [show 7 * Real.pi / 8 = Real.pi - Real.pi / 8 by ring, Real.cos_pi_sub] at hcos
  have hsin := Real.sin_le_sin_of_le_of_le_pi_div_two
    (x := Real.pi / 8) (y := Real.pi - a)
    (by linarith) (by linarith) (by linarith)
  rw [Real.sin_pi_sub] at hsin
  have hb := eighth_angle_bounds
  constructor <;> linarith [hb.1, hb.2]

lemma positive_height_bounds {t : ℝ} (hlo : 12 ≤ t) (hhi : t ≤ 13) :
    -(37 / 40 : ℝ) ≤ Real.cos (t * Real.log 2) ∧
      (3 / 8 : ℝ) ≤ Real.sin (t * Real.log 2) := by
  have h := reduced_angle_interval hlo hhi
  simpa only [Real.cos_sub_two_pi, Real.sin_sub_two_pi] using sector_bounds h.1 h.2

lemma signed_height_bounds {t : ℝ} (hlo : 12 ≤ |t|) (hhi : |t| ≤ 13) :
    -(37 / 40 : ℝ) ≤ Real.cos (t * Real.log 2) ∧
      (3 / 8 : ℝ) * |t| ≤ t * Real.sin (t * Real.log 2) := by
  have h := positive_height_bounds hlo hhi
  by_cases ht : 0 ≤ t
  · simp only [abs_of_nonneg ht] at h ⊢
    exact ⟨h.1, by nlinarith [mul_le_mul_of_nonneg_left h.2 ht]⟩
  · have ht' : t ≤ 0 := le_of_lt (lt_of_not_ge ht)
    simp only [abs_of_nonpos ht', neg_mul, Real.cos_neg, Real.sin_neg] at h
    rw [abs_of_nonpos ht']
    exact ⟨h.1, by nlinarith [mul_le_mul_of_nonneg_left h.2 (neg_nonneg.mpr ht')]⟩

/-- A chord lower bound preserves more height information than replacing |t| by 12. -/
lemma height_chord {t : ℝ} (hlo : 12 ≤ |t|) (hhi : |t| ≤ 13) :
    (t ^ 2 + 156) / 25 ≤ |t| := by
  have h := mul_nonneg (sub_nonneg.mpr hlo) (sub_nonneg.mpr hhi)
  nlinarith [sq_abs t]

def weightRoot (x : ℝ) : ℝ := (109 + 62 * x) / 99

lemma weightRoot_bounds {x : ℝ} (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1) :
    0 ≤ weightRoot x ∧ weightRoot x ^ 2 ≤ 2 * x + 1 := by
  have h := mul_nonneg (sub_nonneg.mpr hx) (sub_nonneg.mpr hx1)
  have he : 99 ^ 2 * (2 * x + 1) - (109 + 62 * x) ^ 2 =
      3844 * (x - 1 / 2) * (1 - x) + 320 * x - 158 := by ring
  have hx0 : 0 ≤ x := by linarith
  unfold weightRoot
  constructor
  · positivity
  · nlinarith

lemma weighted_root {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    ‖power s‖ * weightRoot s.re ≤ 1 := by
  have hw := power_weight hx
  have hL := weightRoot_bounds hx hx1
  have hm := mul_le_mul_of_nonneg_left hL.2 (sq_nonneg ‖power s‖)
  have hp : 0 ≤ ‖power s‖ * weightRoot s.re := mul_nonneg (norm_nonneg _) hL.1
  nlinarith

lemma power_norm_le {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) :
    ‖power s‖ ≤ (99 / 140 : ℝ) := by
  have hw := power_weight hx
  have hm := mul_nonneg (sq_nonneg ‖power s‖) (show 0 ≤ 2 * s.re - 1 by linarith)
  nlinarith [norm_nonneg (power s)]

lemma amplitude_eq_norm (s : ℂ) : Real.exp (-s.re * Real.log 2) = ‖power s‖ := by
  rw [power_norm, Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 2)]
  congr 1
  ring

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo.ThirteenPhase
```
