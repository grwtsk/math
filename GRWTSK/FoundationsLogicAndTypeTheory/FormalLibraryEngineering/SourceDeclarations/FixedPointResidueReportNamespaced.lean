-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointResidueEvidenceSchema.Variant6bb6426a5e79ffeeaa2e2b754a3eb1e91214a22c1b0424ed89d6319c3432d42b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6bb6426a5e79ffeeaa2e2b754a3eb1e91214a22c1b0424ed89d6319c3432d42b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FixedPointResidueEvidenceSchema.Variant6bb6426a5e79ffeeaa2e2b754a3eb1e91214a22c1b0424ed89d6319c3432d42b","mathematical_subject":"Foundations.Unclassified","original_sha256":"6bb6426a5e79ffeeaa2e2b754a3eb1e91214a22c1b0424ed89d6319c3432d42b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit1/Bit1/Bit1/Bit1/Bit1/Bit0/Bit1/M506970656c696e652f5265706f7274732f4669786564506f696e74526573696475655265706f72742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f56616c69646174696f6e2f4669786564506f696e74526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=0101111101|role=proof_code_atom|slug=pipeline-reports-fixedpointresiduereport|owner=canonical_owner|core=Pipeline/Reports/FixedPointResidueReport.lean|leaf=M506970656c696e652f5265706f7274732f4669786564506f696e74526573696475655265706f72742e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointResidueEvidenceSchema.Variant6bb6426a5e79ffeeaa2e2b754a3eb1e91214a22c1b0424ed89d6319c3432d42b

set_option autoImplicit false

namespace Think.Pipeline.Reports

def fixedPointResidueEvidenceSchema : String :=
  "think.pipeline.fixed_point_residue.v1"

def fixedPointResidueRustCommand : String :=
  "cargo run --bin xtask -- pipeline-fixed-point-residue --write-evidence"

def fixedPointResidueCarrierAction : String :=
  "carrier_pipeline_fixed_point_residue"

def fixedPointResidueReportClass : String :=
  "finite_constraint_exhaustion_boundary_expansion_request"

theorem fixed_point_residue_report_names_finite_witness :
    Think.Pipeline.Validation.PipelineFixedPointResidueFiniteWitness := by
  exact Think.Pipeline.Validation.pipeline_fixed_point_residue_finite_witness

theorem fixed_point_residue_report_classifies_boundary_expansion :
    fixedPointResidueReportClass =
      "finite_constraint_exhaustion_boundary_expansion_request" := by
  rfl

end Think.Pipeline.Reports
