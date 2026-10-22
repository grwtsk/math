# Threshold-graded Fejer gain budget

The corrected Fejer boundary comparison and the threshold-graded Fourier premise
now determine an exact gain budget for the remaining smoothed-value supplier.

For threshold `rho`, bandwidth exponent `beta`, and nonlinear gain `gamma`, the
relevant exponents are

```text
boundary:       B(beta) = 1 - beta
naive value:    M_rho(beta) = rho + beta/2
improved value: M_rho(beta) - gamma
target:         Q(rho) = 2rho - 1.
```

The source proves that value closure is equivalent to

```text
gamma >= 1 - rho + beta/2.
```

This separates the required gain into two parts:

```text
threshold-gap gain: 1 - rho
bandwidth gain:     beta/2.
```

Even a perfect maximal estimate that removes the entire square-root bandwidth
loss leaves exponent `rho`.  For every `rho < 1`, that remains strictly above
the quadratic target `2rho - 1`.  A further arithmetic gain of at least
`1-rho` is unavoidable.

The corrected Fejer boundary estimate closes only when

```text
beta >= 2(1-rho).
```

Combining boundary and value closure therefore forces

```text
gamma >= 2(1-rho).
```

At `rho=7/8`, every viable corrected Fejer supplier must provide at least

```text
gamma >= 1/4.
```

Of that quarter-power gain, at least `beta/2` accounts for removing the raw
square-root bandwidth loss, while at least an additional `1/8` must come from
arithmetic structure.  At the boundary-minimal cutoff `beta=1/4`, both the
boundary exponent and the improved value exponent equal `3/4` exactly when
`gamma=1/4`.

The module introduces `ThresholdGradedPrimeFejerSupplier`.  It packages:

* the total nonlinear gain;
* Fejer boundary closure;
* smoothed-value exponent closure;
* a readout from `AllDyadicPrimeOnlyFourierCoordinateBoundAt rho` to the
  matching `DyadicPrimePartialDiscrepancyLogSqAt rho`.

This corrects the premise strength of the earlier DFT/Fejer readout interfaces.
No instance of the supplier is constructed, and no smoothed-value estimate,
prime partial-discrepancy theorem, threshold descent, or Riemann Hypothesis
result is claimed.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
GRADED_FEJER_GAIN_BUDGET_SOURCE_PROVED
QUARTER_POWER_TOTAL_GAIN_REQUIRED
EIGHTH_POWER_ARITHMETIC_GAIN_REQUIRED
SEVEN_EIGHTHS_SMOOTHED_VALUE_SUPPLIER_OPEN
```
