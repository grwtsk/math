import GRWTSK.Algebra.Hecke.RankOneQuadratic

/-! Rank-one normalized change of basis for K2 in both unpublished KL versions.
No bar invariance, general Coxeter basis, recurrence or geometric realization is claimed. -/
namespace GRWTSK.Algebra.Hecke
variable {R : Type*} [CommRing R]

/-- Explicit normalized generator C=v⁻¹(T+I), with an actual inverse supplied. -/
def rankOneNormalized (v vinv : R) : Matrix (Fin 2) (Fin 2) R :=
  vinv • (rankOneGenerator (v ^ 2) + 1)

/-- Every standard normal form has the normalized expansion (a−b)I+(bv)C. -/
theorem rankOne_normalized_expansion (v vinv a b : R) (hv : v * vinv = 1) :
    a • (1 : Matrix (Fin 2) (Fin 2) R) + b • rankOneGenerator (v ^ 2) =
      (a - b) • 1 + (b * v) • rankOneNormalized v vinv := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [rankOneNormalized, rankOneGenerator] <;>
    first | linear_combination -b * hv | linear_combination -(b * v ^ 2) * hv

/-- The normalized coordinates are unique even over a ring with zero divisors. -/
theorem rankOne_normalized_coordinates_unique (v vinv a b c d : R)
    (hv : v * vinv = 1)
    (h : a • (1 : Matrix (Fin 2) (Fin 2) R) + b • rankOneNormalized v vinv =
      c • 1 + d • rankOneNormalized v vinv) : a = c ∧ b = d := by
  have h00 := congrArg (fun M : Matrix (Fin 2) (Fin 2) R => M 0 0) h
  have h10 := congrArg (fun M : Matrix (Fin 2) (Fin 2) R => M 1 0) h
  simp [rankOneNormalized, rankOneGenerator] at h00 h10
  constructor
  · linear_combination h00 - h10
  · linear_combination v * h10 - (b - d) * hv

/-- Existence and uniqueness concern the actual rank-one normal-form submodule only. -/
theorem rankOne_normalized_existsUnique (v vinv a b : R) (hv : v * vinv = 1) :
    ∃! xy : R × R,
      a • (1 : Matrix (Fin 2) (Fin 2) R) + b • rankOneGenerator (v ^ 2) =
        xy.1 • 1 + xy.2 • rankOneNormalized v vinv := by
  refine ⟨(a - b, b * v), rankOne_normalized_expansion v vinv a b hv, ?_⟩
  intro xy hxy
  have hcoords := rankOne_normalized_coordinates_unique v vinv xy.1 xy.2
    (a - b) (b * v) hv (hxy.symm.trans (rankOne_normalized_expansion v vinv a b hv))
  exact Prod.ext hcoords.1 hcoords.2
end GRWTSK.Algebra.Hecke
