# Fejér quadratic-correlation power-slack barrier

The explicit weighted prime-atom correlation packet introduced the dyadic
premise

```text
correlation(X,N,m)
  <= C X^(2rho-kappa+eta) log(X)^4
```

for every positive `eta`.

The intended exact partial-discrepancy conclusion has amplitude exponent

```text
Q(rho) = 2rho - 1.
```

## Square-root slack propagation

Taking the square-root scale of the displayed correlation exponent gives

```text
A(rho,kappa,eta)
  = (2rho-kappa+eta)/2
  = rho-kappa/2+eta/2.
```

At the threshold-closing correlation saving

```text
kappa = 2(1-rho),
```

this becomes

```text
A(rho,2(1-rho),eta)
  = 2rho-1+eta/2
  = Q(rho)+eta/2.
```

Therefore every positive power slack remains strictly above the exact target.
The deterministic square-root argument does not erase the `eta/2` term.

At the seven-eighths point,

```text
rho   = 7/8
kappa = 1/4,
```

the current envelope yields

```text
squared exponent:   3/2 + eta
amplitude exponent: 3/4 + eta/2,
```

not the exact `3/4` amplitude exponent required by
`DyadicPrimePartialDiscrepancyLogSqAt (7/8)`.

This is an exponent-interface correction. It does not assert that a particular
arithmetic correlation could not satisfy a stronger estimate; it states that
the currently declared epsilon-envelope bound alone does not provide the exact
power through the naive deterministic square-root calculation.

## Corrected interfaces

The source separates:

```text
DyadicPrimeFejerQuadraticCorrelationBoundAt
  epsilon-envelope squared correlation

DyadicPrimeFejerQuadraticCorrelationExactBoundAt
  exact-power squared correlation

DyadicPrimePartialDiscrepancyLogSqEnvelopeAt
  epsilon-envelope amplitude target

DyadicPrimeFejerQuadraticCorrelationPowerSlackRemovalAt
  envelope correlation -> exact correlation

DyadicPrimeFejerQuadraticCorrelationExactReadoutAt
  exact correlation -> exact partial discrepancy
```

A power-slack-removal theorem followed by the exact readout recovers the
previously declared exact readout interface.

Alternatively, the new structure

```text
ThresholdGradedPrimeFejerQuadraticCorrelationExactSupplier
```

starts from the exact-power correlation theorem directly and converts to the
existing split supplier with arithmetic gain `kappa/2`.

## Seven-eighths exact target

For `rho=7/8` and `kappa=1/4`, the corrected exact correlation target is

```text
correlation(X,N,m)
  <= C X^(3/2) log(X)^4.
```

Its square-root scale is exactly

```text
|smoothed value|
  <= sqrt(C) X^(3/4) log(X)^2.
```

The boundary-minimal cutoff schedule, the exact quarter-saving correlation
estimate, and the deterministic exact correlation-to-sharp-discrepancy readout
remain separate open obligations.

## Status

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
QUADRATIC_CORRELATION_POWER_SLACK_BARRIER_SOURCE_PROVED
EXACT_CORRELATION_BOUND_INTERFACE_TYPED
READOUT_SLACK_REMOVAL_OBLIGATION_EXPOSED
SEVEN_EIGHTHS_EXACT_CORRELATION_BOUND_OPEN
```

No Lean/Lake elaboration, kernel check, cutoff schedule, power-slack-removal
theorem, exact correlation estimate, deterministic readout, seven-eighths
descent, or Riemann Hypothesis result is claimed.
