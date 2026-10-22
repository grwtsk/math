# Dyadic block-scale versus interval-length witness

Issue: #569. Parent dyadic start-block reduction: #565 / draft PR #566.

Evidence state: **LITERATURE_REVIEWED / WITNESS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

## Exact split

For fixed dyadic scale `j` and retained interval length `n`, the standard start blocks are divided into

```text
compatible:   n <= 2^r
incompatible: 2^r < n.
```

The source defines

```lean
compatibleDyadicStartBlockL1
incompatibleDyadicStartBlockL1
```

and proves the exact decomposition

```text
dyadicStartBlockAggregateL1
  = compatible blocks
    + incompatible low-scale blocks
    + two-start endpoint correction.
```

No block is discarded.

## Packet-level split

The terminal and interior Abel coefficients are retained exactly. The source defines packet contributions for:
- theorem-compatible dyadic blocks;
- low-scale incompatible blocks;
- the explicit endpoint correction.

It proves

```text
coreLongDyadicBlockShortIntervalL1Packet
  = compatible packet
    + incompatible packet
    + endpoint-correction packet.
```

## Literature scope

Matomäki--Radziwiłł short-interval theorems are naturally formulated with starts in a large block and a genuinely short interval length. The repository packet includes low start scales for which the retained interval length exceeds the start scale.

This is a theorem-scope mismatch, not a non-implication theorem.

The source types

```lean
CompatibleDyadicShortIntervalScope
CompatibleDyadicToCoreAdapter
```

and requires separate payment of:
- incompatible low-scale blocks;
- endpoint correction;
- coefficient-weighted summation.

## Disposition

```text
WITNESS_CLASS = BLOCK_SCALE_VS_INTERVAL_LENGTH_MISMATCH
NO_DIRECT_FULL_DYADIC_BLOCK_ADAPTER
```

## Next frontier

Pay the incompatible low-scale blocks deterministically if their exact Abel coefficient mass is small enough; otherwise retain them as a separate analytic supplier. The compatible blocks can then be compared directly to quantitative short-interval theorems on standard dyadic start blocks.
