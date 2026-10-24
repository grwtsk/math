# _root_.GRWTSK.Topology.GeneralTopology.IsCompletelyPseudoMetrizableSpace.Variant45e2fe2d79f14e9cf4e87f13f413eef94b418384fc3eaad3dce7b1a730ed54c9.IsClosed.isCompletelyPseudoMetrizableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e63dbb19-6642-f1fb-ccc6-675ce27f2e46",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsCompletelyPseudoMetrizableSpace.Variant45e2fe2d79f14e9cf4e87f13f413eef94b418384fc3eaad3dce7b1a730ed54c9.IsClosed.isCompletelyPseudoMetrizableSpace",
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
  "slug": "root-grwtsk-topology-generaltopology-iscompletelypseudometrizablespace-v--be896a88be129f924bb5e4f7",
  "source": {
    "blob": "6745cb7148bfc2e24d8036d85d85d311c308a2b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variant4466f08ffbcf69b7e2f407e05f59762f3b33a688ee3b4ca04a2779af13855a09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be896a88be129f924bb5e4f76909d20bc1868a22b5d89bdbc16630a69fefde0a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyMetrizable/Variant4466f08ffbcf69b7e2f407e05f59762f3b33a688ee3b4ca04a2779af13855a09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e63dbb19-6642-f1fb-ccc6-675ce27f2e46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsCompletelyPseudoMetrizableSpace.Variant45e2fe2d79f14e9cf4e87f13f413eef94b418384fc3eaad3dce7b1a730ed54c9.IsClosed.isCompletelyPseudoMetrizableSpace
    [TopologicalSpace X] [IsCompletelyPseudoMetrizableSpace X]
    {s : Set X} (hs : IsClosed s) : IsCompletelyPseudoMetrizableSpace s :=
  hs.isClosedEmbedding_subtypeVal.IsCompletelyPseudoMetrizableSpace

end IsCompletelyPseudoMetrizableSpace

/-- A topological space is completely metrizable if there exists a metric space structure
compatible with the topology which makes the space complete.
To endow such a space with a compatible distance, use
`letI := upgradeIsCompletelyMetrizable X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyMetrizable/Variant4466f08ffbcf69b7e2f407e05f59762f3b33a688ee3b4ca04a2779af13855a09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variant4466f08ffbcf69b7e2f407e05f59762f3b33a688ee3b4ca04a2779af13855a09.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6745cb7148bfc2e24d8036d85d85d311c308a2b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
