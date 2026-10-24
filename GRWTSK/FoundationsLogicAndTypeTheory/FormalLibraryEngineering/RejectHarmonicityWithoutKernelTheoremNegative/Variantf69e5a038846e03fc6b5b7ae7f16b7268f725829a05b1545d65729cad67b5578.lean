import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
-- The complete adapter requires the exact kernel theorem as a separate proof field.
def incompleteHarmonicAdapter : RationalHodgeHZeroAdapter pointCycleClass edgeHodge where
  globalTheorem := pointSourceTheorem
  comparison := EdgeFixture.pointHZeroComparison
