# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Noninterference.Variantb3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13220b866b6168258874ea7fe1f48a8f06840d62` · SHA-256 `b3617aa0eb26aea707f2dd630e1f815d96d01d4191e335b81f19d96e495e66f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
