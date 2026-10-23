# Centered winding zero mode: mean inflation minus variance

Issue: #853  
Direct stacked parent: draft PR #849 at `ff0afd5851746a99e2d442e0a28f43a6e79c7a01`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_WINDING_ZERO_MODE_VARIANCE_SOURCE_DRAFT
CENTERED_WINDING_NONZERO_FREQUENCY_ESTIMATE_OPEN
CENTERED_WINDING_MEAN_INFLATION_ESTIMATE_OPEN
CENTERED_WINDING_INTEGER_CENTER_VARIANCE_ESTIMATE_OPEN
```

## Exact decomposition

For one endpoint `b`, endpoint parity `r`, and half-shift family `H`, let

```text
C(c) = signed equal-center amplitude at integer center c,
P    = sum_c C(c),
N    = b+1.
```

The source identifies `P` with the total signed centered pair mass from PR #849 and defines

```text
V = sum_(c < N) (C(c) - P/N)^2.
```

Then

```text
sum_c C(c)^2 = V + P^2/N.
```

Since the parent zero-mode correction is

```text
4*P^2/d^2 - 4*sum_c C(c)^2,
```

the exact correction becomes

```text
4*P^2*(1/d^2 - 1/N) - 4*V.
```

Equivalently,

```text
4 * ((N/d^2 - 1) * P^2/N - V).
```

The source names the first term

```lean
parityCenteredWindingMeanInflation
```

and scripts

```lean
parityHalfIndexCenteredZeroModeCorrection_eq_meanInflation_sub_fourVariance
```

so that

```text
zero-mode correction = mean inflation - 4*variance.
```

The variance is nonnegative. No sign is asserted for the complete correction.

## Complete winding identity

Combining with PR #849 gives

```text
nonzero-winding wrap
  = normalized nonzero-frequency energy
    + mean inflation
    - 4 * integer-center variance.
```

This is source-scripted as

```lean
parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_meanInflation_sub_variance
```

and is an identity, not an estimate.

## Analytic boundary

The decomposition distinguishes three mechanisms:

1. nonzero additive frequencies;
2. deterministic inflation from comparing `d^2` residue classes with `b+1` integer centers;
3. a subtractive, nonnegative centered variance.

The variance should not be discarded prematurely: it is the only explicitly negative term in this normalization and can cancel mean inflation and nonzero-frequency mass.

The four parity/half-shift correction families are collected by

```lean
regularCenteredWindingZeroModeVarianceAtModulus
regularCenteredWindingZeroModeVarianceEndpoint
RegularCenteredWindingZeroModeVarianceEnvelope
```

No analytic estimate is supplied.

## Evidence boundary

No Lean/Lake/native execution, elaboration, kernel acceptance, pair-mass estimate, variance estimate, nonzero-frequency estimate, GRH theorem, or RH theorem is claimed.
