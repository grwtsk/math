import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat
example (mask : Fin 2 → Bool) :
    coordinateProjector mask + coordinateComplement mask = LinearMap.id :=
  coordinateProjector_add_complement mask
example (a x : Fin 2 → ℝ) (mask : Fin 2 → Bool) :
    energy a x = energy a (coordinateProjector mask x) +
      energy a (coordinateComplement mask x) := energy_coordinate_split a x mask
