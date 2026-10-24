# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sandbox.Varianta48cdeb672bdd42bd61cbf51b7eeedb68e474adee391fb0b02b67a7f5b0c7948

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ffcabb72ecfa3d1d13b67552033569a999ca89b` · SHA-256 `a48cdeb672bdd42bd61cbf51b7eeedb68e474adee391fb0b02b67a7f5b0c7948`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
