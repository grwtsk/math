/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor
import GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection

set_option autoImplicit false

/-!
# The counted-tent consumer on the actual nontrivial zeta divisor

The arbitrary point family, multiplicity function, strip condition and
finite-head coverage fields are specialized to source-derived definitions.
The actual scalar height-count estimate remains an independent hypothesis,
as does the complete first-Riesz identity. A noncomputable complete head is
not a certified external zero inventory or a numerical evaluator.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalZetaTent

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.Series.HeightCountingTail
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Complex.TentKernelTail
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CountedTentTail
open GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection
open GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget

noncomputable section

/-- Every finite subfamily is controlled by the actual complete weighted count. -/
theorem finiteCountingMass_le_heightCount (S : Finset ZeroPoint) (t : ℝ) :
    finiteCountingMass S height (fun z => (multiplicity z : ℝ)) t ≤
      (heightCount t : ℝ) := by
  rw [heightCount_cast]
  exact finiteCountingMass_le_cover S (heightHead t) height
    (fun z => (multiplicity z : ℝ)) t (fun _ => Nat.cast_nonneg _)
    (fun z hz => (mem_heightHead t z).mpr hz)

/-- The source count bound is exactly the universal finite-subfamily condition,
not an estimate on one supplied list. Neither side is proved unconditionally. -/
theorem heightCount_bound_iff (T : ℝ) :
    (∀ t, T ≤ t → (heightCount t : ℝ) ≤ t * Real.log t) ↔
      (∀ S : Finset ZeroPoint, ∀ t, T ≤ t →
        finiteCountingMass S height (fun z => (multiplicity z : ℝ)) t ≤
          t * Real.log t) := by
  constructor
  · intro h S t ht
    exact (finiteCountingMass_le_heightCount S t).trans (h t ht)
  · intro h t ht
    have hc := h (heightHead t) t ht
    rw [finiteCountingMass_eq_total (heightHead t) height
      (fun z => (multiplicity z : ℝ)) t
      (fun z hz => (mem_heightHead t z).mp hz), ← heightCount_cast] at hc
    exact hc

/-- The family is now literally all actual nontrivial zeta points weighted by
their finite analytic orders. Counting still supplies the quantitative input. -/
theorem canonical_tent_summable_and_remainder (x h T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hT : 1 ≤ T)
    (hcount : ∀ t, T ≤ t → (heightCount t : ℝ) ≤ t * Real.log t) :
    Summable (fun z : ZeroPoint => ‖(multiplicity z : ℂ) * tentKernel x h z.1‖) ∧
      Summable (fun z : ZeroPoint => (multiplicity z : ℂ) * tentKernel x h z.1) ∧
      ‖(∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) -
        ∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1‖ ≤
          tentTailBudget x h 1 T := by
  exact tent_full_sum_and_remainder x h 1 T hh ha (by norm_num) hT
    (heightHead T) multiplicity (fun z : ZeroPoint => z.1)
    (fun z hz => (mem_heightHead T z).mpr hz)
    (fun z _ => (point_mem_strip z).2.le)
    ((heightCount_bound_iff T).mp hcount)

/-- Same canonical finite head; a numerical enclosure remains a proved input. -/
theorem canonical_tent_evaluation_error (x h T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hT : 1 ≤ T)
    (hcount : ∀ t, T ≤ t → (heightCount t : ℝ) ≤ t * Real.log t)
    (evaluated : ℂ) (E : ℝ)
    (heval : ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) -
      evaluated‖ ≤ E) :
    ‖(∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) - evaluated‖ ≤
      tentTailBudget x h 1 T + E := by
  exact tent_full_sum_evaluation_error x h 1 T hh ha (by norm_num) hT
    (heightHead T) multiplicity (fun z : ZeroPoint => z.1)
    (fun z hz => (mem_heightHead T z).mpr hz)
    (fun z _ => (point_mem_strip z).2.le)
    ((heightCount_bound_iff T).mp hcount) evaluated E heval

/-- No freely chosen zero family, multiplicity, horizontal bound or head-cover
premise remains. The actual count theorem and complete first-Riesz identity
are still unproved inputs; no favorable all-interval margin is constructed. -/
theorem prime_in_square_of_canonical_zeta_tent
    (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 1 ≤ T)
    (hcount : ∀ t, T ≤ t → (heightCount t : ℝ) ≤ t * Real.log t)
    (evaluated : ℂ) (E : ℝ)
    (hsource : (squareTentMangoldt n : ℂ) = (squareRadius n : ℂ) -
      (∑' z : ZeroPoint, (multiplicity z : ℂ) *
        tentKernel (squareCenter n) (squareRadius n) z.1) +
          (squareTrivialCorrection n : ℂ))
    (heval : ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated‖ ≤ E)
    (hmargin : 0 < squareRadius n - evaluated.re - squareTrivialBudget n -
      tentTailBudget (squareCenter n) (squareRadius n) 1 T - E -
        squareCorrectionBudget n) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  exact prime_in_square_of_signed_counted_tent n hn T hT
    (heightHead T) multiplicity (fun z : ZeroPoint => z.1)
    (fun z hz => (mem_heightHead T z).mpr hz)
    (fun z _ => (point_mem_strip z).2.le)
    ((heightCount_bound_iff T).mp hcount) evaluated E hsource heval hmargin

end
end GRWTSK.NumberTheory.Chebyshev.CanonicalZetaTent
