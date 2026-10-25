# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f5265706f7274732f43616e6f6e6963616c5265736964756544796e616d696.Variantaf682297ceedee88cfcd1b325514711855f7e6fefbc0c29b5d3da21cf595533a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b193f4ad6bd8f51c700c6ad72f71925efeaaa520` · SHA-256 `af682297ceedee88cfcd1b325514711855f7e6fefbc0c29b5d3da21cf595533a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.M506970656c696e652f56616c69646174696f6e2f43616e6f6e6963616c5265736964756544796e616d6963732e6c65616e


/- source-tree-label: STL1|L|addr=0101001010|role=proof_code_atom|slug=pipeline-reports-canonicalresiduedynamicsreport|owner=canonical_owner|core=Pipeline/Reports/CanonicalResidueDynamicsReport.lean|leaf=M506970656c696e652f5265706f7274732f43616e6f6e6963616c5265736964756544796e616d6963735265706f72742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports

def canonicalResidueDynamicsEvidenceSchema : String :=
  "think.pipeline.canonical_residue_dynamics.v1"

def canonicalResidueDynamicsRustCommand : String :=
  "cargo run --bin xtask -- pipeline-canonical-residue-dynamics --write-evidence"

def canonicalResidueDynamicsCarrierAction : String :=
  "carrier_pipeline_canonical_residue_dynamics"

def canonicalResidueDynamicsReportClass : String :=
  "canonical_event_law_finite_witness_not_theorem_authority"

theorem canonical_residue_dynamics_report_names_finite_witness :
    Think.Pipeline.Validation.CanonicalResidueDynamicsFiniteWitness := by
  exact Think.Pipeline.Validation.canonical_residue_dynamics_finite_witness

theorem canonical_residue_dynamics_report_classifies_finite_witness :
    canonicalResidueDynamicsReportClass =
      "canonical_event_law_finite_witness_not_theorem_authority" := by
  rfl

end Think.Pipeline.Reports
```
