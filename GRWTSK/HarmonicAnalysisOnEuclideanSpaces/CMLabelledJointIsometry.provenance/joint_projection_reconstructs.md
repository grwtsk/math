# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledJointIsometry.joint_projection_reconstructs`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CMLabelledJointIsometry.lean](../CMLabelledJointIsometry.lean), line 125.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMLabelledJointIsometry.lean#L125).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledJointIsometry.joint_projection_reconstructs` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleWaveHilbert.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/FunctionalAnalysis/ProdL2.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMLabelledJointIsometry.lean",
      "blob": "2b58e6108c854c8dd4ef882593281a48fbc9173b",
      "role": "provider_dependent_candidate"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream Mathlib code and its authorship/license are unchanged.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

/-!
# A genuine positive-Hilbert isometric joint comparison

This source constructs canonical linear isometries from two ALREADY normed,
complete, complex inner product spaces H and C into the Hilbert direct sum
`WithLp 2 (H × C)`. There is no claim that H and C themselves are isometrically
equivalent, or that the rational Betti source carries a canonical Hodge metric.

Given the actual closed span of cycle classes in H, its orthogonal projector
extends to the first factor, while the full second factor survives the
orthogonal residual. The exact L2 norm, not a supremum product norm, is used.
The two natural inclusions do not discard any source degree of freedom.
-/

/-- The full latent-plus-observed source Hilbert space is an isometric
second summand, including observed zeros before causal birth. -/

/-- Fidelity of the two normed source spaces. -/

/-- Inner-product orthogonality is between the TWO source factors; it does
not assert orthogonality of their signed scalar observations. -/

/-- The source is reconstructed by its two genuine isometric inclusions. -/

/-- Extend the ACTUAL selected algebraic orthogonal projector to the
first summand; the causal source carries no invented algebraic class. -/

/-- Orthogonal complement of the *geometric* selected CM carrier in the
joint space, including EVERY causal source coordinate. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
