# Ambient start-window enlargement for the core short-interval packet

Issue: #563. Parent start-window witness: #560 / draft PR #561.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / AMBIENT_SHORT_INTERVAL_SUPPLIER_OPEN**.

## Common ambient block

For dyadic scale `j`, define

```text
A_j = [1, 2^(j+1)+2).
```

The source proves every inherited depth-dependent starting window is contained in `A_j`.

This uses the exact two-regime geometry from #560:
- below the left dyadic scale, the depth window ends at `2^j+1`;
- once the depth reaches the left scale, the window begins at 2 and its upper endpoint is at most `2^(j+1)+2`.

## Exact ambient short-interval first moment

Define

```text
ambientMobiusShortIntervalSum(x,n)
  = sum_(k<n) μ(x+k)

harmonicAmbientShortIntervalL1(j,n)
  = sum_(x in A_j)
      |ambientMobiusShortIntervalSum(x,n)|.
```

The repository-specific short interval is proved equal to the ambient short interval at its literal starting point.

Using nonnegativity, the source then proves

[
mathrm{harmonicShortIntervalL1}(j,t,n)
le
mathrm{harmonicAmbientShortIntervalL1}(j,n)
]

for every inherited depth.

No overlap multiplicity is charged because the comparison is performed depth-by-depth by enlarging a nonnegative sum.

## Ambient core packet

The terminal and long-interior Abel coefficients and all interval lengths are preserved exactly. Only the start-point summation window is enlarged.

The source defines

```lean
coreLongAmbientShortIntervalL1Packet
```

and proves

[
mathrm{coreLongShortIntervalL1Packet}(j)
le
mathrm{coreLongAmbientShortIntervalL1Packet}(j).
]

Thus the source-facing proposition

```lean
SubpolynomialCoreLongAmbientShortIntervalL1Packet
```

is sufficient for the exact core L1 supplier and the existing conditional RH endpoint.

## Remaining literature mismatch

Current short-interval mean-value theorems are commonly stated for starts in asymptotic blocks such as `[X,2X]` or comparable large intervals. The repository ambient block is origin-anchored:

```text
[1, 2^(j+1)+2).
```

Therefore the remaining adapter obligation is no longer arbitrary localization to every depth window. It is the more specific comparison between an origin-anchored prefix block and theorem-compatible asymptotic start blocks, while preserving every retained interval length.

The source types this through

```lean
AsymptoticBlockShortIntervalScope
AsymptoticBlockToAmbientL1Adapter.
```

No adapter value is constructed.

## Nonclaims

No current short-interval theorem is asserted sufficient. No Lean/Lake execution, kernel acceptance, merge, or RH proof is claimed.
