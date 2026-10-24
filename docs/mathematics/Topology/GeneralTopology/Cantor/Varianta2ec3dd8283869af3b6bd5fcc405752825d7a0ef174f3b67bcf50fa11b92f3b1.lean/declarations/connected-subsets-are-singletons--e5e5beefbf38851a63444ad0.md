# connected_subsets_are_singletons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76bbdf3c5e00c70a62e0f9faaad9cfad035ed703",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49f544ca-47a1-d6b7-05ca-f935b474e459",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16a90cad-8b84-78c5-b9e0-b118cae65820",
  "kind": "theorem",
  "lexical_name": "connected_subsets_are_singletons",
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
  "slug": "connected-subsets-are-singletons--e5e5beefbf38851a63444ad0",
  "source": {
    "blob": "76bbdf3c5e00c70a62e0f9faaad9cfad035ed703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5e5beefbf38851a63444ad024f6ad3e9275222acc3dbc40eb58c205b26563af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16a90cad-8b84-78c5-b9e0-b118cae65820`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem connected_subsets_are_singletons
    {Space : Type}
    [TopologicalSpace Space]
    (capability : CantorTopologyCapability Space)
    {subset : Set Space}
    (connected : IsPreconnected subset) :
    subset.Subsingleton := by
  intro left leftMember right rightMember
  exact capability.totallyDisconnected subset
    (Set.subset_univ subset) connected leftMember rightMember

end BitMatrix.Topology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76bbdf3c5e00c70a62e0f9faaad9cfad035ed703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
