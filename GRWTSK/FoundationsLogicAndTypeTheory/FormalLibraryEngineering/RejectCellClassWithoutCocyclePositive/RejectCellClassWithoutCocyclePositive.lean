import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : CycleHZeroComparison pointCycleClass edgeHodge :=
  EdgeFixture.pointHZeroComparison
example (q : ℚ) : edgeHodge.delta (EdgeFixture.constantCocycle q) = 0 :=
  (EdgeFixture.constantCocycle q).property
