import DAF.Hilbert.Finite
import DAF.Universe.Id
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Analysis.InnerProductSpace.Dual
import Mathlib.Topology.UnitInterval
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-!
# Exact finite carriers for points in theorem cells

A point of an `n`-cube determines the usual multilinear barycentric weights
on its `2^n` Boolean vertices.  Their square roots form a unit vector in the
finite complex Hilbert space on those vertices.  The associated rank-one
operator is consequently an exact self-adjoint idempotent projection.

The construction is noncomputable only because it uses the exact real square
root.  It contains no floating-point approximation and asserts no continuum
or distributional point-state result.
-/

noncomputable section

namespace DAF.Hilbert

/-- Boolean vertices of a finite hypercube. -/
abbrev HypercubeVertex (dimension : Nat) := Fin dimension → Bool

/-- A point whose coordinates lie in the closed unit interval. -/
structure TerrainPoint (dimension : Nat) where
  cellId : Universe.TerrainCellId
  coordinate : Fin dimension → unitInterval

namespace TerrainPoint

variable {dimension : Nat}

/-- One coordinate factor in the multilinear vertex weight. -/
def vertexFactor
    (point : TerrainPoint dimension)
    (vertex : HypercubeVertex dimension)
    (axis : Fin dimension) : ℝ :=
  if vertex axis then point.coordinate axis else 1 - point.coordinate axis

/-- The exact multilinear weight of one Boolean vertex. -/
def vertexWeight
    (point : TerrainPoint dimension)
    (vertex : HypercubeVertex dimension) : ℝ :=
  ∏ axis, point.vertexFactor vertex axis

/-- Every coordinate factor is nonnegative on the unit cube. -/
theorem vertexFactor_nonnegative
    (point : TerrainPoint dimension)
    (vertex : HypercubeVertex dimension)
    (axis : Fin dimension) :
    0 ≤ point.vertexFactor vertex axis := by
  by_cases h : vertex axis
  · simp [vertexFactor, h, (point.coordinate axis).property.1]
  · simp [vertexFactor, h, sub_nonneg.mpr (point.coordinate axis).property.2]

/-- Every multilinear vertex weight is nonnegative. -/
theorem vertexWeight_nonnegative
    (point : TerrainPoint dimension)
    (vertex : HypercubeVertex dimension) :
    0 ≤ point.vertexWeight vertex := by
  classical
  exact Finset.prod_nonneg fun axis _ ↦
    point.vertexFactor_nonnegative vertex axis

/-- The multilinear weights form an exact partition of unity. -/
theorem sum_vertexWeight_eq_one (point : TerrainPoint dimension) :
    ∑ vertex : HypercubeVertex dimension, point.vertexWeight vertex = 1 := by
  classical
  have partitionIdentity :=
    Finset.sum_prod_piFinset
      (R := ℝ)
      (s := (Finset.univ : Finset Bool))
      (g := fun axis bit ↦
        if bit then (point.coordinate axis : ℝ)
        else 1 - point.coordinate axis)
  rw [Fintype.piFinset_univ] at partitionIdentity
  simpa [vertexWeight, vertexFactor, Finset.sum_boole] using
    partitionIdentity

/-- The exact square-root point vector on the Boolean vertices. -/
def pointVector (point : TerrainPoint dimension) :
    FiniteHilbert (HypercubeVertex dimension) :=
  WithLp.toLp 2 fun vertex ↦
    ((Real.sqrt (point.vertexWeight vertex) : ℝ) : ℂ)

@[simp]
theorem pointVector_apply
    (point : TerrainPoint dimension)
    (vertex : HypercubeVertex dimension) :
    point.pointVector vertex =
      ((Real.sqrt (point.vertexWeight vertex) : ℝ) : ℂ) :=
  rfl

/-- The squared norm of the point vector is exactly one. -/
theorem pointVector_norm_sq (point : TerrainPoint dimension) :
    ‖point.pointVector‖ ^ 2 = 1 := by
  rw [EuclideanSpace.norm_sq_eq]
  simp_rw [pointVector_apply, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (Real.sqrt_nonneg _), Real.sq_sqrt
      (point.vertexWeight_nonnegative _)]
  exact point.sum_vertexWeight_eq_one

/-- Every admitted cube point produces a unit vector. -/
theorem pointVector_norm (point : TerrainPoint dimension) :
    ‖point.pointVector‖ = 1 := by
  have hsquare := point.pointVector_norm_sq
  nlinarith [norm_nonneg point.pointVector]

/-- The rank-one projection carrying a terrain point. -/
def pointProjection (point : TerrainPoint dimension) :
    FiniteHilbert (HypercubeVertex dimension) →L[ℂ]
      FiniteHilbert (HypercubeVertex dimension) :=
  InnerProductSpace.rankOne ℂ point.pointVector point.pointVector

/-- The point projection is self-adjoint. -/
theorem pointProjection_adjoint (point : TerrainPoint dimension) :
    point.pointProjection.adjoint = point.pointProjection := by
  simp [pointProjection]

/-- The point projection is idempotent. -/
theorem pointProjection_idempotent (point : TerrainPoint dimension) :
    IsIdempotentElem point.pointProjection :=
  InnerProductSpace.isIdempotentElem_rankOne_self point.pointVector_norm

/-- The point projection is a star projection. -/
theorem pointProjection_isStarProjection (point : TerrainPoint dimension) :
    IsStarProjection point.pointProjection :=
  InnerProductSpace.isStarProjection_rankOne_self point.pointVector_norm

/-- The point projection has module rank one. -/
theorem pointProjection_rank (point : TerrainPoint dimension) :
    point.pointProjection.rank = 1 := by
  apply InnerProductSpace.rank_rankOne
  · exact fun hzero ↦ by
      have : ‖point.pointVector‖ = 0 := by rw [hzero, norm_zero]
      rw [point.pointVector_norm] at this
      norm_num at this
  · exact fun hzero ↦ by
      have : ‖point.pointVector‖ = 0 := by rw [hzero, norm_zero]
      rw [point.pointVector_norm] at this
      norm_num at this

end TerrainPoint

end DAF.Hilbert
