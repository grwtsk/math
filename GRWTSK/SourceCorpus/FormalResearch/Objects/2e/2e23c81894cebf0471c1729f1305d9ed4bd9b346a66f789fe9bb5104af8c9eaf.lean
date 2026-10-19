import Think.Kakeya.ForceDensity.Matrix
import Init.Grind

namespace Think.Kakeya.ForceDensity

def KEqual128 (eps dist : ℝ) : Prop :=
  dist ≤ eps

def KResidueHeat128 (eps dist : ℝ) : ℝ :=
  max 0 (dist - eps)

def KNull (eps normResidual : ℝ) : Prop :=
  KEqual128 eps normResidual

theorem k_null_iff_zero_residue
  (eps dist : ℝ)
  (heps : 0 ≤ eps)
  (hdist : 0 ≤ dist) :
  KNull eps dist ↔ KResidueHeat128 eps dist = 0 := by
  have _ := heps
  have _ := hdist
  unfold KNull KEqual128 KResidueHeat128
  grind

theorem exact_null_transports_to_k_null
  (eps : ℝ)
  (heps : 0 ≤ eps)
  (dist : ℝ)
  (hExactNull : dist = 0) :
  KNull eps dist := by
  unfold KNull KEqual128
  rw [hExactNull]
  exact heps

theorem force_density_bridge_null
  (eps : ℝ)
  (heps : 0 ≤ eps)
  (residualNorm : ℝ)
  (hres : residualNorm = 0) :
  KNull eps residualNorm := by
  unfold KNull KEqual128
  rw [hres]
  exact heps

end Think.Kakeya.ForceDensity
