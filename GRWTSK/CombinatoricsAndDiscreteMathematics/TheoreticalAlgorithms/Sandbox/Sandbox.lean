import Mathematics.Toolchain.Capsule

/-! # Sandboxed historical reconstruction -/

namespace Mathematics.Toolchain

/-- Fail-closed process policy for an untrusted historical build. -/
structure SandboxPolicy where
  networkAllowed : Bool
  writeSourceAllowed : Bool
  hostProcessAccessAllowed : Bool
  resourceLimitDigest : Digest
  allowedExecutableDigests : List Digest
  deriving DecidableEq, Repr

def SandboxPolicy.FailClosed (policy : SandboxPolicy) : Prop :=
  policy.networkAllowed = false ∧
    policy.writeSourceAllowed = false ∧
    policy.hostProcessAccessAllowed = false

structure SandboxedCapsule where
  capsule : Capsule
  policy : SandboxPolicy
  policy_fail_closed : policy.FailClosed
  sandboxDigest : Digest

end Mathematics.Toolchain
