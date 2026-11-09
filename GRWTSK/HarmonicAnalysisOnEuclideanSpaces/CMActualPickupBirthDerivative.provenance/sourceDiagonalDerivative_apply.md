# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualPickupBirthDerivative.sourceDiagonalDerivative_apply`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CMActualPickupBirthDerivative.lean](../CMActualPickupBirthDerivative.lean), line 119.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMActualPickupBirthDerivative.lean#L119).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualPickupBirthDerivative.sourceDiagonalDerivative_apply` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/FiniteLabelledPickupCocycle.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/SpecialFunctions/ExpDeriv.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMActualPickupBirthDerivative.lean",
      "blob": "0aa25c88d682317fa6ffb396f7db091f25c04fd7",
      "role": "already_merged_core"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

/-!
# Exact birth-time derivative of the original Möbius pickup response

DO NOT replace the existing `GRWTSK.RiemannHypothesis.CCC.pickupResponse`.
For every positive integer n, its activation is at log n, with zero value
at birth and a one-sided jump in the first derivative. Away from the birth,
its derivative is exactly 0 or exp(-t/2). There is no impulsive delta in the
FIRST distributional derivative: the source response itself is continuous.
This module gives the original scalar derivative and defines the finite
labelled derivative operator. The operator-valued differentiability bridge,
its one-sided values, and the global absolutely-continuous return remain
explicit verification gates, not concealed as axioms.
-/

/-- The original causal source is exactly zero prior to its own birth. -/

/-- The original response has its ORIGINAL signed source formula after birth. -/

/-- Source-exact two-sided derivative on the strictly inactive cell. -/

/-- Source-exact derivative on the strictly active cell. The factor 2 in
`pickupResponse` cancels the derivative factor 1/2 of exp(-t/2). -/

/-- The finite source retains exactly each original integer n=i+1.
No residue aggregation or absolute-value conversion enters this slope. -/

/-- The SOURCE derivative is uniformly bounded, pointwise on the active
nonnegative clock, independently of j and of the Möbius signs. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
