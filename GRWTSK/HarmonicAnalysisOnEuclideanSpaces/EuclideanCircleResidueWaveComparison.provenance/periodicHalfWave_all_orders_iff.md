# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.EuclideanCircleResidueWaveComparison.periodicHalfWave_all_orders_iff`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [EuclideanCircleResidueWaveComparison.lean](../EuclideanCircleResidueWaveComparison.lean), line 204.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/EuclideanCircleResidueWaveComparison.lean#L204).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.EuclideanCircleResidueWaveComparison.periodicHalfWave_all_orders_iff` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/FunctionalAnalysis/LocalSmoothing.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleWaveHilbertFormalization.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/RamanujanFourierHodge.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/FunctionalAnalysis/PiL2.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/SpecialFunctions/CircleAddChar.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/EuclideanCircleResidueWaveComparison.lean",
      "blob": "698b45c6b8b3344f0da297208d37d4c08e965c76",
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
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Exact Euclidean source: openai/math@4eaee87548250b2682affda7d05d947c05554bae
  OAI.Analysis.Fourier.LocalSmoothing.Comparator (result 079)
The comparison below proves an exact MULTIPLIER/FINITE-SAMPLE interface;
it does not assert a global Euclidean-to-torus Lp local-smoothing transference
or a q-uniform trace/sampling theorem.
-/

/-!
# Exact Euclidean half-wave multiplier sampled on unfolded circular frequencies

The period-one circle has integer Fourier frequencies k with angular size
2*pi*abs(k). Every residue r mod q has infinitely many possible integer
frequencies k=r+q*w; a quotient label alone loses winding information and
cannot generally determine periodic half-wave evolution.

The source Euclidean half-wave is exactly the multiplier
    exp(-I * t * ||xi||).
We embed a frequency on the horizontal Euclidean axis and compare the
literal multiplier with the circle phase, including the factor 2*pi.
We then prove the finite residue-alias return with ALL integer labels and
all mixed contributions preserved, plus the complete weighted-l2 invariant
for the periodic Fourier coefficient flow at each Sobolev order.

All-order Fourier regularity is PRESERVED for data that have it: unitary wave
propagation does not smooth arbitrary rough data. OAI's Euclidean local
smoothing Lp spacetime estimate, by itself, is NOT transferred to the torus.
-/

/-- The literal Fourier input multiplier from OpenAI result 079 agrees at
these frequencies, before ANY Fourier inversion or periodization. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
