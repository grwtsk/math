# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.quadraticScaleTaper_all_orders`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [ResidueCircleQuadraticScaleTaper.lean](../ResidueCircleQuadraticScaleTaper.lean), line 70.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleQuadraticScaleTaper.lean#L70).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.quadraticScaleTaper_all_orders` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleWaveHilbertFormalization.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleQuadraticScaleTaper.lean",
      "blob": "4a59c53cafb3f6b386cd20066f00b71f2a80ab03",
      "role": "provider_dependent_candidate"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. Isolated additive source only.
-/

/-!
# One everywhere-supported all-order dyadic Hilbert scale taper

Unlike finiteScaleCutoff, the coefficient 2^(-j*j) is nonzero at every
scale j. For each integer order m, the elementary inequality

  m*j <= m*m + j*j

proves the EXACT uniform bound

  2^(m*j) * 2^(-j*j) <= 2^(m*m).

Thus the diagonal output belongs to every dyadic weighted l2 domain for
any input in the complete all-scale Hilbert space. This is actual
weighted sequence regularization; geometric C-infinity, a particular
PDE heat/half-wave propagator, and inversion with uniform stability
require separate source-identified theorems. In particular, this taper
is NOT claimed to control the original signed Moebius pickup energy.
-/

/-- The complete original vector is still represented by the output
and its exact omitted tail; no source remainder is declared zero. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
