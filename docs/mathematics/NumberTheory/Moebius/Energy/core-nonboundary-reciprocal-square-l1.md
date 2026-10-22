# Non-boundary reciprocal-square short-interval first moment

Issue: #673. Parent classical boundary bridge: #666 / draft PR #668.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / RECIPROCAL_SQUARE_AMBIENT_L1_SUPPLIER_OPEN**.

## Hybrid context

The exceptional retained length `n=2^j` remains signed and is supplied conditionally by `ClassicalWeakMertensStepSource`. This increment treats only the non-boundary retained lengths

```text
logarithmicShiftThreshold(j) <= n < 2^j.
```

## Ambient enlargement with the boundary removed

For each genuine core depth, the depth-dependent start window is enlarged to the common ambient start block. The maximal terminal length `2^j` remains deleted before this positive majorization.

The source defines

```lean
coreNonboundaryDepthAmbientL1Majorant
```

and proves

```text
coreNonboundaryDepthShortIntervalL1Majorant
  <= coreNonboundaryDepthAmbientL1Majorant.
```

## Exact length transposition

The terminal and interior Abel coefficients are written as retained-length selectors. Finite outer Fubini then gives the exact ambient packet

```text
coreNonboundaryAmbientLengthPacket(j)
 = 2 * sum_(H<=n<X)
     harmonicAmbientShortIntervalL1(j,n)
     * coreLengthCoefficientMass(j,n),
```

where `H=j+2` and `X=2^j`.

The original non-boundary packet satisfies

```text
coreNonboundaryShortIntervalL1Packet(j)
  <= coreNonboundaryAmbientLengthPacket(j).
```

## Reciprocal-square coefficient mass

The previously proved deterministic coefficient theorem gives

```text
coreLengthCoefficientMass(j,n)
  <= 3/(2^j+n)^2
```

for every retained non-boundary length. Consequently,

```text
coreNonboundaryAmbientLengthPacket(j)
 <= 6 * reciprocalSquareAmbientShortIntervalL1Packet(j),
```

where

```text
reciprocalSquareAmbientShortIntervalL1Packet(j)
 = sum_(H<=n<X)
     harmonicAmbientShortIntervalL1(j,n)/(X+n)^2.
```

## Source-facing supplier

The remaining non-boundary proposition is

```lean
SubpolynomialReciprocalSquareAmbientShortIntervalL1Packet.
```

The source proves it supplies `SubpolynomialCoreNonboundaryShortIntervalL1Packet`.

Together with `ClassicalWeakMertensStepSource`, it gives the exact two-premise conditional endpoint

```text
ClassicalWeakMertensStepSource
+ SubpolynomialReciprocalSquareAmbientShortIntervalL1Packet
-> HybridBoundaryPreservingCoreSupplier
-> conditional RH endpoint.
```

## Remaining obstruction

A quantitative short-interval theorem must control the complete reciprocal-square ambient first moment. No current theorem is asserted sufficient in this increment. The observable retains every interval length, the full ambient starting-point block, and the positive first moment after the exceptional boundary has been removed.

## Nonclaims

No short-interval supplier value, Lean/Lake execution, elaboration, kernel acceptance, merge, proof of Weak Mertens, or RH proof is claimed.
