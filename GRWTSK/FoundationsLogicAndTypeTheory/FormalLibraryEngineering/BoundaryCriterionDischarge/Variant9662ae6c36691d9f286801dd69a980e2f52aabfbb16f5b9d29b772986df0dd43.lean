import Folder.RH.BoundaryCriterionDischarge

/-!
# Folder.Theorem.RH.BoundaryCriterionDischarge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports boundary discharge checklist facts.
Ontology: proof.rh.boundary_criterion_discharge
Pivot role: verification
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace BoundaryCriterionDischarge

theorem real_spectrum_input_in_boundary_criterion_discharge_checklist :
    Folder.RH.BoundaryCriterionDischargeGate.realSpectrumInputConstruction ∈
      Folder.RH.boundaryCriterionDischargeChecklist :=
  Folder.RH.real_spectrum_input_in_boundary_criterion_discharge_checklist

theorem zero_spectrum_compatibility_in_boundary_criterion_discharge_checklist :
    Folder.RH.BoundaryCriterionDischargeGate.zeroSpectrumCompatibility ∈
      Folder.RH.boundaryCriterionDischargeChecklist :=
  Folder.RH.zero_spectrum_compatibility_in_boundary_criterion_discharge_checklist

theorem status_gate_in_boundary_criterion_discharge_checklist :
    Folder.RH.BoundaryCriterionDischargeGate.statusGateAllowed ∈
      Folder.RH.boundaryCriterionDischargeChecklist :=
  Folder.RH.status_gate_in_boundary_criterion_discharge_checklist

theorem no_pre_boundary_leak_in_boundary_criterion_discharge_checklist :
    Folder.RH.BoundaryCriterionDischargeGate.noPreBoundaryLeakAudit ∈
      Folder.RH.boundaryCriterionDischargeChecklist :=
  Folder.RH.no_pre_boundary_leak_in_boundary_criterion_discharge_checklist

theorem h0_real_zeros_in_boundary_criterion_discharge_checklist :
    Folder.RH.BoundaryCriterionDischargeGate.h0RealZerosTheorem ∈
      Folder.RH.boundaryCriterionDischargeChecklist :=
  Folder.RH.h0_real_zeros_in_boundary_criterion_discharge_checklist

theorem rh_composition_in_boundary_criterion_discharge_checklist :
    Folder.RH.BoundaryCriterionDischargeGate.rhCompositionUsesOnlyDischargedInputs ∈
      Folder.RH.boundaryCriterionDischargeChecklist :=
  Folder.RH.rh_composition_in_boundary_criterion_discharge_checklist

end BoundaryCriterionDischarge
end RH
end Theorem
end Folder
