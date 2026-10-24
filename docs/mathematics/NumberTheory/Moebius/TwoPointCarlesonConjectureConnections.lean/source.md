# Complete source: GRWTSK.NumberTheory.Moebius.TwoPointCarlesonConjectureConnections

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c74eb5e54981b24eb59d67b122a8da4a82618d97` · SHA-256 `d9a653262b4b5f4162d85fb4090e4f0e85a1d1999b825d8f9cc3524f7dbc31a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: LITERATURE_REVIEWED / SOURCE_DRAFT / NOT_RUN /
  NOT_KERNEL_AUDITED.
Issue: #466. Direct stacked parent: draft PR #465 at
`ef00d2505cf775470e570d7093a47438abda6ac5`.
-/
import GRWTSK.NumberTheory.Moebius.TwoPointCarlesonEnergy

/-!
# Conjecture connections at the two-point Möbius Carleson obstruction

This module records the exact local consequences of the max-per-scale
aligned-dyadic Möbius supplier and separates them from neighboring conjectures
and recently announced results.

The only new positive mathematical transport is from the complete Carleson
supplier to its necessary top-scale autocorrelation consequence.  The inherited
conditional return to the Riemann hypothesis is also exposed as a proof-bearing
edge.  Every literature-facing connection remains an explicit adapter
obligation, a relevance edge, or a structural analogy.

In particular:

* fixed-form ordinary two-point cancellation is not uniform in growing shifts;
* logarithmic cancellation is not ordinary cancellation;
* one terminal value is not translated-window maximal control;
* one-point short-interval cancellation is not a two-point theorem;
* higher-order, dynamical, and spectral statements require exact quantitative
  adapters;
* ultraflat Littlewood existence is only a structural autocorrelation analogy;
* the complete all-position tree supplier is refuted only at its stated scope
  and does not refute the max-per-scale successor.

External source records are documented in the accompanying mathematical note.
They are not imported theorem evidence in this module.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
namespace TwoPointCarlesonConnections

open TwoPointConjectureJunction

/-- Terminal top-scale two-point Möbius autocorrelation energy at dyadic scale
`j`.  The shift range and admissible terminal length are exactly those used by
the canonical maximal-prefix consumer. -/
def mertensTwoPointTopScaleAutocorrelationEnergy (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    mertensTwoPointPrefix h (dyadicTwoPointCutoff j h) ^ 2

/-- The top-scale autocorrelation energy is nonnegative. -/
theorem mertensTwoPointTopScaleAutocorrelationEnergy_nonneg (j : ℕ) :
    0 ≤ mertensTwoPointTopScaleAutocorrelationEnergy j := by
  unfold mertensTwoPointTopScaleAutocorrelationEnergy
  exact Finset.sum_nonneg fun h _hh =>
    sq_nonneg (mertensTwoPointPrefix h (dyadicTwoPointCutoff j h))

/-- One terminal autocorrelation square is controlled by the corresponding
max-per-scale Carleson energy.  This is a necessary consequence, not a converse
and not an arithmetic estimate. -/
theorem mertensTwoPointTerminal_sq_le_carleson
    (j h : ℕ) :
    mertensTwoPointPrefix h (dyadicTwoPointCutoff j h) ^ 2 ≤
      ((j : ℝ) + 2) *
        twoPointCarlesonEnergy moebiusReal moebiusReal j h := by
  have hprefix :
      |mertensTwoPointPrefix h (dyadicTwoPointCutoff j h)| ≤
        mertensTwoPointPrefixMax j h := by
    apply abs_mertensTwoPointPrefix_le_max
    simp [dyadicTwoPointCutoff]
  have hsquare :
      |mertensTwoPointPrefix h (dyadicTwoPointCutoff j h)| ^ 2 ≤
        mertensTwoPointPrefixMax j h ^ 2 :=
    (sq_le_sq₀
      (abs_nonneg _)
      (mertensTwoPointPrefixMax_nonneg j h)).2 hprefix
  calc
    mertensTwoPointPrefix h (dyadicTwoPointCutoff j h) ^ 2 =
        |mertensTwoPointPrefix h (dyadicTwoPointCutoff j h)| ^ 2 := by
      rw [sq_abs]
    _ ≤ mertensTwoPointPrefixMax j h ^ 2 := hsquare
    _ ≤ ((j : ℝ) + 2) *
        twoPointCarlesonEnergy moebiusReal moebiusReal j h :=
      mertensTwoPointPrefixMax_sq_le_twoPointCarlesonEnergy j h

/-- The complete top-scale shift energy is a necessary part of the full
max-per-scale supplier. -/
theorem mertensTwoPointTopScaleEnergy_le_carlesonEnergySum (j : ℕ) :
    mertensTwoPointTopScaleAutocorrelationEnergy j ≤
      ((j : ℝ) + 2) *
        twoPointCarlesonEnergySum moebiusReal moebiusReal j := by
  unfold mertensTwoPointTopScaleAutocorrelationEnergy
  calc
    (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        mertensTwoPointPrefix h (dyadicTwoPointCutoff j h) ^ 2) ≤
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        ((j : ℝ) + 2) *
          twoPointCarlesonEnergy moebiusReal moebiusReal j h := by
      apply Finset.sum_le_sum
      intro h _hh
      exact mertensTwoPointTerminal_sq_le_carleson j h
    _ = ((j : ℝ) + 2) *
        twoPointCarlesonEnergySum moebiusReal moebiusReal j := by
      simp [twoPointCarlesonEnergySum, Finset.mul_sum]

/-- Necessary all-scale top-energy condition.  Unlike the Carleson supplier,
this proposition contains no positive-scale translated-window information. -/
def SubpolynomialDyadicMertensTopScaleAutocorrelationEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ A : ℝ, 0 ≤ A ∧ ∀ j : ℕ,
    mertensTwoPointTopScaleAutocorrelationEnergy j ≤
      (A * (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 *
        ((2 ^ (j + 1) : ℕ) : ℝ)

/-- The max-per-scale supplier implies its top-scale autocorrelation
consequence with unchanged constants. -/
theorem subpolynomialTopScaleAutocorrelationEnergy_of_carleson
    (hCarleson :
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost) :
    SubpolynomialDyadicMertensTopScaleAutocorrelationEnergy := by
  intro δ hδ
  obtain ⟨A, hA, hscale⟩ := hCarleson δ hδ
  refine ⟨A, hA, ?_⟩
  intro j
  exact
    (mertensTwoPointTopScaleEnergy_le_carlesonEnergySum j).trans
      (hscale j)

/-- The unavailable return from top-scale autocorrelation control to all
positive aligned scales. -/
def TopScaleToCarlesonPositiveScaleBridge : Prop :=
  SubpolynomialDyadicMertensTopScaleAutocorrelationEnergy →
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost

/-! ## Noncoercible scope metadata -/

inductive AveragingMode where
  | ordinary
  | logarithmic
  | dynamical
  | spectralMeanSquare
  | finiteCombinatorial
  deriving DecidableEq, Repr

inductive ShiftScope where
  | fixed
  | polylogarithmicGrowing
  | fullDyadicGrowing
  | noShiftParameter
  deriving DecidableEq, Repr

inductive WindowScope where
  | oneTerminalPrefix
  | translatedIntervals
  | alignedDyadicMaxPerScale
  | globalMeanSquare
  | dynamicalOrbit
  | polynomialUnitCircle
  deriving DecidableEq, Repr

inductive AggregationScope where
  | pointwise
  | averageOverParameters
  | squareSumOverShifts
  | maxPerScaleSquareSum
  | existentialSequence
  deriving DecidableEq, Repr

inductive ClaimDisposition where
  | repositoryConditional
  | open
  | externallyAnnounced
  | partialResult
  | refutedAtScope
  | structuralAnalogue
  deriving DecidableEq, Repr

inductive EvidenceBoundary where
  | localSourceDraft
  | externalLiteratureRecord
  | noLocalTheorem
  deriving DecidableEq, Repr

/-- Scope metadata is descriptive only.  It carries no proof of `claim`. -/
structure ClaimProfile where
  claim : Prop
  averaging : AveragingMode
  shifts : ShiftScope
  windows : WindowScope
  aggregation : AggregationScope
  disposition : ClaimDisposition
  evidence : EvidenceBoundary
  sourceKey : String

/-! ## Proof-relevant relation discipline -/

inductive ScopedConnection (source target : Prop) : Type
  | implies (proof : source → target)
  | equivalent (proof : source ↔ target)
  | requires (bridge : Prop) (transport : source → bridge → target)
  | refutesAtScope (proof : source → ¬ target)
  | relevantOnly
  | structuralAnalogy

namespace ScopedConnection

/-- Project a positive implication only from constructors that contain one.
Unproved requirements, scoped refutations, relevance, and analogies do not
become proof edges. -/
def toImplication?
    {source target : Prop} :
    ScopedConnection source target → Option (source → target)
  | .implies h => some h
  | .equivalent h => some h.mp
  | .requires _ _ => none
  | .refutesAtScope _ => none
  | .relevantOnly => none
  | .structuralAnalogy => none

@[simp] theorem requires_has_no_implication
    {source target bridge : Prop}
    (transport : source → bridge → target) :
    toImplication?
      (ScopedConnection.requires bridge transport :
        ScopedConnection source target) = none :=
  rfl

@[simp] theorem refutation_has_no_positive_implication
    {source target : Prop} (h : source → ¬ target) :
    toImplication?
      (ScopedConnection.refutesAtScope h :
        ScopedConnection source target) = none :=
  rfl

@[simp] theorem relevance_has_no_implication
    (source target : Prop) :
    toImplication?
      (ScopedConnection.relevantOnly :
        ScopedConnection source target) = none :=
  rfl

@[simp] theorem structuralAnalogy_has_no_implication
    (source target : Prop) :
    toImplication?
      (ScopedConnection.structuralAnalogy :
        ScopedConnection source target) = none :=
  rfl

end ScopedConnection

/-! ## Exact local profiles -/

def carlesonSupplierProfile : ClaimProfile where
  claim := SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  averaging := .ordinary
  shifts := .fullDyadicGrowing
  windows := .alignedDyadicMaxPerScale
  aggregation := .maxPerScaleSquareSum
  disposition := .repositoryConditional
  evidence := .localSourceDraft
  sourceKey := "grwtsk/math#461-pr465"

def topScaleAutocorrelationProfile : ClaimProfile where
  claim := SubpolynomialDyadicMertensTopScaleAutocorrelationEnergy
  averaging := .ordinary
  shifts := .fullDyadicGrowing
  windows := .oneTerminalPrefix
  aggregation := .squareSumOverShifts
  disposition := .repositoryConditional
  evidence := .localSourceDraft
  sourceKey := "grwtsk/math#466-top-scale"

def riemannHypothesisProfile : ClaimProfile where
  claim := _root_.RiemannHypothesis
  averaging := .spectralMeanSquare
  shifts := .noShiftParameter
  windows := .globalMeanSquare
  aggregation := .pointwise
  disposition := .open
  evidence := .noLocalTheorem
  sourceKey := "Riemann-Hypothesis"

def completeTreeSupplierProfile : ClaimProfile where
  claim := SubpolynomialDyadicMertensTwoPointCoordinateEnergyWithDepthCost
  averaging := .ordinary
  shifts := .fullDyadicGrowing
  windows := .translatedIntervals
  aggregation := .squareSumOverShifts
  disposition := .refutedAtScope
  evidence := .localSourceDraft
  sourceKey := "grwtsk/math#460-pr462"

/-! ## External-scope profile constructors

These constructors attach scope metadata to a supplied proposition.  They do
not assert that an external source theorem has been imported or accepted. -/

def ordinaryFixedTwoPointProfile (source : Prop) : ClaimProfile where
  claim := source
  averaging := .ordinary
  shifts := .fixed
  windows := .oneTerminalPrefix
  aggregation := .pointwise
  disposition := .externallyAnnounced
  evidence := .externalLiteratureRecord
  sourceKey := "openai-math-result-007-fixed-two-point"

def correctedBinaryElliottProfile (source : Prop) : ClaimProfile where
  claim := source
  averaging := .ordinary
  shifts := .fixed
  windows := .oneTerminalPrefix
  aggregation := .pointwise
  disposition := .externallyAnnounced
  evidence := .externalLiteratureRecord
  sourceKey := "openai-math-result-007-corrected-Elliott"

def logarithmicGrowingShiftProfile (source : Prop) : ClaimProfile where
  claim := source
  averaging := .logarithmic
  shifts := .polylogarithmicGrowing
  windows := .oneTerminalPrefix
  aggregation := .pointwise
  disposition := .partialResult
  evidence := .externalLiteratureRecord
  sourceKey := "arXiv:2608.23500"

def shortIntervalMobiusProfile (source : Prop) : ClaimProfile where
  claim := source
  averaging := .ordinary
  shifts := .noShiftParameter
  windows := .translatedIntervals
  aggregation := .pointwise
  disposition := .partialResult
  evidence := .externalLiteratureRecord
  sourceKey := "arXiv:2610.09567"

def higherOrderChowlaProfile (source : Prop) : ClaimProfile where
  claim := source
  averaging := .ordinary
  shifts := .fixed
  windows := .oneTerminalPrefix
  aggregation := .pointwise
  disposition := .open
  evidence := .externalLiteratureRecord
  sourceKey := "higher-order-Chowla"

def higherOrderElliottProfile (source : Prop) : ClaimProfile where
  claim := source
  averaging := .ordinary
  shifts := .fixed
  windows := .oneTerminalPrefix
  aggregation := .pointwise
  disposition := .open
  evidence := .externalLiteratureRecord
  sourceKey := "higher-order-corrected-Elliott"

def sarnakDisjointnessProfile (source : Prop) : ClaimProfile where
  claim := source
  averaging := .dynamical
  shifts := .noShiftParameter
  windows := .dynamicalOrbit
  aggregation := .pointwise
  disposition := .open
  evidence := .externalLiteratureRecord
  sourceKey := "Sarnak-Mobius-disjointness"

def weakMertensProfile (source : Prop) : ClaimProfile where
  claim := source
  averaging := .spectralMeanSquare
  shifts := .noShiftParameter
  windows := .globalMeanSquare
  aggregation := .averageOverParameters
  disposition := .open
  evidence := .externalLiteratureRecord
  sourceKey := "Weak-Mertens"

def gonekHejhalProfile (source : Prop) : ClaimProfile where
  claim := source
  averaging := .spectralMeanSquare
  shifts := .noShiftParameter
  windows := .globalMeanSquare
  aggregation := .averageOverParameters
  disposition := .open
  evidence := .externalLiteratureRecord
  sourceKey := "Gonek-Hejhal-negative-moments"

def ultraflatLittlewoodProfile (source : Prop) : ClaimProfile where
  claim := source
  averaging := .finiteCombinatorial
  shifts := .noShiftParameter
  windows := .polynomialUnitCircle
  aggregation := .existentialSequence
  disposition := .structuralAnalogue
  evidence := .externalLiteratureRecord
  sourceKey := "openai-math-result-076-ultraflat-Littlewood"

/-! ## Explicit adapter obligations -/

/-- Fixed ordinary binary control must first become ordinary full-dyadic
Möbius terminal control and then acquire every-window maximal-square control. -/
structure FixedOrdinaryBinaryToCarlesonAdapter (source : Prop) : Prop where
  toGrowingMertensTerminal :
    source → GrowingShiftDyadicTerminalCancellation moebiusReal moebiusReal
  terminalToCarleson :
    GrowingShiftDyadicTerminalCancellation moebiusReal moebiusReal →
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost

/-- A logarithmic growing-shift result requires ordinary unweighting, extension
to the full dyadic shift range, and maximal translated-window square control. -/
structure LogarithmicGrowingShiftToCarlesonAdapter (source : Prop) : Prop where
  toOrdinaryFullDyadicTerminal :
    source → GrowingShiftDyadicTerminalCancellation moebiusReal moebiusReal
  terminalToCarleson :
    GrowingShiftDyadicTerminalCancellation moebiusReal moebiusReal →
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost

/-- One-point short-interval Möbius cancellation requires a bilinear two-point
lift before any maximal all-shift conclusion is available. -/
structure ShortIntervalOnePointToCarlesonAdapter (source : Prop) : Prop where
  toTwoPointFullDyadicTerminal :
    source → GrowingShiftDyadicTerminalCancellation moebiusReal moebiusReal
  terminalToCarleson :
    GrowingShiftDyadicTerminalCancellation moebiusReal moebiusReal →
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost

/-- Higher-order information requires an exact binary quantitative
specialization and the same growing-shift/maximal scope upgrade. -/
structure HigherOrderToCarlesonAdapter (source : Prop) : Prop where
  toBinaryFullDyadicTerminal :
    source → GrowingShiftDyadicTerminalCancellation moebiusReal moebiusReal
  terminalToCarleson :
    GrowingShiftDyadicTerminalCancellation moebiusReal moebiusReal →
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost

/-- A dynamical disjointness statement reaches the arithmetic consumer only
through a complete quantitative dynamical-to-Carleson theorem. -/
structure SarnakToCarlesonAdapter (source : Prop) : Prop where
  dynamicalToCarleson :
    source → SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost

/-- A one-variable Mertens mean-square statement must supply both the
all-shift top-scale condition and the missing positive scales. -/
structure WeakMertensToCarlesonAdapter (source : Prop) : Prop where
  toTopScale : source →
    SubpolynomialDyadicMertensTopScaleAutocorrelationEnergy
  positiveScaleBridge : TopScaleToCarlesonPositiveScaleBridge

/-- A Gonek--Hejhal statement first needs an exact implication to the selected
Weak Mertens proposition, followed by the Weak-Mertens-to-Carleson adapter. -/
structure GonekHejhalToCarlesonAdapter
    (source weakMertens : Prop) : Prop where
  toWeakMertens : source → weakMertens
  weakMertensAdapter : WeakMertensToCarlesonAdapter weakMertens

/-! ## Typed connection graph -/

def carlesonImpliesTopScale :
    ScopedConnection
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
      SubpolynomialDyadicMertensTopScaleAutocorrelationEnergy :=
  .implies subpolynomialTopScaleAutocorrelationEnergy_of_carleson

def topScaleRequiresPositiveScaleBridge :
    ScopedConnection
      SubpolynomialDyadicMertensTopScaleAutocorrelationEnergy
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost :=
  .requires TopScaleToCarlesonPositiveScaleBridge
    (fun h bridge => bridge h)

def carlesonImpliesRiemannHypothesis :
    ScopedConnection
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
      _root_.RiemannHypothesis :=
  .implies riemannHypothesis_of_mertensTwoPointCarlesonEnergy

def fixedOrdinaryTwoPointRequiresAdapter (source : Prop) :
    ScopedConnection source
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost :=
  .requires (FixedOrdinaryBinaryToCarlesonAdapter source)
    (fun h adapter =>
      adapter.terminalToCarleson (adapter.toGrowingMertensTerminal h))

def correctedBinaryElliottRequiresAdapter (source : Prop) :
    ScopedConnection source
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost :=
  fixedOrdinaryTwoPointRequiresAdapter source

def logarithmicGrowingShiftRequiresAdapter (source : Prop) :
    ScopedConnection source
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost :=
  .requires (LogarithmicGrowingShiftToCarlesonAdapter source)
    (fun h adapter =>
      adapter.terminalToCarleson
        (adapter.toOrdinaryFullDyadicTerminal h))

def shortIntervalMobiusRequiresAdapter (source : Prop) :
    ScopedConnection source
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost :=
  .requires (ShortIntervalOnePointToCarlesonAdapter source)
    (fun h adapter =>
      adapter.terminalToCarleson
        (adapter.toTwoPointFullDyadicTerminal h))

def higherOrderChowlaRequiresAdapter (source : Prop) :
    ScopedConnection source
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost :=
  .requires (HigherOrderToCarlesonAdapter source)
    (fun h adapter =>
      adapter.terminalToCarleson
        (adapter.toBinaryFullDyadicTerminal h))

def higherOrderElliottRequiresAdapter (source : Prop) :
    ScopedConnection source
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost :=
  higherOrderChowlaRequiresAdapter source

def sarnakDisjointnessRequiresAdapter (source : Prop) :
    ScopedConnection source
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost :=
  .requires (SarnakToCarlesonAdapter source)
    (fun h adapter => adapter.dynamicalToCarleson h)

def weakMertensRequiresAdapter (source : Prop) :
    ScopedConnection source
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost :=
  .requires (WeakMertensToCarlesonAdapter source)
    (fun h adapter =>
      adapter.positiveScaleBridge (adapter.toTopScale h))

def gonekHejhalRequiresAdapter (source weakMertens : Prop) :
    ScopedConnection source
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost :=
  .requires (GonekHejhalToCarlesonAdapter source weakMertens)
    (fun h adapter =>
      adapter.weakMertensAdapter.positiveScaleBridge
        (adapter.weakMertensAdapter.toTopScale
          (adapter.toWeakMertens h)))

/-- Ultraflat Littlewood sequences show that low autocorrelation energy is
combinatorially possible for specially constructed sign sequences.  This is
not an implication about the actual Möbius sequence. -/
def ultraflatLittlewoodIsStructuralAnalogy (source : Prop) :
    ScopedConnection source
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost :=
  .structuralAnalogy

/-- The full-tree witness refutes only its exact obsolete supplier. -/
def completeTreeRefutationAtExactScope :
    ScopedConnection CompleteTreeSupplierRefutedAtScope
      SubpolynomialDyadicMertensTwoPointCoordinateEnergyWithDepthCost :=
  .refutesAtScope (fun h => h)

/-- The same witness is relevant to observable design but does not refute the
max-per-scale successor. -/
def completeTreeWitnessRelevantToCarleson :
    ScopedConnection CompleteTreeSupplierRefutedAtScope
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost :=
  .relevantOnly

/-- One bundle groups the propositions to be populated by exact external
source adapters in later, separate increments. -/
structure ExternalConjectureClaims where
  ordinaryFixedTwoPoint : Prop
  correctedBinaryElliott : Prop
  logarithmicGrowingShift : Prop
  shortIntervalMobius : Prop
  higherOrderChowla : Prop
  higherOrderElliott : Prop
  sarnakDisjointness : Prop
  weakMertens : Prop
  gonekHejhal : Prop
  ultraflatLittlewood : Prop

/-- Typed connection atlas.  Its construction needs no proof of any external
claim and produces no adapter value. -/
structure CarlesonConjectureConnectionAtlas
    (claims : ExternalConjectureClaims) where
  fixedTwoPoint : ScopedConnection claims.ordinaryFixedTwoPoint
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  correctedElliott : ScopedConnection claims.correctedBinaryElliott
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  logarithmicGrowing : ScopedConnection claims.logarithmicGrowingShift
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  shortInterval : ScopedConnection claims.shortIntervalMobius
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  higherChowla : ScopedConnection claims.higherOrderChowla
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  higherElliott : ScopedConnection claims.higherOrderElliott
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  sarnak : ScopedConnection claims.sarnakDisjointness
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  weakMertens : ScopedConnection claims.weakMertens
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  gonekHejhal : ScopedConnection claims.gonekHejhal
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  littlewood : ScopedConnection claims.ultraflatLittlewood
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost

/-- Canonical conservative atlas: all external mathematical transports remain
requirements, while the Littlewood comparison remains a structural analogy. -/
def conservativeConnectionAtlas
    (claims : ExternalConjectureClaims) :
    CarlesonConjectureConnectionAtlas claims where
  fixedTwoPoint := fixedOrdinaryTwoPointRequiresAdapter _
  correctedElliott := correctedBinaryElliottRequiresAdapter _
  logarithmicGrowing := logarithmicGrowingShiftRequiresAdapter _
  shortInterval := shortIntervalMobiusRequiresAdapter _
  higherChowla := higherOrderChowlaRequiresAdapter _
  higherElliott := higherOrderElliottRequiresAdapter _
  sarnak := sarnakDisjointnessRequiresAdapter _
  weakMertens := weakMertensRequiresAdapter _
  gonekHejhal := gonekHejhalRequiresAdapter _ claims.weakMertens
  littlewood := ultraflatLittlewoodIsStructuralAnalogy _

end TwoPointCarlesonConnections
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointCarlesonConnections.mertensTwoPointTopScaleEnergy_le_carlesonEnergySum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointCarlesonConnections.subpolynomialTopScaleAutocorrelationEnergy_of_carleson
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointCarlesonConnections.carlesonImpliesRiemannHypothesis
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointCarlesonConnections.ScopedConnection.structuralAnalogy_has_no_implication
```
