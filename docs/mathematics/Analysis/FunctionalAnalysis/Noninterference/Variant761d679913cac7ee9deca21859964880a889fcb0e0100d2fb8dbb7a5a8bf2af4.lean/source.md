# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Noninterference.Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbd035addf50cd6874bdccceb7afa25e6044a7cd` · SHA-256 `761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SpectralClosure.SquareRoot

/-!
# Spectral analysis cannot acquire owner authority
-/

namespace Mathematics.SpectralClosure

inductive AuthorityEffect
  | none
  | proposal
  | commit
  deriving DecidableEq, Repr

inductive SpectralArtifactKind
  | bitfield
  | kernelEvaluation
  | invariantLawCalculation
  | operatorCalculation
  | traceCalculation
  | defectClassification
  | repairProposal
  deriving DecidableEq, Repr

def SpectralArtifactKind.authorityEffect
    (_ : SpectralArtifactKind) : AuthorityEffect :=
  .none

theorem spectral_artifacts_cannot_commit
    (artifact : SpectralArtifactKind) :
    artifact.authorityEffect = .none :=
  rfl

inductive TheoremCertificateOrigin
  | leanKernel
  | runtimeObservation
  deriving DecidableEq, Repr

def TheoremCertificateOrigin.mayChangeTheoremStatus :
    TheoremCertificateOrigin → Bool
  | .leanKernel => true
  | .runtimeObservation => false

theorem runtime_observations_cannot_manufacture_theorem_certificates :
    TheoremCertificateOrigin.mayChangeTheoremStatus
      .runtimeObservation = false :=
  rfl

inductive OwnerAdmission
  | proposed
  | independentlyVerified
  | ownerAdmitted
  deriving DecidableEq, Repr

def OwnerAdmission.mayCommitRealization :
    OwnerAdmission → Bool
  | .proposed => false
  | .independentlyVerified => false
  | .ownerAdmitted => true

theorem owner_admission_is_necessary_for_committed_realization
    (admission : OwnerAdmission)
    (mayCommit : admission.mayCommitRealization = true) :
    admission = .ownerAdmitted := by
  cases admission with
  | proposed => contradiction
  | independentlyVerified => contradiction
  | ownerAdmitted => rfl

end Mathematics.SpectralClosure
```
