import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
open GRWTSK.Geometry.Hodge.FiniteEdgeScalarExtension
example (x : ℚ × ℚ) (hx : edgeHodge.IsHarmonic0 x) :
    realEdgeHodge.IsHarmonic0 (castVertex x) := cast_harmonic x hx
example (x : ℚ × ℚ) : castEdge (edgeDelta x) = realEdgeDelta (castVertex x) :=
  cast_edgeDelta x
example (q : ℚ) : castVertex (edgeDeltaStar q) = realEdgeDeltaStar (castEdge q) :=
  cast_edgeDeltaStar q
