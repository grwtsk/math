# Eight-cell direct replay units for the fixed height-fifteen contour

Owner #135; finite arithmetic supplier #194; canonical/prime consumer #261.

Parent revision: `2fefae6dc53e7bc93a0bbe4fbb6465be3b8a604f`  
Parent tree: `7475dbb384fb6788d535ac7d277af3fcedb00aa3`  
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.**

This increment adds a smaller proof-decomposition route for the same literal
2,379-cell height-fifteen contour. It does not alter the contour, source model,
error formulas, image data, signed branch convention, original `Success`
proposition, or any analytic/count consumer.

## Partition

The exact widths are

```text
8 repeated 297 times, then 3.
```

Their sum is 2,379. The claim vector has one nonzero entry:

```text
eighth 34: [272,280) -> +1
all other eighths -> 0.
```

Cell 275 lies in the unique positive piece. This is a signed branch crossing of
the rational surrogate, not a zero location.

The final cells `[2376,2379)` remain a separate three-cell theorem.

## Separate local scripts

Six claim modules contain 298 separate declarations:

```lean
theorem eighthNNN :
  chunk directTest directTerm start width = some claim := by decide
```

Each uses the unchanged old `directTest` and `directTerm`. No canonical packet is
expanded inside a local decision. The modules are split only to bound source and
replay scope; this is not a new mathematical partition of the rectangle.

## Exact composition

`EighthObligations` is the existing finite `Pieces` proposition for these widths
and claims. The maintained `exists_pieces_iff` theorem converts the complete
piece proof into exact all-cell coverage and signed total one. The old
`success_iff_ranges` theorem then yields exactly
`HeightFifteenJetCandidate.Success`.

The closure also reconstructs the positive 16-cell quarter, 32-cell half, and
64-cell block at their exact shared cursors. No artificial closing edge, cursor
reset, absolute value, omitted cell, or independently supplied final total is
introduced.

## Diagnostics

Paired normal and optimized finite models check the generated theorem inventory,
all starts, widths, stops and claims, exact exhaustion, claim mutations,
omissions, duplicates, local failures, reverse orientation, the distinction
between `none` and `some 0`, and generic adjacent-chunk composition models.

The target cell terms are read from the prior independent rational block model.
The source jets are not recomputed in this increment. Python reports and hashes
are not Lean proof receipts.

## Acceptance boundary

Every local `by decide` script and the composition declarations still require
pinned Lean parsing, elaboration, reduction, and kernel checking. The complete
generated declaration types, imports, axioms/native dependencies, analytic source
bounds, jet transfer, contour topology, signed index, argument principle, and
canonical-divisor comparison remain mandatory review scope.

No accepted `K(15)=1`, canonical-head exhaustion, omitted-zero-divisor tail,
strict every-interval prime margin, Legendre theorem, or RH result is claimed.
