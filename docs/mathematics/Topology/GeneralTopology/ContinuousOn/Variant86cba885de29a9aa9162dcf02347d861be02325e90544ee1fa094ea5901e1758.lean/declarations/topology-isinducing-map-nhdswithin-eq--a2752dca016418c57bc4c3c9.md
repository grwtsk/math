# Topology.IsInducing.map_nhdsWithin_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:567c1a09-51bb-9584-0711-20515bd13bd2",
  "kind": "lemma",
  "lexical_name": "Topology.IsInducing.map_nhdsWithin_eq",
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
  "slug": "topology-isinducing-map-nhdswithin-eq--a2752dca016418c57bc4c3c9",
  "source": {
    "blob": "78fa17151b24c9e17a4a36e3393621f136245392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 840,
    "line": 837,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant86cba885de29a9aa9162dcf02347d861be02325e90544ee1fa094ea5901e1758.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2752dca016418c57bc4c3c906f4d2a30bb4fcd88662f322a874ca4ced92a69a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variant86cba885de29a9aa9162dcf02347d861be02325e90544ee1fa094ea5901e1758.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:567c1a09-51bb-9584-0711-20515bd13bd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 837–840.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Topology.IsInducing.map_nhdsWithin_eq {f : α → β} (hf : IsInducing f) (s : Set α) (x : α) :
    map f (𝓝[s] x) = 𝓝[f '' s] f x := by
  ext; simp +contextual [mem_nhdsWithin_iff_eventually, hf.nhds_eq_comap, forall_comm (α := _ ∈ _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variant86cba885de29a9aa9162dcf02347d861be02325e90544ee1fa094ea5901e1758.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant86cba885de29a9aa9162dcf02347d861be02325e90544ee1fa094ea5901e1758.lean#L837).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78fa17151b24c9e17a4a36e3393621f136245392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
