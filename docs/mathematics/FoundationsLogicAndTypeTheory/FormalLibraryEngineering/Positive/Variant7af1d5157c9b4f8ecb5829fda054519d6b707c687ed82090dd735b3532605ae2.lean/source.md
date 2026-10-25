# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Positive.Variant7af1d5157c9b4f8ecb5829fda054519d6b707c687ed82090dd735b3532605ae2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73dbe17869a1091919a8fb4238144f109ba7a435` · SHA-256 `7af1d5157c9b4f8ecb5829fda054519d6b707c687ed82090dd735b3532605ae2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
