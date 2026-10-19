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
