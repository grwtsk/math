/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.TentHorizontalDecay
import GRWTSK.NumberTheory.Chebyshev.SeparatedTentContours

set_option autoImplicit false

/-!
# The selected-height tent residue limit

Complete finite canonical zero sums are taken at the unchanged separated
heights. The actual right-line arithmetic limit and separately vanishing
horizontal rays identify their limit. This is a specified height ordering,
NOT a proof of unordered summability. A separate theorem exports a tsum
identity only with an explicit Summable premise. No prime margin is derived.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.TentSelectedResidueLimit

open Filter Set
open scoped Topology BigOperators
open GRWTSK.Analysis.ComplexAnalysis.OrientedRectangle
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.Real.TentRationalCorrection
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.SeparatedContourHeights
open TentAdmissibleContours TentHorizontalRays TentHorizontalDecay
open SeparatedTentContours TentSource CountedTentTail

noncomputable section

/-- Every finite collection of actual zero points is eventually in the SAME selected head. -/
theorem selected_heightHead_tendsto_atTop :
    Tendsto (fun N : ℕ => heightHead (separatedHeight N)) atTop atTop := by
  classical
  apply tendsto_atTop.mpr
  intro S
  induction S using Finset.induction_on with
  | empty => exact Eventually.of_forall (fun _ => Finset.empty_subset _)
  | @insert z S hz ih =>
      filter_upwards [ih, (tendsto_atTop.mp separatedHeight_tendsto) (height z)] with N hS hheight
      exact Finset.insert_subset_iff.mpr
        ⟨(mem_heightHead (separatedHeight N) z).mpr hheight, hS⟩

/-- Cofinality transports an ALREADY summable family; it does not create summability. -/
theorem summable_selected_heads_tendsto (f : ZeroPoint → ℂ) (hf : Summable f) :
    Tendsto (fun N : ℕ => ∑ z ∈ heightHead (separatedHeight N), f z)
      atTop (𝓝 (∑' z, f z)) := by
  exact (hf.hasSum : Tendsto (fun S : Finset ZeroPoint => ∑ z ∈ S, f z)
    atTop (𝓝 (∑' z, f z))).comp selected_heightHead_tendsto_atTop

/-- This defect concerns the finite RIGHT integral, not yet the arithmetic source. -/
theorem norm_right_residue_defect_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (hN : 2 ≤ N) :
    ‖vertical (integrand x h) 2 (separatedHeight N) / ((2 * Real.pi : ℝ) : ℂ) -
      ((h : ℂ) - (∑ z ∈ heightHead (separatedHeight N),
        (multiplicity z : ℂ) * tentKernel x h z.1) + (rationalTentCorrection x h : ℂ))‖ ≤
      selectedRayBudget x h N / Real.pi := by
  rw [right_eq_residues_add_horizontalRays x h (separatedHeight N) hh ha
    (separatedHeight_pos N) (separatedHeight_avoids N)]
  simpa only [add_sub_cancel_left] using norm_combined_selected_rays_le x h hh ha N hN

/-- Fixed arithmetic interval: no zero-count, source-identity or summability input. -/
theorem finite_residues_tendsto_squareSource (n : ℕ) (hn : 2 ≤ n) :
    Tendsto (fun N : ℕ =>
      ((squareRadius n : ℂ) - (∑ z ∈ heightHead (separatedHeight N),
        (multiplicity z : ℂ) * tentKernel (squareCenter n) (squareRadius n) z.1) +
        (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ)))
      atTop (𝓝 (squareTentMangoldt n : ℂ)) := by
  have hR := separated_right_tendsto_squareSource n hn
  have hE := combined_rays_tendsto_zero (squareCenter n) (squareRadius n)
    (squareRadius_pos n) (square_tent_domain n hn)
  have ht := hR.sub hE
  have he : (fun N : ℕ =>
      vertical (integrand (squareCenter n) (squareRadius n)) 2 (separatedHeight N) /
        ((2 * Real.pi : ℝ) : ℂ) -
      (horizontalRay (squareCenter n) (squareRadius n) (separatedHeight N) -
        horizontalRay (squareCenter n) (squareRadius n) (-separatedHeight N)) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I)) =ᶠ[atTop]
      (fun N : ℕ => (squareRadius n : ℂ) -
        (∑ z ∈ heightHead (separatedHeight N),
          (multiplicity z : ℂ) * tentKernel (squareCenter n) (squareRadius n) z.1) +
        (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ)) := by
    apply Eventually.of_forall
    intro N
    dsimp only
    rw [right_eq_residues_add_horizontalRays (squareCenter n) (squareRadius n)
      (separatedHeight N) (squareRadius_pos n) (square_tent_domain n hn)
      (separatedHeight_pos N) (separatedHeight_avoids N)]
    ring
  simpa only [sub_zero] using (tendsto_congr' he).mp ht

/-- The sum is over actual complete finite heads, not an arbitrary observed list. -/
theorem selected_zero_sums_tendsto (n : ℕ) (hn : 2 ≤ n) :
    Tendsto (fun N : ℕ => ∑ z ∈ heightHead (separatedHeight N),
      (multiplicity z : ℂ) * tentKernel (squareCenter n) (squareRadius n) z.1)
      atTop (𝓝 ((squareRadius n : ℂ) +
        (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ) -
        (squareTentMangoldt n : ℂ))) := by
  have ht := (tendsto_const_nhds (x := (squareRadius n : ℂ) +
    (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ))).sub
      (finite_residues_tendsto_squareSource n hn)
  convert ht using 1
  funext N
  ring

/-- Any independently identified limit in THIS ordering gives the arithmetic identity. -/
theorem square_source_eq_of_selected_zero_limit (n : ℕ) (hn : 2 ≤ n) (Z : ℂ)
    (hZ : Tendsto (fun N : ℕ => ∑ z ∈ heightHead (separatedHeight N),
      (multiplicity z : ℂ) * tentKernel (squareCenter n) (squareRadius n) z.1)
      atTop (𝓝 Z)) :
    (squareTentMangoldt n : ℂ) = (squareRadius n : ℂ) - Z +
      (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ) := by
  have he := tendsto_nhds_unique hZ (selected_zero_sums_tendsto n hn)
  rw [he]
  ring

/-- The unordered tsum formula is gated by genuine Summable, NOT just head convergence. -/
theorem square_source_eq_tsum_of_summable (n : ℕ) (hn : 2 ≤ n)
    (hsum : Summable (fun z : ZeroPoint =>
      (multiplicity z : ℂ) * tentKernel (squareCenter n) (squareRadius n) z.1)) :
    (squareTentMangoldt n : ℂ) = (squareRadius n : ℂ) -
      (∑' z : ZeroPoint, (multiplicity z : ℂ) *
        tentKernel (squareCenter n) (squareRadius n) z.1) +
      (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ) :=
  square_source_eq_of_selected_zero_limit n hn _
    (summable_selected_heads_tendsto _ hsum)

end
end GRWTSK.NumberTheory.Chebyshev.TentSelectedResidueLimit
