import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume

-- The one-over-volume error requires positive volume, not merely N>=0.
example : freeIDS 2 - 1/(0:ℝ) ≤ freeNormalizedCount 0 2 := by
  rw [freeIDS_of_two_le (by norm_num)]
  norm_num [freeNormalizedCount, freeCount_eq_ceil]
