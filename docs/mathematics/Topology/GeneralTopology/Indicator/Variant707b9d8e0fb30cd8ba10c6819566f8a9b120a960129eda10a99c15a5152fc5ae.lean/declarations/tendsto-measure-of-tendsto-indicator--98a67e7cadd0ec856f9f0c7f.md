# tendsto_measure_of_tendsto_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d0040a4dbf735790de8ed15a3cee477684388ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:039e94db-0bc7-7a6c-0692-6f8e7d4a7456",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52f1aad5-1189-f649-4585-372b65041ddc",
  "kind": "lemma",
  "lexical_name": "tendsto_measure_of_tendsto_indicator",
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
  "slug": "tendsto-measure-of-tendsto-indicator--98a67e7cadd0ec856f9f0c7f",
  "source": {
    "blob": "9d0040a4dbf735790de8ed15a3cee477684388ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98a67e7cadd0ec856f9f0c7f5603e398d25c09a4e8e6cd2f663b0fbb1336b782",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52f1aad5-1189-f649-4585-372b65041ddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_measure_of_tendsto_indicator {μ : Measure α}
    (As_mble : ∀ i, MeasurableSet (As i)) {B : Set α} (B_mble : MeasurableSet B)
    (B_finmeas : μ B ≠ ∞) (As_le_B : ∀ᶠ i in L, As i ⊆ B)
    (h_lim : ∀ x, ∀ᶠ i in L, x ∈ As i ↔ x ∈ A) :
    Tendsto (fun i ↦ μ (As i)) L (𝓝 (μ A)) := by
  rcases L.eq_or_neBot with rfl | _
  · exact tendsto_bot
  apply tendsto_measure_of_ae_tendsto_indicator L ?_ As_mble B_mble B_finmeas As_le_B
        (ae_of_all μ h_lim)
  exact measurableSet_of_tendsto_indicator L As_mble h_lim

/-- If `μ` is a finite measure and the indicators of measurable sets `Aᵢ` tend pointwise to
the indicator of a set `A`, then the measures `μ Aᵢ` tend to the measure `μ A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d0040a4dbf735790de8ed15a3cee477684388ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
