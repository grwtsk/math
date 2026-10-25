import Folder.RH.PositivityDischarge

/-!
# Folder.Theorem.RH.PositivityDischarge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports positivity discharge checklist facts.
Ontology: proof.rh.positivity_discharge
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace PositivityDischarge

theorem dense_domain_in_positivity_discharge_checklist :
    Folder.RH.PositivityDischargeGate.denseDomain ∈
      Folder.RH.positivityDischargeChecklist :=
  Folder.RH.dense_domain_in_positivity_discharge_checklist

theorem self_adjointness_in_positivity_discharge_checklist :
    Folder.RH.PositivityDischargeGate.selfAdjointness ∈
      Folder.RH.positivityDischargeChecklist :=
  Folder.RH.self_adjointness_in_positivity_discharge_checklist

theorem compact_resolvent_in_positivity_discharge_checklist :
    Folder.RH.PositivityDischargeGate.compactResolvent ∈
      Folder.RH.positivityDischargeChecklist :=
  Folder.RH.compact_resolvent_in_positivity_discharge_checklist

theorem trace_regularization_in_positivity_discharge_checklist :
    Folder.RH.PositivityDischargeGate.traceRegularization ∈
      Folder.RH.positivityDischargeChecklist :=
  Folder.RH.trace_regularization_in_positivity_discharge_checklist

theorem functional_calculus_in_positivity_discharge_checklist :
    Folder.RH.PositivityDischargeGate.functionalCalculus ∈
      Folder.RH.positivityDischargeChecklist :=
  Folder.RH.functional_calculus_in_positivity_discharge_checklist

theorem real_spectrum_theorem_in_positivity_discharge_checklist :
    Folder.RH.PositivityDischargeGate.realSpectrumTheorem ∈
      Folder.RH.positivityDischargeChecklist :=
  Folder.RH.real_spectrum_theorem_in_positivity_discharge_checklist

end PositivityDischarge
end RH
end Theorem
end Folder
