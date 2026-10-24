import GRWTSK.Geometry.Hodge.RationalCycleCellular

namespace GRWTSK.Geometry.Hodge.FiniteEdgeRealization

open GRWTSK.Algebra.LinearAlgebra.FramedFiberPort

/-- The positive rational pairing on two vertex values. -/
def vertexPairing (x y : ℚ × ℚ) : ℚ :=
  x.1 * y.1 + x.2 * y.2

/-- The positive rational pairing on one oriented edge value. -/
def edgePairing (s t : ℚ) : ℚ :=
  s * t

/-- Coboundary of the oriented edge from the first vertex to the second. -/
def edgeDelta : (ℚ × ℚ) →ₗ[ℚ] ℚ where
  toFun x := x.1 - x.2
  map_add' x y := by
    simp
    ring
  map_smul' r x := by
    simp
    ring

/-- The transpose of the edge coboundary for the selected positive pairings. -/
def edgeDeltaStar : ℚ →ₗ[ℚ] (ℚ × ℚ) where
  toFun t := (t, -t)
  map_add' s t := by
    ext <;> simp [add_comm]
  map_smul' r t := by
    ext <;> simp

/-- The selected codifferential is exactly adjoint to the edge coboundary. -/
theorem edgeDelta_adjoint (x : ℚ × ℚ) (t : ℚ) :
    edgePairing (edgeDelta x) t = vertexPairing x (edgeDeltaStar t) := by
  simp [edgePairing, vertexPairing, edgeDelta, edgeDeltaStar]
  ring

/-- The rational two-vertex, one-edge Hodge complex. -/
def edgeHodge : RationalTwoTermHodgeData (ℚ × ℚ) ℚ where
  delta := edgeDelta
  deltaStar := edgeDeltaStar

/-- Constant vertex values represent the degree-zero cellular cohomology class. -/
def constantRepresentative : ℚ →ₗ[ℚ] (ℚ × ℚ) where
  toFun c := (c, c)
  map_add' s t := by
    ext <;> simp
  map_smul' r t := by
    ext <;> simp

/-- Constant vertex values are harmonic in the finite edge complex. -/
theorem constantRepresentative_harmonic (c : ℚ) :
    edgeHodge.IsHarmonic0 (constantRepresentative c) := by
  simp [TwoTermHodgeData.IsHarmonic0, TwoTermHodgeData.laplacian0,
    edgeHodge, edgeDelta, edgeDeltaStar, constantRepresentative,
    LinearMap.comp_apply]

/-- A local identity cycle-class map used to exercise the comparison theorem. -/
def pointCycleClass : RationalHodgeData ℚ ℚ where
  cycleClass := LinearMap.id

/-- The local identity cycle-class map is surjective. -/
theorem pointCycleClass_surjective : pointCycleClass.IsSurjective := by
  intro h
  exact ⟨h, rfl⟩

/-- Source-bound proof object for the finite edge fixture. -/
def pointSourceTheorem : SourceBoundRationalHodgeTheorem pointCycleClass where
  source :=
    { repository := "grwtsk/math"
      revision := "finite-edge-fixture"
      path := "GRWTSK/Geometry/Hodge/FiniteEdgeRealization.lean"
      declaration := "pointCycleClass_surjective" }
  variety := "two-vertex one-edge cellular fixture"
  codimension := 0
  realization := "identity rational class followed by constant cellular representative"
  surjective := pointCycleClass_surjective

/-- The cycle and Hodge class have the same selected cellular class. -/
def pointEdgeComparison : CycleCellularComparison pointCycleClass ℚ where
  hodgeToCell := LinearMap.id
  cycleToCell := LinearMap.id
  commute := rfl

/-- The actual finite harmonic realization of the selected cellular class. -/
def pointEdgeHarmonicRealization :
    CellularHarmonicRealization ℚ (ℚ × ℚ) ℚ edgeHodge where
  representative := constantRepresentative
  harmonic := constantRepresentative_harmonic

/-- Complete finite cycle-to-cellular adapter for the two-vertex edge complex. -/
def pointEdgeAdapter :
    RationalHodgeCellularAdapter (CellClass := ℚ) pointCycleClass (ℚ × ℚ) ℚ edgeHodge where
  globalTheorem := pointSourceTheorem
  comparison := pointEdgeComparison
  harmonicRealization := pointEdgeHarmonicRealization

/-- Every selected rational class has an explicit cycle and a harmonic representative
in the nontrivial two-vertex edge complex. -/
theorem pointEdgeAdapter_realizes (h : ℚ) :
    ∃ z : ℚ,
      pointCycleClass.cycleClass z = h ∧
      pointEdgeAdapter.comparison.cycleToCell z =
        pointEdgeAdapter.comparison.hodgeToCell h ∧
      edgeHodge.IsHarmonic0
        (pointEdgeAdapter.harmonicRealization.representative
          (pointEdgeAdapter.comparison.hodgeToCell h)) :=
  pointEdgeAdapter.exists_cycle_and_harmonic h

end GRWTSK.Geometry.Hodge.FiniteEdgeRealization
