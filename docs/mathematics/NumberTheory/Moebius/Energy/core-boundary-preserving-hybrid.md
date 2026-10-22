# Boundary-preserving hybrid core supplier

Issue: #600. Parent piecewise coefficient closure: #597 / draft PR #599.

Evidence state: **WITNESS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / HYBRID_BOUNDARY_SUPPLIER_OPEN**.

## Why the boundary is separated

The exceptional retained length `n=2^j` has only reciprocal-first-power coefficient mass. Sending this term through the positive start-point L1 majorant discards all cancellation in the signed source exactly where the coefficient is weakest.

## Exact hybrid decomposition

The source defines:
- `coreBoundarySignedDepthContribution`;
- `coreBoundarySignedPacket`;
- `coreNonboundarySignedRemainderPacket`;
- `coreNonboundaryShortIntervalL1Packet`.

The full core signed remainder is split exactly as
```text
coreLongDeepRemainderPacket
  = coreBoundarySignedPacket
    + coreNonboundarySignedRemainderPacket.
```

The boundary packet remains signed. No start-point absolute values are inserted there.

## Non-boundary L1 control

At each core depth, if the terminal active length equals `2^j`, that terminal term is removed from the positive majorant. The retained interior terms and all other terminal lengths remain controlled by the existing short-interval L1 bounds.

The source proves
```text
|coreNonboundarySignedRemainderPacket|
  <= coreNonboundaryShortIntervalL1Packet.
```

## Hybrid source

The source defines
```lean
SubpolynomialCoreBoundarySignedPacket
SubpolynomialCoreNonboundaryShortIntervalL1Packet
HybridBoundaryPreservingCoreSupplier
```

and proves the hybrid supplier implies the exact core signed remainder, hence the inherited conditional RH endpoint.

## Hostile witness

A two-start abstract witness records that a signed weighted sum can cancel exactly while the corresponding L1 quantity remains positive. This is only a structural information-loss witness; it does not assert anything about actual Möbius values.

## Remaining arithmetic obligations

1. signed control of the single boundary length;
2. positive L1 control only for non-boundary retained lengths.

## Nonclaims

No theorem-level non-implication for Möbius or RH, no Lean/Lake replay, merge, or RH proof is claimed.
