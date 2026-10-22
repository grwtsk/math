# Signed non-boundary retained-length transpose

Issue: #678. Parent reciprocal-square L1 reduction: #673 / draft PR #676.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / SIGNED_NONBOUNDARY_LENGTH_SUPPLIER_OPEN**.

## Why the positive L1 target is not canonical

The reciprocal-square ambient first moment from #673 introduces absolute values separately at every start, depth, and retained length. That condition is a valid sufficient source, but it removes cancellation across retained lengths before the complete non-boundary packet is assembled.

This increment restores the exact signed object before any absolute value.

## One-depth signed selector identity

For one genuine core depth, the source defines:

- `coreNonboundarySignedTerminalContribution`, deleting only the exceptional terminal length `2^j`;
- `harmonicSignedLongInteriorContribution`, retaining the signed cumulative correlations and exact reciprocal second differences.

It proves

```text
coreNonboundarySignedDepthRemainder(j,t)
 = 2 * sum_(j+2<=n<2^j)
     cumulativeHarmonicShiftCorrelation(j,t,n)
     * (terminalSelector(j,t,n)+interiorSelector(j,t,n)).
```

No triangle inequality is used.

## Outer finite Fubini

The source defines

```lean
coreNonboundarySignedLengthSlice
coreNonboundarySignedLengthPacket
```

and proves the exact equality

```text
coreNonboundarySignedRemainderPacket(j)
 = coreNonboundarySignedLengthPacket(j).
```

Absolute value is introduced only after both the core-depth sum and retained-length sum.

## Canonical signed supplier

The new source-facing proposition is

```lean
SubpolynomialCoreNonboundarySignedLengthPacket
```

requiring subpolynomial control of the absolute value of the complete signed packet.

The prior positive condition remains useful through the proved one-way implication

```text
SubpolynomialReciprocalSquareAmbientShortIntervalL1Packet
 -> SubpolynomialCoreNonboundarySignedLengthPacket.
```

No converse is claimed.

## Conditional endpoint

The source proves

```text
ClassicalWeakMertensStepSource
+ SubpolynomialCoreNonboundarySignedLengthPacket
 -> SubpolynomialCoreLongDeepRemainderPacket
 -> conditional RH endpoint.
```

Classical Weak Mertens continues to pay only the exceptional signed boundary length. The non-boundary source preserves cancellation across all remaining lengths and depths.

## Hostile witness

A finite two-length witness records that a signed length sum may vanish while the termwise positive L1 replacement equals two. This is an information-loss witness only; it is not a claim about actual Möbius values.

## Remaining obstruction

Prove a signed analytic estimate for `coreNonboundarySignedLengthPacket`, or construct a source-faithful bilinear/dispersion representation of its length slices. The positive reciprocal-square L1 supplier remains available as a stronger fallback.

## Nonclaims

No signed analytic supplier, short-interval theorem, Lean/Lake execution, elaboration, kernel acceptance, merge, Weak Mertens proof, or RH proof is claimed.
