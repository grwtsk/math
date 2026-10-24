# IsClopen.biUnion_connectedComponent_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a6043f4-a774-94a2-50ea-0ccb3a9e4a9a",
  "kind": "theorem",
  "lexical_name": "IsClopen.biUnion_connectedComponent_eq",
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
  "slug": "isclopen-biunion-connectedcomponent-eq--6f87e12736334ac5aee04d17",
  "source": {
    "blob": "2b2f2955f5c4efc78bcb03ca8be607e7e431e698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 364,
    "path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f87e12736334ac5aee04d17dfdb7033a8d7857c75dc53730381c94940c74e4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a6043f4-a774-94a2-50ea-0ccb3a9e4a9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClopen.biUnion_connectedComponent_eq {Z : Set α} (h : IsClopen Z) :
    ⋃ x ∈ Z, connectedComponent x = Z :=
  Subset.antisymm (iUnion₂_subset fun _ => h.connectedComponent_subset) fun _ h =>
    mem_iUnion₂_of_mem h mem_connectedComponent

open Set.Notation in
/-- If `u v : Set X` and `u ⊆ v` is clopen in `v`, then `u` is the union of the connected
components of `v` in `X` which intersect `u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2f2955f5c4efc78bcb03ca8be607e7e431e698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
