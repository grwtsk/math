import Folder.Research.HeatEnergyBounds

/-!
# Folder.Theorem.Research.HeatEnergyBounds

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports heat-residual energy contract exposure.
Ontology: proof.research.heat_energy_bounds
Pivot role: spectral
Zero typology: heat-residual
Contract boundary: theorem-wrapper
Composite stack role: research
-/

namespace Folder
namespace Theorem
namespace Research
namespace HeatEnergyBounds

theorem spectral_condition_from_heat_energy
    {C : Folder.Research.SpectralArithmeticBridge.CriticalLineSpectralCriterion}
    (H : Folder.Research.HeatEnergyBounds.HeatEnergyCriticalLineContract C) :
    C.model.spectralZerosModelLZeros :=
  Folder.Research.HeatEnergyBounds.spectral_condition_from_heat_energy H

end HeatEnergyBounds
end Research
end Theorem
end Folder
