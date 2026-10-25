# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Historical.Variantc47fe9188afdc3ef486b55e4da1c1702b3bd0214d50f5ae2c67374a230f83b57

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79f1de84e1bdab26b9da5376a7ea6461e2a327c8` · SHA-256 `c47fe9188afdc3ef486b55e4da1c1702b3bd0214d50f5ae2c67374a230f83b57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Toolchain.BuildReceipt

/-! # Historical toolchain reconstruction -/

namespace Mathematics.Toolchain

/-- Reconstruction binds an immutable capsule, sandbox, and complete receipt. -/
structure HistoricalReconstruction where
  sandboxed : SandboxedCapsule
  receipt : BuildReceipt
  capsule_matches :
    receipt.capsuleKey = sandboxed.capsule.key
  sourceSnapshotDigest : Digest
  reconstructionDigest : Digest

theorem HistoricalReconstruction.failure_is_observable
    (reconstruction : HistoricalReconstruction)
    (failed : reconstruction.receipt.status = .failed) :
    reconstruction.receipt.status ≠ .succeeded := by
  simp [failed]

end Mathematics.Toolchain
```
