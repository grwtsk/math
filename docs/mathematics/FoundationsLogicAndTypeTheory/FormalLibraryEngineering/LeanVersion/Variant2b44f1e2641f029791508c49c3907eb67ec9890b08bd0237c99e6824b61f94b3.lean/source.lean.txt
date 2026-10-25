import Mathematics.Core.Id

/-! # Exact Lean toolchain versions -/

namespace Mathematics.Toolchain

structure LeanVersion where
  release : String
  compilerDigest : Digest
  kernelDigest : Digest
  deriving DecidableEq, Repr

def LeanVersion.Valid (version : LeanVersion) : Prop :=
  version.release ≠ "" ∧
    version.compilerDigest.Valid ∧
    version.kernelDigest.Valid

end Mathematics.Toolchain
