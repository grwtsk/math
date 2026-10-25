# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proof.Variant4c794a63921269117fc5bcc03604accdc6893c3d759030afd8416c303196ff35

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45b253f35368bcd5aa4d22eb1498ec38e453c3ab` · SHA-256 `4c794a63921269117fc5bcc03604accdc6893c3d759030afd8416c303196ff35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Authority.Kernel
import Mathematics.Ingestion.Declaration

/-! # Proof-object capture without authority inflation -/

namespace Mathematics.Ingestion

inductive ProofCheckStatus
  | notApplicable
  | unchecked
  | rejected
  | kernelAccepted
  deriving DecidableEq, Repr

/--
An extracted proof term is observational data.  Kernel authority remains in
the separately sealed accepted-kernel certificate.
-/
structure ProofCapture where
  declaration : ProjectDeclarationId
  proofTermDigest : Option Digest
  dependencyConeDigest : Digest
  axiomClosureDigest : Digest
  status : ProofCheckStatus
  kernelReceiptDigest : Option Digest
  deriving DecidableEq, Repr

theorem ProofCapture.unchecked_not_kernel_accepted
    (proof : ProofCapture)
    (unchecked : proof.status = .unchecked) :
    proof.status ≠ .kernelAccepted := by
  simp [unchecked]

end Mathematics.Ingestion
```
