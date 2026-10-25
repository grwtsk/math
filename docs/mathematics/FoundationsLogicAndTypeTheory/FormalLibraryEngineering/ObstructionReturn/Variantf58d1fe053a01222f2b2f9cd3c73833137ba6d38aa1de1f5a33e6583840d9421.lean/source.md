# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObstructionReturn.Variantf58d1fe053a01222f2b2f9cd3c73833137ba6d38aa1de1f5a33e6583840d9421

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b86f29d08deab24d4ba4663dbc3069d96e529ce5` · SHA-256 `f58d1fe053a01222f2b2f9cd3c73833137ba6d38aa1de1f5a33e6583840d9421`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Primitive obstruction return

Inaccessibility follows only from explicit completion semantics, a first
infeasible boundary, and a primitive core.
-/

namespace Mathematics.GraphAccess

structure PrimitiveObstructionCertificate where
  blockedTargetRef : String
  firstInfeasibleBoundaryRef : String
  primitiveCoreRef : String
  canonicalObstructionRef : String
  completionSemanticsAdmitted : Prop
  primitiveCoreMinimal : Prop
  targetBlocked : Prop
  completionSemanticsEvidence : completionSemanticsAdmitted
  primitiveCoreMinimalEvidence : primitiveCoreMinimal
  targetBlockedEvidence : targetBlocked

theorem primitive_obstruction_blocks_target
    (certificate : PrimitiveObstructionCertificate) :
    certificate.targetBlocked :=
  certificate.targetBlockedEvidence

end Mathematics.GraphAccess
```
