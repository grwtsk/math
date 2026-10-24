# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DischargeAtlas.Variant45182caeb765b101dacf2a14d6cadd18263646f95ea48461a170f035bc0b9e3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06e95350075bab22fb7612abda2b0d19f0f93363` · SHA-256 `b13f795ea7548ef06dfeffd0aef5bf76e9f8ca47dfe199cad7f7b7381ee802de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RHDischargeChecklistFamily.Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RHDischargeChecklistFamily.Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56","mathematical_subject":"Computation.DataStructures","original_sha256":"aaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/RH/DischargeAtlas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RHDischargeChecklistFamily.Variantaaf6336b19c328f1ea6062672347688dea1928dc480d641ab11a3c7513290f56

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
```
