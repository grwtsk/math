import Think.Kakeya.Crystalline.BoundaryMeshComparison

namespace Think.Kakeya.Crystalline

def KResidueHeat128 (eps dist : ℝ) : ℝ :=
  if dist - eps < 0 then 0 else dist - eps

theorem k_residue_heat_nonnegative
  (eps dist : ℝ) :
  0 ≤ KResidueHeat128 eps dist := by
  unfold KResidueHeat128
  split
  · decide
  · exact Rat.not_lt.mp ‹¬dist - eps < 0›

end Think.Kakeya.Crystalline
