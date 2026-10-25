# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f5265706f7274732f506c616e6e696e67537572666163655265706f72742e6.Variant1e429c4ae5b574f0d49ccbb5d82b619119a981063b11d38448caba98209665a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ed04c9630ccd7259bd9f4d6903034fd1072aacb` · SHA-256 `63b7980f4ef78809e3739be403d72a219a152fd409846c8919b384257cb71b58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PlanningSurfaceEvidenceSchema.Variante505809f4396e01b791fb5b3853eea49db9b389fa99c8bec289ccb433f5c1eb5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e505809f4396e01b791fb5b3853eea49db9b389fa99c8bec289ccb433f5c1eb5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PlanningSurfaceEvidenceSchema.Variante505809f4396e01b791fb5b3853eea49db9b389fa99c8bec289ccb433f5c1eb5","mathematical_subject":"Foundations.Unclassified","original_sha256":"e505809f4396e01b791fb5b3853eea49db9b389fa99c8bec289ccb433f5c1eb5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit0/Bit0/Bit0/Bit0/Bit1/Bit1/M506970656c696e652f5265706f7274732f506c616e6e696e67537572666163655265706f72742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f56616c69646174696f6e2f506c616e6e696e67537572666163652e6c65616e


/- source-tree-label: STL1|L|addr=010000011|role=proof_code_atom|slug=pipeline-reports-planningsurfacereport|owner=canonical_owner|core=Pipeline/Reports/PlanningSurfaceReport.lean|leaf=M506970656c696e652f5265706f7274732f506c616e6e696e67537572666163655265706f72742e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PlanningSurfaceEvidenceSchema.Variante505809f4396e01b791fb5b3853eea49db9b389fa99c8bec289ccb433f5c1eb5

set_option autoImplicit false

namespace Think.Pipeline.Reports

def planningSurfaceEvidenceSchema : String :=
  "think.pipeline.planning_surface.v1"

def planningSurfaceRustCommand : String :=
  "cargo run --bin xtask -- pipeline-planning-surface --write-evidence"

def planningSurfaceCarrierAction : String :=
  "carrier_pipeline_planning_surface"

def planningSurfaceReportClass : String :=
  "planning_surface_residue_interface_not_proof_authority"

theorem planning_surface_report_names_finite_witness :
    Think.Pipeline.Validation.PlanningSurfaceFiniteWitness := by
  exact Think.Pipeline.Validation.planning_surface_finite_witness

theorem planning_surface_report_classifies_finite_witness :
    planningSurfaceReportClass =
      "planning_surface_residue_interface_not_proof_authority" := by
  rfl

end Think.Pipeline.Reports
```
