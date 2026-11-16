/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain

/-!
# Joint support and error coverage for primitive Weil stages

A certificate can use an error independent of its window index. For a
requested stage `j`, ask for a window covering `j` and a lower bound
whose error is at most the requested stage's dyadic error. The same test
fits the larger window, and `primitiveArithmeticValue_eq_of_le` preserves
its genuine signed arithmetic value. If the conductor meets the larger
window's frontier, the existing nonnegativity theorem pays the bound.
This combines the exact window return (`b3164b890d83efe068c944cf1d8339ad9a720769`)
with the stage consumer (`2ceec84246b42efec174f734eb31685d809746a5`).

Coverage must hold jointly: the abstract family containing `(k, 1)`
for every natural `k` and `(0, 2⁻ⁿ)` for every natural `n` has arbitrarily
large windows and arbitrarily small errors, but none with both `k ≥ 1`
and error at most `1/2`. Wrongly separating the two coverage conditions
would admit that family. The theorem supplies the existing
`SmallConductorStages` for any primitive nonprincipal character with
joint certificates. It leaves construction of those certificates open.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open MeasureTheory Set SourcePrimeCorrelation

/-- Uniform lower bounds at covering windows and arbitrarily small errors
supply the original dyadic stages, without prescribing a rate in the window. -/
theorem smallConductorStages_of_joint_window_error_coverage {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (hcover : ∀ (j : ℕ) (ε : ℝ), 0 < ε → ∃ k : ℕ, j ≤ k ∧
      (χ.conductor < conductorFrontier (k + 1) →
        ∀ f : ℝ → ℝ, Admissible χ ((k : ℝ) + 1) f →
          -ε * energy (liftReal f) ≤
            primitiveArithmeticValue χ hp hn ((k : ℝ) + 1) (liftReal f))) :
    SmallConductorStages χ hp hn := by
  intro j _ f hf
  obtain ⟨k, hjk, hbound⟩ := hcover j ((1 / 2 : ℝ) ^ j) (by positivity)
  rcases hf with ⟨_, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  have hwindow : (j : ℝ) + 1 ≤ (k : ℝ) + 1 := by
    exact_mod_cast Nat.add_le_add_right hjk 1
  rw [primitiveArithmeticValue_eq_of_le χ hp hn hsupport hwindow]
  by_cases hsmall : χ.conductor < conductorFrontier (k + 1)
  · apply hbound hsmall f
    refine ⟨by positivity, hdiff, hcompact, hodd, hLp, ?_, harch⟩
    intro t hout
    exact hsupport t fun hin => hout ⟨(neg_le_neg hwindow).trans hin.1, hin.2.trans hwindow⟩
  · have hlarge := primitiveArithmeticValue_nonneg_of_frontier χ hp hn
      (k + 1) hLp harch (le_of_not_gt hsmall)
    rw [Nat.cast_add, Nat.cast_one] at hlarge
    have henergy : 0 ≤ energy (liftReal f) := by
      rw [energy_eq_norm_toLp_sq hLp]
      exact sq_nonneg _
    exact (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (by positivity)) henergy).trans hlarge

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
