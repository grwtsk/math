# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PublicSurface.Variant5f2a6e4aeca20880af764022f4e149918eb081091b566af3fd6b276bc43df738

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1db4c1f48dc19feeaa4b670bba3ce0a3fdbb968a` · SHA-256 `7b998657eaac74cfa9b2a1b87d199daad9a894828d5ac3eb22e8cc473ba91371`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PublicEntrypoint.Variantecf4957ae46b535f3ca59e157430906511296ddd7b2b9736a76a5bda21598c1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecf4957ae46b535f3ca59e157430906511296ddd7b2b9736a76a5bda21598c1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PublicEntrypoint.Variantecf4957ae46b535f3ca59e157430906511296ddd7b2b9736a76a5bda21598c1e","mathematical_subject":"Foundations.Unclassified","original_sha256":"ecf4957ae46b535f3ca59e157430906511296ddd7b2b9736a76a5bda21598c1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Gateway/formalization/GatewayProof/PublicSurface.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PublicEntrypoint.Variantecf4957ae46b535f3ca59e157430906511296ddd7b2b9736a76a5bda21598c1e

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
