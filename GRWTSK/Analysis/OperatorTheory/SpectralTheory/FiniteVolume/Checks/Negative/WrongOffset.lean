import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume

-- Deliberately false contract: discard the upper shift for arbitrary signed V.
example (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    freeCount N E ≤ sturmianCount N α V ξ origin E := by
  exact (finite_count_comparison N α V ξ origin E).1
