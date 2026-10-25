import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f56616c69646174696f6e2f506c616e6e696e67537572666163652e6c65616e


/- source-tree-label: STL1|L|addr=010000011|role=proof_code_atom|slug=pipeline-reports-planningsurfacereport|owner=canonical_owner|core=Pipeline/Reports/PlanningSurfaceReport.lean|leaf=M506970656c696e652f5265706f7274732f506c616e6e696e67537572666163655265706f72742e6c65616e.lean -/

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
