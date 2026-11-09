# `GRWTSK.Combinatorics.ProgressionColoring.QuantitativeVanDerWaerden.rho_half`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [ShortPeriodLift.lean](../ShortPeriodLift.lean), line 33.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/ShortPeriodLift.lean#L33).
- Declaration spelling: `GRWTSK.Combinatorics.ProgressionColoring.QuantitativeVanDerWaerden.rho_half` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/ShortPeriodCut.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/Dichotomy.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/AdaptiveMesh.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/ModelGeometry.lean)

- [Pinned upstream source](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/Combinatorics/ProgressionColoring/ShortPeriodLift.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Copyright (c) 2026 grwtsk contributors. Local port under Apache 2.0.
OpenAI retains upstream authorship and licensing.
Source: openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a
lean/OAI/Combinatorics/ProgressionColoring/ShortPeriodLift.lean (blob 65a1e2eae9f62b1a7cc6b1234062cb23b6a669ff).
Only module imports and the enclosing namespace are adapted.
-/

/-!
# The short-period branch of the outer-color dichotomy

A cut crossed by the unreduced real path is close to every sample. The actual
adaptive mesh then makes every sampled interval narrower than the nonzero
step. Two equal labels contradict this, forcing one global real affine lift.
-/

/-- Short-period lifting for the actual cyclic representatives and actual
adaptive labels. The only remaining inputs are the numerical short-motion
bounds, a congruent step, and a repeated label. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
