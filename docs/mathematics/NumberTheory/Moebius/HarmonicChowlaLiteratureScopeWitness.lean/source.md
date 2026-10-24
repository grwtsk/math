# Complete source: GRWTSK.NumberTheory.Moebius.HarmonicChowlaLiteratureScopeWitness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa65ed2dbd9cd63c5160ec03c704ccb6bc95dff2` · SHA-256 `914b2584019af4188ca5e21630f878fc5d17f9ad2fd7e333c8dfd03d749b6f39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: LITERATURE_REVIEWED / WITNESS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #516. Direct stacked parent: draft PR #513 at
`ef07323a8c7c5101ef851351424afd50e2a7027e`.
-/
import GRWTSK.NumberTheory.Moebius.MertensHarmonicWeightedChowlaPacket

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Scope descriptor for a logarithmically averaged two-point theorem.

This record is intentionally descriptive.  It does not assert that any
literature theorem inhabits any particular field values. -/
structure LogarithmicTwoPointScope where
  baseVariableLogWeighted : Prop
  fixedAffineData : Prop
  growingShiftRange : Prop
  allScaleUniformity : Prop
  allDepthUniformity : Prop
  mobiusSource : Prop

/-- Scope descriptor for the RH-E02 harmonic weighted packet. -/
structure HarmonicWeightedPacketScope where
  baseVariableOrdinaryPrefix : Prop
  shiftVariableHarmonicWeight : Prop
  dyadicShiftRange : Prop
  allScaleUniformity : Prop
  allDepthUniformity : Prop
  mobiusSource : Prop

/-- An explicit bridge is required to convert a logarithmic base-variable
theorem into the harmonic shift-variable packet.  Merely inhabiting the source
scope descriptor does not produce such a bridge. -/
structure LogarithmicToHarmonicWeightedAdapter
    (source : Prop) : Type where
  averagingVariableConversion : Prop
  shiftRangeConversion : Prop
  uniformityConversion : Prop
  sourceToHarmonic :
    source →
      averagingVariableConversion →
      shiftRangeConversion →
      uniformityConversion →
      SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket

/-- Fixed-form ordinary results require a separate growing-family uniformity
bridge before they can feed the harmonic packet. -/
structure FixedFormOrdinaryToHarmonicAdapter
    (source : Prop) : Type where
  growingFamilyUniformity : Prop
  depthUniformity : Prop
  sourceToHarmonic :
    source →
      growingFamilyUniformity →
      depthUniformity →
      SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket

/-- Polylogarithmic growing-shift results require a separately proved extension
to the full dyadic shift range. -/
structure PolylogShiftToDyadicShiftAdapter
    (source : Prop) : Type where
  dyadicRangeExtension : Prop
  sourceToHarmonic :
    source →
      dyadicRangeExtension →
      SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket

/-- A literature result can enter the RH route only after an explicit adapter
and all of its named conversion obligations are supplied. -/
theorem riemannHypothesis_of_logarithmicToHarmonicAdapter
    {source : Prop}
    (bridge : LogarithmicToHarmonicWeightedAdapter source)
    (hsource : source)
    (havg : bridge.averagingVariableConversion)
    (hshift : bridge.shiftRangeConversion)
    (hunif : bridge.uniformityConversion) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicHarmonicWeightedMertensChowlaPacket
    (bridge.sourceToHarmonic hsource havg hshift hunif)

/-- Likewise for ordinary fixed-form sources: the growing-family and depth
uniformity obligations are explicit theorem arguments. -/
theorem riemannHypothesis_of_fixedFormOrdinaryAdapter
    {source : Prop}
    (bridge : FixedFormOrdinaryToHarmonicAdapter source)
    (hsource : source)
    (hgrowing : bridge.growingFamilyUniformity)
    (hdepth : bridge.depthUniformity) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicHarmonicWeightedMertensChowlaPacket
    (bridge.sourceToHarmonic hsource hgrowing hdepth)

/-- Likewise for polylogarithmic growing-shift sources. -/
theorem riemannHypothesis_of_polylogShiftAdapter
    {source : Prop}
    (bridge : PolylogShiftToDyadicShiftAdapter source)
    (hsource : source)
    (hrange : bridge.dyadicRangeExtension) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicHarmonicWeightedMertensChowlaPacket
    (bridge.sourceToHarmonic hsource hrange)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_logarithmicToHarmonicAdapter
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_fixedFormOrdinaryAdapter
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_polylogShiftAdapter
```
