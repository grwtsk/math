-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalNotationEvidenceSchema.Variant24a8493d1df08501657e4dce75dabf80972150dde91c93311a75d6fa018ef771","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24a8493d1df08501657e4dce75dabf80972150dde91c93311a75d6fa018ef771","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FormalNotationEvidenceSchema.Variant24a8493d1df08501657e4dce75dabf80972150dde91c93311a75d6fa018ef771","mathematical_subject":"Foundations.Unclassified","original_sha256":"24a8493d1df08501657e4dce75dabf80972150dde91c93311a75d6fa018ef771","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit0/Bit1/Bit0/M506970656c696e652f5265706f7274732f466f726d616c4e6f746174696f6e5265706f72742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.Bit1.M506970656c696e652f56616c69646174696f6e2f466f726d616c4e6f746174696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=010010|role=proof_code_atom|slug=pipeline-reports-formalnotationreport|owner=canonical_owner|core=Pipeline/Reports/FormalNotationReport.lean|leaf=M506970656c696e652f5265706f7274732f466f726d616c4e6f746174696f6e5265706f72742e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalNotationEvidenceSchema.Variant24a8493d1df08501657e4dce75dabf80972150dde91c93311a75d6fa018ef771

set_option autoImplicit false

namespace Think.Pipeline.Reports

def formalNotationEvidenceSchema : String :=
  "think.pipeline.formal_notation_boundary.v1"

def formalNotationRustCommand : String :=
  "cargo run --bin xtask -- pipeline-formal-notation --write-evidence"

def formalNotationCarrierAction : String :=
  "carrier_pipeline_formal_notation"

def formalNotationReportClass : String :=
  "finite_witness_evidence_not_theorem_authority"

theorem formal_notation_report_names_checked_lean_theorem :
    Think.Pipeline.Validation.PipelineFormalNotationFiniteBoundaryTheorem := by
  exact Think.Pipeline.Validation.pipeline_formal_notation_finite_boundary

theorem formal_notation_report_classifies_as_finite_witness :
    formalNotationReportClass =
      "finite_witness_evidence_not_theorem_authority" := by
  rfl

end Think.Pipeline.Reports
