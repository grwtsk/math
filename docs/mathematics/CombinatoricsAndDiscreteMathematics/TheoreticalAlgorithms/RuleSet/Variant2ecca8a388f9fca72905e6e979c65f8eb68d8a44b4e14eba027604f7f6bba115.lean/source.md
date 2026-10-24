# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RuleSet.Variant2ecca8a388f9fca72905e6e979c65f8eb68d8a44b4e14eba027604f7f6bba115

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9548192944809271cd9d64097aaa921910713045` · SHA-256 `2ecca8a388f9fca72905e6e979c65f8eb68d8a44b4e14eba027604f7f6bba115`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.SimpleFinitePole
import Surface.Legacy.BinaryLogicMatrix.Stream.TheoremCreation

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
