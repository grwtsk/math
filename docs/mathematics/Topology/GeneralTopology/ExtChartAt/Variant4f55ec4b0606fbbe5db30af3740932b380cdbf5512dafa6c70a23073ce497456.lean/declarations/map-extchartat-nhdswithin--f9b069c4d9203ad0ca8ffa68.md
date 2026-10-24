# map_extChartAt_nhdsWithin'

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
      "line": 691,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:290169b2-7157-4d4b-9421-3c7061839765",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:632bd3bf-0436-c7c1-593d-1bee72f7608a",
  "kind": "theorem",
  "lexical_name": "map_extChartAt_nhdsWithin'",
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
  "slug": "map-extchartat-nhdswithin--f9b069c4d9203ad0ca8ffa68",
  "source": {
    "blob": "335787a6cfec75aa7327c40f1c571937620f330a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 694,
    "line": 691,
    "path": "GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9b069c4d9203ad0ca8ffa68832e0cfe54d827039ea390c5612e8eee61171cec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtChartAt/Variant4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:632bd3bf-0436-c7c1-593d-1bee72f7608a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 691–694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_extChartAt_nhdsWithin' {x y : M} (hy : y ∈ (extChartAt I x).source) :
    map (extChartAt I x) (𝓝[s] y) = 𝓝[(extChartAt I x).symm ⁻¹' s ∩ range I] extChartAt I x y :=
  map_extend_nhdsWithin _ <| by rwa [← extChartAt_source I]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtChartAt/Variant4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean#L691).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335787a6cfec75aa7327c40f1c571937620f330a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
