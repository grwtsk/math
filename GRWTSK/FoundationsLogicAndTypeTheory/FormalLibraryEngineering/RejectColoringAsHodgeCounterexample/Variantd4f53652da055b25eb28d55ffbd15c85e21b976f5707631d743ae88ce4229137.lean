import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.MoserColorHodgeSeparation
open GRWTSK.Geometry.Hodge.FiniteGraphCellular
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.HadwigerNelson
example : ProperColoring moserAdj moserFourColor :=
  (properColoring_moserAdj_iff moserFourColor).2
    (fun _ _ hedge => moserFourColor_proper hedge)

-- The exact proper four-color witness has positive energy, so cannot be harmonic/zero-energy.
example : 0 < Moser.energy colorCochain := colorCochain_energy_pos
example : Moser.energy colorCochain ≠ 0 := ne_of_gt colorCochain_energy_pos
example : ¬ ∃ c : ℝ, colorCochain = fun _ => c := colorCochain_not_constant
