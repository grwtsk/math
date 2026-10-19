import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
open GRWTSK.Spectral.FreeIDS GRWTSK.Spectral.SturmianFiniteVolume
example : freeCount 2 0 = freeCount 1 0 + freeCount 1 0 := by
  have hc1 : cutoff 1 0 = 1 := by
    simp [cutoff, angleFraction]
    field_simp
    norm_num
  have hc2 : cutoff 2 0 = (3/2:ℝ) := by
    simp [cutoff, angleFraction]
    field_simp
    norm_num
  simp only [freeCount_eq_ceil, hc1, hc2]
  norm_num
