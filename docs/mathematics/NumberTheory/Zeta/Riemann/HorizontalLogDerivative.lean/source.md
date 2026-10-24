# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.HorizontalLogDerivative

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `673dcccd858866aa66b420141af02e3fbbf80070` · SHA-256 `77c53baae8256abf14a39b3398b0f0904c85ac6ef9a544892cd039807bc1030a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.LeftLogDerivative
import Mathlib.Algebra.Order.Floor.Semiring

set_option autoImplicit false

/-!
# Horizontal logarithmic-derivative control from a fixed real strip

Even shifts now start at any point with real part at most -1 and nonzero
imaginary part, not only at negative odd integers. Both reflected zeta terms
remain. A bound on [-3,2] at one safe height gives an affine bound on the entire
leftward ray. Compactness supplies such a bound for each fixed safe height,
NOT its growth as that height increases. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.HorizontalLogDerivative

open Set Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.Complex.DigammaShift
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.TrivialZeroResidues
open GRWTSK.RiemannHypothesis.LeftLogDerivative
open GRWTSK.NumberTheory.Chebyshev.TentPerronLine

noncomputable section

/-- Nonreal points in the open left half-plane avoid both kinds of actual zeros. -/
theorem zeta_ne_zero_left_nonreal (s : ℂ) (hs : s.re < 0) (hi : s.im ≠ 0) :
    riemannZeta s ≠ 0 := by
  intro hz
  rcases (zeta_zero_iff s).mp hz with hnt | ⟨k, rfl⟩
  · linarith [hnt.mem_critical_strip.1]
  · exact hi (trivialPoint_im k)

/-- The trigonometric quotient is unchanged under a negative even real shift. -/
theorem cotangent_even_shift (s : ℂ) (k : ℕ) :
    Complex.cos ((Real.pi : ℂ) * (s - 2 * (k : ℂ)) / 2) /
        Complex.sin ((Real.pi : ℂ) * (s - 2 * (k : ℂ)) / 2) =
      Complex.cos ((Real.pi : ℂ) * s / 2) / Complex.sin ((Real.pi : ℂ) * s / 2) := by
  induction k with
  | zero => simp
  | succ k ih =>
      have he : (Real.pi : ℂ) * (s - 2 * ((k + 1 : ℕ) : ℂ)) / 2 =
          (Real.pi : ℂ) * (s - 2 * (k : ℂ)) / 2 - (Real.pi : ℂ) := by
        push_cast
        ring
      rw [he, Complex.cos_sub_pi, Complex.sin_sub_pi, neg_div_neg_eq, ih]

/-- A full-source identity; the two reflected logarithmic derivatives do not disappear. -/
theorem negative_logDeriv_even_shift (s : ℂ) (hs : s.re ≤ -1) (hi : s.im ≠ 0)
    (k : ℕ) :
    -logDeriv riemannZeta (s - 2 * (k : ℂ)) = -logDeriv riemannZeta s +
      (∑ j ∈ Finset.range (2 * k), (1 - s + (j : ℂ))⁻¹) +
      logDeriv riemannZeta (1 - (s - 2 * (k : ℂ))) - logDeriv riemannZeta (1 - s) := by
  have hs0 : s.re < 0 := by linarith
  have hsk : (s - 2 * (k : ℂ)).re < 0 := by
    simp only [Complex.sub_re, Complex.mul_re, show (2 : ℂ).re = 2 by rfl, Complex.natCast_re,
      show (2 : ℂ).im = 0 by rfl, Complex.natCast_im, mul_zero, sub_zero]
    linarith [Nat.cast_nonneg (α := ℝ) k]
  have hik : (s - 2 * (k : ℂ)).im ≠ 0 := by simpa using hi
  have hn := negative_logDeriv_reflection hsk (zeta_ne_zero_left_nonreal _ hsk hik)
  have h0 := negative_logDeriv_reflection hs0 (zeta_ne_zero_left_nonreal s hs0 hi)
  have hg := digamma_add_nat (1 - s) (by simp only [Complex.sub_re, Complex.one_re]; linarith)
    (2 * k)
  have hw : 1 - (s - 2 * (k : ℂ)) = 1 - s + ((2 * k : ℕ) : ℂ) := by
    push_cast
    ring
  rw [cotangent_even_shift] at hn
  rw [hw, hg] at hn
  rw [hn, h0, hw]
  ring

/-- A shift of k cells costs at most k, plus BOTH reflected right-half-plane bounds. -/
theorem norm_even_shift_le (s : ℂ) (hs : s.re ≤ -1) (hi : s.im ≠ 0) (k : ℕ) :
    ‖-logDeriv riemannZeta (s - 2 * (k : ℂ))‖ ≤
      ‖-logDeriv riemannZeta s‖ + (k : ℝ) + 2 * mangoldtLineMass := by
  have hw : 2 ≤ (1 - s).re := by simp only [Complex.sub_re, Complex.one_re]; linarith
  have hwk : 2 ≤ (1 - (s - 2 * (k : ℂ))).re := by
    simp only [Complex.sub_re, Complex.one_re, Complex.mul_re, show (2 : ℂ).re = 2 by rfl,
      Complex.natCast_re, show (2 : ℂ).im = 0 by rfl, Complex.natCast_im, mul_zero, sub_zero]
    linarith [Nat.cast_nonneg (α := ℝ) k]
  have hr : ‖∑ j ∈ Finset.range (2 * k), (1 - s + (j : ℂ))⁻¹‖ ≤ (k : ℝ) := by
    convert norm_reciprocal_sum_le (1 - s) hw (2 * k) using 1; push_cast; ring
  rw [negative_logDeriv_even_shift s hs hi k]
  have ht1 := norm_sub_le
    (-logDeriv riemannZeta s + (∑ j ∈ Finset.range (2 * k), (1 - s + (j : ℂ))⁻¹) +
      logDeriv riemannZeta (1 - (s - 2 * (k : ℂ))))
    (logDeriv riemannZeta (1 - s))
  have ht2 := norm_add_le
    (-logDeriv riemannZeta s + (∑ j ∈ Finset.range (2 * k), (1 - s + (j : ℂ))⁻¹))
    (logDeriv riemannZeta (1 - (s - 2 * (k : ℂ))))
  have ht3 := norm_add_le (-logDeriv riemannZeta s)
    (∑ j ∈ Finset.range (2 * k), (1 - s + (j : ℂ))⁻¹)
  linarith [norm_logDeriv_right_halfPlane_le _ hw, norm_logDeriv_right_halfPlane_le _ hwk]

/-- Real-part reduction uses a natural floor with its nonnegative-input premise. -/
theorem exists_horizontal_anchor (σ : ℝ) (hσ : σ ≤ -1) :
    ∃ k : ℕ, -3 < σ + 2 * (k : ℝ) ∧ σ + 2 * (k : ℝ) ≤ -1 ∧
      (k : ℝ) ≤ (-1 - σ) / 2 := by
  let q : ℝ := (-1 - σ) / 2
  have hq : 0 ≤ q := by dsimp [q]; linarith
  refine ⟨⌊q⌋₊, ?_, ?_, Nat.floor_le hq⟩
  · have hu := Nat.lt_floor_add_one q
    dsimp [q] at hu
    linarith
  · have hl := Nat.floor_le hq
    dsimp [q] at hl
    linarith

/-- Only the fixed strip [-3,2] needs a new height-dependent source estimate. -/
theorem norm_horizontal_le_of_strip_bound (y B : ℝ) (hy : y ≠ 0)
    (hB : ∀ σ ∈ Icc (-3 : ℝ) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ B)
    (σ : ℝ) (hσ : σ ≤ 2) :
    ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤
      B + 2 * mangoldtLineMass + (2 - σ) / 2 := by
  by_cases hl : -1 ≤ σ
  · have hb := hB σ ⟨by linarith, hσ⟩
    linarith [mangoldtLineMass_nonneg]
  · obtain ⟨k, hkL, hkR, hk⟩ := exists_horizontal_anchor σ (le_of_not_ge hl)
    let s : ℂ := ((σ + 2 * (k : ℝ) : ℝ) : ℂ) + (y : ℂ) * Complex.I
    have hs : s.re ≤ -1 := by simpa [s] using hkR
    have hi : s.im ≠ 0 := by simpa [s] using hy
    have he : s - 2 * (k : ℂ) = (σ : ℂ) + (y : ℂ) * Complex.I := by
      dsimp [s]
      push_cast
      ring
    have hn := norm_even_shift_le s hs hi k
    rw [he] at hn
    have hb := hB (σ + 2 * (k : ℝ)) ⟨hkL.le, hkR.trans (by norm_num)⟩
    change ‖-logDeriv riemannZeta s‖ ≤ B at hb
    linarith

/-- Every point on an avoided nonzero horizontal line is a genuine nonzero zeta point. -/
theorem zeta_ne_zero_horizontal (y : ℝ) (hy : y ≠ 0)
    (havoid : ∀ z : ZeroPoint, height z ≠ |y|) (σ : ℝ) :
    riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I) ≠ 0 := by
  intro hz
  rcases (zeta_zero_iff _).mp hz with hnt | ⟨k, he⟩
  · exact havoid ⟨_, hnt⟩ (by simp [height])
  · have hi := congrArg Complex.im he
    simp only [Complex.add_im, Complex.ofReal_im, Complex.mul_im, Complex.ofReal_re,
      Complex.I_im, Complex.I_re, zero_mul, add_zero, zero_add, mul_one,
      trivialPoint_im] at hi
    exact hy hi

/-- Continuity covers the full line, not finitely many sampled real coordinates. -/
theorem continuous_horizontal_logDeriv (y : ℝ) (hy : y ≠ 0)
    (havoid : ∀ z : ZeroPoint, height z ≠ |y|) :
    Continuous (fun σ : ℝ => -logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)) := by
  apply continuous_iff_continuousAt.mpr
  intro σ
  let s : ℂ := (σ : ℂ) + (y : ℂ) * Complex.I
  have hp : s ≠ 1 := by
    intro he
    have hi := congrArg Complex.im he
    exact hy (by simpa [s] using hi)
  have ha := analyticOn_riemannZeta s hp
  exact ((ha.deriv.continuousAt.div ha.continuousAt
    (zeta_ne_zero_horizontal y hy havoid σ)).neg).comp (f := fun u : ℝ => (u : ℂ) + (y : ℂ) * Complex.I) (x := σ)
    (show ContinuousAt (fun u : ℝ => (u : ℂ) + (y : ℂ) * Complex.I) σ from by fun_prop)

/-- Fixed-height compactness supplies a finite strip bound, not any rate in height. -/
theorem exists_horizontal_strip_bound (y : ℝ) (hy : y ≠ 0)
    (havoid : ∀ z : ZeroPoint, height z ≠ |y|) :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ σ ∈ Icc (-3 : ℝ) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ B := by
  obtain ⟨C, hC⟩ := (isCompact_Icc : IsCompact (Icc (-3 : ℝ) 2)).bddAbove_image
    (continuous_horizontal_logDeriv y hy havoid).norm.continuousOn
  exact ⟨max C 0, le_max_right _ _, fun σ hσ =>
    (hC (mem_image_of_mem _ hσ)).trans (le_max_left _ _)⟩

end
end GRWTSK.RiemannHypothesis.HorizontalLogDerivative
```
