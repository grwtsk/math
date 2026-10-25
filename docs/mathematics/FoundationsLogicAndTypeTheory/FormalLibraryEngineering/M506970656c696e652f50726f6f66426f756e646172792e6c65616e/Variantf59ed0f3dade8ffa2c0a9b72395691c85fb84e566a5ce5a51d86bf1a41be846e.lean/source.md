# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f50726f6f66426f756e646172792e6c65616e.Variantf59ed0f3dade8ffa2c0a9b72395691c85fb84e566a5ce5a51d86bf1a41be846e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f6b50d49f25688a838f7eb34a1af27cbe44522b` · SHA-256 `f59ed0f3dade8ffa2c0a9b72395691c85fb84e566a5ce5a51d86bf1a41be846e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f436c61696d5374617475732e6c65616e

/- source-tree-label: STL1|L|addr=11101011|role=proof_code_atom|slug=pipeline-proofboundary|owner=canonical_owner|core=Pipeline/ProofBoundary.lean|leaf=M506970656c696e652f50726f6f66426f756e646172792e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Braid.Law

def crossesProofBoundary : ClaimStatus -> Bool :=
  ClaimStatus.crossesTheoremBoundary

theorem finite_witness_stays_below_boundary :
    crossesProofBoundary ClaimStatus.finiteWitness = false := rfl

theorem checked_theorem_crosses_boundary :
    crossesProofBoundary ClaimStatus.checkedTheorem = true := rfl

end Think.Braid.Law
```
