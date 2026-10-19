import Mathematics.StratifiedBoundary.Contract
import Mathematics.StratifiedBoundary.UnknownLedger

/-!
# Authority noninterference

Ordinal codes and spectral traces are proposal-bearing observations.  Only an
external accepted certificate may enter the authority-bearing constructor.
-/

namespace Mathematics.StratifiedBoundary

structure StratifiedObservation where
  contract : StratifiedBoundaryTraceContract
  observationDigest : String
  unresolved :
    Finset TerminalInterface

def StratifiedObservation.authoritativeEffect
    (_observation : StratifiedObservation) : Bool :=
  false

theorem stratified_observation_nonauthoritative
    (observation : StratifiedObservation) :
    observation.authoritativeEffect = false :=
  rfl

structure ExternalAdmissionCertificate where
  certificateId : String
  authorityId : String
  immutableCutDigest : String
  accepted : Bool
  acceptedProof :
    accepted = true

inductive AdmissionResult
  | proposal (observation : StratifiedObservation)
  | rejected (reason : String)
  | accepted
      (observation : StratifiedObservation)
      (certificate : ExternalAdmissionCertificate)

theorem accepted_requires_external_certificate
    {result : AdmissionResult}
    (accepted :
      ∃ observation certificate,
        result =
          .accepted observation certificate) :
    ∃ certificate : ExternalAdmissionCertificate,
      certificate.accepted = true := by
  obtain ⟨_observation, certificate, _⟩ :=
    accepted
  exact ⟨certificate, certificate.acceptedProof⟩

end Mathematics.StratifiedBoundary
