# Complete source: GRWTSK.NumberTheory.Chebyshev.GeneralTentExplicitFormula

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1029daef4e33c6e277ab5dfd86840ac977cefb56` · SHA-256 `97831b3e82b5f4db960dcdafdb6248327568ab6260312506edbf3487fac81dfe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula
import GRWTSK.NumberTheory.LSeries.TentPairing

/-! # The actual explicit formula for every admitted tent geometry

The right-line source identity and vanishing contour rays apply to arbitrary
h>0 and x-h>1. The source is the literal Mangoldt sum, not a supplied field.
This extends the square-tent supplier without assuming any new analytic input.
It is still a compact-test formula; classical unsmoothed zero summation and
its endpoint corrections require their own limiting argument.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Filter
open scoped BigOperators Topology

namespace GRWTSK.NumberTheory.Chebyshev.GeneralTentExplicitFormula

open GRWTSK.Analysis.Real.TentWeight
open GRWTSK.Analysis.Real.TentRationalCorrection
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Complex.TentMellinInversion
open GRWTSK.Analysis.Complex.OrientedRectangle
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.SeparatedContourHeights
open GRWTSK.NumberTheory.LSeries.TentPairing
open TentPerronLine TentAdmissibleContours TentHorizontalRays TentHorizontalDecay
open TentSelectedResidueLimit CanonicalTentAbsolute

def tentMangoldt (x h : ℝ) : ℂ :=
  ∑' m : ℕ, (ArithmeticFunction.vonMangoldt m : ℂ) * (tent x h (m : ℝ) : ℂ)

theorem tentMangoldt_eq_rightLine (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    tentMangoldt x h = ((1 / (2 * Real.pi) : ℝ) : ℂ) *
      ∫ t : ℝ, -logDeriv riemannZeta (rightLine t) * tentKernel x h (rightLine t) := by
  have he := dirichlet_tent_pairing
    (fun m : ℕ => (ArithmeticFunction.vonMangoldt m : ℂ))
    (ArithmeticFunction.LSeriesSummable_vonMangoldt (s := 2) (by norm_num)) x h hh ha
  simp_rw [mangoldt_series_on_rightLine] at he
  exact he.symm

theorem separated_right_tendsto_tentMangoldt (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Tendsto (fun N : ℕ => vertical (integrand x h) 2 (separatedHeight N) /
      ((2 * Real.pi : ℝ) : ℂ)) atTop (𝓝 (tentMangoldt x h)) := by
  have hi : Integrable (fun t : ℝ => integrand x h ((2 : ℂ) + (t : ℂ) * Complex.I)) :=
    integrable_zeta_tent_rightLine x h hh ha
  have hv := (vertical_tendsto (integrand x h) 2 separatedHeight hi
    separatedHeight_tendsto).div_const ((2 * Real.pi : ℝ) : ℂ)
  have he : (∫ t : ℝ, integrand x h ((2 : ℂ) + (t : ℂ) * Complex.I)) /
      ((2 * Real.pi : ℝ) : ℂ) = tentMangoldt x h := by
    simpa [integrand, rightLine, div_eq_mul_inv, mul_comm] using
      (tentMangoldt_eq_rightLine x h hh ha).symm
  rw [show ((2 : ℝ) : ℂ) = 2 by norm_num, he] at hv
  exact hv

theorem general_residues_tendsto_source (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Tendsto (fun N : ℕ => (h : ℂ) -
      (∑ z ∈ heightHead (separatedHeight N), (multiplicity z : ℂ) * tentKernel x h z.1) +
        (rationalTentCorrection x h : ℂ)) atTop (𝓝 (tentMangoldt x h)) := by
  have ht := (separated_right_tendsto_tentMangoldt x h hh ha).sub
    (combined_rays_tendsto_zero x h hh ha)
  have he : (fun N : ℕ => vertical (integrand x h) 2 (separatedHeight N) /
      ((2 * Real.pi : ℝ) : ℂ) -
      (horizontalRay x h (separatedHeight N) - horizontalRay x h (-separatedHeight N)) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I)) =ᶠ[atTop]
    (fun N : ℕ => (h : ℂ) -
      (∑ z ∈ heightHead (separatedHeight N), (multiplicity z : ℂ) * tentKernel x h z.1) +
        (rationalTentCorrection x h : ℂ)) := by
    apply Eventually.of_forall
    intro N
    dsimp only
    rw [right_eq_residues_add_horizontalRays x h (separatedHeight N) hh ha
      (separatedHeight_pos N) (separatedHeight_avoids N)]
    ring
  simpa only [sub_zero] using (tendsto_congr' he).mp ht

/-- All source, counting, summability and contour-limit premises are discharged. -/
theorem general_tent_source_eq_tsum (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    tentMangoldt x h = (h : ℂ) -
      (∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) +
        (rationalTentCorrection x h : ℂ) := by
  have hs := (canonical_absolute_summable x h hh ha).2
  have hz := summable_selected_heads_tendsto
    (fun z : ZeroPoint => (multiplicity z : ℂ) * tentKernel x h z.1) hs
  have hl := ((tendsto_const_nhds (x := (h : ℂ))).sub hz).add_const
    (rationalTentCorrection x h : ℂ)
  exact tendsto_nhds_unique (general_residues_tendsto_source x h hh ha) hl

theorem norm_general_tent_sub_head_le (x h T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hT : 2 ≤ T) :
    ‖tentMangoldt x h - ((h : ℂ) -
      (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
        (rationalTentCorrection x h : ℂ))‖ ≤ canonicalTailBudget x h T := by
  have heq : tentMangoldt x h - ((h : ℂ) -
      (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
        (rationalTentCorrection x h : ℂ)) =
    -((∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) -
      ∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) := by
    rw [general_tent_source_eq_tsum x h hh ha]
    ring
  rw [heq, norm_neg]
  exact norm_full_sub_head_le x h T hh ha hT

end GRWTSK.NumberTheory.Chebyshev.GeneralTentExplicitFormula
```
