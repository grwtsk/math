# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuildCheck.Variant15fc2f1580123d7d887bee37469fc70fbc32b9842b0527e2f9aef0d50350c65e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f5fc948758225d6403fc831510ce0522f33ce3e` · SHA-256 `15fc2f1580123d7d887bee37469fc70fbc32b9842b0527e2f9aef0d50350c65e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
