import Mathematics.Geometry.Plane

/-!
# Squared Euclidean distance

Squared distance is defined intrinsically from the norm.  The Cartesian
formula is a theorem, so coordinates cannot become a second metric authority.
-/

namespace Mathematics.Geometry

/-- Squared Euclidean distance in the canonical real plane. -/
noncomputable def planeSquaredDistance (left right : PlanePoint) : ℝ :=
  ‖left - right‖ ^ 2

theorem planeSquaredDistance_coordinates (left right : PlanePoint) :
    planeSquaredDistance left right =
      (left 0 - right 0) ^ 2 + (left 1 - right 1) ^ 2 := by
  simp [planeSquaredDistance, EuclideanSpace.real_norm_sq_eq, Fin.sum_univ_two]

theorem planeSquaredDistance_nonnegative (left right : PlanePoint) :
    0 ≤ planeSquaredDistance left right := by
  exact sq_nonneg _

@[simp] theorem planeSquaredDistance_self (point : PlanePoint) :
    planeSquaredDistance point point = 0 := by
  simp [planeSquaredDistance]

theorem planeSquaredDistance_symmetric (left right : PlanePoint) :
    planeSquaredDistance left right = planeSquaredDistance right left := by
  simp [planeSquaredDistance, norm_sub_rev]

end Mathematics.Geometry
