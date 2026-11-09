# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.SourceCausalShear.sourceGraph_latent`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [ResidueCircleSourceCausalShear.lean](../ResidueCircleSourceCausalShear.lean), line 119.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleSourceCausalShear.lean#L119).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.SourceCausalShear.sourceGraph_latent` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/FunctionalAnalysis/ProdL2.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleSourceCausalShear.lean",
      "blob": "d6748188785ee8a7ffa74bf593c27b2b10718b45",
      "role": "already_merged_core"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

/-!
# Complete-Hilbert two-time causal shear

For a source-identified, bounded observation family B(t) on a complex Hilbert
space H, retain BOTH the latent source x and the observed response y, in the
actual Hilbert product `WithLp 2 (H × H)`.

  W(s,t)(x,y) = (x, y + (B(t)-B(s))x).

This is a nonautonomous two-time evolution, with W(s,s)=1,
W(t,u)W(s,t)=W(s,u), W(t,s)=W(s,t)^{-1}; it transports the source graph
(x,B(s)x) exactly to (x,B(t)x). It never divides by a response or destroys
latent source labels when an observed response is zero before birth.

No independent homogeneous-in-time semigroup, physical Hamiltonian, or
uniform estimate over source inventories follows from these identities.
-/

/-- A bounded source-to-observation family; this definition does NOT supply
an arithmetic estimate, nor posit an invertible response at every time. -/

/-- EXACT composition, without invertibility of B(t), nonzero packets,
restricting to a particular source vector, or deleting signed increments. -/

/-- Graph of the actual response, with latent coefficient source retained. -/

/-- Source graph is transported from every s to every t, including a zero
observed response at s and a nonzero response at t. -/

/-- The two source coordinates are recovered without loss from the graph,
independent of any arithmetic estimate. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
