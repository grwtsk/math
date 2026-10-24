import GRWTSK.Geometry.Hodge.FiniteEdgeRealization
import GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat

namespace GRWTSK.Geometry.Hodge.FiniteEdgeScalarExtension

open GRWTSK.Algebra.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization

/-- Positive Euclidean pairing on the real two-vertex cochains. -/
def realVertexPairing (x y : ℝ × ℝ) : ℝ :=
  x.1 * y.1 + x.2 * y.2

/-- Positive Euclidean pairing on the real one-edge cochains. -/
def realEdgePairing (s t : ℝ) : ℝ :=
  s * t

/-- Real scalar extension of the oriented edge coboundary. -/
def realEdgeDelta : (ℝ × ℝ) →ₗ[ℝ] ℝ where
  toFun x := x.1 - x.2
  map_add' x y := by
    simp
    ring
  map_smul' r x := by
    simp
    ring

/-- Real scalar extension of the edge codifferential. -/
def realEdgeDeltaStar : ℝ →ₗ[ℝ] (ℝ × ℝ) where
  toFun t := (t, -t)
  map_add' s t := by
    ext <;> simp [add_comm]
  map_smul' r t := by
    ext <;> simp

/-- Concrete positive real Hodge data for the two-vertex edge. -/
def realEdgeHodge : TwoTermHodgeData ℝ (ℝ × ℝ) ℝ where
  delta := realEdgeDelta
  deltaStar := realEdgeDeltaStar

/-- The real edge codifferential is the adjoint of the coboundary. -/
theorem realEdgeDelta_adjoint (x : ℝ × ℝ) (t : ℝ) :
    realEdgePairing (realEdgeDelta x) t =
      realVertexPairing x (realEdgeDeltaStar t) := by
  simp [realEdgePairing, realVertexPairing, realEdgeDelta, realEdgeDeltaStar]
  ring

/-- The real edge energy is the square of the vertex difference. -/
def realEdgeEnergy (x : ℝ × ℝ) : ℝ :=
  realEdgePairing (realEdgeDelta x) (realEdgeDelta x)

/-- The concrete real edge energy is nonnegative. -/
theorem realEdgeEnergy_nonneg (x : ℝ × ℝ) :
    0 ≤ realEdgeEnergy x := by
  simp [realEdgeEnergy, realEdgePairing, realEdgeDelta]
  exact mul_self_nonneg (x.1 - x.2)

/-- The edge energy vanishes exactly on constant vertex values. -/
theorem realEdgeEnergy_eq_zero_iff (x : ℝ × ℝ) :
    realEdgeEnergy x = 0 ↔ x.1 = x.2 := by
  simp [realEdgeEnergy, realEdgePairing, realEdgeDelta, sub_eq_zero]

/-- The degree-zero harmonic vectors are exactly the constant vertex values. -/
theorem realEdgeHarmonic_iff (x : ℝ × ℝ) :
    realEdgeHodge.IsHarmonic0 x ↔ x.1 = x.2 := by
  constructor
  · intro h
    change realEdgeDeltaStar (realEdgeDelta x) = 0 at h
    exact sub_eq_zero.mp (congrArg Prod.fst h)
  · intro h
    change realEdgeDeltaStar (realEdgeDelta x) = 0
    simp [realEdgeDelta, realEdgeDeltaStar, h]

/-- Scalar extension of rational vertex cochains. -/
def castVertex (x : ℚ × ℚ) : ℝ × ℝ :=
  ((x.1 : ℝ), (x.2 : ℝ))

/-- Scalar extension of rational edge cochains. -/
def castEdge (t : ℚ) : ℝ :=
  (t : ℝ)

/-- Scalar extension commutes with the edge coboundary. -/
theorem cast_edgeDelta (x : ℚ × ℚ) :
    castEdge (edgeDelta x) = realEdgeDelta (castVertex x) := by
  simp [castEdge, castVertex, edgeDelta, realEdgeDelta]

/-- Scalar extension commutes with the edge codifferential. -/
theorem cast_edgeDeltaStar (t : ℚ) :
    castVertex (edgeDeltaStar t) = realEdgeDeltaStar (castEdge t) := by
  simp [castEdge, castVertex, edgeDeltaStar, realEdgeDeltaStar]

/-- Rational harmonic edge classes remain harmonic after scalar extension to the
concrete positive real Hodge model. -/
theorem cast_harmonic
    (x : ℚ × ℚ) (hx : edgeHodge.IsHarmonic0 x) :
    realEdgeHodge.IsHarmonic0 (castVertex x) := by
  have hconst : x.1 = x.2 := by
    change edgeDeltaStar (edgeDelta x) = 0 at hx
    exact sub_eq_zero.mp (congrArg Prod.fst hx)
  exact (realEdgeHarmonic_iff (castVertex x)).2 (by simpa [castVertex] using hconst)

/-- The finite edge constant representative commutes with scalar extension. -/
theorem cast_constantRepresentative (c : ℚ) :
    castVertex (constantRepresentative c) =
      ((c : ℝ), (c : ℝ)) := by
  rfl

end GRWTSK.Geometry.Hodge.FiniteEdgeScalarExtension
