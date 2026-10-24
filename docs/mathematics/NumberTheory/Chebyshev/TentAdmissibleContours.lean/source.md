# Complete source: GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2974858924a3aa4207314292faafc7cb4a9962c9` · SHA-256 `c7520d5770aa9dc5f48c2d655dca4eb82430d37748eea822420c358c1f9af6db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.OrientedRectangle
import GRWTSK.NumberTheory.Zeta.Riemann.AdmissibleRectangles
import GRWTSK.NumberTheory.Chebyshev.TentPerronLine
import GRWTSK.NumberTheory.Chebyshev.TentResidueContributions

set_option autoImplicit false

/-!
# Actual tent integrand on admissible zeta rectangles

The integrand is analytic along every constructed boundary and off the complete
finite pole-and-zero inventory in its interior. Finite edge integrability is
proved. The upward right segments converge to the literal arithmetic source
by the inherited right-line identity and absolute integrability.

The finite meromorphic residue theorem and the limiting left/horizontal terms
are not proved here. Qualitative avoidance supplies no quantitative growth
rate for zeta'/zeta. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours

open MeasureTheory Filter Set
open scoped Topology Interval
open GRWTSK.Analysis.Complex.OrientedRectangle
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Complex.TentMellinInversion
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.NumberTheory.Chebyshev.TentResidueContributions
open GRWTSK.NumberTheory.Chebyshev.TentPerronLine
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CountedTentTail

noncomputable section

/-- The same entire tent kernel times the actual negative logarithmic derivative. -/
def integrand (x h : ℝ) (s : ℂ) : ℂ :=
  -logDeriv riemannZeta s * tentKernel x h s

/-- This local analyticity statement excludes actual source zeros and the pole. -/
theorem analyticAt_integrand (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (s : ℂ) (hs : s ≠ 1) (hz : riemannZeta s ≠ 0) :
    AnalyticAt ℂ (integrand x h) s := by
  have hζ := analyticOn_riemannZeta s hs
  exact ((hζ.deriv.div hζ hz).neg).mul ((differentiable_tentKernel x h hh ha).analyticAt s)

/-- No boundary-zero or boundary-pole premise is left to the caller. -/
theorem analyticAt_integrand_on_boundary (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (s : ℂ) (hs : s ∈ boundary N) : AnalyticAt ℂ (integrand x h) s :=
  analyticAt_integrand x h hh ha s (boundary_ne_one N s hs)
    (zeta_ne_zero_on_boundary N s hs)

/-- The finite inventory contains every potential obstruction in the interior.
It does not assert that multiplier-cancelled entries are nonremovable poles. -/
theorem analyticAt_integrand_off_singularHead (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (s : ℂ) (hs : s ∈ interior N) (hout : s ∉ singularHead N) :
    AnalyticAt ℂ (integrand x h) s := by
  apply analyticAt_integrand x h hh ha s
  · intro he
    exact hout ((mem_singularHead_iff N s).mpr ⟨hs, Or.inl he⟩)
  · intro hz
    exact hout ((mem_singularHead_iff N s).mpr ⟨hs, Or.inr hz⟩)

/-- Compact-edge integrability follows from the actual boundary analyticity. -/
theorem intervalIntegrable_boundary_path (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (e : ℝ → ℂ) (he : Continuous e) (a b : ℝ) (hab : a ≤ b)
    (hmap : ∀ t ∈ Icc a b, e t ∈ boundary N) :
    IntervalIntegrable (fun t => integrand x h (e t)) volume a b := by
  apply ContinuousOn.intervalIntegrable_of_Icc hab
  intro t ht
  exact ((analyticAt_integrand_on_boundary x h hh ha N (e t) (hmap t ht)).continuousAt.comp
    he.continuousAt).continuousWithinAt

/-- Both top and bottom have their complete finite integrals, including corners. -/
theorem intervalIntegrable_horizontal (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (y : ℝ) (hy : |y| = contourHeight N) :
    IntervalIntegrable (fun u : ℝ => integrand x h ((u : ℂ) + (y : ℂ) * Complex.I))
      volume (leftEdge N) 2 := by
  exact intervalIntegrable_boundary_path x h hh ha N _ (by fun_prop) _ _
    ((leftEdge_neg N).le.trans (by norm_num))
    (fun u hu => horizontal_mem_boundary N u y hu hy)

/-- Vertical parametrizations integrate upward before their orientation signs are applied. -/
theorem intervalIntegrable_vertical (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (c : ℝ) (hc : c = leftEdge N ∨ c = 2) :
    IntervalIntegrable (fun t : ℝ => integrand x h ((c : ℂ) + (t : ℂ) * Complex.I))
      volume (-contourHeight N) (contourHeight N) := by
  exact intervalIntegrable_boundary_path x h hh ha N _ (by fun_prop) _ _
    (by linarith [contourHeight_pos N])
    (fun t ht => vertical_mem_boundary N c t hc (abs_le.mpr ht))

/-- The real-parameter right segment is normalized by 2*pi, with no residual I. -/
def rightSegment (x h : ℝ) (N : ℕ) : ℂ :=
  vertical (integrand x h) 2 (contourHeight N) / ((2 * Real.pi : ℝ) : ℂ)

/-- Exact finite orientation formula for the actual integrand; no residue equality is assumed. -/
theorem rightSegment_decomposition (x h : ℝ) (N : ℕ) :
    rightSegment x h N =
      boundaryIntegral (integrand x h) (leftEdge N) 2 (contourHeight N) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I) +
      vertical (integrand x h) (leftEdge N) (contourHeight N) / ((2 * Real.pi : ℝ) : ℂ) +
      (horizontal (integrand x h) (leftEdge N) 2 (contourHeight N) -
        horizontal (integrand x h) (leftEdge N) 2 (-contourHeight N)) /
          (((2 * Real.pi : ℝ) : ℂ) * Complex.I) := by
  exact normalized_right_decomposition (integrand x h) (leftEdge N) 2 (contourHeight N)
    ((2 * Real.pi : ℝ) : ℂ)
    (Complex.ofReal_ne_zero.mpr (mul_ne_zero (by norm_num) Real.pi_ne_zero))

/-- One limiting boundary obligation is discharged: the right side converges to W_n.
The left and the combined horizontal sides still need independent decay estimates. -/
theorem rightSegment_tendsto_squareSource (n : ℕ) (hn : 2 ≤ n) :
    Tendsto (rightSegment (squareCenter n) (squareRadius n)) atTop
      (𝓝 (squareTentMangoldt n : ℂ)) := by
  have hi : Integrable (fun t : ℝ =>
      integrand (squareCenter n) (squareRadius n) ((2 : ℂ) + (t : ℂ) * Complex.I)) :=
    integrable_zeta_tent_rightLine (squareCenter n) (squareRadius n)
      (squareRadius_pos n) (square_tent_domain n hn)
  have hv := vertical_tendsto (integrand (squareCenter n) (squareRadius n)) 2
    contourHeight hi contourHeight_tendsto
  have he : (∫ t : ℝ,
      integrand (squareCenter n) (squareRadius n) ((2 : ℂ) + (t : ℂ) * Complex.I)) /
      ((2 * Real.pi : ℝ) : ℂ) = (squareTentMangoldt n : ℂ) := by
    simpa [integrand, rightLine, div_eq_mul_inv, mul_comm] using (squareTentMangoldt_eq_rightLine n hn).symm
  have hv' := hv.div_const ((2 * Real.pi : ℝ) : ℂ)
  rw [show ((2 : ℝ) : ℂ) = 2 by norm_num, he] at hv'
  exact hv'

end
end GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours
```
