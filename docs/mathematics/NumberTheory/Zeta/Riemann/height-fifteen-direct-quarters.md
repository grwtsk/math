# Sixteen-cell direct replay units for the height-fifteen contour

Owner #135; finite arithmetic supplier #194; canonical/prime consumer #261.

Parent revision: `ecdf7163bd8d1256504e188b12948fafac0078c7`  
Parent tree: `fed700618dfd1283b3671bbbb6072d94d88f575e`  
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.**

This increment adds an alternative decomposition of the unchanged 2,379-cell
height-fifteen contour into smaller direct finite decisions. It does not change
the contour, source formulas, rounded arithmetic, signed index, canonical count,
or any existing acceptance proposition.

## Partition

The exact partition is

```text
16 repeated 148 times, then 8, then 3.
```

It exhausts all 2,379 cells. Quarter index 17 covers `[272,288)` and is the only
piece with signed contribution `+1`; it contains the previously modeled negative
ray crossing at cell 275. Every other quarter contributes zero. The final cells
`[2376,2379)` remain a separate three-cell obligation.

## Composition

`QuarterObligations` is the exact `Pieces` proposition for the 150 local claims.
The generic finite theorem `exists_pieces_iff` turns that proposition into full
old-cell coverage and the signed total one. Those two statements feed the
unchanged `HeightFifteenBlockDecomposition.success_iff_ranges`.

No artificial closing edge, absolute value, reset cursor, omitted cell, or
independently supplied total is introduced. The earlier 76-piece and 38-block
routes remain untouched as independent alternative replay targets.

## Source scripts

The source contains 150 separate declarations of the form

```lean
theorem quarterNNN :
  chunk directTest directTerm start width = some claim := by decide
```

They are split across three modules so a future replay can isolate groups of
fifty declarations. The closure module contains source proofs for the exact
literal `HeightFifteenJetCandidate.Success`, the canonical packet result,
regional count one, and the inherited complete-pair conclusion.

None of these declarations has been parsed, elaborated, reduced, or accepted by
Lean. Source text is not a kernel receipt.

## Diagnostics

Normal and optimized exact Python models check the partition, theorem inventory,
claim vector, complete range/sum composition, every claim mutation, the final
suffix, reverse orientation, and generic adjacent chunk models. They reuse the
previously established independent rational cell-term model; they do not
recompute the source jets or establish analytic semantics.

## Remaining acceptance

Every local decision and every composition theorem still requires pinned Lean
elaboration and independent review. The full inherited arithmetic, analytic,
topological, argument-principle, and canonical-divisor chain remains mandatory.
No accepted count, complete head, omitted-zero-divisor tail, universal prime
margin, Legendre theorem, or Riemann Hypothesis conclusion is claimed.
