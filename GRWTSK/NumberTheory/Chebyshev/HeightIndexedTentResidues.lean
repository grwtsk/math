/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.HeightIndexedDivisor
import GRWTSK.NumberTheory.Chebyshev.TentFiniteResidues
import GRWTSK.NumberTheory.Chebyshev.SeparatedTentContours

set_option autoImplicit false

/-!
# Finite tent residues at independent, separated and certified perturbed heights

The actual finite residue identity is specialized from the generic rectangular
coefficient theorem, not transported by renaming the old chosen height. The left
index N, selection index J and arithmetic stage n are independent. Rounding
preserves the full closed integral, NOT its individual right or other edges.
The edge remainder is defined by literal oriented integrals, not by subtracting
an unknown arithmetic value. No logarithmic-derivative growth or decay theorem
is supplied. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.HeightIndexedTentResidues

open MeasureTheory Filter Set
open scoped Topology Interval BigOperators
open GRWTSK.Analysis.ComplexAnalysis.OrientedRectangle
open GRWTSK.Analysis.ComplexAnalysis.RectangularPoleReduction
open GRWTSK.Analysis.ComplexAnalysis.RectangularCauchyKernel
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentMellinInversion
open GRWTSK.Analysis.Real.TentRationalCorrection
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.RiemannHypothesis.TrivialZeroResidues
open GRWTSK.RiemannHypothesis.SeparatedContourHeights
open GRWTSK.RiemannHypothesis.HeightIndexedDivisor
open GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours
open GRWTSK.NumberTheory.Chebyshev.TentPoleSubtraction
open GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries
open GRWTSK.NumberTheory.Chebyshev.TentPerronLine
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CountedTentTail

noncomputable section

/-- Actual local coefficients, summed over the new exact cutoff without changing their source. -/
theorem sum_coefficients_at_height (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (T : ℝ) :
    (∑ p ∈ singularHeadAt N T, tentCoefficient x h p) =
      (h : ℂ) - (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
        (correctionPrefix N x h : ℂ) := by
  have hnt : (∑ z ∈ heightHead T, tentCoefficient x h z.1) =
      -(∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) := by
    simp only [tentCoefficient_nontrivial, neg_mul, Finset.sum_neg_distrib]
  have htr : (∑ k ∈ Finset.range N, tentCoefficient x h (trivialPoint k)) =
      (correctionPrefix N x h : ℂ) := by
    simp only [tentCoefficient_trivial]
    exact finite_trivial_coefficients N x h hh ha
  rw [sum_singularHeadAt, tentCoefficient_one x h hh ha, hnt, htr]
  ring

/-- Source nonvanishing off the exact inventory supplies regularity on the filled rectangle. -/
theorem analyticAt_off_headAt (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (T : ℝ) (s : ℂ) (hs : s ∈ closedRectangle (leftEdge N) 2 T)
    (hout : s ∉ singularHeadAt N T) : AnalyticAt ℂ (integrand x h) s := by
  apply analyticAt_integrand x h hh ha s
  · intro he
    exact hout (singular_mem_of_closed N T s hs (Or.inl he))
  · intro hz
    exact hout (singular_mem_of_closed N T s hs (Or.inr hz))

/-- Finite residue identity at ANY positive avoided height. N and T are independent. -/
theorem boundary_residue_at_height (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (T : ℝ) (hT : 0 < T) (havoid : ∀ z : ZeroPoint, height z ≠ T) :
    boundaryIntegral (integrand x h) (leftEdge N) 2 T =
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I) *
        ((h : ℂ) - (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
          (correctionPrefix N x h : ℂ)) := by
  rw [boundaryIntegral_eq_coefficient_sum (singularHeadAt N T) (integrand x h)
    (tentCoefficient x h) (leftEdge N) 2 T
    ((leftEdge_neg N).trans (by norm_num)) hT
    (fun p hp => ((mem_singularHeadAt_iff N T hT havoid p).mp hp).1)
    (analyticAt_off_headAt x h hh ha N T)
    (fun p hp => tent_principal_part x h hh ha p
      ((mem_singularHeadAt_iff N T hT havoid p).mp hp).2),
    sum_coefficients_at_height x h hh ha N T]

/-- Normalization of the actual contour, not a formal coefficient list. -/
theorem boundary_div_at_height (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (T : ℝ) (hT : 0 < T) (havoid : ∀ z : ZeroPoint, height z ≠ T) :
    boundaryIntegral (integrand x h) (leftEdge N) 2 T /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I) =
      (h : ℂ) - (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
        (correctionPrefix N x h : ℂ) := by
  have hq : (((2 * Real.pi : ℝ) : ℂ) * Complex.I) ≠ 0 :=
    mul_ne_zero (Complex.ofReal_ne_zero.mpr
      (mul_ne_zero (by norm_num) Real.pi_ne_zero)) Complex.I_ne_zero
  rw [boundary_residue_at_height x h hh ha N T hT havoid]
  field_simp [hq]

/-- Moving only the left edge across the next trivial zero changes the residue side.
This is independent of the positive height and is NOT a zero-free deformation. -/
theorem boundary_left_step (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (T : ℝ) (hT : 0 < T) (havoid : ∀ z : ZeroPoint, height z ≠ T) :
    boundaryIntegral (integrand x h) (leftEdge (N + 1)) 2 T /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I) -
      boundaryIntegral (integrand x h) (leftEdge N) 2 T /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I) = -tentKernel x h (trivialPoint N) := by
  have hp : (correctionPrefix (N + 1) x h : ℂ) =
      (correctionPrefix N x h : ℂ) - tentKernel x h (trivialPoint N) := by
    rw [← finite_trivial_coefficients (N + 1) x h hh ha,
      ← finite_trivial_coefficients N x h hh ha, Finset.sum_range_succ]
    ring
  rw [boundary_div_at_height x h hh ha (N + 1) T hT havoid,
    boundary_div_at_height x h hh ha N T hT havoid, hp]
  ring

/-- Literal upward-left plus top-minus-bottom correction, with both differential factors. -/
def edgeRemainder (x h : ℝ) (N : ℕ) (T : ℝ) : ℂ :=
  vertical (integrand x h) (leftEdge N) T / ((2 * Real.pi : ℝ) : ℂ) +
    (horizontal (integrand x h) (leftEdge N) 2 T -
      horizontal (integrand x h) (leftEdge N) 2 (-T)) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I)

/-- Finite right-side comparison with no discarded correction and no infinite limit. -/
theorem right_residue_at_height (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (T : ℝ) (hT : 0 < T) (havoid : ∀ z : ZeroPoint, height z ≠ T) :
    vertical (integrand x h) 2 T / ((2 * Real.pi : ℝ) : ℂ) =
      ((h : ℂ) - (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
        (correctionPrefix N x h : ℂ)) + edgeRemainder x h N T := by
  rw [normalized_right_decomposition (integrand x h) (leftEdge N) 2 T
    ((2 * Real.pi : ℝ) : ℂ)
    (Complex.ofReal_ne_zero.mpr (mul_ne_zero (by norm_num) Real.pi_ne_zero)),
    boundary_div_at_height x h hh ha N T hT havoid]
  unfold edgeRemainder
  ring

/-- The selected heights now genuinely instantiate the finite residue theorem. -/
theorem separated_boundary_formula (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N J : ℕ) :
    boundaryIntegral (integrand x h) (leftEdge N) 2 (separatedHeight J) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I) =
      (h : ℂ) - (∑ z ∈ heightHead (separatedHeight J),
        (multiplicity z : ℂ) * tentKernel x h z.1) + (correctionPrefix N x h : ℂ) :=
  boundary_div_at_height x h hh ha N (separatedHeight J)
    (separatedHeight_pos J) (separatedHeight_avoids J)

/-- Certified half-gap perturbations have the SAME finite residue side as the selected height. -/
theorem rounded_boundary_formula (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N J : ℕ) (T : ℝ) (herr : |T - separatedHeight J| ≤ heightClearance J / 2) :
    boundaryIntegral (integrand x h) (leftEdge N) 2 T /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I) =
      (h : ℂ) - (∑ z ∈ heightHead (separatedHeight J),
        (multiplicity z : ℂ) * tentKernel x h z.1) + (correctionPrefix N x h : ℂ) := by
  have hT : 0 < T := by
    have hJ := Nat.cast_nonneg (α := ℝ) J
    linarith [(rounded_height_bounds J T herr).1]
  rw [boundary_div_at_height x h hh ha N T hT (rounded_avoids J T herr),
    rounded_heightHead_eq J T herr]

/-- The entire normalized closed integral is stable, not its individual edge integrals. -/
theorem rounded_closed_eq (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N J : ℕ) (T : ℝ) (herr : |T - separatedHeight J| ≤ heightClearance J / 2) :
    boundaryIntegral (integrand x h) (leftEdge N) 2 T /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I) =
      boundaryIntegral (integrand x h) (leftEdge N) 2 (separatedHeight J) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I) := by
  rw [rounded_boundary_formula x h hh ha N J T herr, separated_boundary_formula x h hh ha N J]

/-- An edge change is not a zero change: the right difference equals the correction difference. -/
theorem rounded_right_change (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N J : ℕ) (T : ℝ) (herr : |T - separatedHeight J| ≤ heightClearance J / 2) :
    vertical (integrand x h) 2 T / ((2 * Real.pi : ℝ) : ℂ) -
      vertical (integrand x h) 2 (separatedHeight J) / ((2 * Real.pi : ℝ) : ℂ) =
        edgeRemainder x h N T - edgeRemainder x h N (separatedHeight J) := by
  have hT : 0 < T := by
    have hJ := Nat.cast_nonneg (α := ℝ) J
    linarith [(rounded_height_bounds J T herr).1]
  rw [right_residue_at_height x h hh ha N T hT (rounded_avoids J T herr),
    right_residue_at_height x h hh ha N (separatedHeight J)
      (separatedHeight_pos J) (separatedHeight_avoids J), rounded_heightHead_eq J T herr]
  ring

/-- A whole sequence of certified perturbations stays cofinal; no numerical routine is assumed. -/
theorem rounded_heights_tendsto (H : ℕ → ℝ)
    (herr : ∀ J, |H J - separatedHeight J| ≤ heightClearance J / 2) :
    Tendsto H atTop atTop := by
  apply tendsto_atTop_mono (f := fun J : ℕ => (J : ℝ))
    (fun J => by linarith [(rounded_height_bounds J (H J) (herr J)).1])
  exact tendsto_natCast_atTop_atTop

/-- Fixed arithmetic-stage right-line convergence also survives the certified height sequence. -/
theorem rounded_right_tendsto_squareSource (n : ℕ) (hn : 2 ≤ n) (H : ℕ → ℝ)
    (herr : ∀ J, |H J - separatedHeight J| ≤ heightClearance J / 2) :
    Tendsto (fun J : ℕ => vertical (integrand (squareCenter n) (squareRadius n)) 2 (H J) /
      ((2 * Real.pi : ℝ) : ℂ)) atTop (𝓝 (squareTentMangoldt n : ℂ)) := by
  have hi : Integrable (fun t : ℝ =>
      integrand (squareCenter n) (squareRadius n) ((2 : ℂ) + (t : ℂ) * Complex.I)) :=
    integrable_zeta_tent_rightLine (squareCenter n) (squareRadius n)
      (squareRadius_pos n) (square_tent_domain n hn)
  have hv := vertical_tendsto (integrand (squareCenter n) (squareRadius n)) 2 H hi
    (rounded_heights_tendsto H herr)
  have he : (∫ t : ℝ,
      integrand (squareCenter n) (squareRadius n) ((2 : ℂ) + (t : ℂ) * Complex.I)) /
        ((2 * Real.pi : ℝ) : ℂ) = (squareTentMangoldt n : ℂ) := by
    simpa [integrand, rightLine, div_eq_mul_inv, mul_comm] using (squareTentMangoldt_eq_rightLine n hn).symm
  have hv' := hv.div_const ((2 * Real.pi : ℝ) : ℂ)
  rw [show ((2 : ℝ) : ℂ) = 2 by norm_num, he] at hv'
  exact hv'

/-- Certified height perturbations change the correction by a quantity tending to zero,
even for an arbitrary moving left cutoff. This does NOT prove either correction tends to zero. -/
theorem rounded_edge_change_tendsto (n : ℕ) (hn : 2 ≤ n) (L : ℕ → ℕ) (H : ℕ → ℝ)
    (herr : ∀ J, |H J - separatedHeight J| ≤ heightClearance J / 2) :
    Tendsto (fun J : ℕ =>
      edgeRemainder (squareCenter n) (squareRadius n) (L J) (H J) -
        edgeRemainder (squareCenter n) (squareRadius n) (L J) (separatedHeight J))
      atTop (𝓝 0) := by
  have hd := (rounded_right_tendsto_squareSource n hn H herr).sub
    (GRWTSK.NumberTheory.Chebyshev.SeparatedTentContours.separated_right_tendsto_squareSource n hn)
  have hd0 := hd.congr' (Eventually.of_forall (fun J =>
    rounded_right_change (squareCenter n) (squareRadius n) (squareRadius_pos n)
      (square_tent_domain n hn) (L J) J (H J) (herr J)))
  simpa only [sub_self] using hd0

end
end GRWTSK.NumberTheory.Chebyshev.HeightIndexedTentResidues
