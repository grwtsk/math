# Topology.IsInducing.isOpenMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40a2a3c7-bf6a-2c42-536d-5b16ad5d8c0f",
  "kind": "lemma",
  "lexical_name": "Topology.IsInducing.isOpenMap",
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
  "slug": "topology-isinducing-isopenmap--6ca3c4722261afe07b721df8",
  "source": {
    "blob": "c2e5d7378343efa00498ec5718b6fb3bcd102505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 453,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd4bacd6f27194f7e0b12aad3dd327a6aa873ab21248f706217107208fcc38250.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ca3c4722261afe07b721df8013f2df8c4cae279de133480b4af1a01986db092",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd4bacd6f27194f7e0b12aad3dd327a6aa873ab21248f706217107208fcc38250.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40a2a3c7-bf6a-2c42-536d-5b16ad5d8c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma Topology.IsInducing.isOpenMap (hi : IsInducing f) (ho : IsOpen (range f)) :
    IsOpenMap f :=
  IsOpenMap.of_nhds_le fun _ => (hi.map_nhds_of_mem _ <| IsOpen.mem_nhds ho <| mem_range_self _).ge

@[deprecated (since := "2024-10-28")] alias Inducing.isOpenMap := IsInducing.isOpenMap

/-- Preimage of a dense set under an open map is dense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd4bacd6f27194f7e0b12aad3dd327a6aa873ab21248f706217107208fcc38250.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd4bacd6f27194f7e0b12aad3dd327a6aa873ab21248f706217107208fcc38250.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2e5d7378343efa00498ec5718b6fb3bcd102505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
