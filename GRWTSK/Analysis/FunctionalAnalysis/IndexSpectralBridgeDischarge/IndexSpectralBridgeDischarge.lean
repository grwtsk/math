import Folder.RH.IndexSpectralBridgeDischarge

/-!
# Folder.Theorem.RH.IndexSpectralBridgeDischarge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports index/spectral bridge discharge facts.
Ontology: proof.rh.index_spectral_bridge_discharge
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace IndexSpectralBridgeDischarge

theorem trace_pairing_in_index_spectral_bridge_discharge_checklist :
    Folder.RH.IndexSpectralBridgeDischargeGate.tracePairingConstruction ∈
      Folder.RH.indexSpectralBridgeDischargeChecklist :=
  Folder.RH.trace_pairing_in_index_spectral_bridge_discharge_checklist

theorem spectral_distribution_in_index_spectral_bridge_discharge_checklist :
    Folder.RH.IndexSpectralBridgeDischargeGate.spectralDistributionConstruction ∈
      Folder.RH.indexSpectralBridgeDischargeChecklist :=
  Folder.RH.spectral_distribution_in_index_spectral_bridge_discharge_checklist

theorem index_distribution_in_index_spectral_bridge_discharge_checklist :
    Folder.RH.IndexSpectralBridgeDischargeGate.indexDistributionConstruction ∈
      Folder.RH.indexSpectralBridgeDischargeChecklist :=
  Folder.RH.index_distribution_in_index_spectral_bridge_discharge_checklist

theorem distribution_equality_in_index_spectral_bridge_discharge_checklist :
    Folder.RH.IndexSpectralBridgeDischargeGate.distributionEqualityTheorem ∈
      Folder.RH.indexSpectralBridgeDischargeChecklist :=
  Folder.RH.distribution_equality_in_index_spectral_bridge_discharge_checklist

theorem operator_compatibility_in_index_spectral_bridge_discharge_checklist :
    Folder.RH.IndexSpectralBridgeDischargeGate.operatorCompatibility ∈
      Folder.RH.indexSpectralBridgeDischargeChecklist :=
  Folder.RH.operator_compatibility_in_index_spectral_bridge_discharge_checklist

theorem nonboundary_audit_in_index_spectral_bridge_discharge_checklist :
    Folder.RH.IndexSpectralBridgeDischargeGate.nonBoundaryConclusionAudit ∈
      Folder.RH.indexSpectralBridgeDischargeChecklist :=
  Folder.RH.nonboundary_audit_in_index_spectral_bridge_discharge_checklist

end IndexSpectralBridgeDischarge
end RH
end Theorem
end Folder
