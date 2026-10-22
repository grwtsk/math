# Exact long short-interval supplier

Issue: #541. Parent deterministic closure: #538 / draft PR #540.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / LONG_LENGTH_SHORT_INTERVAL_SUPPLIER_OPEN**.

## Exact decomposition

The short interior contribution at threshold `H(j)=j+2` is already paid deterministically. Define

```text
logarithmicShortSignedPacket(j)
```

as the signed sum of those short interior terms, and define the exact analytic remainder

```text
logarithmicLongHarmonicRemainderPacket(j)
  = harmonicWeightedMertensDyadicChowlaPacket(j)
    - logarithmicShortSignedPacket(j).
```

This remainder deliberately includes:
- every cumulative length at least `j+2`;
- the terminal second-Abel term.

No endpoint is omitted.

The source proves

```text
harmonic packet
  = short signed packet + long remainder.
```

## Short packet already paid

Using the deterministic one-depth bounds and triangle inequality, the source proves

```text
|logarithmicShortSignedPacket(j)|
  <= normalizedShortPacketBudget(j).
```

PR #540 already authors a source-level subpolynomial bound for that nonnegative budget.

## Remaining arithmetic supplier

The exact remaining proposition is

```lean
SubpolynomialLongHarmonicRemainderPacket
```

requiring, for every positive exponent, a uniform all-scale bound on the signed long remainder.

The source proves

```text
SubpolynomialLongHarmonicRemainderPacket
  -> SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket
  -> RiemannHypothesis.
```

No inhabitant of the long supplier is constructed.

## Long short-interval source shape

The source defines

```lean
LongHarmonicShortIntervalL1Envelope
LongHarmonicShortIntervalL1Source
LongShortIntervalL1ToRemainderAdapter
```

so any quantitative theorem must retain:
- `n >= j+2`;
- `n <= harmonicShiftCount j t`;
- every depth `t`;
- the exact induced short-interval first moment;
- a proof that those local bounds control the full remainder, including the terminal Abel term.

The adapter type itself is not an adapter value.

## Mathematical status

The deterministic short regime is closed at source level. The only remaining arithmetic source on this path is long-length short-interval cancellation strong enough to bound the exact signed remainder.

## Nonclaims

No current Matomäki--Radziwiłł-type theorem is asserted sufficient here. No Lean/Lake execution, kernel acceptance, merge, or RH proof is claimed.
