# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMFullCycleNonzeroCoupling.actualFullCycle_selected_nonzero`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CMFullCycleNonzeroCoupling.lean](../CMFullCycleNonzeroCoupling.lean), line 110.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMFullCycleNonzeroCoupling.lean#L110).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMFullCycleNonzeroCoupling.actualFullCycle_selected_nonzero` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMActualMoebiusRankTwoInteraction.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMFullCycleNonzeroCoupling.lean",
      "blob": "cc753ecbfe461902da4ce2ef8582d0ac17533c99",
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
# Explicit NONZERO geometric source: the true degree-zero full cycle

The prior interaction assumed a chosen actual rational cycle had nonzero
selected Betti realization. In degree zero, the pinned OpenAI source has:

* `SurfaceConstructionQ.CM.fullCycle V`: the genuine whole-variety cycle;
* `fullCycle_class`: its geometric Betti class is the H^0 cup unit;
* `HigherThom.rationalCycleClassMap_eq_geometric`: the original rational
  Thom/Betti cycle-class map agrees with the geometric class map;
* `TopTrace.CM.SurfaceConstruction.rationalUnit_ne_zero`: under the exact
  analytic path-connectedness hypothesis, that unit is nonzero.

The chosen source rational Betti basis is finite. Its coordinate embedding
into the selected ALL-SCALE Hilbert carrier is injective, because different
basis coordinates occupy different scale addresses. Therefore this is a
particular actual, nonzero geometric cycle with a nonzero Hilbert vector,
not an arbitrary `v ≠ 0` assumed to make the interaction nontrivial.

No canonical Hodge polarization, period comparison, RH estimate or physical
wave generator is inferred. The original path-connectedness and finite
rational Betti-dimensionality assumptions are not erased. -/

/-- The literal full projective variety, as a rational cycle of codimension
zero in the ACTUAL geometric cycle source type. -/

/-- The genuine original Betti source class is nonzero; no invented cycle
witness is supplied. This uses the ACTUAL analytic connectedness hypothesis. -/

/-- Now the **specific whole-variety algebraic source** has a nonzero
selected all-scale Hilbert realization. No arbitrary geometric nonzero
hypothesis remains: the actual `H^0` unit supplies it. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
