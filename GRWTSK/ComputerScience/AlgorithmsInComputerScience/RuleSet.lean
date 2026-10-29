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
