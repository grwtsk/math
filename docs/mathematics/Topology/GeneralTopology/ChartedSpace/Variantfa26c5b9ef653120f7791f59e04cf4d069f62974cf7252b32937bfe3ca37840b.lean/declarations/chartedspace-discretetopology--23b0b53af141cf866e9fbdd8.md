# ChartedSpace.discreteTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3735544-06df-962d-295e-ab2a428b78db",
  "kind": "theorem",
  "lexical_name": "ChartedSpace.discreteTopology",
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
  "slug": "chartedspace-discretetopology--23b0b53af141cf866e9fbdd8",
  "source": {
    "blob": "abd81ea31de08f385703acb1d45d7dc424966258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 732,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23b0b53af141cf866e9fbdd8b0bea866ff7439aad75c184dce0a682487f82565",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3735544-06df-962d-295e-ab2a428b78db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 732–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ChartedSpace.discreteTopology [DiscreteTopology H] : DiscreteTopology M := by
  apply singletons_open_iff_discrete.1 (fun x ↦ ?_)
  have : IsOpen ((chartAt H x).source ∩ (chartAt H x) ⁻¹' {chartAt H x x}) :=
    isOpen_inter_preimage _ (isOpen_discrete _)
  convert this
  refine Subset.antisymm (by simp) ?_
  simp only [subset_singleton_iff, mem_inter_iff, mem_preimage, mem_singleton_iff, and_imp]
  intro y hy h'y
  exact (chartAt H x).injOn hy (mem_chart_source _ x) h'y

end

section Constructions

/-- An empty type is a charted space over any topological space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean#L732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd81ea31de08f385703acb1d45d7dc424966258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
