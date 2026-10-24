# measure_eq_content_of_regular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d1e3f47-ba34-98ca-e466-4b489bf039d7",
  "kind": "theorem",
  "lexical_name": "measure_eq_content_of_regular",
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
  "slug": "measure-eq-content-of-regular--568060fc9f6f198f2201af4b",
  "source": {
    "blob": "4a2539b7b86548703cbfbeaf15060a2de2c04683",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 444,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:568060fc9f6f198f2201af4b0081b3b70b82ee19854e42d9e203392ac6b95551",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d1e3f47-ba34-98ca-e466-4b489bf039d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_eq_content_of_regular (H : MeasureTheory.Content.ContentRegular μ)
    (K : TopologicalSpace.Compacts G) : μ.measure ↑K = μ K := by
  refine' le_antisymm _ _
  · apply ENNReal.le_of_forall_pos_le_add
    intro ε εpos _
    obtain ⟨K', K'_hyp⟩ := contentRegular_exists_compact μ H K (ne_bot_of_gt εpos)
    calc
      μ.measure ↑K ≤ μ.measure (interior ↑K') := by
        rw [μ.measure_apply isOpen_interior.measurableSet,
          μ.measure_apply K.isCompact.measurableSet]
        exact μ.outerMeasure.mono K'_hyp.left
      _ ≤ μ K' := by
        rw [μ.measure_apply (IsOpen.measurableSet isOpen_interior)]
        exact μ.outerMeasure_interior_compacts K'
      _ ≤ μ K + ε := K'_hyp.right
  · rw [μ.measure_apply (IsCompact.measurableSet K.isCompact)]
    exact μ.le_outerMeasure_compacts K
#align measure_theory.content.measure_eq_content_of_regular MeasureTheory.Content.measure_eq_content_of_regular

end RegularContents

end Content

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variantff4b0e459addf1df71d0d32442a8a50150386fec416f1df72f6351e6191bf725.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a2539b7b86548703cbfbeaf15060a2de2c04683` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
