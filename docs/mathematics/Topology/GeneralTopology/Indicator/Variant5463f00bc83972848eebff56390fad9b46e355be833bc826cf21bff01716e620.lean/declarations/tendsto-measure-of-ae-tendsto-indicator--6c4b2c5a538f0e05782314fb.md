# tendsto_measure_of_ae_tendsto_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46fbc478-aa07-1a3c-c8ee-a9269ec1ef88",
  "kind": "lemma",
  "lexical_name": "tendsto_measure_of_ae_tendsto_indicator",
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
  "slug": "tendsto-measure-of-ae-tendsto-indicator--6c4b2c5a538f0e05782314fb",
  "source": {
    "blob": "b9ee68f8dd4c7c2899ebb02d71276b18e36e0b13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant5463f00bc83972848eebff56390fad9b46e355be833bc826cf21bff01716e620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c4b2c5a538f0e05782314fb396c4d751e3763ed7989b6cae018f35faf9f07db",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Indicator/Variant5463f00bc83972848eebff56390fad9b46e355be833bc826cf21bff01716e620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46fbc478-aa07-1a3c-c8ee-a9269ec1ef88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_measure_of_ae_tendsto_indicator {μ : Measure α} (A_mble : MeasurableSet A)
    (As_mble : ∀ i, MeasurableSet (As i)) {B : Set α} (B_mble : MeasurableSet B)
    (B_finmeas : μ B ≠ ∞) (As_le_B : ∀ᶠ i in L, As i ⊆ B)
    (h_lim : ∀ᵐ x ∂μ, ∀ᶠ i in L, x ∈ As i ↔ x ∈ A) :
    Tendsto (fun i ↦ μ (As i)) L (𝓝 (μ A)) := by
  simp_rw [← MeasureTheory.lintegral_indicator_one A_mble,
           ← MeasureTheory.lintegral_indicator_one (As_mble _)]
  refine tendsto_lintegral_filter_of_dominated_convergence (B.indicator (1 : α → ℝ≥0∞))
          (Eventually.of_forall ?_) ?_ ?_ ?_
  · exact fun i ↦ Measurable.indicator measurable_const (As_mble i)
  · filter_upwards [As_le_B] with i hi
    exact Eventually.of_forall fun x ↦ by grw [hi]
  · rwa [← lintegral_indicator_one B_mble] at B_finmeas
  · simpa only [Pi.one_def, tendsto_indicator_const_apply_iff_eventually] using h_lim

/-- If `μ` is a finite measure and the indicators of measurable sets `Aᵢ` tend pointwise
almost everywhere to the indicator of a measurable set `A`, then the measures `μ Aᵢ` tend to
the measure `μ A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Indicator/Variant5463f00bc83972848eebff56390fad9b46e355be833bc826cf21bff01716e620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Indicator/Variant5463f00bc83972848eebff56390fad9b46e355be833bc826cf21bff01716e620.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9ee68f8dd4c7c2899ebb02d71276b18e36e0b13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
