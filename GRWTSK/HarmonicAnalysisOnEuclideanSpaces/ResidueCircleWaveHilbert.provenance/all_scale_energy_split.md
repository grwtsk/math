# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.all_scale_energy_split`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [ResidueCircleWaveHilbert.lean](../ResidueCircleWaveHilbert.lean), line 220.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleWaveHilbert.lean#L220).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.all_scale_energy_split` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ClosedSubmodule.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/FunctionalAnalysis/LocalSmoothing.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Geometry/HodgeConjectureCMAbelianVarieties.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/FareyResidueChannelDecomposition.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueGradedConvolution.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleWaveHilbert.lean",
      "blob": "3a17b268dc195ba32653df3892780a4515559e30",
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

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
This source is not installed in the public GRWTSK root. It neither asserts nor
imports an unverified geometric realization theorem. It carries the exact
OpenAI smoothing/Hodge import surfaces without changing their statements.
-/

/-!
# Residue-circle waves in a complete Hilbert fiber

Source alignment:
* The source residue labels are ALL gcd strata of `ZMod q`; nonunits are
  retained. A class selector is not automatically invariant under translation.
* The `openai/math` Euclidean half-wave local-smoothing comparator addresses
  Schwartz functions on `EuclideanSpace R (Fin n)` with n >= 2, t in [1,2],
  p >= 2 and specified Sobolev loss. It is not silently transported to a
  circle, to the source Möbius waveform, or to a Hilbert completion.
* The imported CM-Hodge theorem concerns algebraic realizability of rational
  Hodge (p,p) classes on CM abelian varieties. It does NOT say that all vectors
  in a Hilbert completion are algebraic, nor construct the needed realization.
* A *specified set* of realized cycle vectors in an already complete complex
  Hilbert space determines a closed span. Its orthogonal complement is the
  rigorously isolated "nonalgebraic residual relative to those realizations".
* The *same* closed algebraic subspace is used at all cyclic coordinates in
  the elementary covariantly trivial model. A nontrivial bundle requires
  unitary seam maps and a compatible family of projections.

All identities below are exact algebra/finite-Hilbert consequences, not a
claim of global PDE smoothing, source arithmetic cancellation or RH.
-/

/-- A SOURCE-EXPLICIT all-Sobolev-order DYADIC frequency ledger. Its
meaning is weighted square summability at every nonnegative integer order,
not ordinary smoothness in a geometric variable until an elliptic/Fourier
realization theorem identifies the weights with differential regularity.
No Euclidean PDE local-smoothing theorem is used to populate this predicate. -/

/-- Every residue class, including nonunits, reconstructs its source sample.
No positive/negative arithmetic signs are replaced. -/

/-- Exact algebraic/residual return on the concrete ALL-SCALE Hilbert sum.
The supplied cycleImages must be produced by the selected realization map;
this theorem does not itself identify any source geometric cycle. -/

/-- Complete positive all-scale energy decomposes exactly by orthogonal
projection. This does not assert that an arbitrary source waveform is already
in `lp ... 2`; that membership is an explicit subsequent analytic obligation. -/

/-- A complete-Hilbert, bounded finite-time wave at each scale.
This profile does NOT construct a Euclidean PDE propagator or grant a common
bound across scales; those are separate source-and-domain obligations. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
