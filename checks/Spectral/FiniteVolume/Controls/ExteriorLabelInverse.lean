import GRWTSK.Spectral.FreeIDS
open GRWTSK.Spectral.FreeIDS

-- The right inverse cut is false at exterior label zero: N0(-3)=0 but -2>-3.
example : freeEnergy 0 ≤ (-3:ℝ) := by
  norm_num [freeEnergy]
