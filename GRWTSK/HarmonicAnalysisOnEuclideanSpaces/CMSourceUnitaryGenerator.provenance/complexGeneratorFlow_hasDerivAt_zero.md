# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceUnitaryGenerator.complexGeneratorFlow_hasDerivAt_zero`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CMSourceUnitaryGenerator.lean](../CMSourceUnitaryGenerator.lean), line 68.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSourceUnitaryGenerator.lean#L68).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceUnitaryGenerator.complexGeneratorFlow_hasDerivAt_zero` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSourceUnitaryInteraction.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSourceUnitaryGenerator.lean",
      "blob": "1b8276005efb6f3a826016746d7a84529eb0096c",
      "role": "provider_dependent_candidate"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

/-!
# Explicit holomorphic generator of the nontrivial rank-two interaction

The actual two-way self-adjoint source interaction K(v,w) is a bounded
complex-linear endomorphism on the complete joint Hilbert sum. For a real,
EXTERNAL coupling-strength κ, the complex-time generator is

                     L = -i κ K(v,w).

The globally convergent Banach-algebra exponential exp(z L) has the source-
explicit derivative d/dz exp(z L) = exp(z L) L = L exp(z L). This is
Mathlib's existing `NormedSpace.hasDerivAt_exp_smul_const` specialization,
not a guessed formal derivative or a finite Taylor approximation.

The unitary real-clock family is precisely exp(-i κ (t-s) K); the complex
parameter theorem is not itself a physical constitutive equation. The
labelled real pickup responses have separate birth thresholds t=log(n),
where pointwise smooth generator identities for the FULL causal evolution
need a piecewise/absolutely-continuous analysis. The coefficient κ and the
geometric metric remain externally selected, not dynamically derived.
-/

/-- The explicit, source-dependent skew-adjoint generator. Its physical
strength is the independent REAL parameter κ, not a Mobius bound. -/

/-- Genuine derivative on the complete Banach algebra, for ALL complex
parameters. This is a source-specialized analytic identity, not a physical
claim about the nondifferentiable arithmetic birth points. -/

/-- The coupling-strength normalization is explicit: zero coupling means
zero generator, with no hidden source arithmetic assumptions. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
