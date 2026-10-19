import Think.Kakeya.HasseWeil.Torsion

namespace Think.Kakeya.HasseWeil

theorem torsion_residue_heat_nonnegative
  (eps dist : ℝ) :
  0 ≤ TorsionResidueHeat eps dist := by
  unfold TorsionResidueHeat
  split
  · decide
  · exact Rat.not_lt.mp ‹¬dist - eps < 0›

def k128_torsion_iff_zero_residue : String :=
  "proof-pending: KTorsionClaim eps dist iff TorsionResidueHeat eps dist = 0 under nonnegative epsilon and distance"

theorem exact_torsion_transports_to_k128
  (eps : ℝ)
  (heps : 0 ≤ eps)
  (dist_nP_O : ℝ)
  (hExactDistZero : dist_nP_O = 0) :
  KTorsionClaim eps dist_nP_O := by
  unfold KTorsionClaim KEqual
  rw [hExactDistZero]
  exact heps

end Think.Kakeya.HasseWeil
