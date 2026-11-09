# `GRWTSK.Combinatorics.OpenAIMath.Erdos138.erdos_138`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [Erdos138.lean](../Erdos138.lean), line 57.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/Erdos138.lean#L57).
- Declaration spelling: `GRWTSK.Combinatorics.OpenAIMath.Erdos138.erdos_138` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/QuantitativeVanDerWaerden.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in LICENSES/OpenAI-Apache-2.0.txt.
OpenAI retains upstream authorship and licensing of the imported mathematics.
-/

/-!
# Erdős Problem #138: the kth-root growth statement

The upstream proof is OpenAI's `kthRoot_tendsto` at
openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a, not the comparator
with the same mathematical statement. We supply the interval-convention bridge:
the positive interval `1,...,N` and the zero-based interval `0,...,N-1` have
identical Ramsey properties by shifting the coloring and progression origin.
Local compilation, fresh kernel checking, and transitive axiom audit: NOT_RUN.
-/

/-- The kth-root question in Erdős Problem #138, by the pinned upstream proof
and the explicit interval-convention bridge. This asserts no ratio-growth variant. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
