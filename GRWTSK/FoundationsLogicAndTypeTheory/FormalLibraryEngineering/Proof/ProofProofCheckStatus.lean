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
