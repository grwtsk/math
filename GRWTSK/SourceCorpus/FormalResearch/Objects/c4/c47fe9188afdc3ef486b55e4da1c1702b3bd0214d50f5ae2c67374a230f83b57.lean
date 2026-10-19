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
