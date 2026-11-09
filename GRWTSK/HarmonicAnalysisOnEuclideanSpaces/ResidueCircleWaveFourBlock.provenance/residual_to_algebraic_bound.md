# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.residual_to_algebraic_bound`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [ResidueCircleWaveFourBlock.lean](../ResidueCircleWaveFourBlock.lean), line 112.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleWaveFourBlock.lean#L112).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.residual_to_algebraic_bound` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleWaveHilbert.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleWaveFourBlock.lean",
      "blob": "aadebfd32f24e7ee6308b89d5d0561a6d7312f89",
      "role": "provider_dependent_candidate"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. This is a source-only additive leaf.
-/

/-!
# The full two-by-two algebraic/residual wave ledger

For the closed complex span A of *specified* realized cycle vectors, the
Hilbert projections P and Q=I-P preserve all source data. A bounded wave W
need not commute with P. Consequently its observable has four real operator
blocks PWP, PWQ, QWP, QWQ. Neither cross block is silently set to zero.

This leaf is independent of the geometric CM cycle-class and Euclidean
local-smoothing adapters: an instantiation must supply those source maps and
verify the operator and metric hypotheses separately.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
