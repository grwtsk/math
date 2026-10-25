# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f5265706f7274732f466f726d616c4e6f746174696f6e5265706f72742e6c6.Variant24a8493d1df08501657e4dce75dabf80972150dde91c93311a75d6fa018ef771

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a2788e9da113a04a34e899c36f042f26bf21863` · SHA-256 `24a8493d1df08501657e4dce75dabf80972150dde91c93311a75d6fa018ef771`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.Bit1.M506970656c696e652f56616c69646174696f6e2f466f726d616c4e6f746174696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=010010|role=proof_code_atom|slug=pipeline-reports-formalnotationreport|owner=canonical_owner|core=Pipeline/Reports/FormalNotationReport.lean|leaf=M506970656c696e652f5265706f7274732f466f726d616c4e6f746174696f6e5265706f72742e6c65616e.lean -/

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
```
