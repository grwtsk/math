import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.MoserColorHodgeSeparation
open GRWTSK.Geometry.Hodge.FiniteGraphCellular
example (c : ℝ) : Moser.energy (fun _ => c) = 0 :=
  (Moser.energy_eq_zero_iff_constant _).2 ⟨c, rfl⟩
