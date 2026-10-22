/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original authorship/licenses.

Status: CONNECTION_ATLAS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #611.
-/
import GRWTSK.NumberTheory.Moebius.ParityFourierZeroNonzeroSplit
import GRWTSK.NumberTheory.Moebius.AdditiveTwistConnectionAtlas

/-!
# Connection atlas for the zero/nonzero parity-Fourier split

The exact analytic route is now separated into:

* `DyadicParityMertensSquareRootEnergy` for the zero Fourier mode;
* `DyadicNaturalScaleNonzeroParityFourierBudget` for nonzero frequencies.

This module types the neighboring conjecture/formalization families that can
potentially supply either branch.

No theorem name, issue number, or literature citation is itself mathematical
evidence.  Every positive transport requires a proof-producing adapter value.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
namespace ParityFourierZeroNonzeroConnections

/-- Any source for the zero mode must actually prove the parity-Mertens
square-root-energy statement. -/
structure ToParityMertensSquareRootEnergyAdapter
    (source : Prop) : Type where
  toParityMertens :
    source → DyadicParityMertensSquareRootEnergy

/-- Any source for the genuinely oscillatory modes must actually prove the
nonzero-frequency natural-scale budget. -/
structure ToNonzeroParityFourierBudgetAdapter
    (source : Prop) : Type where
  toNonzeroBudget :
    source → DyadicNaturalScaleNonzeroParityFourierBudget

/-- A source and actual zero-mode adapter supply the zero-mode endpoint
budget. -/
theorem zeroModeBudget_of_adapter
    {source : Prop}
    (bridge : ToParityMertensSquareRootEnergyAdapter source)
    (hsource : source) :
    DyadicNaturalScaleZeroModeParityFourierBudget :=
  zeroModeParityFourierBudget_of_parityMertensSquareRootEnergy
    (bridge.toParityMertens hsource)

/-- A source and actual zero-mode adapter also supply ordinary Mertens
square-root energy. -/
theorem ordinaryMertensEnergy_of_zeroModeAdapter
    {source : Prop}
    (bridge : ToParityMertensSquareRootEnergyAdapter source)
    (hsource : source) :
    DyadicOrdinaryMertensSquareRootEnergy :=
  ordinaryMertensSquareRootEnergy_of_parity
    (bridge.toParityMertens hsource)

/-- A zero-mode source and a nonzero-frequency source, together with their
actual adapters, supply the natural-scale congruence-L1 target. -/
theorem naturalScaleCongruenceL1_of_adapters
    {zeroSource nonzeroSource : Prop}
    (zeroBridge : ToParityMertensSquareRootEnergyAdapter zeroSource)
    (nonzeroBridge : ToNonzeroParityFourierBudgetAdapter nonzeroSource)
    (hzero : zeroSource)
    (hnonzero : nonzeroSource) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_parityMertens_and_nonzero
    (zeroBridge.toParityMertens hzero)
    (nonzeroBridge.toNonzeroBudget hnonzero)

/-! ## Mertens / RH-scale sources -/

/-- Generic square-root Mertens envelope profile.

An ordinary Mertens estimate still needs a parity localization theorem before
it supplies the zero mode. -/
structure MertensSquareRootEnvelopeData where
  theoremStatement : Prop
  allLargeEndpoints : Prop
  squareRootPlusEpsilonScale : Prop
  constantsUniformOnDyadicBlocks : Prop
  parityLocalizationTheorem : Prop

def MertensSquareRootEnvelopeSource
    (d : MertensSquareRootEnvelopeData) : Prop :=
  d.theoremStatement ∧
    d.allLargeEndpoints ∧
    d.squareRootPlusEpsilonScale ∧
    d.constantsUniformOnDyadicBlocks ∧
    d.parityLocalizationTheorem

abbrev MertensSquareRootEnvelopeAdapter
    (d : MertensSquareRootEnvelopeData) :=
  ToParityMertensSquareRootEnergyAdapter
    (MertensSquareRootEnvelopeSource d)

/-- Profile for the repository's #153-style half-damping Mertens supplier.

A square-root/logarithmic ordinary-Mertens envelope is not promoted to the
parity zero mode without an explicit localization bridge. -/
structure HalfDampingMertensData where
  theoremStatement : Prop
  squareRootLogEnvelope : Prop
  thresholdAndFiniteRangeCovered : Prop
  endpointConventionMatched : Prop
  parityLocalizationBridge : Prop
  dyadicSquareEnergyBridge : Prop

def HalfDampingMertensSource
    (d : HalfDampingMertensData) : Prop :=
  d.theoremStatement ∧
    d.squareRootLogEnvelope ∧
    d.thresholdAndFiniteRangeCovered ∧
    d.endpointConventionMatched ∧
    d.parityLocalizationBridge ∧
    d.dyadicSquareEnergyBridge

abbrev HalfDampingMertensAdapter
    (d : HalfDampingMertensData) :=
  ToParityMertensSquareRootEnergyAdapter
    (HalfDampingMertensSource d)

/-- Profile for the repository's #154-style power-envelope route.

The general condition `beta < 5/6` is intentionally not encoded as sufficient
for the zero mode.  A square-root-plus-epsilon family must be separately
provided. -/
structure MertensPowerEnvelopeData where
  theoremStatement : Prop
  powerEnvelope : Prop
  betaDomainRetained : Prop
  squareRootPlusEpsilonFamily : Prop
  parityLocalizationBridge : Prop
  dyadicSquareEnergyBridge : Prop

def MertensPowerEnvelopeSource
    (d : MertensPowerEnvelopeData) : Prop :=
  d.theoremStatement ∧
    d.powerEnvelope ∧
    d.betaDomainRetained ∧
    d.squareRootPlusEpsilonFamily ∧
    d.parityLocalizationBridge ∧
    d.dyadicSquareEnergyBridge

abbrev MertensPowerEnvelopeAdapter
    (d : MertensPowerEnvelopeData) :=
  ToParityMertensSquareRootEnergyAdapter
    (MertensPowerEnvelopeSource d)

/-- Weak-Mertens-style quadratic source profile.

Global/integrated square information needs localization to the actual parity
prefixes before it supplies this zero mode. -/
structure WeakMertensQuadraticData where
  theoremStatement : Prop
  quadraticMertensControl : Prop
  allScaleNormalizationMatched : Prop
  localizationToParityPrefixes : Prop
  pointwiseOrDyadicEnergyUpgrade : Prop

def WeakMertensQuadraticSource
    (d : WeakMertensQuadraticData) : Prop :=
  d.theoremStatement ∧
    d.quadraticMertensControl ∧
    d.allScaleNormalizationMatched ∧
    d.localizationToParityPrefixes ∧
    d.pointwiseOrDyadicEnergyUpgrade

abbrev WeakMertensQuadraticAdapter
    (d : WeakMertensQuadraticData) :=
  ToParityMertensSquareRootEnergyAdapter
    (WeakMertensQuadraticSource d)

/-- Gonek--Hejhal / negative derivative moment source profile.

A spectral moment statement needs both an explicit-formula bridge and
localization to parity prefixes. -/
structure GonekHejhalMertensData where
  theoremStatement : Prop
  negativeDerivativeMomentControl : Prop
  explicitFormulaToMertens : Prop
  localizationToParityPrefixes : Prop
  dyadicSquareEnergyBridge : Prop

def GonekHejhalMertensSource
    (d : GonekHejhalMertensData) : Prop :=
  d.theoremStatement ∧
    d.negativeDerivativeMomentControl ∧
    d.explicitFormulaToMertens ∧
    d.localizationToParityPrefixes ∧
    d.dyadicSquareEnergyBridge

abbrev GonekHejhalMertensAdapter
    (d : GonekHejhalMertensData) :=
  ToParityMertensSquareRootEnergyAdapter
    (GonekHejhalMertensSource d)

/-- Repository #609-style boundary Mertens square-energy profile.

The moving-window/tail energy is a nearby quadratic object but requires a
proved comparison to the parity zero mode. -/
structure BoundaryMertensSquareEnergyData where
  theoremStatement : Prop
  movingWindowSquareEnergy : Prop
  tailSquareEnergy : Prop
  ordinaryMertensDifferenceIdentity : Prop
  boundaryToParityZeroModeComparison : Prop

def BoundaryMertensSquareEnergySource
    (d : BoundaryMertensSquareEnergyData) : Prop :=
  d.theoremStatement ∧
    d.movingWindowSquareEnergy ∧
    d.tailSquareEnergy ∧
    d.ordinaryMertensDifferenceIdentity ∧
    d.boundaryToParityZeroModeComparison

abbrev BoundaryMertensSquareEnergyAdapter
    (d : BoundaryMertensSquareEnergyData) :=
  ToParityMertensSquareRootEnergyAdapter
    (BoundaryMertensSquareEnergySource d)

/-- A possible bridge from the ordinary dyadic Mertens square-root statement
to the canonical RH target.  No value is constructed here. -/
structure OrdinaryMertensToRHAdapter : Type where
  toRH :
    DyadicOrdinaryMertensSquareRootEnergy → _root_.RiemannHypothesis

/-! ## Nonzero-frequency sources -/

/-- Local Fourier/Gowers source profile specialized to the nonzero frequencies.

Average-in-endpoint statements remain insufficient until an every-endpoint or
matching aggregate theorem is supplied. -/
structure LocalFourierGowersNonzeroData where
  theoremStatement : Prop
  nonzeroLinearPhasesCovered : Prop
  squareModulusDenominatorsCovered : Prop
  frequencyUniformity : Prop
  endpointRangeMatched : Prop
  averagedCoverageMatched : Prop
  parityRestrictionMatched : Prop
  quadraticMeanSquareBridge : Prop

def LocalFourierGowersNonzeroSource
    (d : LocalFourierGowersNonzeroData) : Prop :=
  d.theoremStatement ∧
    d.nonzeroLinearPhasesCovered ∧
    d.squareModulusDenominatorsCovered ∧
    d.frequencyUniformity ∧
    d.endpointRangeMatched ∧
    d.averagedCoverageMatched ∧
    d.parityRestrictionMatched ∧
    d.quadraticMeanSquareBridge

abbrev LocalFourierGowersNonzeroAdapter
    (d : LocalFourierGowersNonzeroData) :=
  ToNonzeroParityFourierBudgetAdapter
    (LocalFourierGowersNonzeroSource d)

/-- Square-modulus large-sieve source profile.

This is the most literal frequency/modulus aggregation interface for the
nonzero branch. -/
structure SquareModulusLargeSieveData where
  theoremStatement : Prop
  coefficientFamilyMatched : Prop
  squareModuliMatched : Prop
  allNonzeroFrequenciesCovered : Prop
  modulusRangeMatched : Prop
  endpointRangeMatched : Prop
  paritySplitMatched : Prop
  lossWithinNaturalScaleBudget : Prop

def SquareModulusLargeSieveSource
    (d : SquareModulusLargeSieveData) : Prop :=
  d.theoremStatement ∧
    d.coefficientFamilyMatched ∧
    d.squareModuliMatched ∧
    d.allNonzeroFrequenciesCovered ∧
    d.modulusRangeMatched ∧
    d.endpointRangeMatched ∧
    d.paritySplitMatched ∧
    d.lossWithinNaturalScaleBudget

abbrev SquareModulusLargeSieveAdapter
    (d : SquareModulusLargeSieveData) :=
  ToNonzeroParityFourierBudgetAdapter
    (SquareModulusLargeSieveSource d)

/-- Bombieri--Vinogradov / dispersion source profile for the nonzero branch. -/
structure BombieriVinogradovNonzeroData where
  theoremStatement : Prop
  multiplicativeCoefficientScopeMatched : Prop
  modulusAverageMatched : Prop
  squareModulusSubfamilyMatched : Prop
  additiveFrequencyConversion : Prop
  parityQuadraticConversion : Prop
  naturalScaleLossMatched : Prop

def BombieriVinogradovNonzeroSource
    (d : BombieriVinogradovNonzeroData) : Prop :=
  d.theoremStatement ∧
    d.multiplicativeCoefficientScopeMatched ∧
    d.modulusAverageMatched ∧
    d.squareModulusSubfamilyMatched ∧
    d.additiveFrequencyConversion ∧
    d.parityQuadraticConversion ∧
    d.naturalScaleLossMatched

abbrev BombieriVinogradovNonzeroAdapter
    (d : BombieriVinogradovNonzeroData) :=
  ToNonzeroParityFourierBudgetAdapter
    (BombieriVinogradovNonzeroSource d)

/-- Möbius--nilsequence / structured-phase source profile for nonzero
frequencies. -/
structure NilsequenceNonzeroData where
  theoremStatement : Prop
  linearPhaseCaseMatched : Prop
  frequencyUniformity : Prop
  modulusDenominatorUniformity : Prop
  quantitativeRateMatched : Prop
  parityRestrictionMatched : Prop
  meanSquareAggregationBridge : Prop

def NilsequenceNonzeroSource
    (d : NilsequenceNonzeroData) : Prop :=
  d.theoremStatement ∧
    d.linearPhaseCaseMatched ∧
    d.frequencyUniformity ∧
    d.modulusDenominatorUniformity ∧
    d.quantitativeRateMatched ∧
    d.parityRestrictionMatched ∧
    d.meanSquareAggregationBridge

abbrev NilsequenceNonzeroAdapter
    (d : NilsequenceNonzeroData) :=
  ToNonzeroParityFourierBudgetAdapter
    (NilsequenceNonzeroSource d)

/-- Uniform Dirichlet/Hecke L-function analytic-restriction source profile.

A zero-free region is not itself the required nonzero-frequency mean-square
estimate. -/
structure LFunctionRestrictionNonzeroData where
  theoremStatement : Prop
  conductorUniformity : Prop
  zeroFreeOrAnalyticRestriction : Prop
  onePointMobiusTwistConsequence : Prop
  additiveCharacterTransport : Prop
  nonzeroFrequencyMeanSquareBridge : Prop
  squareModulusRangeMatched : Prop

def LFunctionRestrictionNonzeroSource
    (d : LFunctionRestrictionNonzeroData) : Prop :=
  d.theoremStatement ∧
    d.conductorUniformity ∧
    d.zeroFreeOrAnalyticRestriction ∧
    d.onePointMobiusTwistConsequence ∧
    d.additiveCharacterTransport ∧
    d.nonzeroFrequencyMeanSquareBridge ∧
    d.squareModulusRangeMatched

abbrev LFunctionRestrictionNonzeroAdapter
    (d : LFunctionRestrictionNonzeroData) :=
  ToNonzeroParityFourierBudgetAdapter
    (LFunctionRestrictionNonzeroSource d)

/-- Function-field Chowla/AP source profile for the nonzero branch. -/
structure FunctionFieldNonzeroData where
  theoremStatement : Prop
  arithmeticProgressionDistribution : Prop
  shiftOrFrequencyUniformity : Prop
  squareModulusAnalogue : Prop
  integerTransportTheorem : Prop
  naturalScaleBudgetBridge : Prop

def FunctionFieldNonzeroSource
    (d : FunctionFieldNonzeroData) : Prop :=
  d.theoremStatement ∧
    d.arithmeticProgressionDistribution ∧
    d.shiftOrFrequencyUniformity ∧
    d.squareModulusAnalogue ∧
    d.integerTransportTheorem ∧
    d.naturalScaleBudgetBridge

abbrev FunctionFieldNonzeroAdapter
    (d : FunctionFieldNonzeroData) :=
  ToNonzeroParityFourierBudgetAdapter
    (FunctionFieldNonzeroSource d)

/-! ## Scope boundaries -/

/-- A square-root ordinary Mertens statement and its parity-localized version
remain distinct until a theorem connects them. -/
structure OrdinaryToParityMertensAdapter
    (ordinary parity : Prop) : Type where
  localize : ordinary → parity

/-- Pointwise Fourier bounds and a modulus-frequency mean-square budget remain
distinct. -/
structure PointwiseToMeanSquareFourierAdapter
    (pointwise meanSquare : Prop) : Type where
  aggregate : pointwise → meanSquare

/-- Averaged endpoint control may enter the repository only through a theorem
matching the exact endpoint aggregation required by the consumer. -/
structure AveragedToRequiredEndpointBudgetAdapter
    (averaged required : Prop) : Type where
  upgrade : averaged → required

end ParityFourierZeroNonzeroConnections
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.ParityFourierZeroNonzeroConnections.ordinaryMertensEnergy_of_zeroModeAdapter
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.ParityFourierZeroNonzeroConnections.naturalScaleCongruenceL1_of_adapters
