# Core short-interval starting-window witness

Issue: #560. Parent exact L1 packet: #557 / draft PR #558.

Evidence state: **LITERATURE_REVIEWED / WITNESS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

## Exact repository geometry

At fixed scale `j` and depth `t`, the induced short intervals begin at

```text
x_a = a + 1 + harmonicShiftLower j t,
0 <= a < t+1.
```

The source proves these starting points form exactly one contiguous window

```text
[harmonicStartWindowLower j t,
 harmonicStartWindowUpper j t)
```

of cardinality `t+1`.

Two exact regimes are recorded:

- if `t+1 < 2^j`, the window ends at `2^j+1`;
- if `2^j <= t+1`, the window begins at `2`.

Thus the repository averages starts over a depth-dependent window. The core condition makes its cardinality grow at least logarithmically after the shallow-depth payment, but not macroscopically in the dyadic scale.

## Literature scope comparison

Matomäki--Radziwiłł short-interval theorems establish cancellation for almost all short intervals after averaging starting points over a large ambient block. The 2015 result allows the short interval length to tend to infinity arbitrarily slowly; the 2020 sequel provides quantitative power-saving exceptional-set control for relevant multiplicative functions. Those theorem statements do not by themselves provide the same first-moment estimate on every depth-dependent starting window above.

This is a localization mismatch, not a refutation.

## Typed adapter boundary

The source defines

```lean
MacroscopicStartWindowShortIntervalScope
MacroscopicStartWindowToCoreL1Adapter
```

and requires explicit proofs of:
- localization from the ambient averaging block to every repository depth window;
- preservation of the long interval-length regime;
- preservation of all-depth uniformity.

Only after those obligations are supplied may such a theorem produce
`SubpolynomialCoreLongShortIntervalL1Packet`.

## Disposition

```text
WITNESS_CLASS = START_WINDOW_LOCALIZATION_MISMATCH
NO_DIRECT_CURRENT_SHORT_INTERVAL_ADAPTER
```

No theorem-level non-implication is asserted.

## Next frontier

Either prove a start-window localization theorem that exploits the overlap/weight geometry after summing over depths, or formulate a global transposed start-point packet whose averaging window matches current short-interval mean-value theorems.
