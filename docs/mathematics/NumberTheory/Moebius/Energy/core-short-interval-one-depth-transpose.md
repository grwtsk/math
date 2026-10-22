# One-depth incompatible length selection

Issue: #581. Parent transpose interface: #579 / draft PR #580.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / OUTER_DEPTH_TRANSPOSE_OPEN**.

## Exact terminal selector

At one genuine core depth, the terminal incompatible contribution occurs at the single retained length

```text
n = harmonicShiftCount j t.
```

The source proves it equals the retained-length sum against
`coreTerminalLengthCoefficient`, which is zero at every other length.

## Exact interior selector

The long interior contribution is reindexed by the bijection
```text
k -> n = k+1.
```

The source proves the filtered interior sum equals the retained-length sum against
`coreInteriorLengthCoefficient`, with zero padding outside the actual range.

## One-depth lengthwise identity

Combining terminal and interior pieces gives

```text
coreLongDepthIncompatibleDyadicL1(j,t)
 =
2 * sum_n incompatibleDyadicStartBlockL1(j,n)
      * (terminalCoefficient + interiorCoefficient).
```

This is finite reindexing only. No analytic estimate is used.

## Remaining step

Only the outer sum over core depths remains before constructing
`IncompatibleDepthTransposeAdapter`.

## Nonclaims

No outer Fubini theorem, transpose adapter value, short-interval theorem, Lean/Lake replay, merge, or RH proof is claimed.
