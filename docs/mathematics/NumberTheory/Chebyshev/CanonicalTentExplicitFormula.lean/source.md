# Complete source: GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19986ee19a45ec9e760b635951e67e16b08e0626` · SHA-256 `8e3d11b29da840ac94d2299f3305cda8a73757e81238aab40559f316e999e75c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentAbsolute
import GRWTSK.NumberTheory.Chebyshev.TentSelectedResidueLimit

set_option autoImplicit false

/-!
# The canonical absolutely summed square-tent explicit formula

Absolute summability comes from the actual local count and kernel decay,
independently of contour cancellation. It now discharges the summability
premise of the selected-residue consumer. The arithmetic observable, full
complex divisor, multiplicities and signed correction are unchanged.
This is a smoothed identity, not the unsmoothed Chebyshev staircase or a prime
margin theorem. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula

open Filter
open scoped Topology BigOperators
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.CanonicalHighCounting
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Real.TentRationalCorrection
open CanonicalTentAbsolute TentSelectedResidueLimit TentSource CountedTentTail

noncomputable section

/-- No source identity, summability, count, selected-height or decay premise is supplied. -/
theorem canonical_square_source_eq_tsum (n : ℕ) (hn : 2 ≤ n) :
    (squareTentMangoldt n : ℂ) = (squareRadius n : ℂ) -
      (∑' z : ZeroPoint, (multiplicity z : ℂ) *
        tentKernel (squareCenter n) (squareRadius n) z.1) +
      (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ) :=
  square_source_eq_tsum_of_summable n hn
    (canonical_absolute_summable (squareCenter n) (squareRadius n)
      (squareRadius_pos n) (square_tent_domain n hn)).2

/-- The unconditional finite-subset-net HasSum, not just one ordered subsequence. -/
theorem canonical_square_hasSum (n : ℕ) (hn : 2 ≤ n) :
    HasSum (fun z : ZeroPoint => (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1)
      ((squareRadius n : ℂ) +
        (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ) -
        (squareTentMangoldt n : ℂ)) := by
  have hs := (canonical_absolute_summable (squareCenter n) (squareRadius n)
    (squareRadius_pos n) (square_tent_domain n hn)).2
  have he := canonical_square_source_eq_tsum n hn
  have hz : (∑' z : ZeroPoint, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) =
      (squareRadius n : ℂ) +
        (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ) -
        (squareTentMangoldt n : ℂ) := by
    rw [he]
    ring
  simpa only [hz] using hs.hasSum

/-- This is now an arithmetic-to-finite-divisor bound, not a finite-right-contour defect. -/
theorem norm_square_source_sub_finite_le (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 2 ≤ T) :
    ‖(squareTentMangoldt n : ℂ) -
      ((squareRadius n : ℂ) - (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
        tentKernel (squareCenter n) (squareRadius n) z.1) +
        (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ))‖ ≤
      canonicalTailBudget (squareCenter n) (squareRadius n) T := by
  calc
    _ = ‖-((∑' z : ZeroPoint, (multiplicity z : ℂ) *
          tentKernel (squareCenter n) (squareRadius n) z.1) -
        ∑ z ∈ heightHead T, (multiplicity z : ℂ) *
          tentKernel (squareCenter n) (squareRadius n) z.1)‖ := by
      rw [canonical_square_source_eq_tsum n hn]
      congr 1
      ring
    _ = ‖(∑' z : ZeroPoint, (multiplicity z : ℂ) *
          tentKernel (squareCenter n) (squareRadius n) z.1) -
        ∑ z ∈ heightHead T, (multiplicity z : ℂ) *
          tentKernel (squareCenter n) (squareRadius n) z.1‖ := norm_neg _
    _ ≤ _ := norm_full_sub_head_le (squareCenter n) (squareRadius n) T
      (squareRadius_pos n) (square_tent_domain n hn) hT

/-- A certified evaluation of the SAME complete finite head adds its error once. -/
theorem norm_square_source_sub_evaluated_le (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T) (evaluated : ℂ) (error : ℝ)
    (heval : ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated‖ ≤ error) :
    ‖(squareTentMangoldt n : ℂ) - ((squareRadius n : ℂ) - evaluated +
      (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ))‖ ≤
      canonicalTailBudget (squareCenter n) (squareRadius n) T + error := by
  calc
    _ = ‖-((∑' z : ZeroPoint, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated)‖ := by
      rw [canonical_square_source_eq_tsum n hn]
      congr 1
      ring
    _ = ‖(∑' z : ZeroPoint, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated‖ := norm_neg _
    _ ≤ _ := norm_full_sub_evaluated_le (squareCenter n) (squareRadius n) T
      (squareRadius_pos n) (square_tent_domain n hn) hT evaluated error heval

/-- Every finite subset is eventually included at arbitrary increasing real cutoffs. -/
theorem heightHead_tendsto_atTop : Tendsto heightHead atTop atTop := by
  classical
  apply tendsto_atTop.mpr
  intro S
  induction S using Finset.induction_on with
  | empty => exact Eventually.of_forall (fun _ => Finset.empty_subset _)
  | @insert z S hz ih =>
      filter_upwards [ih, eventually_ge_atTop (height z)] with T hS hzT
      exact Finset.insert_subset_iff.mpr ⟨(mem_heightHead T z).mpr hzT, hS⟩

/-- No contour-avoidance assumption is needed after genuine absolute summability. -/
theorem canonical_heads_tendsto (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Tendsto (fun T : ℝ => ∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1)
      atTop (𝓝 (∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1)) := by
  have hs := (canonical_absolute_summable x h hh ha).2
  exact (hs.hasSum : Tendsto (fun S : Finset ZeroPoint =>
    ∑ z ∈ S, (multiplicity z : ℂ) * tentKernel x h z.1) atTop
      (𝓝 (∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1))).comp
        heightHead_tendsto_atTop

/-- Fixed square stage, all real cutoffs tending to infinity; not a uniform-in-n assertion. -/
theorem square_residues_tendsto_all_heights (n : ℕ) (hn : 2 ≤ n) :
    Tendsto (fun T : ℝ => (squareRadius n : ℂ) -
      (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
        tentKernel (squareCenter n) (squareRadius n) z.1) +
      (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ))
      atTop (𝓝 (squareTentMangoldt n : ℂ)) := by
  have ht := ((tendsto_const_nhds (x := (squareRadius n : ℂ))).sub
    (canonical_heads_tendsto (squareCenter n) (squareRadius n)
      (squareRadius_pos n) (square_tent_domain n hn))).add_const
        (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ)
  simpa only [← canonical_square_source_eq_tsum n hn] using ht

/-- The old square normalization and the NEW counting coefficient are both retained. -/
theorem square_canonical_tail_budget (n : ℕ) (T : ℝ) :
    canonicalTailBudget (squareCenter n) (squareRadius n) T =
      8 * countingCoefficient * ((n : ℝ) + 1) ^ 4 * (Real.log T + 1) /
        (squareRadius n * T) := by
  rw [canonicalTailBudget, square_tent_tail_budget]
  ring

end
end GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula
```
