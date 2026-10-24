# tendsto_measure_of_tendsto_indicator_of_isFiniteMeasure

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
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22a2898a-a5e5-04d8-8586-be96bc555a2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:514b0e43-59dd-1fed-eb18-4483d52d7514",
  "kind": "lemma",
  "lexical_name": "tendsto_measure_of_tendsto_indicator_of_isFiniteMeasure",
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
  "slug": "tendsto-measure-of-tendsto-indicator-of-isfinitemeasure--6354cd9544a8fcbe222b2824",
  "source": {
    "blob": "9d0040a4dbf735790de8ed15a3cee477684388ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6354cd9544a8fcbe222b282480202b386df24cb073108cf78e8a9b466460769f",
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

Occurrence: `result:514b0e43-59dd-1fed-eb18-4483d52d7514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_measure_of_tendsto_indicator_of_isFiniteMeasure
    (μ : Measure α) [IsFiniteMeasure μ] (As_mble : ∀ i, MeasurableSet (As i))
    (h_lim : ∀ x, ∀ᶠ i in L, x ∈ As i ↔ x ∈ A) :
    Tendsto (fun i ↦ μ (As i)) L (𝓝 (μ A)) := by
  rcases L.eq_or_neBot with rfl | _
  · exact tendsto_bot
  apply tendsto_measure_of_ae_tendsto_indicator_of_isFiniteMeasure L ?_ As_mble (ae_of_all μ h_lim)
  exact measurableSet_of_tendsto_indicator L As_mble h_lim

end TendstoIndicator -- section

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Indicator/Variant707b9d8e0fb30cd8ba10c6819566f8a9b120a960129eda10a99c15a5152fc5ae.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d0040a4dbf735790de8ed15a3cee477684388ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
