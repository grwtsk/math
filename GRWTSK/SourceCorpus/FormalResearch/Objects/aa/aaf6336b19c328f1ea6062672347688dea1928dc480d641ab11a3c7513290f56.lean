import Folder.RH.H0TranslationDischarge
import Folder.RH.SpectralRealizationDischarge
import Folder.RH.TraceFormulaDischarge
import Folder.RH.PositivityDischarge
import Folder.RH.BoundaryCriterionDischarge
import Folder.RH.FinalConeDischarge

/-!
# Folder.RH.DischargeAtlas

Radiation role: proof-governance
BinaryMatrix spine: This module gathers the RH discharge checklists into one
audit atlas.
Ontology: rh.discharge_atlas
Pivot role: verification
Zero typology: zeta
Contract boundary: audit-checklist
Composite stack role: rh
-/

namespace Folder
namespace RH

/--
Named checklist families that define the current RH discharge atlas.

This is presentation/audit data. It does not assert that any checklist gate has
been discharged.
-/
inductive RHDischargeChecklistFamily where
  | h0Translation
  | spectralRealization
  | traceFormula
  | positivity
  | boundaryCriterion
  | finalCone
deriving DecidableEq, Repr

def RHDischargeChecklistFamily.moduleName :
    RHDischargeChecklistFamily → String
  | .h0Translation => "Folder.RH.H0TranslationDischarge"
  | .spectralRealization => "Folder.RH.SpectralRealizationDischarge"
  | .traceFormula => "Folder.RH.TraceFormulaDischarge"
  | .positivity => "Folder.RH.PositivityDischarge"
  | .boundaryCriterion => "Folder.RH.BoundaryCriterionDischarge"
  | .finalCone => "Folder.RH.FinalConeDischarge"

def rhDischargeAtlas : List RHDischargeChecklistFamily :=
  [
    .h0Translation,
    .spectralRealization,
    .traceFormula,
    .positivity,
    .boundaryCriterion,
    .finalCone
  ]

theorem h0_translation_in_rh_discharge_atlas :
    RHDischargeChecklistFamily.h0Translation ∈ rhDischargeAtlas := by
  simp [rhDischargeAtlas]

theorem spectral_realization_in_rh_discharge_atlas :
    RHDischargeChecklistFamily.spectralRealization ∈ rhDischargeAtlas := by
  simp [rhDischargeAtlas]

theorem trace_formula_in_rh_discharge_atlas :
    RHDischargeChecklistFamily.traceFormula ∈ rhDischargeAtlas := by
  simp [rhDischargeAtlas]

theorem positivity_in_rh_discharge_atlas :
    RHDischargeChecklistFamily.positivity ∈ rhDischargeAtlas := by
  simp [rhDischargeAtlas]

theorem boundary_criterion_in_rh_discharge_atlas :
    RHDischargeChecklistFamily.boundaryCriterion ∈ rhDischargeAtlas := by
  simp [rhDischargeAtlas]

theorem final_cone_in_rh_discharge_atlas :
    RHDischargeChecklistFamily.finalCone ∈ rhDischargeAtlas := by
  simp [rhDischargeAtlas]

theorem rh_discharge_atlas_length :
    rhDischargeAtlas.length = 6 :=
  rfl

theorem rh_discharge_atlas_nodup :
    rhDischargeAtlas.Nodup := by
  decide

end RH
end Folder
