# Complete source: GRWTSK.NumberTheory.Moebius.ParityResidueVarianceObstructionConnections

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d141d25d7f0a6a180b5cd73bc94c4d9053c7866f` · SHA-256 `22a82b92c6a397a0b501e2f076823f4bd5118896b815611059bab287facefba3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original authorship/licenses.

Status: CONNECTION_ATLAS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #623.
-/
import GRWTSK.NumberTheory.Moebius.ParityResidueVarianceLargeModulusObstruction

/-!
# Connection atlas for the positive residue-variance obstruction

The large-modulus witness separates two kinds of external input:

* sources establishing positive residue variance or square-modulus Fourier
  energy at their natural larger scale;
* sources preserving cancellation in the exact signed expression
  `S_r^2 - D_r` strongly enough to supply the repository's nonzero-frequency
  budget.

A positive variance asymptotic is mathematically relevant, but it confirms the
large-modulus floor rather than repairing it.  Only an explicit
proof-producing signed adapter can re-enter the RH-E02 dependency path.

No named literature source is instantiated in this module.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
namespace ResidueVarianceObstructionConnections

/-- Generic adapter from an external or repository source to the exact signed
nonzero-frequency budget. -/
structure ToSignedSquareDiagonalBudgetAdapter
    (source : Prop) : Type where
  toExactNonzeroBudget :
    source → DyadicNaturalScaleNonzeroParityFourierBudget

/-- Generic downstream transport from a genuine signed repair and the separate
pointwise-Mertens zero-mode premise. -/
theorem naturalScaleCongruenceL1_of_signedAdapter
    {source : Prop}
    (bridge : ToSignedSquareDiagonalBudgetAdapter source)
    (hsource : source)
    (hMertens : OrdinaryMertensSquareRootPlusEpsilonEnvelope) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_nonzero
    hMertens (bridge.toExactNonzeroBudget hsource)

/-! ## Squarefree-density source -/

/-- Conservative source profile for the standard positive density of
squarefree integers. -/
structure SquarefreeDensityData where
  theoremStatement : Prop
  endpointConventionMatched : Prop
  lowerDensityGivesQuarterBound : Prop
  upperDensityGivesThreeQuarterBound : Prop
  everyLargeEndpointCoverage : Prop

def SquarefreeDensitySource
    (d : SquarefreeDensityData) : Prop :=
  d.theoremStatement ∧
    d.endpointConventionMatched ∧
    d.lowerDensityGivesQuarterBound ∧
    d.upperDensityGivesThreeQuarterBound ∧
    d.everyLargeEndpointCoverage

/-- Proof-producing adapter from a squarefree-density theorem to the explicit
mass window required by the obstruction. -/
structure SquarefreeDensityAdapter
    (d : SquarefreeDensityData) : Type where
  toMassWindow :
    SquarefreeDensitySource d →
      EventuallyQuarterThreeQuarterSquarefreeMass

/-- Elementary dyadic-growth source profile. -/
structure DyadicQuarterPowerGrowthData where
  theoremStatement : Prop
  exactSquareEndpoints : Prop
  quarterPowerIdentity : Prop
  exponentialOutgrowth : Prop
  allConstantsCovered : Prop

def DyadicQuarterPowerGrowthSource
    (d : DyadicQuarterPowerGrowthData) : Prop :=
  d.theoremStatement ∧
    d.exactSquareEndpoints ∧
    d.quarterPowerIdentity ∧
    d.exponentialOutgrowth ∧
    d.allConstantsCovered

structure DyadicQuarterPowerGrowthAdapter
    (d : DyadicQuarterPowerGrowthData) : Type where
  toGrowth :
    DyadicQuarterPowerGrowthSource d →
      DyadicQuarterPowerOutgrowth

/-- A squarefree-density source and dyadic-growth source, with actual adapters,
produce the conditional scope refutation. -/
theorem positiveVarianceBudget_refuted_of_adapters
    {density : SquarefreeDensityData}
    {growth : DyadicQuarterPowerGrowthData}
    (densityBridge : SquarefreeDensityAdapter density)
    (growthBridge : DyadicQuarterPowerGrowthAdapter growth)
    (hdensity : SquarefreeDensitySource density)
    (hgrowth : DyadicQuarterPowerGrowthSource growth) :
    ¬ DyadicNaturalScaleParityResidueVarianceDiagonalBudget :=
  not_dyadicNaturalScaleParityResidueVarianceDiagonalBudget
    (densityBridge.toMassWindow hdensity)
    (growthBridge.toGrowth hgrowth)

/-! ## Square-modulus large sieve -/

/-- Positive square-modulus large-sieve source profile.

A theorem at its natural `N+Q^3`-type scale can confirm the size of the
positive Fourier energy without supplying the smaller signed RH-E02 target. -/
structure SquareModulusLargeSieveObstructionData where
  theoremStatement : Prop
  coefficientFamilyMatched : Prop
  squareModuliMatched : Prop
  nonzeroFrequenciesMatched : Prop
  naturalLargeSieveScaleRetained : Prop
  positiveEnergyMainTermRetained : Prop
  signedSquareDiagonalCancellationBridge : Prop

def SquareModulusLargeSieveObstructionSource
    (d : SquareModulusLargeSieveObstructionData) : Prop :=
  d.theoremStatement ∧
    d.coefficientFamilyMatched ∧
    d.squareModuliMatched ∧
    d.nonzeroFrequenciesMatched ∧
    d.naturalLargeSieveScaleRetained ∧
    d.positiveEnergyMainTermRetained ∧
    d.signedSquareDiagonalCancellationBridge

abbrev SquareModulusLargeSieveSignedAdapter
    (d : SquareModulusLargeSieveObstructionData) :=
  ToSignedSquareDiagonalBudgetAdapter
    (SquareModulusLargeSieveObstructionSource d)

/-! ## Barban--Davenport--Halberstam / Montgomery--Hooley variance -/

/-- Residue-variance theorem profile.

The positive asymptotic/main term is retained explicitly.  A variance theorem
without a signed repair confirms the obstruction rather than solving it. -/
structure BarbanDavenportHalberstamData where
  theoremStatement : Prop
  arithmeticFunctionMatched : Prop
  squareModulusSubfamilyMatched : Prop
  parityAndHalfMapMatched : Prop
  zeroModeSubtractionMatched : Prop
  positiveVarianceMainTermRetained : Prop
  modulusRangeMatched : Prop
  signedSquareDiagonalCancellationBridge : Prop

def BarbanDavenportHalberstamSource
    (d : BarbanDavenportHalberstamData) : Prop :=
  d.theoremStatement ∧
    d.arithmeticFunctionMatched ∧
    d.squareModulusSubfamilyMatched ∧
    d.parityAndHalfMapMatched ∧
    d.zeroModeSubtractionMatched ∧
    d.positiveVarianceMainTermRetained ∧
    d.modulusRangeMatched ∧
    d.signedSquareDiagonalCancellationBridge

abbrev BarbanDavenportHalberstamSignedAdapter
    (d : BarbanDavenportHalberstamData) :=
  ToSignedSquareDiagonalBudgetAdapter
    (BarbanDavenportHalberstamSource d)

/-! ## Bombieri--Vinogradov / Elliott--Halberstam -/

/-- Distribution-in-progressions source profile. -/
structure BombieriVinogradovElliottHalberstamData where
  theoremStatement : Prop
  multiplicativeFunctionMatched : Prop
  squareModuliMatched : Prop
  residueDiscrepancyNormalizationMatched : Prop
  modulusLevelMatched : Prop
  parityRestrictionMatched : Prop
  averageToExactEndpointBridge : Prop
  discrepancyToSignedSquareDiagonalBridge : Prop

def BombieriVinogradovElliottHalberstamSource
    (d : BombieriVinogradovElliottHalberstamData) : Prop :=
  d.theoremStatement ∧
    d.multiplicativeFunctionMatched ∧
    d.squareModuliMatched ∧
    d.residueDiscrepancyNormalizationMatched ∧
    d.modulusLevelMatched ∧
    d.parityRestrictionMatched ∧
    d.averageToExactEndpointBridge ∧
    d.discrepancyToSignedSquareDiagonalBridge

abbrev BombieriVinogradovElliottHalberstamSignedAdapter
    (d : BombieriVinogradovElliottHalberstamData) :=
  ToSignedSquareDiagonalBudgetAdapter
    (BombieriVinogradovElliottHalberstamSource d)

/-! ## Squarefree numbers in arithmetic progressions -/

/-- Squarefree residue-distribution source profile for the explicit `mu^2`
diagonal. -/
structure SquarefreeArithmeticProgressionVarianceData where
  theoremStatement : Prop
  squarefreeIndicatorMatched : Prop
  squareModuliMatched : Prop
  parityAndHalfMapMatched : Prop
  varianceMainTermRetained : Prop
  FourierL1Conversion : Prop
  diagonalCancellationWithMobiusSquare : Prop

def SquarefreeArithmeticProgressionVarianceSource
    (d : SquarefreeArithmeticProgressionVarianceData) : Prop :=
  d.theoremStatement ∧
    d.squarefreeIndicatorMatched ∧
    d.squareModuliMatched ∧
    d.parityAndHalfMapMatched ∧
    d.varianceMainTermRetained ∧
    d.FourierL1Conversion ∧
    d.diagonalCancellationWithMobiusSquare

abbrev SquarefreeArithmeticProgressionSignedAdapter
    (d : SquarefreeArithmeticProgressionVarianceData) :=
  ToSignedSquareDiagonalBudgetAdapter
    (SquarefreeArithmeticProgressionVarianceSource d)

/-! ## Local Fourier / Gowers -/

/-- Local Fourier/Gowers source profile aimed directly at the signed
square-minus-diagonal expression. -/
structure LocalFourierGowersSignedData where
  theoremStatement : Prop
  nonzeroLinearPhasesCovered : Prop
  squareModulusDenominatorsCovered : Prop
  parityRestrictionMatched : Prop
  endpointAggregationMatched : Prop
  quadraticSignedExpressionMatched : Prop
  diagonalCancellationRetained : Prop

def LocalFourierGowersSignedSource
    (d : LocalFourierGowersSignedData) : Prop :=
  d.theoremStatement ∧
    d.nonzeroLinearPhasesCovered ∧
    d.squareModulusDenominatorsCovered ∧
    d.parityRestrictionMatched ∧
    d.endpointAggregationMatched ∧
    d.quadraticSignedExpressionMatched ∧
    d.diagonalCancellationRetained

abbrev LocalFourierGowersSignedAdapter
    (d : LocalFourierGowersSignedData) :=
  ToSignedSquareDiagonalBudgetAdapter
    (LocalFourierGowersSignedSource d)

/-! ## Uniform L-function restriction -/

/-- Dirichlet/Hecke L-function source profile.

A zero-free region alone does not populate the final signed bridge. -/
structure LFunctionSignedDispersionData where
  theoremStatement : Prop
  conductorUniformity : Prop
  squareModulusCharacterFamilyMatched : Prop
  onePointMobiusTwistConsequence : Prop
  additiveCharacterTransport : Prop
  meanSquareOrDispersionBridge : Prop
  signedSquareDiagonalCancellationBridge : Prop

def LFunctionSignedDispersionSource
    (d : LFunctionSignedDispersionData) : Prop :=
  d.theoremStatement ∧
    d.conductorUniformity ∧
    d.squareModulusCharacterFamilyMatched ∧
    d.onePointMobiusTwistConsequence ∧
    d.additiveCharacterTransport ∧
    d.meanSquareOrDispersionBridge ∧
    d.signedSquareDiagonalCancellationBridge

abbrev LFunctionSignedDispersionAdapter
    (d : LFunctionSignedDispersionData) :=
  ToSignedSquareDiagonalBudgetAdapter
    (LFunctionSignedDispersionSource d)

/-! ## Function-field analogue -/

/-- Function-field Chowla/AP source profile. -/
structure FunctionFieldSignedDispersionData where
  theoremStatement : Prop
  arithmeticProgressionDistribution : Prop
  shiftOrFrequencyUniformity : Prop
  squareModulusAnalogue : Prop
  signedDiagonalCancellationAnalogue : Prop
  integerTransportTheorem : Prop
  naturalScaleNormalizationBridge : Prop

def FunctionFieldSignedDispersionSource
    (d : FunctionFieldSignedDispersionData) : Prop :=
  d.theoremStatement ∧
    d.arithmeticProgressionDistribution ∧
    d.shiftOrFrequencyUniformity ∧
    d.squareModulusAnalogue ∧
    d.signedDiagonalCancellationAnalogue ∧
    d.integerTransportTheorem ∧
    d.naturalScaleNormalizationBridge

abbrev FunctionFieldSignedDispersionAdapter
    (d : FunctionFieldSignedDispersionData) :=
  ToSignedSquareDiagonalBudgetAdapter
    (FunctionFieldSignedDispersionSource d)

/-! ## Exact residue/Fourier architecture -/

/-- Architecture profile for exact finite residue/Fourier decompositions such
as the Goldbach rational-arc residue models.

The profile supplies no Möbius estimate by itself. -/
structure ExactResidueFourierArchitectureData where
  exactResiduePartition : Prop
  exactFourierReconstruction : Prop
  signedResidualBoundary : Prop
  arithmeticSourcePreserved : Prop
  analyticEstimateSeparated : Prop

/-- A separate arithmetic adapter is required before a residue/Fourier
architecture can enter the signed Möbius target. -/
structure ExactResidueFourierToSignedAdapter
    (architecture : ExactResidueFourierArchitectureData) : Type where
  arithmeticSourceBridge : Prop
  toSignedBudget :
    architecture.exactResiduePartition →
    architecture.exactFourierReconstruction →
    architecture.signedResidualBoundary →
    architecture.arithmeticSourcePreserved →
    architecture.analyticEstimateSeparated →
    arithmeticSourceBridge →
    DyadicNaturalScaleNonzeroParityFourierBudget

/-! ## Hostile boundaries -/

/-- A positive variance theorem and a signed cancellation theorem are distinct
objects. -/
structure PositiveVarianceToSignedCancellationAdapter
    (positiveVariance signedCancellation : Prop) : Type where
  upgrade : positiveVariance → signedCancellation

/-- A natural larger large-sieve/BDH scale does not become the repository's
smaller natural-scale budget implicitly. -/
structure NaturalVarianceScaleToRHScaleAdapter
    (naturalVarianceScale rhScale : Prop) : Type where
  rescale : naturalVarianceScale → rhScale

/-- A theorem controlling the diagonal alone does not control
`S_r^2-D_r`. -/
structure DiagonalToSignedDifferenceAdapter
    (diagonal signedDifference : Prop) : Type where
  combine : diagonal → signedDifference

end ResidueVarianceObstructionConnections
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.ResidueVarianceObstructionConnections.positiveVarianceBudget_refuted_of_adapters
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.ResidueVarianceObstructionConnections.naturalScaleCongruenceL1_of_signedAdapter
```
