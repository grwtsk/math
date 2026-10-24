# chartAt_inclusion_symm_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b17a2cbb-480f-5736-5e5f-5bf6e1e3ba2e",
  "kind": "theorem",
  "lexical_name": "chartAt_inclusion_symm_eventuallyEq",
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
  "slug": "chartat-inclusion-symm-eventuallyeq--3a0bb827e3dd2586f23613f0",
  "source": {
    "blob": "abd81ea31de08f385703acb1d45d7dc424966258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1346,
    "line": 1330,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a0bb827e3dd2586f23613f068b2f44058f9f4a3019ca28cf14965c5721c3510",
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

Occurrence: `result:b17a2cbb-480f-5736-5e5f-5bf6e1e3ba2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1330–1346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chartAt_inclusion_symm_eventuallyEq {U V : Opens M} (hUV : U ≤ V) {x : U} :
    (chartAt H (Opens.inclusion hUV x)).symm
    =ᶠ[𝓝 (chartAt H (Opens.inclusion hUV x) (Set.inclusion hUV x))]
    Opens.inclusion hUV ∘ (chartAt H x).symm := by
  set e := chartAt H (x : M)
  have heUx_nhds : (e.subtypeRestr ⟨x⟩).target ∈ 𝓝 (e x) := by
    apply (e.subtypeRestr ⟨x⟩).open_target.mem_nhds
    exact e.map_subtype_source ⟨x⟩ (mem_chart_source _ _)
  exact Filter.eventuallyEq_of_mem heUx_nhds <| e.subtypeRestr_symm_eqOn_of_le ⟨x⟩
    ⟨Opens.inclusion hUV x⟩ hUV
end TopologicalSpace.Opens

/-- Restricting a chart of `M` to an open subset `s` yields a chart in the maximal atlas of `s`.

NB. We cannot deduce membership in `atlas H s` in general: by definition, this atlas contains
precisely the restriction of each preferred chart at `x ∈ s` --- whereas `atlas H M`
can contain more charts than these. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantfa26c5b9ef653120f7791f59e04cf4d069f62974cf7252b32937bfe3ca37840b.lean#L1330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd81ea31de08f385703acb1d45d7dc424966258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
