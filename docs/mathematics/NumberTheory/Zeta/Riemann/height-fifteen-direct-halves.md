# Thirty-two-cell replay decomposition for the height-fifteen contour

Owner #135; finite arithmetic supplier #194; canonical/prime consumer #261.

Parent revision: `f694fb34053d135f1370ea82fce07e41b454c990`  
Parent tree: `40398dfb177515ec24b150bdd0b9e9025df4ac84`  
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.**

The previous source places one `by decide` script on each of the 37 full
64-cell blocks and the final 11-cell suffix. This increment adds an alternative
replay route with smaller direct computations. It does not edit, weaken, or
accept those previous scripts.

## Exact decomposition

The old direct cell predicate and signed term are reused. The new widths are

```text
32 repeated 74 times, then 8, then 3.
```

They exhaust the same 2,379 global cells. The only nonzero half claim is the
piece `[256,288)`, which contains the previously identified negative-ray crossing
at cell 275. Its signed claim is +1. Every other half claim is zero.

There are 76 independent local source scripts. Each has the form

```lean
chunk directTest directTerm start width = some claim := by decide
```

No script evaluates the canonical packet constructor. This reduces one layer of
representational expansion while preserving the old source calculation. It does
not establish a runtime or kernel-resource improvement.

## Pairwise reconstruction

`CheckedChunkComposition.chunk_add` proves that two successful adjacent open
chains compose at their exact shared cursor and that their signed totals add.
It inserts no closure edge. The 74 thirty-two-cell pieces are paired to recover
the same 37 full 64-cell claims. The final 8-cell and 3-cell pieces recover the
same 11-cell suffix.

The resulting `block_obligations` has exactly the original
`HeightFifteenBlockDecomposition.BlockObligations` type. The inherited canonical
result, old literal Success, regional count one, and complete-pair declarations
remain conditional on all smaller scripts elaborating.

## Diagnostics

The independent finite diagnostic reads the preceding exact block model and
constructs the 76 half claims. It checks exact starts, stops, widths, theorem
statements, pairwise reconstruction, every ±1 mutation, omitted or duplicated
pieces, failure propagation, reverse orientation, and generic adjacent-chunk
composition models. It does not recompute source jets or execute Lean.

## Remaining acceptance

All 76 local decisions, the generic composition theorem, exact declaration
shapes, generated members, complete import closure, axioms/native dependencies,
and the inherited analytic/topological/divisor chain require pinned elaboration
and independent review. The smaller units may still be too expensive and may
need further subdivision or proof repair.

No accepted `K(15)=1`, canonical-head exhaustion, omitted-zero-divisor tail,
strict prime margin, Legendre theorem, or RH result is claimed.
