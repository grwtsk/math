import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : Cocycle0 edgeHodge ≃ₗ[ℚ] Cocycle0 edgeHodge :=
  (HodgeEquiv.refl edgeHodge).cocycleEquiv
example : HZeroModel edgeHodge ℚ :=
  (HodgeEquiv.refl edgeHodge).transportHZeroModel EdgeFixture.edgeHZeroModel
