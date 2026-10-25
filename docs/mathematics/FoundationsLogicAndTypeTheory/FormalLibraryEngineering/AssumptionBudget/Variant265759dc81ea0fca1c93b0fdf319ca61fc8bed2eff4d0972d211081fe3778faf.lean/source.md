# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssumptionBudget.Variant265759dc81ea0fca1c93b0fdf319ca61fc8bed2eff4d0972d211081fe3778faf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1b5b9838e504bed95c3bf5602bf7f380db334ef` · SHA-256 `265759dc81ea0fca1c93b0fdf319ca61fc8bed2eff4d0972d211081fe3778faf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ProofSafety.AssumptionBudget

/-!
# Folder.Theorem.ProofSafety.AssumptionBudget

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports assumption-budget facts.
Ontology: proof.proof_safety.assumption_budget
Pivot role: verification
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: proof-safety
-/

namespace Folder
namespace Theorem
namespace ProofSafety

theorem assumption_budget_no_contract_entries
    (B : Folder.ProofSafety.AssumptionBudget) :
    B.noContractEntries :=
  Folder.ProofSafety.assumption_budget_no_contract_entries B

theorem assumption_budget_no_external_witness_entries
    (B : Folder.ProofSafety.AssumptionBudget) :
    B.noExternalWitnessEntries :=
  Folder.ProofSafety.assumption_budget_no_external_witness_entries B

theorem assumption_budget_no_if_supplied_accessors
    (B : Folder.ProofSafety.AssumptionBudget) :
    B.noIfSuppliedAccessors :=
  Folder.ProofSafety.assumption_budget_no_if_supplied_accessors B

theorem assumption_budget_no_certified_projection_proofs
    (B : Folder.ProofSafety.AssumptionBudget) :
    B.noCertifiedProjectionProofs :=
  Folder.ProofSafety.assumption_budget_no_certified_projection_proofs B

end ProofSafety
end Theorem
end Folder
```
