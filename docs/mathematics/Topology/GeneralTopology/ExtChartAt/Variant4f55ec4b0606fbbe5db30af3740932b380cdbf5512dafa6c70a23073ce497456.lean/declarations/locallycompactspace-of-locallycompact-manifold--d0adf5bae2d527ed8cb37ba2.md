# LocallyCompactSpace.of_locallyCompact_manifold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335787a6cfec75aa7327c40f1c571937620f330a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 907,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1f2599d-66ea-669b-84db-a6c637862ec1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cf3214e-ca2e-d58d-538c-20ba1dfbd03f",
  "kind": "lemma",
  "lexical_name": "LocallyCompactSpace.of_locallyCompact_manifold",
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
  "slug": "locallycompactspace-of-locallycompact-manifold--d0adf5bae2d527ed8cb37ba2",
  "source": {
    "blob": "335787a6cfec75aa7327c40f1c571937620f330a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 926,
    "line": 907,
    "path": "GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0adf5bae2d527ed8cb37ba22e8398cd9d5d9f8923db0dfdc73dce3c13c69955",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtChartAt/Variant4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cf3214e-ca2e-d58d-538c-20ba1dfbd03f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 907–926.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LocallyCompactSpace.of_locallyCompact_manifold (I : ModelWithCorners 𝕜 E H)
    [h : Nonempty M] [LocallyCompactSpace M] :
    LocallyCompactSpace E := by
  rcases h with ⟨x⟩
  obtain ⟨y, hy⟩ := interior_extChartAt_target_nonempty I x
  have h'y : y ∈ (extChartAt I x).target := interior_subset hy
  obtain ⟨s, hmem, hss, hcom⟩ :=
    LocallyCompactSpace.local_compact_nhds ((extChartAt I x).symm y) (extChartAt I x).source
      ((isOpen_extChartAt_source x).mem_nhds ((extChartAt I x).map_target h'y))
  have : IsCompact <| (extChartAt I x) '' s :=
    hcom.image_of_continuousOn <| (continuousOn_extChartAt x).mono hss
  apply this.locallyCompactSpace_of_mem_nhds_of_addGroup (x := y)
  rw [← (extChartAt I x).right_inv h'y]
  apply extChartAt_image_nhds_mem_nhds_of_mem_interior_range
    (PartialEquiv.map_target (extChartAt I x) h'y) _ hmem
  simp only [(extChartAt I x).right_inv h'y]
  exact interior_mono (extChartAt_target_subset_range x) hy

/-- Riesz's theorem applied to manifolds: a locally compact manifold must be modelled on a
finite-dimensional space. This is the converse to `Manifold.locallyCompact_of_finiteDimensional`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtChartAt/Variant4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean#L907).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335787a6cfec75aa7327c40f1c571937620f330a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
