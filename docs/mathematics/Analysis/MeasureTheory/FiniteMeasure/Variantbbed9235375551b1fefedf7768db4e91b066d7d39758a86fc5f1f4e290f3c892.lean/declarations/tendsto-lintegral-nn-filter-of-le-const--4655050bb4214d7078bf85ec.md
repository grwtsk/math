# tendsto_lintegral_nn_filter_of_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31019cddd14b223580fba902eb3cc3381a358fdc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 577,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2097681b-01e6-55a8-1ea0-a2ac1a946b5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3ed2121-2e6f-6016-c730-4341be9fefd0",
  "kind": "theorem",
  "lexical_name": "tendsto_lintegral_nn_filter_of_le_const",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "tendsto-lintegral-nn-filter-of-le-const--4655050bb4214d7078bf85ec",
  "source": {
    "blob": "31019cddd14b223580fba902eb3cc3381a358fdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 577,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4655050bb4214d7078bf85ecc57f15bfd9b4650cedc637fb019df1282393204f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3ed2121-2e6f-6016-c730-4341be9fefd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_lintegral_nn_filter_of_le_const {ι : Type*} {L : Filter ι} [L.IsCountablyGenerated]
    (μ : Measure Ω) [IsFiniteMeasure μ] {fs : ι → Ω →ᵇ ℝ≥0} {c : ℝ≥0}
    (fs_le_const : ∀ᶠ i in L, ∀ᵐ ω : Ω ∂μ, fs i ω ≤ c) {f : Ω → ℝ≥0}
    (fs_lim : ∀ᵐ ω : Ω ∂μ, Tendsto (fun i => fs i ω) L (𝓝 (f ω))) :
    Tendsto (fun i => ∫⁻ ω, fs i ω ∂μ) L (𝓝 (∫⁻ ω, f ω ∂μ)) := by
  refine tendsto_lintegral_filter_of_dominated_convergence (fun _ => c)
    (eventually_of_forall fun i => (ENNReal.continuous_coe.comp (fs i).continuous).measurable) ?_
    (@lintegral_const_lt_top _ _ μ _ _ (@ENNReal.coe_ne_top c)).ne ?_
  · simpa only [Function.comp_apply, ENNReal.coe_le_coe] using fs_le_const
  · simpa only [Function.comp_apply, ENNReal.tendsto_coe] using fs_lim
#align measure_theory.finite_measure.tendsto_lintegral_nn_filter_of_le_const MeasureTheory.FiniteMeasure.tendsto_lintegral_nn_filter_of_le_const

/-- A bounded convergence theorem for a finite measure:
If a sequence of bounded continuous non-negative functions are uniformly bounded by a constant
and tend pointwise to a limit, then their integrals (`MeasureTheory.lintegral`) against the finite
measure tend to the integral of the limit.

A related result with more general assumptions is
`MeasureTheory.FiniteMeasure.tendsto_lintegral_nn_filter_of_le_const`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31019cddd14b223580fba902eb3cc3381a358fdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
