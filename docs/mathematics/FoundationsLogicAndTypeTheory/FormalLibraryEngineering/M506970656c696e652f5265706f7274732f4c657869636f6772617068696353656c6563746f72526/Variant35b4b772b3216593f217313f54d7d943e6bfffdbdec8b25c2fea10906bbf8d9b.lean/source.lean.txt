import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f56616c69646174696f6e2f4c657869636f6772617068696353656c6563746f722e6c65616e


/- source-tree-label: STL1|L|addr=000101|role=proof_code_atom|slug=pipeline-reports-lexicographicselectorreport|owner=canonical_owner|core=Pipeline/Reports/LexicographicSelectorReport.lean|leaf=M506970656c696e652f5265706f7274732f4c657869636f6772617068696353656c6563746f725265706f72742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports

def lexicographicSelectorEvidenceSchema : String :=
  "think.pipeline.lexicographic_selector.v1"

def lexicographicSelectorRustCommand : String :=
  "cargo run --bin xtask -- pipeline-lexicographic-selector --write-evidence"

def lexicographicSelectorCarrierAction : String :=
  "carrier_pipeline_lexicographic_selector"

def lexicographicSelectorStallRecoveryClass : String :=
  "stall_residue_then_checked_backtrack_then_deterministic_recompute"

def lexicographicSelectorReportClass : String :=
  "finite_witness_evidence_not_theorem_authority"

theorem lexicographic_selector_report_names_checked_lean_witness :
    Think.Pipeline.Validation.PipelineLexicographicSelectorFiniteWitness := by
  exact Think.Pipeline.Validation.pipeline_lexicographic_selector_finite_witness

theorem lexicographic_selector_report_classifies_as_finite_witness :
    lexicographicSelectorReportClass =
      "finite_witness_evidence_not_theorem_authority" := by
  rfl

theorem lexicographic_selector_report_classifies_stall_recovery :
    lexicographicSelectorStallRecoveryClass =
      "stall_residue_then_checked_backtrack_then_deterministic_recompute" := by
  rfl

end Think.Pipeline.Reports
