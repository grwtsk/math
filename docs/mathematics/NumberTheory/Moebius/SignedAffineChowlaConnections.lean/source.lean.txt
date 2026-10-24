/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original authorship/licenses.

Status: CONNECTION_ATLAS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #629.
-/
import GRWTSK.NumberTheory.Moebius.SignedResidueConvolutionShiftAffine
import GRWTSK.NumberTheory.Moebius.ParityResidueVarianceObstructionConnections
import GRWTSK.NumberTheory.Moebius.SquareModulusAPConjectureJunction

/-!
# Connection atlas for the growing-shift affine Chowla supplier

The exact target is

`DyadicNaturalScaleGrowingShiftAffineChowlaBudget`.

Its summands are binary Möbius correlations in the affine forms

`u` and `u+2h`,

with growing positive shift `h`, growing square modulus `d^2`, nonzero additive
frequency `k`, parity restriction, exact endpoint support, and one dyadic-family
constant.

This module lifts the generic signed adapters from the residue-variance
obstruction atlas through the exact supplier equivalence, and types the source
families not previously attached to this concrete affine interface:

* fixed-form ordinary binary Chowla;
* corrected Elliott at fixed form/residue scope;
* logarithmically averaged binary Chowla;
* Möbius--nilsequence / Sarnak structured-phase orthogonality;
* the repository's signed cross-shift dispersion interface;
* the repository's scale-dependent one-bounded Abel response.

No named theorem receives an adapter value.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
namespace SignedAffineChowlaConnections

open SquareModulusAPConjectureJunction
open ResidueVarianceObstructionConnections

/-- Generic proof-producing adapter into the exact growing-shift affine Chowla
budget. -/
structure ToGrowingShiftAffineChowlaBudgetAdapter
    (source : Prop) : Type where
  toAffineBudget :
    source → DyadicNaturalScaleGrowingShiftAffineChowlaBudget

/-- Lift any existing adapter to the exact nonzero parity/Fourier budget into
the source-identical growing-shift affine formulation. -/
def liftSignedSquareDiagonalAdapter
    {source : Prop}
    (bridge : ToSignedSquareDiagonalBudgetAdapter source) :
    ToGrowingShiftAffineChowlaBudgetAdapter source where
  toAffineBudget := by
    intro hsource
    have hNonzero : DyadicNaturalScaleNonzeroParityFourierBudget :=
      bridge.toExactNonzeroBudget hsource
    have hSigned : DyadicNaturalScaleSignedResidueConvolutionBudget :=
      dyadicNaturalScaleSignedResidueConvolutionBudget_iff_nonzeroParityFourier.mpr
        hNonzero
    exact
      dyadicNaturalScaleGrowingShiftAffineChowlaBudget_iff_signedResidueConvolution.mpr
        hSigned

/-- Generic downstream transport from an actual affine-family adapter and the
separate pointwise-Mertens zero-mode premise. -/
theorem naturalScaleCongruenceL1_of_affineAdapter
    {source : Prop}
    (bridge : ToGrowingShiftAffineChowlaBudgetAdapter source)
    (hsource : source)
    (hMertens : OrdinaryMertensSquareRootPlusEpsilonEnvelope) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftAffineChowla
    hMertens (bridge.toAffineBudget hsource)

/-! ## Existing signed atlas families -/

/-- Any actual square-modulus large-sieve signed adapter from the parent atlas
lifts to the affine-family target. -/
def liftSquareModulusLargeSieveSignedAdapter
    {d : SquareModulusLargeSieveObstructionData}
    (bridge : SquareModulusLargeSieveSignedAdapter d) :
    ToGrowingShiftAffineChowlaBudgetAdapter
      (SquareModulusLargeSieveObstructionSource d) :=
  liftSignedSquareDiagonalAdapter bridge

/-- Any actual signed BDH/Montgomery--Hooley adapter lifts likewise. -/
def liftBarbanDavenportHalberstamSignedAdapter
    {d : BarbanDavenportHalberstamData}
    (bridge : BarbanDavenportHalberstamSignedAdapter d) :
    ToGrowingShiftAffineChowlaBudgetAdapter
      (BarbanDavenportHalberstamSource d) :=
  liftSignedSquareDiagonalAdapter bridge

/-- Any actual signed Bombieri--Vinogradov/Elliott--Halberstam adapter lifts
likewise. -/
def liftBombieriVinogradovElliottHalberstamSignedAdapter
    {d : BombieriVinogradovElliottHalberstamData}
    (bridge : BombieriVinogradovElliottHalberstamSignedAdapter d) :
    ToGrowingShiftAffineChowlaBudgetAdapter
      (BombieriVinogradovElliottHalberstamSource d) :=
  liftSignedSquareDiagonalAdapter bridge

/-- Any actual squarefree-AP signed adapter lifts likewise. -/
def liftSquarefreeArithmeticProgressionSignedAdapter
    {d : SquarefreeArithmeticProgressionVarianceData}
    (bridge : SquarefreeArithmeticProgressionSignedAdapter d) :
    ToGrowingShiftAffineChowlaBudgetAdapter
      (SquarefreeArithmeticProgressionVarianceSource d) :=
  liftSignedSquareDiagonalAdapter bridge

/-- Any actual local-Fourier/Gowers signed adapter lifts likewise. -/
def liftLocalFourierGowersSignedAdapter
    {d : LocalFourierGowersSignedData}
    (bridge : LocalFourierGowersSignedAdapter d) :
    ToGrowingShiftAffineChowlaBudgetAdapter
      (LocalFourierGowersSignedSource d) :=
  liftSignedSquareDiagonalAdapter bridge

/-- Any actual L-function signed-dispersion adapter lifts likewise. -/
def liftLFunctionSignedDispersionAdapter
    {d : LFunctionSignedDispersionData}
    (bridge : LFunctionSignedDispersionAdapter d) :
    ToGrowingShiftAffineChowlaBudgetAdapter
      (LFunctionSignedDispersionSource d) :=
  liftSignedSquareDiagonalAdapter bridge

/-- Any actual function-field-to-integer signed adapter lifts likewise. -/
def liftFunctionFieldSignedDispersionAdapter
    {d : FunctionFieldSignedDispersionData}
    (bridge : FunctionFieldSignedDispersionAdapter d) :
    ToGrowingShiftAffineChowlaBudgetAdapter
      (FunctionFieldSignedDispersionSource d) :=
  liftSignedSquareDiagonalAdapter bridge

/-! ## Recently closed fixed-form ordinary binary Chowla -/

/-- Fixed-form ordinary binary Chowla data plus every additional theorem needed
to reach the exact growing affine family.

The fixed theorem is retained through `fixedData`; the remaining fields are
not consequences of that theorem by naming alone. -/
structure FixedFormBinaryChowlaGrowingAffineData where
  fixedData : FixedFormBinaryChowlaData
  additivePhaseCompatibility : Prop
  growingShiftUniformity : Prop
  growingSquareModulusUniformity : Prop
  nonzeroFrequencyUniformity : Prop
  parityRestrictionUniformity : Prop
  exactEndpointSupportUniformity : Prop
  oneConstantPerExponent : Prop
  frequencyModulusEndpointAggregation : Prop

/-- Conservative source proposition for a fixed-form result plus all missing
growing-family bridges. -/
def FixedFormBinaryChowlaGrowingAffineSource
    (d : FixedFormBinaryChowlaGrowingAffineData) : Prop :=
  FixedFormBinaryChowlaSource d.fixedData ∧
    d.additivePhaseCompatibility ∧
    d.growingShiftUniformity ∧
    d.growingSquareModulusUniformity ∧
    d.nonzeroFrequencyUniformity ∧
    d.parityRestrictionUniformity ∧
    d.exactEndpointSupportUniformity ∧
    d.oneConstantPerExponent ∧
    d.frequencyModulusEndpointAggregation

abbrev FixedFormBinaryChowlaGrowingAffineAdapter
    (d : FixedFormBinaryChowlaGrowingAffineData) :=
  ToGrowingShiftAffineChowlaBudgetAdapter
    (FixedFormBinaryChowlaGrowingAffineSource d)

/-! ## Corrected Elliott -/

/-- Corrected-Elliott source data at fixed form/residue scope, with the
correction and nonpretentiousness uniformity kept explicit. -/
structure CorrectedElliottGrowingAffineData where
  fixedData : FixedResidueCorrectedElliottData
  additivePhaseCompatibility : Prop
  growingAffineUniformity : Prop
  growingSquareModulusUniformity : Prop
  nonzeroFrequencyUniformity : Prop
  correctionUniformity : Prop
  nonpretentiousnessUniformity : Prop
  parityEndpointAggregation : Prop

/-- Conservative corrected-Elliott source proposition. -/
def CorrectedElliottGrowingAffineSource
    (d : CorrectedElliottGrowingAffineData) : Prop :=
  FixedResidueCorrectedElliottSource d.fixedData ∧
    d.additivePhaseCompatibility ∧
    d.growingAffineUniformity ∧
    d.growingSquareModulusUniformity ∧
    d.nonzeroFrequencyUniformity ∧
    d.correctionUniformity ∧
    d.nonpretentiousnessUniformity ∧
    d.parityEndpointAggregation

abbrev CorrectedElliottGrowingAffineAdapter
    (d : CorrectedElliottGrowingAffineData) :=
  ToGrowingShiftAffineChowlaBudgetAdapter
    (CorrectedElliottGrowingAffineSource d)

/-! ## Logarithmically averaged binary Chowla -/

/-- Logarithmically averaged binary Chowla profile.

The averaging-convention conversion and growing-family theorem remain separate
fields. -/
structure LogAveragedBinaryChowlaGrowingAffineData where
  theoremStatement : Prop
  fixedAffineDataRetained : Prop
  logarithmicAverageRetained : Prop
  logarithmicToOrdinaryFiniteAverage : Prop
  fixedToGrowingShiftUniformity : Prop
  additivePhaseUniformity : Prop
  squareModulusFrequencyUniformity : Prop
  parityEndpointAggregation : Prop

/-- Conservative logarithmic-Chowla source proposition. -/
def LogAveragedBinaryChowlaGrowingAffineSource
    (d : LogAveragedBinaryChowlaGrowingAffineData) : Prop :=
  d.theoremStatement ∧
    d.fixedAffineDataRetained ∧
    d.logarithmicAverageRetained ∧
    d.logarithmicToOrdinaryFiniteAverage ∧
    d.fixedToGrowingShiftUniformity ∧
    d.additivePhaseUniformity ∧
    d.squareModulusFrequencyUniformity ∧
    d.parityEndpointAggregation

abbrev LogAveragedBinaryChowlaGrowingAffineAdapter
    (d : LogAveragedBinaryChowlaGrowingAffineData) :=
  ToGrowingShiftAffineChowlaBudgetAdapter
    (LogAveragedBinaryChowlaGrowingAffineSource d)

/-! ## Möbius--nilsequence / Sarnak structured-phase input -/

/-- One-point structured-phase orthogonality profile.

A one-point theorem does not become the signed binary affine family without the
explicit binary upgrade and aggregation fields. -/
structure MobiusNilsequenceGrowingAffineData where
  theoremStatement : Prop
  linearAdditivePhaseIncluded : Prop
  complexityUniformity : Prop
  denominatorUniformity : Prop
  scaleUniformity : Prop
  onePointToSignedBinaryUpgrade : Prop
  growingShiftUniformity : Prop
  parityEndpointAggregation : Prop

/-- Conservative nilsequence/Sarnak source proposition. -/
def MobiusNilsequenceGrowingAffineSource
    (d : MobiusNilsequenceGrowingAffineData) : Prop :=
  d.theoremStatement ∧
    d.linearAdditivePhaseIncluded ∧
    d.complexityUniformity ∧
    d.denominatorUniformity ∧
    d.scaleUniformity ∧
    d.onePointToSignedBinaryUpgrade ∧
    d.growingShiftUniformity ∧
    d.parityEndpointAggregation

abbrev MobiusNilsequenceGrowingAffineAdapter
    (d : MobiusNilsequenceGrowingAffineData) :=
  ToGrowingShiftAffineChowlaBudgetAdapter
    (MobiusNilsequenceGrowingAffineSource d)

/-! ## Repository #476 signed cross-shift dispersion -/

/-- Source profile for the repository's signed cross-shift dispersion route.

The exact arithmetic-source identification and normalization conversion are
kept explicit. -/
structure RepositoryCrossShiftDispersionData where
  theoremStatement : Prop
  signedDepthSliceRetained : Prop
  growingShiftFamilyRetained : Prop
  triangularSupportRetained : Prop
  AbelWeightsRetained : Prop
  depthSliceToAffineChowlaIdentification : Prop
  dispersionNormToExactSignedAggregate : Prop
  dyadicNormalizationMatched : Prop

/-- Conservative repository cross-shift source proposition. -/
def RepositoryCrossShiftDispersionSource
    (d : RepositoryCrossShiftDispersionData) : Prop :=
  d.theoremStatement ∧
    d.signedDepthSliceRetained ∧
    d.growingShiftFamilyRetained ∧
    d.triangularSupportRetained ∧
    d.AbelWeightsRetained ∧
    d.depthSliceToAffineChowlaIdentification ∧
    d.dispersionNormToExactSignedAggregate ∧
    d.dyadicNormalizationMatched

abbrev RepositoryCrossShiftDispersionAdapter
    (d : RepositoryCrossShiftDispersionData) :=
  ToGrowingShiftAffineChowlaBudgetAdapter
    (RepositoryCrossShiftDispersionSource d)

/-! ## Repository #499 one-bounded Abel response -/

/-- Source profile for the normalized one-bounded response family.

One-boundedness alone is not a cancellation theorem; every source and family
uniformity bridge remains explicit. -/
structure RepositoryNormalizedAbelResponseData where
  theoremStatement : Prop
  oneBoundedResponse : Prop
  exactDepthSliceRewrite : Prop
  responseDependsOnScaleDepthBase : Prop
  responseToAffinePhaseIdentification : Prop
  growingFamilyCancellationTheorem : Prop
  endpointFrequencyModulusAggregation : Prop

/-- Conservative normalized-response source proposition. -/
def RepositoryNormalizedAbelResponseSource
    (d : RepositoryNormalizedAbelResponseData) : Prop :=
  d.theoremStatement ∧
    d.oneBoundedResponse ∧
    d.exactDepthSliceRewrite ∧
    d.responseDependsOnScaleDepthBase ∧
    d.responseToAffinePhaseIdentification ∧
    d.growingFamilyCancellationTheorem ∧
    d.endpointFrequencyModulusAggregation

abbrev RepositoryNormalizedAbelResponseAdapter
    (d : RepositoryNormalizedAbelResponseData) :=
  ToGrowingShiftAffineChowlaBudgetAdapter
    (RepositoryNormalizedAbelResponseSource d)

/-! ## Hostile boundaries -/

/-- Fixed-form estimates and the complete growing affine family are separate
objects. -/
structure FixedFormToGrowingAffineAdapter
    (fixed growing : Prop) : Type where
  upgrade : fixed → growing

/-- Logarithmic averaging and the ordinary finite endpoint average are separate
objects. -/
structure LogarithmicToOrdinaryAffineAdapter
    (logarithmic ordinary : Prop) : Type where
  convert : logarithmic → ordinary

/-- One-point structured-phase orthogonality and signed binary convolution are
separate objects. -/
structure OnePointToSignedBinaryAffineAdapter
    (onePoint signedBinary : Prop) : Type where
  upgrade : onePoint → signedBinary

/-- Average/almost-all family control and the exact required endpoint aggregate
are separate objects. -/
structure AveragedToExactAffineEndpointAdapter
    (averaged exactEndpoint : Prop) : Type where
  upgrade : averaged → exactEndpoint

/-- A source-specific bounded response and the exact affine Chowla family are
separate objects. -/
structure AbelResponseToAffineChowlaAdapter
    (response affine : Prop) : Type where
  identify : response → affine

end SignedAffineChowlaConnections
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.SignedAffineChowlaConnections.naturalScaleCongruenceL1_of_affineAdapter
