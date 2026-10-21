# Signed Abel conjecture junction

Issue: #477. Parent witness: #473 / draft PR #475. Next analytic supplier: #476.

Evidence state: **LITERATURE_REVIEWED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ALL_CONJECTURAL_ADAPTERS_OPEN**.

## Purpose

This layer formalizes how neighboring conjectural programs may connect to the exact signed Abel depth-packet criterion without turning provenance, terminology, or thematic similarity into theorem edges.

The RH-facing target is:

```lean
SubpolynomialDyadicSignedAbelDepthPacket
```

from PR #475.

## Direct source propositions

The source defines:

- `GrowingShiftOrdinaryTwoPointChowla`, reusing the existing growing-shift dyadic terminal-cancellation interface at the actual Möbius source;
- `EveryIntervalEverySubprefixTwoPointCancellation`, with interval start, shift, interval length, subprefix length, ambient scale, and normalization explicit.

These remain stronger source statements only. No implication into the signed depth packet is asserted without an adapter.

## Structured conjecture data

For programs whose historical formulations require substantial additional hypotheses, the source uses proof-relevant data records rather than pretending one abbreviated name is a theorem:

- `CorrectedElliottFamilyData`: fixed-data theorem, growing-family uniformity, correction retention, nonpretentiousness retention;
- `HigherOrderChowlaData`: order, collision conditions, growing-parameter uniformity, multidimensional-to-binary bridge;
- `HigherOrderCorrectedElliottData`: correction and nonpretentiousness plus higher-order/growing-family transport;
- `SarnakLocalGowersData`: dynamical statement, averaging convention, arithmetic-to-dynamical bridge, dynamical-to-depth bridge;
- `WeakMertensData`: mean-square statement, normalization, explicit-formula bridge, bridge to signed depth;
- `GonekHejhalData`: negative derivative moment statement, zero-multiplicity convention, spectral/explicit-formula bridge, bridge to signed depth.

The corresponding source propositions are conjunctions of their required fields.

## Adapter boundary

The load-bearing type is:

```lean
structure ToSignedAbelDepthPacketAdapter (source : Prop) : Type where
  toDepthPacket :
    source -> SubpolynomialDyadicSignedAbelDepthPacket
```

Named adapter abbreviations exist for each conjectural family, but **no adapter value is constructed**.

The only generic proof edges are:

```lean
signedAbelDepthPacket_of_adapter
riemannHypothesis_of_signedDepthAdapter
```

so a route requires both:

1. a proof of its source proposition;
2. an actual proof-producing adapter.

## Recently closed weaker scope

OpenAI Math result 007 is recorded only as provenance for recently announced fixed-form binary Chowla and corrected binary Elliott statements. Those results are not imported here and are not represented as growing-shift signed-depth suppliers.

The scope distinction is explicit:

```text
fixed data != growing family
terminal cutoff != signed depth packet
logarithmic average != ordinary average
almost all intervals != every interval
binary != higher order
```

## Hostile controls

The source additionally types:

- `FixedDataVsGrowingDepthBoundary` with no transport field;
- `IntervalCoverageAdapter` for average/almost-all to every-interval conversion;
- `AveragingConventionAdapter` for logarithmic-to-ordinary conversion.

These records ensure missing bridges remain explicit.

## Current mathematical status

No conjecture is proved, refuted, or shown equivalent to the signed depth packet in this increment.

The only direct repository theorem is:

```text
source proof + explicit adapter
  -> SubpolynomialDyadicSignedAbelDepthPacket
  -> RiemannHypothesis.
```

All named adapters remain open.

## Exact next obstruction

Issue #476 owns the next analytic leaf: construct one source-faithful finite dispersion/bilinear interface into the signed depth packet, with every coefficient, support condition, normalization, and residual explicit.
