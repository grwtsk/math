# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMArithmeticRankTwoCoupling.coupledOperator_selfAdjoint`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CMArithmeticRankTwoCoupling.lean](../CMArithmeticRankTwoCoupling.lean), line 93.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMArithmeticRankTwoCoupling.lean#L93).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMArithmeticRankTwoCoupling.coupledOperator_selfAdjoint` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMLabelledJointIsometry.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMArithmeticRankTwoCoupling.lean",
      "blob": "78b67365199b643eaab9dead25c842242e8eb99d",
      "role": "provider_dependent_candidate"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Source proof candidate / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

/-!
# Nontrivial bounded two-way coupling on a positive Hilbert direct sum

For an actual geometric source vector `v : H` and an actual arithmetic
source vector `w : C`, form the TWO cross-sector rank-one operators

   F = |w> <v|       (geometry to causal arithmetic),
   G = |v> <w|       (causal arithmetic to geometry).

Their sum is self-adjoint, is nontrivial if BOTH source vectors are nonzero,
and has two separate exact operator-norm formulas. No scalar signed-energy
identity is replaced by Hilbert positivity. An optional real-norm
normalization produces TWO norm-one cross maps without a hidden uniform
summability premise. A source-specific choice of v and w is made in the
next leaf; the generic definitions do not claim a physical Hamiltonian.
-/

/-- Real source-determined geometry-to-arithmetic cross channel. -/

/-- Self-adjointness is a statement about the constructed positive-Hilbert
coupling, NOT a claim that its time-dependent source is a Hamiltonian flow. -/

/-- The CM source and its causal source are not disconnected: both channels
are nonzero under the two explicit, independently checkable source witnesses. -/

/-- Normalization of actual source vectors gives a scale-independent norm
ONE for both selected cross maps. It does NOT bound the unnormalized
source amplitude or its coherent signed scalar summation. -/

/-- Generic full-state application; the source signed coordinates are
preserved INSIDE w, rather than replaced by positive residue variances. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
