import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
-- Invertibility of the ambient cochain space does not supply a kernel equivalence.
def ambientEquivNotHZero : HZeroModel edgeHodge (ℚ × ℚ) where
  classEquiv := LinearEquiv.refl ℚ (ℚ × ℚ)
