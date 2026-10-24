-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MaximalFiniteBoundaryEvidenceSchema.Variantadde73bee29f185f1af0516ab6f647712f1966dbb4b196a31c30f1ebb2b225fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"adde73bee29f185f1af0516ab6f647712f1966dbb4b196a31c30f1ebb2b225fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MaximalFiniteBoundaryEvidenceSchema.Variantadde73bee29f185f1af0516ab6f647712f1966dbb4b196a31c30f1ebb2b225fa","mathematical_subject":"Foundations.Unclassified","original_sha256":"adde73bee29f185f1af0516ab6f647712f1966dbb4b196a31c30f1ebb2b225fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit0/Bit1/Bit1/Bit1/Bit1/M506970656c696e652f5265706f7274732f4d6178696d616c46696e697465426f756e646172795265706f72742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f56616c69646174696f6e2f4d6178696d616c46696e697465426f756e646172792e6c65616e


/- source-tree-label: STL1|L|addr=1101111|role=proof_code_atom|slug=pipeline-reports-maximalfiniteboundaryreport|owner=canonical_owner|core=Pipeline/Reports/MaximalFiniteBoundaryReport.lean|leaf=M506970656c696e652f5265706f7274732f4d6178696d616c46696e697465426f756e646172795265706f72742e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MaximalFiniteBoundaryEvidenceSchema.Variantadde73bee29f185f1af0516ab6f647712f1966dbb4b196a31c30f1ebb2b225fa

set_option autoImplicit false

namespace Think.Pipeline.Reports

def maximalFiniteBoundaryEvidenceSchema : String :=
  "think.pipeline.carrier_maximal_finite_boundary.v1"

def maximalFiniteBoundaryRustCommand : String :=
  "cargo run --bin xtask -- pipeline-maximal-boundary --write-evidence"

def maximalFiniteBoundaryCarrierAction : String :=
  "carrier_pipeline_maximal_boundary"

def maximalFiniteBoundaryReportClass : String :=
  "finite_witness_evidence_not_theorem_authority"

theorem maximal_boundary_report_names_checked_lean_theorem :
    Think.Pipeline.Validation.PipelineCarrierMaximalFiniteBoundaryTheorem := by
  exact Think.Pipeline.Validation.pipeline_carrier_maximal_finite_boundary

theorem maximal_boundary_report_classifies_as_finite_witness :
    maximalFiniteBoundaryReportClass =
      "finite_witness_evidence_not_theorem_authority" := by
  rfl

end Think.Pipeline.Reports
