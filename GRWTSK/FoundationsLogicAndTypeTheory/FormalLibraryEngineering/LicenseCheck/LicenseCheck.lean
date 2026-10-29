import Mathematics.Ecosystem.License
import Mathematics.Reflection.Patch

/-! # Reflection license compatibility -/

namespace Mathematics.Reflection

structure LicenseCheck (patch : Patch) where
  sourceLicense : Ecosystem.LicenseRecord
  destinationLicense : Ecosystem.LicenseRecord
  compatible : Bool
  attributionPreserved : Bool
  checkDigest : Digest

def LicenseCheck.Passes {patch : Patch} (check : LicenseCheck patch) : Prop :=
  check.compatible = true ∧
    check.attributionPreserved = true ∧
    check.sourceLicense.LegallyAdmissible

end Mathematics.Reflection
