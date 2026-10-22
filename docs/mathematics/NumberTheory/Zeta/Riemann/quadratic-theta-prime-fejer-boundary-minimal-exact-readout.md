# Boundary-minimal exact-correlation readout

The concrete seven-eighths Fejér cutoff schedule is

```text
X_j = dyadicScale j,
N_j = ceil(X_j^(1/4)).
```

The schedule packet already proves

```text
X_j^(1/4) <= N_j <= X_j^(1/4) + 1
N_j < 4 X_j.
```

The remaining exact-correlation route previously had two named obligations:

```text
SevenEighthsBoundaryMinimalExactCorrelationBound
SevenEighthsBoundaryMinimalExactCorrelationReadout.
```

This increment closes the second obligation.

## Smoothed-value extraction

The corrected Fejér weighted prime-atom correlation is exactly the square of
the corrected smoothed discrepancy:

```text
C(X,N,m) = S(X,N,m)^2.
```

Assume the exact seven-eighths correlation estimate

```text
C(X,N,m) <= C0 X^(3/2) log(X)^4.
```

Since the right side is the square of

```text
sqrt(C0) X^(3/4) log(X)^2,
```

the source proves

```text
|S(X,N,m)|
  <= sqrt(C0) X^(3/4) log(X)^2.
```

No `X^eta` loss is introduced or removed in this step.

## Boundary normalization

The already proved period-`4X` Fejér comparison gives

```text
|sharp(X,m) - S(X,N,m)|
  <= 4 (1 + log(4X)) (X/N) (1 + log(2X)).
```

At the concrete ceiling fourth-root cutoff,

```text
X/N <= X^(3/4).
```

Every repository dyadic scale satisfies `X >= 2`. The explicit lower bound for
`log 2` then gives

```text
1 <= 2 log X.
```

Together with monotonicity and the product rule for logarithms, the source
derives

```text
1 + log(2X) <= 4 log X,
1 + log(4X) <= 5 log X.
```

Consequently,

```text
|sharp(X,m) - S(X,N,m)|
  <= 80 X^(3/4) log(X)^2.
```

## Exact readout

The sharp discrepancy is definitionally

```text
sharp(X,m)
  = S(X,N,m) + (sharp(X,m) - S(X,N,m)).
```

The two estimates therefore yield

```text
|sharp(X,m)|
  <= (sqrt(C0) + 80) X^(3/4) log(X)^2.
```

This inhabits

```text
SevenEighthsBoundaryMinimalExactCorrelationReadout.
```

The packet adds the adapter

```text
SevenEighthsBoundaryMinimalExactCorrelationBound.toData
```

and proves

```text
SevenEighthsBoundaryMinimalExactCorrelationBound
  -> AllDyadicPrimeOnlyFourierCoordinateBoundAt (7/8)
  -> SevenEighthsPrimePartialDiscrepancy.
```

## Remaining frontier

The deterministic readout and schedule are now closed at source level. The sole
remaining supplier in this branch is

```text
SevenEighthsBoundaryMinimalExactCorrelationBound,
```

namely the exact, no-power-slack estimate

```text
nonAliasingFejerQuadraticCorrelation
  X (ceil(X^(1/4))) m
    <= C X^(3/2) log(X)^4
```

uniformly over the dyadic octave endpoints.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
BOUNDARY_MINIMAL_EXACT_CORRELATION_READOUT_SOURCE_PROVED
SMOOTHED_VALUE_SQUARE_ROOT_EXTRACTION_SOURCE_PROVED
FEJER_BOUNDARY_LOG_NORMALIZATION_SOURCE_PROVED
SEVEN_EIGHTHS_EXACT_CORRELATION_BOUND_OPEN
```

No exact correlation estimate, threshold descent, zero-free theorem at
`1/2`, or Riemann Hypothesis result is claimed.
