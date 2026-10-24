import Folder.RH.SpectralRealizationDischarge

/-!
# Folder.Theorem.RH.SpectralRealizationDischarge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectral-realization discharge facts.
Ontology: proof.rh.spectral_realization_discharge
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace SpectralRealizationDischarge

theorem operator_model_in_spectral_realization_discharge_checklist :
    Folder.RH.SpectralRealizationDischargeGate.operatorModelConstruction ∈
      Folder.RH.spectralRealizationDischargeChecklist :=
  Folder.RH.operator_model_in_spectral_realization_discharge_checklist

theorem spectral_point_space_in_spectral_realization_discharge_checklist :
    Folder.RH.SpectralRealizationDischargeGate.spectralPointSpaceConstruction ∈
      Folder.RH.spectralRealizationDischargeChecklist :=
  Folder.RH.spectral_point_space_in_spectral_realization_discharge_checklist

theorem spectral_parameter_map_in_spectral_realization_discharge_checklist :
    Folder.RH.SpectralRealizationDischargeGate.spectralParameterMapConstruction ∈
      Folder.RH.spectralRealizationDischargeChecklist :=
  Folder.RH.spectral_parameter_map_in_spectral_realization_discharge_checklist

theorem every_h0_zero_represented_in_spectral_realization_discharge_checklist :
    Folder.RH.SpectralRealizationDischargeGate.everyH0ZeroRepresented ∈
      Folder.RH.spectralRealizationDischargeChecklist :=
  Folder.RH.every_h0_zero_represented_in_spectral_realization_discharge_checklist

theorem parameter_preservation_in_spectral_realization_discharge_checklist :
    Folder.RH.SpectralRealizationDischargeGate.parameterPreservation ∈
      Folder.RH.spectralRealizationDischargeChecklist :=
  Folder.RH.parameter_preservation_in_spectral_realization_discharge_checklist

theorem noncircularity_audit_in_spectral_realization_discharge_checklist :
    Folder.RH.SpectralRealizationDischargeGate.nonCircularityAudit ∈
      Folder.RH.spectralRealizationDischargeChecklist :=
  Folder.RH.noncircularity_audit_in_spectral_realization_discharge_checklist

end SpectralRealizationDischarge
end RH
end Theorem
end Folder
