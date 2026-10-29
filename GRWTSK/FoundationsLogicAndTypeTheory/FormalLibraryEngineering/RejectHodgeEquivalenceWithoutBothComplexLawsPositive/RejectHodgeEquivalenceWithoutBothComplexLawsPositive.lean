import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Algebra.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : HodgeEquiv edgeHodge edgeHodge := HodgeEquiv.refl edgeHodge
example (x : ℚ × ℚ) : edgeHodge.IsHarmonic0 x ↔
    edgeHodge.IsHarmonic0 ((HodgeEquiv.refl edgeHodge).equiv0 x) :=
  (HodgeEquiv.refl edgeHodge).harmonic0_iff x
