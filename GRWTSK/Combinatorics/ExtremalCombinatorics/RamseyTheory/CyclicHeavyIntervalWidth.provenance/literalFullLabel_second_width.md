# `GRWTSK.Combinatorics.ProgressionColoring.QuantitativeVanDerWaerden.literalFullLabel_second_width`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CyclicHeavyIntervalWidth.lean](../CyclicHeavyIntervalWidth.lean), line 27.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/CyclicHeavyIntervalWidth.lean#L27).
- Declaration spelling: `GRWTSK.Combinatorics.ProgressionColoring.QuantitativeVanDerWaerden.literalFullLabel_second_width` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/HeavyIntervalWidth.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/LiteralLabelRectangles.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/LabelFiber.lean)

- [Pinned upstream source](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/Combinatorics/ProgressionColoring/CyclicHeavyIntervalWidth.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Copyright (c) 2026 grwtsk contributors. Local port under Apache 2.0.
OpenAI retains upstream authorship and licensing.
Source: openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a
lean/OAI/Combinatorics/ProgressionColoring/CyclicHeavyIntervalWidth.lean (blob c0b6dc1684dd5c3fca2d1e629fa3c3561595e563).
Only module imports and the enclosing namespace are adapted.
-/

/-!
# Drift relative to actual heavy adaptive intervals

The heavy multiplicity is counted over `Fin k` using the actual literal full
label. Its natural-index fiber has the same cardinality. Equal labels place the
actual centered representatives in the same half-open interval, providing the
width bound required by the general endpoint argument.
-/

/-- Equal literal labels bound the difference by the actual adaptive interval
width, rather than only by the uniform upper bound on mesh widths. -/

/-- Every heavy literal-label fiber controls the drift relative to the width
of its own adaptive interval in every coordinate. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
