import Folder.RH.H0TranslationDischarge

/-!
# Folder.Theorem.RH.H0TranslationDischarge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports H0/RH translation discharge facts.
Ontology: proof.rh.h0_translation_discharge
Pivot role: zeta-normalization
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace H0TranslationDischarge

theorem completed_zeta_relation_in_h0_translation_discharge_checklist :
    Folder.RH.H0TranslationDischargeGate.completedZetaRelation ∈
      Folder.RH.h0TranslationDischargeChecklist :=
  Folder.RH.completed_zeta_relation_in_h0_translation_discharge_checklist

theorem h0_formula_in_h0_translation_discharge_checklist :
    Folder.RH.H0TranslationDischargeGate.h0Formula ∈
      Folder.RH.h0TranslationDischargeChecklist :=
  Folder.RH.h0_formula_in_h0_translation_discharge_checklist

theorem h0_rh_equivalence_in_h0_translation_discharge_checklist :
    Folder.RH.H0TranslationDischargeGate.h0RhEquivalence ∈
      Folder.RH.h0TranslationDischargeChecklist :=
  Folder.RH.h0_rh_equivalence_in_h0_translation_discharge_checklist

theorem normalization_in_h0_translation_discharge_checklist :
    Folder.RH.H0TranslationDischargeGate.normalizationCompatibility ∈
      Folder.RH.h0TranslationDischargeChecklist :=
  Folder.RH.normalization_in_h0_translation_discharge_checklist

theorem source_or_import_audit_in_h0_translation_discharge_checklist :
    Folder.RH.H0TranslationDischargeGate.sourceOrImportAudit ∈
      Folder.RH.h0TranslationDischargeChecklist :=
  Folder.RH.source_or_import_audit_in_h0_translation_discharge_checklist

theorem noncircularity_audit_in_h0_translation_discharge_checklist :
    Folder.RH.H0TranslationDischargeGate.nonCircularityAudit ∈
      Folder.RH.h0TranslationDischargeChecklist :=
  Folder.RH.noncircularity_audit_in_h0_translation_discharge_checklist

end H0TranslationDischarge
end RH
end Theorem
end Folder
