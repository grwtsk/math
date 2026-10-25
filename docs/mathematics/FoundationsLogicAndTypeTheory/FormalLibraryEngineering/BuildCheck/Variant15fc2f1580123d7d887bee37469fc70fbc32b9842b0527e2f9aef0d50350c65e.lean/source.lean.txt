import Mathematics.Reflection.Patch
import Mathematics.Toolchain.BuildReceipt

/-! # Reflection build and test checks -/

namespace Mathematics.Reflection

structure BuildCheck (patch : Patch) where
  receipt : Toolchain.BuildReceipt
  target_capsule_exact :
    receipt.capsuleKey = patch.candidate.targetCapsule
  status_succeeded : receipt.status = .succeeded
  testSuiteDigest : Digest
  styleCheckDigest : Digest
  allRequiredTestsPassed : Bool
  targetConventionsPassed : Bool
  targetRevisionChecked : Bool

theorem BuildCheck.is_success
    {patch : Patch}
    (check : BuildCheck patch) :
    check.receipt.status = .succeeded :=
  check.status_succeeded

end Mathematics.Reflection
