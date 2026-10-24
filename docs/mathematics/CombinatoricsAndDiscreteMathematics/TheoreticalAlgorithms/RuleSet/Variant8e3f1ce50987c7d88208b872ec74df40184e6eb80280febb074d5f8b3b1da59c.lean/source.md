# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RuleSet.Variant8e3f1ce50987c7d88208b872ec74df40184e6eb80280febb074d5f8b3b1da59c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1e5cac1151159a2ad45233df705e79f1c23a05e` · SHA-256 `2b32f01317f7f59d5aac8d9bd054643c9d6a9baae55225095e292887197e218c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceRegenerationRule.Variant2ecca8a388f9fca72905e6e979c65f8eb68d8a44b4e14eba027604f7f6bba115","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ecca8a388f9fca72905e6e979c65f8eb68d8a44b4e14eba027604f7f6bba115","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SourceRegenerationRule.Variant2ecca8a388f9fca72905e6e979c65f8eb68d8a44b4e14eba027604f7f6bba115","mathematical_subject":"Computation.DataStructures","original_sha256":"2ecca8a388f9fca72905e6e979c65f8eb68d8a44b4e14eba027604f7f6bba115","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Stream/RuleSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Stream.SimpleFinitePole
import Surface.Legacy.BinaryLogicMatrix.Stream.TheoremCreation


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceRegenerationRule.Variant2ecca8a388f9fca72905e6e979c65f8eb68d8a44b4e14eba027604f7f6bba115

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure SourceRegenerationRule where
  ruleName : String
  inputModules : List String
  outputModule : String
  requiredFrames : List Frame
  requiredPoles : List PolarSplitPaddingPole
  requiredIntegrityChecks : List TensoralIntegrity
  requiredCurvatureBalances : List CurvatureBalance
  requiredObligations : List TheoremCreationObligation
  emittedDeclarationNames : List String
  preservesClaimBoundary : Prop
  preservesProofStatus : Prop
  preservesTrustedStatus : Prop
  noMigrationResidue : Prop
  claimBoundary : List String

structure RuleSet where
  rulesetId : String
  rules : List SourceRegenerationRule
  targetModules : List String
  targetImports : List String
  sourceSnapshot : String
  everyRuleBoundaryPreserving :
    ∀ R, R ∈ rules → R.preservesClaimBoundary
  everyRuleProofStatusPreserving :
    ∀ R, R ∈ rules → R.preservesProofStatus
  noLegacyPublicNames :
    ∀ R, R ∈ rules → R.noMigrationResidue
  claimBoundary : List String

theorem ruleset_boundary_visible
    (R : RuleSet) :
    R.claimBoundary = R.claimBoundary :=
  rfl

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
