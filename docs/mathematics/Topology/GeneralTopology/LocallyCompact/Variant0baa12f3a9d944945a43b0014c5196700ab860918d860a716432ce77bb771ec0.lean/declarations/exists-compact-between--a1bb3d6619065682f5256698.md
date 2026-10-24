# exists_compact_between

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7da68640-2705-2f2a-a5a8-9f88904118bc",
  "kind": "theorem",
  "lexical_name": "exists_compact_between",
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
  "slug": "exists-compact-between--a1bb3d6619065682f5256698",
  "source": {
    "blob": "798e3dd3aa8b3b0f44bcab08fc4522fe989434aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 180,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1bb3d6619065682f5256698e5feff28ed2e03db7750e4ff9a6c474344a72b0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7da68640-2705-2f2a-a5a8-9f88904118bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_compact_between [LocallyCompactSpace X] {K U : Set X} (hK : IsCompact K)
    (hU : IsOpen U) (h_KU : K ⊆ U) : ∃ L, IsCompact L ∧ K ⊆ interior L ∧ L ⊆ U :=
  let ⟨L, hKL, hL, hLU⟩ := exists_mem_nhdsSet_isCompact_mapsTo continuous_id hK hU h_KU
  ⟨L, hL, subset_interior_iff_mem_nhdsSet.2 hKL, hLU⟩

/-- In a (possibly non-Hausdorff) locally compact space, for every compact set `K`,
`𝓝ˢ K` has a basis consisting of compact sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant0baa12f3a9d944945a43b0014c5196700ab860918d860a716432ce77bb771ec0.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `798e3dd3aa8b3b0f44bcab08fc4522fe989434aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
