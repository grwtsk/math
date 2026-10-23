/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SeparatedContourHeights
import GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours

set_option autoImplicit false

/-!
# The actual tent integrand on quantitatively separated horizontal lines

The selected heights are distinct from the old qualitative contourHeight.
This module derives actual horizontal regularity and the right-line limit for
these new heights. It does not silently reuse the old finite residue identity
at another cutoff, estimate the full logarithmic derivative, or discard a
boundary correction. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.SeparatedTentContours

open MeasureTheory Filter Set
open scoped Topology Interval BigOperators
open GRWTSK.Analysis.Complex.OrientedRectangle
open GRWTSK.Analysis.Complex.TentMellinInversion
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.RiemannHypothesis.TrivialZeroResidues
open GRWTSK.RiemannHypothesis.SeparatedContourHeights
open GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours
open GRWTSK.NumberTheory.Chebyshev.TentPerronLine
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CountedTentTail

noncomputable section

/-- Both new horizontal lines miss the actual pole, at every horizontal coordinate. -/
theorem separated_horizontal_ne_one (N : ℕ) (s : ℂ)
    (hs : |s.im| = separatedHeight N) : s ≠ 1 := by
  intro he
  subst s
  have hp := separatedHeight_pos N
  simp only [Complex.one_im, abs_zero] at hs
  linarith

/-- Complete nontrivial separation and the real trivial-zero inventory imply actual nonvanishing. -/
theorem zeta_ne_zero_on_separated_horizontal (N : ℕ) (s : ℂ)
    (hs : |s.im| = separatedHeight N) : riemannZeta s ≠ 0 := by
  intro hz
  rcases (zeta_zero_iff s).mp hz with hnt | ⟨k, rfl⟩
  · exact separatedHeight_avoids N ⟨s, hnt⟩ hs
  · have hp := separatedHeight_pos N
    have him : (trivialPoint k).im = 0 := by simp [trivialPoint]
    rw [him, abs_zero] at hs
    linarith

/-- The actual zeta/tent product, not just its finite local principal sum, is analytic here. -/
theorem analyticAt_integrand_separated_horizontal (x h : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (N : ℕ) (s : ℂ) (hs : |s.im| = separatedHeight N) :
    AnalyticAt ℂ (integrand x h) s :=
  analyticAt_integrand x h hh ha s (separated_horizontal_ne_one N s hs)
    (zeta_ne_zero_on_separated_horizontal N s hs)

/-- Each finite horizontal integral exists, including the corners. No magnitude bound is inferred. -/
theorem separated_horizontal_integrable (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (l r y : ℝ) (hlr : l ≤ r) (hy : |y| = separatedHeight N) :
    IntervalIntegrable (fun u : ℝ => integrand x h ((u : ℂ) + (y : ℂ) * Complex.I))
      volume l r := by
  apply ContinuousOn.intervalIntegrable_of_Icc hlr
  intro u hu
  have hs : |(((u : ℂ) + (y : ℂ) * Complex.I)).im| = separatedHeight N := by
    simpa using hy
  exact ((analyticAt_integrand_separated_horizontal x h hh ha N _ hs).continuousAt.comp (f := fun v : ℝ => (v : ℂ) + (y : ℂ) * Complex.I) (x := u)
    (show ContinuousAt (fun v : ℝ => (v : ℂ) + (y : ℂ) * Complex.I) u from by fun_prop)).continuousWithinAt

/-- A new cutoff requires a new inventory. Certified rounding preserves THIS selected head exactly. -/
theorem rounded_weighted_head_eq (N : ℕ) (H : ℝ)
    (herr : |H - separatedHeight N| ≤ heightClearance N / 2) (f : ZeroPoint → ℂ) :
    (∑ z ∈ heightHead H, (multiplicity z : ℂ) * f z) =
      ∑ z ∈ heightHead (separatedHeight N), (multiplicity z : ℂ) * f z := by
  rw [rounded_heightHead_eq N H herr]

/-- The same actual arithmetic source is the limit along the new quantitative selection.
This is fixed-n convergence, not a uniform estimate in the square-interval stage. -/
theorem separated_right_tendsto_squareSource (n : ℕ) (hn : 2 ≤ n) :
    Tendsto (fun N : ℕ =>
      vertical (integrand (squareCenter n) (squareRadius n)) 2 (separatedHeight N) /
        ((2 * Real.pi : ℝ) : ℂ)) atTop (𝓝 (squareTentMangoldt n : ℂ)) := by
  have hi : Integrable (fun t : ℝ =>
      integrand (squareCenter n) (squareRadius n) ((2 : ℂ) + (t : ℂ) * Complex.I)) :=
    integrable_zeta_tent_rightLine (squareCenter n) (squareRadius n)
      (squareRadius_pos n) (square_tent_domain n hn)
  have hv := vertical_tendsto (integrand (squareCenter n) (squareRadius n)) 2
    separatedHeight hi separatedHeight_tendsto
  have he : (∫ t : ℝ,
      integrand (squareCenter n) (squareRadius n) ((2 : ℂ) + (t : ℂ) * Complex.I)) /
        ((2 * Real.pi : ℝ) : ℂ) = (squareTentMangoldt n : ℂ) := by
    simpa [integrand, rightLine, div_eq_mul_inv, mul_comm] using (squareTentMangoldt_eq_rightLine n hn).symm
  have hv' := hv.div_const ((2 * Real.pi : ℝ) : ℂ)
  rw [show ((2 : ℝ) : ℂ) = 2 by norm_num, he] at hv'
  exact hv'

end
end GRWTSK.NumberTheory.Chebyshev.SeparatedTentContours
