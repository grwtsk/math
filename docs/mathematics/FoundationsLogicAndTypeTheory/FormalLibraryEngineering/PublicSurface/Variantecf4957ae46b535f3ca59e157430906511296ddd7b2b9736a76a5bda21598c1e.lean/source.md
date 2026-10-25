# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PublicSurface.Variantecf4957ae46b535f3ca59e157430906511296ddd7b2b9736a76a5bda21598c1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06fd4c20340de482e47817e26fe638ce790e5694` · SHA-256 `ecf4957ae46b535f3ca59e157430906511296ddd7b2b9736a76a5bda21598c1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace GatewayProof
namespace PublicSurface

/-- Public entrypoints intentionally exposed by Gateway's Rust crate. -/
inductive PublicEntrypoint
| runFromEnv
| runGateway
| runtimeTopologyConfig
| topologyMode
| upstreamMode
| relayRoutes
| relayRouteBindings
deriving Repr, DecidableEq

/-- Repository-layer claim posture for the Lean skeleton. -/
structure SkeletonPosture where
  leanPackageExists : Bool
  runtimeBehaviorChanged : Bool
  hostedRuntimeProof : Bool
  authorityExpansion : Bool
deriving Repr, DecidableEq

def firstSlicePosture : SkeletonPosture := {
  leanPackageExists := true,
  runtimeBehaviorChanged := false,
  hostedRuntimeProof := false,
  authorityExpansion := false
}

theorem skeleton_does_not_claim_runtime_change :
    firstSlicePosture.runtimeBehaviorChanged = false := by
  rfl

theorem skeleton_does_not_claim_hosted_runtime_proof :
    firstSlicePosture.hostedRuntimeProof = false := by
  rfl

theorem skeleton_does_not_expand_authority :
    firstSlicePosture.authorityExpansion = false := by
  rfl

end PublicSurface
end GatewayProof
```
