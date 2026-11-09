# `GRWTSK.Analysis.Complex.ZeroLimit.zeros_mem_closed_of_locally_uniform_limit`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [RealZeroLimit.lean](../RealZeroLimit.lean), line 31.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/FunctionsOfAComplexVariable/RealZeroLimit.lean#L31).
- Declaration spelling: `GRWTSK.Analysis.Complex.ZeroLimit.zeros_mem_closed_of_locally_uniform_limit` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/67aa17161ba1908f8a85182bfdf2d4ccaf21171c/TauCeti/Analysis/Complex/Conformal/Hurwitz.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/

/-!
# Closed zero loci under a locally uniform holomorphic limit

Isolated adapter: use documentation/adapters/tauceti-connes, not the root
Mathlib-only environment. Reuses TauCeti.hurwitz_eventually_exists_eq_zero at
TauCetiProject/TauCeti 67aa17161ba1908f8a85182bfdf2d4ccaf21171c.
Upstream authors: The Tau Ceti contributors; upstream license Apache-2.0.
No upstream source is copied and the root toolchain is unchanged.

The proof is substantive zero transport: an off-locus zero has a ball disjoint
from the closed locus, while Hurwitz supplies an approximating zero in that
ball. The nonzero-limit premise is indispensable. This supplies the last
analytic implication of Connes arXiv:2602.04022v1 Section 6, not the convergence
or spectral simplicity premises. AI-assisted wrapper. Compilation, kernel
checking and transitive axiom audit: NOT_RUN, including the imported closure.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
