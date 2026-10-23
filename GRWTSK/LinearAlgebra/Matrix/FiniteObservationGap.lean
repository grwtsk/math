/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent

/-! # A strict observation gap on a finite family
Finiteness upgrades qualitative kernel exclusion to a positive gap at a fixed
scale. No uniform scale estimate is inferred. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.LinearAlgebra.Matrix.FiniteObservationGap

theorem finite_gap {V : Type*} {S : Set V} (hS : S.Finite) (E O : V → ℝ)
    (hE : ∀ v, 0 ≤ E v) (hO : ∀ v, 0 ≤ O v)
    (hobs : ∀ v ∈ S, 0 < E v → 0 < O v) :
    ∃ a : ℝ, 0 < a ∧ ∀ v ∈ S, a * E v ≤ O v := by
  classical
  induction S, hS using Set.Finite.induction_on with
  | empty => exact ⟨1, by norm_num, by simp⟩
  | @insert v S hv hS ih =>
    obtain ⟨a, ha, hbound⟩ := ih (fun w hw => hobs w (Set.mem_insert_of_mem _ hw))
    by_cases hvE : 0 < E v
    · have hvO := hobs v (Set.mem_insert _ _) hvE
      refine ⟨min a (O v / E v), lt_min ha (div_pos hvO hvE), ?_⟩
      intro w hw
      rcases Set.mem_insert_iff.mp hw with rfl | hw
      · exact (mul_le_mul_of_nonneg_right (min_le_right _ _) (hE w)).trans
          (le_of_eq (div_mul_cancel₀ _ (ne_of_gt hvE)))
      · exact (mul_le_mul_of_nonneg_right (min_le_left _ _) (hE w)).trans (hbound w hw)
    · have hz : E v = 0 := le_antisymm (le_of_not_gt hvE) (hE v)
      refine ⟨a, ha, ?_⟩
      intro w hw
      rcases Set.mem_insert_iff.mp hw with rfl | hw
      · simpa only [hz, mul_zero] using hO w
      · exact hbound w hw
end GRWTSK.LinearAlgebra.Matrix.FiniteObservationGap
