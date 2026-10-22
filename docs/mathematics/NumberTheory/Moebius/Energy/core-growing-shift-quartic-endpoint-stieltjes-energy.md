# Endpoint Stieltjes square-energy reduction

Issue: #783. Parent endpoint interval-box layer: #771 / draft PR #778.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / STIELTJES_PREFIX_SQUARE_ENERGY_OPEN**.

## Terminal consumer

The inherited RH-facing consumer is the exact signed growing-shift packet, reached through

```text
SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy
        ->
SubpolynomialCoreGrowingShiftFirstDifferencePacket
        ->
conditional RH endpoint.
```

The present increment changes the positive square-energy coordinate without discharging its analytic bound.

## Explicit endpoint weight

For

```text
X = 2^j,
Y = 2^(j+1),
H = logarithmicShiftThreshold j,
```

the endpoint-depth weight from #771 is

```text
w_j(h,b)
 = [min(Y-H-1,Y-h-1)-max(H,b,X-h-1)]_+
```

for positive `h`, and zero at `h=0`.

The source proves

```text
w_j(h,b+1) <= w_j(h,b)
w_j(h,Y) = 0.
```

Hence the first drop

```text
dw_j(h,b) = w_j(h,b)-w_j(h,b+1)
```

is nonnegative.

## Exact diagonal transposition

The active quartic diagonal is flattened to the same endpoint source cells `(t,k,b)` used by the signed endpoint-prefix packet. Grouping equal `(h,b)` fibers gives

```text
coreGrowingShiftQuarticDiagonalEnergy(j)
 = sum_(h,b<Y)
     w_j(h,b) * (mu(b+1)mu(b+1+h))^2.
```

This is an exact finite histogram identity. No density estimate, support enlargement, or unsigned majorant is used.

## Weighted square increment

Let

```text
c_h(b) = mu(b+1)mu(b+1+h),
M_2(h,b) = sum_(a<b) c_h(a).
```

Then

```text
M_2(h,b+1)^2-M_2(h,b)^2
 = 2 M_2(h,b)c_h(b)+c_h(b)^2.
```

Finite summation by parts, together with `w_j(h,Y)=0`, gives

```text
sum_(b<Y) w_j(h,b)c_h(b)^2
+ 2 sum_(b<Y) w_j(h,b)M_2(h,b)c_h(b)
=
sum_(b<Y) dw_j(h,b)M_2(h,b+1)^2.
```

All signs are retained until the visible diagonal is recombined with the signed endpoint packet.

## Positive Stieltjes energy

The source defines

```lean
coreGrowingShiftQuarticEndpointStieltjesSquareEnergy
```

by

```text
sum_(h,b<Y) dw_j(h,b) * M_2(h,b+1)^2.
```

Every summand is nonnegative. The exact packet identity is

```text
coreGrowingShiftQuarticDiagonalEnergy(j)
+ 2 * coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy(j)
=
coreGrowingShiftQuarticEndpointStieltjesSquareEnergy(j).
```

Combining this with the earlier diagonal/off-diagonal decomposition yields

```text
coreGrowingShiftBinaryPrefixSquareEnergy(j)
=
coreGrowingShiftQuarticEndpointStieltjesSquareEnergy(j).
```

Thus positivity has not been introduced as an assumption. It is reconstructed by an exact square-increment identity after preserving the signed endpoint contribution and its compensating diagonal.

## Source equivalences

The new source-facing proposition is

```lean
SubpolynomialCoreGrowingShiftQuarticEndpointStieltjesSquareEnergy
```

at the existing natural scale

```text
StieltjesEnergy(j)
 <= (C_delta * 2^j * (2^j)^delta)^2.
```

The source authors the exact equivalences

```text
Stieltjes square-energy bound
        <->
explicit interval-weighted endpoint compensation
        <->
active binary-prefix square-energy bound.
```

The conditional endpoint is retained through

```lean
riemannHypothesis_of_coreGrowingShiftQuarticEndpointStieltjesSquareEnergy.
```

## Proof classification

- endpoint-weight monotonicity: exact finite order arithmetic;
- diagonal transposition: exact finite Fubini and fiber cardinality;
- square increment: exact ring identity;
- weighted telescope: exact finite summation by parts;
- positivity: nonnegative weight drop times a square;
- RH consequence: conditional reduction only.

## Information-loss boundary

A termwise absolute-value estimate on the signed endpoint packet remains stronger and can destroy cancellation. The positive Stieltjes energy is valid because it includes the exact visible diagonal and is equal to the original prefix-square energy. Dropping the diagonal before the square-increment conversion is not justified.

## Typed external boundaries

The module adds proof-producing interfaces for:

- a theorem stated directly on the exact nonnegative first-drop measure;
- a Carleson, martingale, or square-function theorem with an explicit localization to this measure.

The names of external theorem families do not construct either adapter.

## Next obstruction

Prove

```text
sum_(h,b<2^(j+1))
  dw_j(h,b) * M_2(h,b+1)^2
 <= (C_delta * 2^j * (2^j)^delta)^2
```

with one all-scale constant, or construct a source-faithful Carleson/square-function localization theorem for the exact first-drop measure.

## Nonclaims

No Stieltjes-energy estimate, Carleson theorem, martingale theorem, square-function theorem, Chowla theorem, Lean/Lake replay, kernel acceptance, merge, or RH proof is claimed.
