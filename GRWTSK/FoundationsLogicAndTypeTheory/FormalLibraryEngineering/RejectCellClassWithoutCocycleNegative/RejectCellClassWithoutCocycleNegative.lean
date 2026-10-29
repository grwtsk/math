import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
-- An ambient cochain representative does not have the required kernel-subtype codomain.
def ambientIsNotCocycle : CycleHZeroComparison pointCycleClass edgeHodge where
  hodgeToCocycle := constantRepresentative
  cycleToCocycle := constantRepresentative
  commute := rfl
