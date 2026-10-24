import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : edgeHodge.delta (1, 0) ≠ 0 := by
  norm_num [edgeHodge, edgeDelta]
