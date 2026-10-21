# Closed source scripts for all 38 height-fifteen contour blocks

Owner #135; finite arithmetic supplier #194; canonical/prime consumer #261.

Parent revision: `68c6c380612bcea6242478bf03c396652b34c111`  
Parent tree: `b57eca790b809c2cfb6fedf1ab5779bc161c333f`  
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.**

This increment adds closed Lean proof scripts for the same 38 bounded local
equalities that have remained the concrete acceptance boundary of the
height-fifteen contour candidate. None of the scripts has been parsed,
elaborated, reduced, or accepted by a Lean kernel. Their presence in source is
not an execution receipt or an accepted zero count.

## 1. The canonical checked cell is proved equal to the old direct cell

For global cell `i`, the old proposition is

```text
JetPoleContour.EdgeValid(domain[i], domain[i+1],
  image[i], image[i+1], plan[i])
and
RationalPolygonIndex.EdgeValid(image[i], image[i+1]).
```

The new proposition replaces only the source-tube field by the deterministic
canonical packet generated from the same plan:

```text
CheckedJetContour.edgeCheck(..., plan[i],
  CanonicalCheckedPoleJet.packet(plan[i].center, plan[i].parameters)) = true
and
the same polygon chart.
```

The forward direction uses the checked edge refinement. The reverse direction
uses the canonical packet witness theorem. Therefore `checkedTest i` is exactly
the old `directTest i`, including false results. No source ball, radius, chart,
endpoint, or acceptance field is changed.

This equality is lifted to every local `chunk`; the signed term is already the
same `directTerm`. A recursive proposition-level theorem then identifies the new
`ScriptObligations` with the old `BlockObligations`.

## 2. Thirty-eight separate decision scripts

The target partition remains

```text
37 blocks of 64 cells
1 final block of 11 cells
total: 2,379 cells
```

The exact signed claim vector remains

```text
[0,0,0,0,1,0,...,0]
```

with block 4 covering `[256,320)` and the final block covering `[2368,2379)`.

Each local theorem is written separately:

```lean
theorem blockNN :
  chunk checkedTest directTerm start width = some claim := by decide
```

There is no theorem that checks only the sum of claimed contributions. A false
local claim cannot be hidden by cancellation with another false claim. The final
11 cells remain an explicit independent script. `none` is still distinct from
`some 0`; negative orientation is not converted to a natural number.

All 38 scripts are **NOT_RUN**. `by decide` is source syntax here, not a report
that the corresponding reduction terminated or was accepted.

## 3. Closed source composition, not accepted proof

`HeightFifteenCanonicalBlockClosure.scripts` forms the exact conjunction of the
38 imported scripts. Structural expansion gives the new `ScriptObligations`;
the checked/direct predicate equality gives the unchanged old
`BlockObligations`.

The resulting source declarations are:

```text
canonical_result : HeightFifteenCanonicalJets.result = some 1
original_success : HeightFifteenJetCandidate.Success
regional_count_one : MirrorCountingRectangle.count 15 = 1
complete_pair : the existing conditional canonical pair conclusion
```

These are closed **source proof scripts** whose dependencies include all 38
unexecuted local decisions and the entire inherited analytic, topological, and
canonical-divisor stack. They are not accepted theorem receipts.

No old file is modified. The literal mesh, plans, source formulas, image
expressions, numerical parameters, error bounds, branch conventions, count
definitions, and public imports remain unchanged.

## 4. Controls

The source controls preserve:

- block 4 cannot be relabeled from `some 1` to `some 0`;
- block 0 cannot be relabeled from `some 0` to `some 1`;
- the final 11-cell suffix is present;
- `none` is not `some 0`;
- the exact claim vector sums to one; and
- replacing the sole nonzero claim by zero changes the vector.

These controls reuse the local scripts. They do not independently execute the
large computations.

## 5. Finite diagnostics

Normal and optimized Python processes produced byte-identical reports with
**18,227 exact assertions**.

The diagnostic:

- re-read the prior independent rational block result;
- reconciled all 38 starts, widths, stops, and signed claims;
- parsed every new theorem statement and matched it to the exact block metadata;
- rejected every plus-one and minus-one claim mutation;
- rejected every missing, duplicated, or locally failed block;
- retained signed reversal as `-1`;
- exercised 5,000 additional finite partition models; and
- checked generic claim and shape mutations.

The target values were **not recomputed from zeta source jets** in this
increment. The diagnostic uses the preceding independent block model as its
target source. It does not parse or execute Lean and does not prove the inherited
analytic suppliers.

No logarithm, exponential, zeta library, root finder, zero database, or prime
certificate was used.

## 6. Remaining acceptance boundary

Pinned Lean elaboration and proof repair remain mandatory. In particular:

- all 38 local `by decide` scripts must actually elaborate and reduce;
- every generated declaration and exact type must match;
- all imports and native dependencies require complete reconciliation;
- the inherited source-value, derivative, curvature, contour-homotopy,
  signed-index, argument-principle, and canonical-divisor proofs require review;
- resource behavior of the finite reductions is unknown; and
- no execution hold is changed by this source increment.

Until those duties are discharged, there is no accepted `K(15)=1`, canonical
head exhaustion, bounded-line certificate, Legendre theorem, or RH result.
Even a future accepted finite-height count would not supply arbitrary-height RH,
the omitted-zero-divisor tail, or strict positive margins for every required
prime interval.
