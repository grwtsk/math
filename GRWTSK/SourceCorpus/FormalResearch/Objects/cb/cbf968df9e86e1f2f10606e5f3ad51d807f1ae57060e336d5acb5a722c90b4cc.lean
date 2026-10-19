import Think.Bit0.Bit0.Bit1.Bit1.Bit0.Bit0.M506970656c696e652f56616c69646174696f6e2f43656e74657253696d756c6174696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=10000000|role=proof_code_atom|slug=pipeline-reports-centersimulationreport|owner=canonical_owner|core=Pipeline/Reports/CenterSimulationReport.lean|leaf=M506970656c696e652f5265706f7274732f43656e74657253696d756c6174696f6e5265706f72742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports.CenterSimulationReport

def verdict : String := "accepted_checked_change"
def residueId : String := "center_simulation_not_proof_authority"
def evidenceSchema : String := "think.pipeline.center_simulation.v1"

theorem verdict_declared :
    verdict = "accepted_checked_change" := by
  rfl

theorem residue_id_declared :
    residueId = "center_simulation_not_proof_authority" := by
  rfl

theorem evidence_schema_declared :
    evidenceSchema = "think.pipeline.center_simulation.v1" := by
  rfl

end Think.Pipeline.Reports.CenterSimulationReport
