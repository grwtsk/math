# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.M506970656c696e652f5265706f7274732f46696e697465426f756e6461727943616c63756c75735.Variant8d0e248a85d0878b42ef4ddc1ff20d7dd3dea5d08ec844558f69142afcb6e20c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7626bea711779fa5ad7702963fd89f71c34db13` · SHA-256 `8d0e248a85d0878b42ef4ddc1ff20d7dd3dea5d08ec844558f69142afcb6e20c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f56616c69646174696f6e2f46696e697465426f756e6461727943616c63756c75732e6c65616e


/- source-tree-label: STL1|L|addr=11110010|role=proof_code_atom|slug=pipeline-reports-finiteboundarycalculusreport|owner=canonical_owner|core=Pipeline/Reports/FiniteBoundaryCalculusReport.lean|leaf=M506970656c696e652f5265706f7274732f46696e697465426f756e6461727943616c63756c75735265706f72742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports

def finiteBoundaryCalculusEvidenceSchema : String :=
  "think.pipeline.finite_boundary_calculus.v1"

def finiteBoundaryCalculusRustCommand : String :=
  "cargo run --bin xtask -- pipeline-finite-boundary-calculus --write-evidence"

def finiteBoundaryCalculusCarrierAction : String :=
  "carrier_pipeline_finite_boundary_calculus"

def finiteBoundaryCalculusReportClass : String :=
  "finite_boundary_calculus_provenance_not_proof_authority"

theorem finite_boundary_calculus_report_names_finite_witness :
    Think.Pipeline.Validation.FiniteBoundaryCalculusFiniteWitness := by
  exact Think.Pipeline.Validation.finite_boundary_calculus_finite_witness

theorem finite_boundary_calculus_report_classifies_finite_witness :
    finiteBoundaryCalculusReportClass =
      "finite_boundary_calculus_provenance_not_proof_authority" := by
  rfl

end Think.Pipeline.Reports
```
