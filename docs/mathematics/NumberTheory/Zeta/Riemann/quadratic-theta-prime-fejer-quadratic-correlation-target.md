# Threshold-graded Fejér quadratic-correlation target

The corrected Fejér route now separates the remaining smoothed-value theorem
into a bandwidth part and an arithmetic part.

For threshold `rho` and cutoff exponent `beta`, complete neutralization of the
raw square-root bandwidth loss contributes gain

```text
beta / 2.
```

The remaining unsquared arithmetic gain is

```text
alpha >= 1 - rho.
```

The new packet rewrites this residual obligation at the level of the square.

## Explicit weighted correlation

Define the corrected weighted prime atom

```text
a_{X,N,m}(n)
  = nonAliasingFejerPrefixWeight(X,N,m,n)
      * primeDiscrepancyAtom(n).
```

The corrected smoothed discrepancy is exactly

```text
S_{X,N,m} = sum_{2X < n <= 4X} a_{X,N,m}(n).
```

The source proves the exact finite identity

```text
sum_{n,q} a_{X,N,m}(n) a_{X,N,m}(q)
  = S_{X,N,m}^2.
```

It also retains the exact ledger

```text
S^2 = diagonal + signed off-diagonal.
```

No positivity is imposed on the off-diagonal term. The whole double sum is
nonnegative because it is exactly a square.

## Exponent conversion

If the quadratic correlation has exponent

```text
C_rho(kappa) = 2 rho - kappa,
```

then taking the square-root scale gives amplitude exponent

```text
A_rho(kappa)
  = C_rho(kappa) / 2
  = rho - kappa/2.
```

The source proves

```text
A_rho(kappa) <= 2 rho - 1
  iff
kappa >= 2(1-rho).
```

Thus `kappa/2` is exactly the residual arithmetic gain in the unsquared value.

At `rho = 7/8`,

```text
kappa >= 1/4.
```

A quarter-power saving in the explicit squared correlation gives

```text
kappa/2 = 1/8
```

in the amplitude. At the boundary-minimal cutoff `beta = 1/4`, the total gain
splits as

```text
1/4 total
  = 1/8 bandwidth neutralization
  + 1/8 quadratic-correlation arithmetic gain.
```

## Typed supplier

The packet introduces

```text
ThresholdGradedPrimeFejerQuadraticCorrelationSupplier rho beta kappa
```

with:

```text
a dyadic power cutoff schedule;
nonnegative beta and kappa;
Fejer boundary closure;
quadratic-correlation amplitude closure;
a map from the rho-graded Fourier premise to the explicit correlation bound;
a deterministic correlation-bound-to-partial-discrepancy readout.
```

It converts canonically to the existing
`ThresholdGradedPrimeFejerSplitSupplier`, using arithmetic gain `kappa/2`.

The exact remaining theorem is therefore no longer an opaque extra eighth. It
is a quarter-power saving in a named finite weighted prime-atom double
correlation, together with the cutoff-schedule and square-root/boundary readout
needed to feed the existing partial-prime discrepancy target.

## Evidence status

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
EXPLICIT_FEJER_QUADRATIC_CORRELATION_IDENTITY_SOURCE_PROVED
QUADRATIC_SAVING_TO_ARITHMETIC_GAIN_SOURCE_PROVED
SEVEN_EIGHTHS_CORRELATION_QUARTER_REQUIRED
QUADRATIC_CORRELATION_SUPPLIER_INTERFACE_TYPED
SEVEN_EIGHTHS_SMOOTHED_VALUE_SUPPLIER_OPEN
```

No cutoff schedule, asymptotic correlation estimate, deterministic square-root
readout, partial-prime discrepancy theorem, threshold descent, or Riemann
Hypothesis proof is claimed.
