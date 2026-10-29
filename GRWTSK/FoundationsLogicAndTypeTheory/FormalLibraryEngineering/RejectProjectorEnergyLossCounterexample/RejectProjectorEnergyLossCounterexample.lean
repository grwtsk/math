import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat
-- Discarding the complement loses all energy for this nonzero one-coordinate vector.
example : energy (fun _ : Fin 1 => (1 : ℝ)) (fun _ => 1) ≠
    energy (fun _ : Fin 1 => (1 : ℝ))
      (coordinateProjector (fun _ => false) (fun _ => 1)) := by
  norm_num [energy, dot, diagonal, coordinateProjector]
