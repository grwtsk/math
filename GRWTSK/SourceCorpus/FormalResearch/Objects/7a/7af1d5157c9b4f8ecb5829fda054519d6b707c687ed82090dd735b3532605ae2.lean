import Mathematics.Reflection.LicenseCheck
import Mathematics.Reflection.TheoremPreservation

/-! # Positive reflection certificates -/

namespace Mathematics.Reflection

/--
Positive reflection is admitted only after build, test, style, theorem, axiom,
and license checks.  Model or energy output cannot construct this record
without those witnesses.
-/
structure PositiveCertificate (patch : Patch) where
  build : BuildCheck patch
  theoremPreservation : TheoremPreservationCheck patch
  license : LicenseCheck patch
  tests_passed : build.allRequiredTestsPassed = true
  conventions_passed : build.targetConventionsPassed = true
  target_revision_checked : build.targetRevisionChecked = true
  license_passed : license.Passes
  certificateDigest : Digest

namespace PositiveCertificate

theorem build_succeeded
    {patch : Patch}
    (certificate : PositiveCertificate patch) :
    certificate.build.receipt.status = .succeeded :=
  certificate.build.status_succeeded

/-- The build receipt is bound to the candidate's exact target capsule. -/
theorem target_capsule_exact
    {patch : Patch}
    (certificate : PositiveCertificate patch) :
    certificate.build.receipt.capsuleKey =
      patch.candidate.targetCapsule :=
  certificate.build.target_capsule_exact

end PositiveCertificate

end Mathematics.Reflection
