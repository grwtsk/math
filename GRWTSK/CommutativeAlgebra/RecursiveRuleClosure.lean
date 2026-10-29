import Folder.GrandChallenge.Complexity.MirzakhaniKakeyaSmoothing

/-!
# Folder.GrandChallenge.Complexity.RecursiveRuleClosure

Radiation role: research-boundary
BinaryMatrix spine: This module records recursive closure of BinaryMatrixStream frames and decompression rulesets.
Ontology: complexity_recursive_rule_closure
Pivot role: recursion
Zero typology: reconstruction-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace Complexity

/--
Recursive decompression ruleset.

The ruleset is the growing grammar that accompanies the compressed stream.
-/
structure RecursiveRuleset where
  label : String
  ruleCount : Nat
  polynomialGrowth : Prop
  polynomialGrowth_certified : polynomialGrowth

/-- Compressed canonical word with an intended polynomial size bound. -/
structure CompressedWord where
  exponent_m : Nat
  sizeBoundLabel : String

/--
Workspace-density certificate for decompression.

The compressed word must leave enough zero-boundary room and balanced bit
distribution for legal shifts, pivots, Kakeya moves, and shell smoothing.
-/
structure WorkspaceDensityCertificate where
  enoughZeroBoundary : Prop
  enoughZeroBoundary_certified : enoughZeroBoundary
  balancedBitDistribution : Prop
  balancedBitDistribution_certified : balancedBitDistribution
  enoughRoomForDecompression : Prop
  enoughRoomForDecompression_certified : enoughRoomForDecompression
  nonStickyWorkspace : Prop
  nonStickyWorkspace_certified : nonStickyWorkspace
  sourceLabel : String

/--
One recursive closure step:

`BinaryMatrixStream + rules ↦ BinaryMatrixStream + rules`.
-/
structure RecursiveRuleClosure where
  inputFrame : LeanProjectFiniteFrame
  inputRules : RecursiveRuleset
  outputFrame : LeanProjectFiniteFrame
  outputRules : RecursiveRuleset
  compressedWord : CompressedWord
  workspace : WorkspaceDensityCertificate
  moveLog : SurgeryMoveLog
  closureGraph : TheoremTraversalGraph
  verifier : DecompressionVerifier closureGraph
  preservesVerifier : Prop
  preservesVerifier_certified : preservesVerifier
  preservesDecompressionCorrectness : Prop
  preservesDecompressionCorrectness_certified :
    preservesDecompressionCorrectness
  ruleGrowthPolynomial : Prop
  ruleGrowthPolynomial_certified : ruleGrowthPolynomial
  sourceLabel : String

/-- The input BinaryMatrixStream of a recursive closure step. -/
def RecursiveRuleClosure.inputStream
    (C : RecursiveRuleClosure) :
    Carrier.BinaryMatrixStream :=
  C.inputFrame.stream

/-- The output BinaryMatrixStream of a recursive closure step. -/
def RecursiveRuleClosure.outputStream
    (C : RecursiveRuleClosure) :
    Carrier.BinaryMatrixStream :=
  C.outputFrame.stream

/--
Uniform recursive compression and smoothing target.

This is the P-branch theorem target: frames compress to polynomial-size words,
rules grow polynomially, workspaces remain non-sticky, and every glitch is
smoothed or classified.
-/
structure UniformRecursiveCompressionSmoothing where
  closure : Nat → RecursiveRuleClosure
  allFramesCompressToPolynomialWord : Prop
  allFramesCompressToPolynomialWord_certified :
    allFramesCompressToPolynomialWord
  allRuleGrowthPolynomial : Prop
  allRuleGrowthPolynomial_certified : allRuleGrowthPolynomial
  allWorkspacesNonSticky : Prop
  allWorkspacesNonSticky_certified : allWorkspacesNonSticky
  everyMoveTrackedByRuleLog : Prop
  everyMoveTrackedByRuleLog_certified : everyMoveTrackedByRuleLog
  everyGlitchSmoothableOrClassified : Prop
  everyGlitchSmoothableOrClassified_certified :
    everyGlitchSmoothableOrClassified
  sourceLabel : String

theorem recursive_ruleset_polynomial_growth_if_supplied
    (R : RecursiveRuleset) :
    R.polynomialGrowth :=
  R.polynomialGrowth_certified

theorem workspace_enough_zero_boundary_if_supplied
    (W : WorkspaceDensityCertificate) :
    W.enoughZeroBoundary :=
  W.enoughZeroBoundary_certified

theorem workspace_balanced_bits_if_supplied
    (W : WorkspaceDensityCertificate) :
    W.balancedBitDistribution :=
  W.balancedBitDistribution_certified

theorem workspace_enough_room_if_supplied
    (W : WorkspaceDensityCertificate) :
    W.enoughRoomForDecompression :=
  W.enoughRoomForDecompression_certified

theorem workspace_nonsticky_if_supplied
    (W : WorkspaceDensityCertificate) :
    W.nonStickyWorkspace :=
  W.nonStickyWorkspace_certified

theorem recursive_closure_preserves_verifier_if_supplied
    (C : RecursiveRuleClosure) :
    C.preservesVerifier :=
  C.preservesVerifier_certified

theorem recursive_closure_preserves_decompression_if_supplied
    (C : RecursiveRuleClosure) :
    C.preservesDecompressionCorrectness :=
  C.preservesDecompressionCorrectness_certified

theorem recursive_closure_rule_growth_polynomial_if_supplied
    (C : RecursiveRuleClosure) :
    C.ruleGrowthPolynomial :=
  C.ruleGrowthPolynomial_certified

theorem uniform_recursive_compresses_to_polynomial_word_if_supplied
    (U : UniformRecursiveCompressionSmoothing) :
    U.allFramesCompressToPolynomialWord :=
  U.allFramesCompressToPolynomialWord_certified

theorem uniform_recursive_rule_growth_polynomial_if_supplied
    (U : UniformRecursiveCompressionSmoothing) :
    U.allRuleGrowthPolynomial :=
  U.allRuleGrowthPolynomial_certified

theorem uniform_recursive_workspaces_nonsticky_if_supplied
    (U : UniformRecursiveCompressionSmoothing) :
    U.allWorkspacesNonSticky :=
  U.allWorkspacesNonSticky_certified

theorem uniform_recursive_moves_tracked_if_supplied
    (U : UniformRecursiveCompressionSmoothing) :
    U.everyMoveTrackedByRuleLog :=
  U.everyMoveTrackedByRuleLog_certified

theorem uniform_recursive_glitches_smoothable_or_classified_if_supplied
    (U : UniformRecursiveCompressionSmoothing) :
    U.everyGlitchSmoothableOrClassified :=
  U.everyGlitchSmoothableOrClassified_certified

end Complexity
end GrandChallenge
end Folder
