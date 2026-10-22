# Dyadic decomposition of the ambient short-interval start block

Issue: #565. Parent ambient reduction: #563 / draft PR #564.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / DYADIC_BLOCK_SHORT_INTERVAL_SUPPLIER_OPEN**.

## Exact start-block decomposition

The common ambient start block is

```text
[1,2^(j+1)+2).
```

Its prefix
```text
[1,2^(j+1))
```
is decomposed exactly into the standard disjoint dyadic start blocks
```text
[2^r,2^(r+1)), 0<=r<=j.
```

The two remaining starts are kept explicitly:
```text
2^(j+1), 2^(j+1)+1.
```

The source authors the exact first-moment identity
```text
harmonicAmbientShortIntervalL1(j,n)
  = sum_(r<=j) dyadicStartBlockShortIntervalL1(r,n)
    + ambientEndpointStartCorrection(j,n).
```

The endpoint correction is bounded trivially by `2n`; it is not discarded.

## Coefficient-weighted lifting

The exact terminal first-difference and interior second-difference Abel coefficients are preserved, as are all retained interval lengths.

The source defines
```lean
coreLongDyadicBlockShortIntervalL1Packet
```
and authors exact equality with the ambient packet:
```text
coreLongAmbientShortIntervalL1Packet
  = coreLongDyadicBlockShortIntervalL1Packet.
```

Thus
```lean
SubpolynomialCoreLongDyadicBlockShortIntervalL1Packet
```
is exactly equivalent to the ambient supplier and retains the existing conditional RH endpoint.

## Remaining theorem interface

The source types
```lean
DyadicBlockShortIntervalL1Source
DyadicBlockShortIntervalToCoreAdapter
```
with explicit obligations for:
- first-moment bounds on standard dyadic start blocks;
- uniformity in block scale;
- uniformity in retained interval length;
- payment of the two-start endpoint correction;
- coefficient-weighted summation.

No theorem from the literature is instantiated here.

## Correction during authorship

An initial source draft used an unverified helper name for selecting the dyadic block index. That dependency was removed before publication. The current source uses a direct induction on the exact finite prefix-sum decomposition.

## Nonclaims

No Lean/Lake execution, kernel acceptance, external short-interval theorem application, merge, or RH proof is claimed.
