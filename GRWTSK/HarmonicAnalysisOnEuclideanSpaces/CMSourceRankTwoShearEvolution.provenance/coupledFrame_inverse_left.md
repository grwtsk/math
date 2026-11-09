# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceRankTwoShearEvolution.coupledFrame_inverse_left`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CMSourceRankTwoShearEvolution.lean](../CMSourceRankTwoShearEvolution.lean), line 150.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSourceRankTwoShearEvolution.lean#L150).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceRankTwoShearEvolution.coupledFrame_inverse_left` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMArithmeticRankTwoCoupling.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSourceRankTwoShearEvolution.lean",
      "blob": "b1b28d3abd90da32357eca1ff31953ee24d1b376",
      "role": "provider_dependent_candidate"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

/-!
# Two-sided finite-rank source interaction as an exact two-time cocycle

The *given* geometric and arithmetic vectors v and w live in separate
positive Hilbert summands. Their rank-one cross maps F : geometry ->
arithmetic and G : arithmetic -> geometry are each genuine source maps.
Since the two ranges lie in opposite summands, F^2=G^2=0. Consequently
(I+a F)(I+a G) is invertible for every complex a, with inverse
(I-a G)(I-a F); no division by any arithmetic response is required.

The interaction-picture transport A(t) A(s)^(-1) obeys identity, inverse,
and exact two-time composition. Its two directions are nonzero for a
nonzero geometric vector and the retained nonzero arithmetic latent source.
This is a constructed reversible bounded causal coupling, NOT an assertion
that a particular physical Hamiltonian, PDE, or canonical Hodge metric
produces it. The interaction time parameter is a chosen dimensionless
coupling clock; physical calibration remains an independent premise.
-/

/-- Source-exact maps; the directional order is NOT interchangeable. -/

/-- The opposite source direction returns its actual geometric cycle. -/

/-- Pointwise finite time bounds, explicit in the source map norms. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
