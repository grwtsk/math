# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledAddressIsometry.finiteAddressLinear_apply`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CMLabelledAddressIsometry.lean](../CMLabelledAddressIsometry.lean), line 70.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMLabelledAddressIsometry.lean#L70).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledAddressIsometry.finiteAddressLinear_apply` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/FiniteLabelledPickupCocycle.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMScaleResidueHilbertAttachment.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSelectedSignedWaveReturn.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/FunctionalAnalysis/PiL2.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMLabelledAddressIsometry.lean",
      "blob": "63b6a959b62ac5fa5e958af99f7ef0db6f12e8ed",
      "role": "provider_dependent_candidate"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and upstream geometric sources retain their authorship and licenses.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

/-!
# A direct labelled-to-selected Hilbert *isometry* with winding retained

For an injection e between index sets and a finite source type, the finite
Euclidean coordinate vector x is sent to the l2 sum of `lp.single 2 (e i)
(x i)` at DISTINCT destination addresses. The norm is exactly preserved:
`lp.norm_sum_single` plus injectivity proves this without a supplied
isometry axiom or a uniform-in-scale arithmetic bound.

The source is the ACTUAL labelled finite Hilbert state C_j = L2 of the
original finite integer inventory, twice: once for latent Mobius coefficients,
once for observed pickupResponse. Mathlib's existing PiLp L2 sum/product
isometry identifies it with finite coefficients indexed by the disjoint sum.

For the ACTUAL CM selected H, reserve the initial finite basis-stage indices
0,...,rank-1 for the already constructed genuine original rational Betti
cycle classes. Place all source latent and observed coordinates at DISTINCT
later stage addresses `rank+i` and `rank+2^j+i`, always using residue zero.
Thus this is a source-preserving injective *address* comparison, not a
periodization or a claim that the CM Betti metric is canonical. It must NOT
be confused with the earlier lossy additive-residue wavepacket. There is no
isometry claim between full arbitrary Betti and labelled Hilbert spaces.
-/

/-- A linear finite-support placement of source coordinates into l2. -/

/-- The source coordinate is unchanged at its own UNIQUE address. -/

/-- A true *isometric* linear embedding, with explicit complete-Hilbert
metric and source-coordinate theorem. -/

/-- The source's latent ORIGINAL integer coefficients are retained under
the Mathlib sum/product isometry; no residue quotient is involved. -/

/-- The new source addresses cannot collide with the OLD chosen Betti
basis coordinates. This is an exact address fact, NOT a theorem that a
physical wave preserves either subspace or its canonical polarization. -/

/-- DIRECT source-dependent isometric placement of BOTH actual causal
channels into the SAME selected CM all-scale Hilbert space. The CM basis
rank sets the offset; no additive residue collision can occur. -/

/-- The exact chosen source coordinate is recoverable in the target Hilbert
space at its original, collision-free label address. No decoder for the
older ADDITIVELY aggregated residue quotient is claimed. -/

/-- Coherent readout from the EMBEDDED, original observed source labels.
This sums full integer-address coordinates, NOT additive residue buckets. -/

/-- Source-preserving readout is an exact equality for EVERY labelled state.
In particular this map does not replace coherent scalar energy by l2 norm. -/

/-- The actual finite, causal integer-labelled state retains its FULL
positive source Hilbert norm after the selected-scale placement. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
