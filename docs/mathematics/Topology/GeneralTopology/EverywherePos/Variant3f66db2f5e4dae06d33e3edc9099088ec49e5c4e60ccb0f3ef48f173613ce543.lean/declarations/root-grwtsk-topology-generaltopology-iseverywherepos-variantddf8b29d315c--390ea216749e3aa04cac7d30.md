# _root_.GRWTSK.Topology.GeneralTopology.IsEverywherePos.Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.IsCompact.everywherePosSubset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78739d96-65bc-0157-00bb-27e43e24ecdd",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsEverywherePos.Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.IsCompact.everywherePosSubset",
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
  "slug": "root-grwtsk-topology-generaltopology-iseverywherepos-variantddf8b29d315c--390ea216749e3aa04cac7d30",
  "source": {
    "blob": "9803a5400a6aeb655a6bb7b5807be18f4b5253f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:390ea216749e3aa04cac7d303a00a2b3d68f737a2d223613a0776256c4d7104c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78739d96-65bc-0157-00bb-27e43e24ecdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.GRWTSK.Topology.GeneralTopology.IsEverywherePos.Variantddf8b29d315cc847985441c06b1858cfcd5abc9b6a36cbf4c27b76b775dcc78e.IsCompact.everywherePosSubset (hs : IsCompact s) :
    IsCompact (μ.everywherePosSubset s) := by
  rcases exists_isOpen_everywherePosSubset_eq_sdiff μ s with ⟨u, u_open, hu⟩
  rw [hu]
  exact hs.diff u_open

/-- Any compact set contained in `s \ μ.everywherePosSubset s` has zero measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9803a5400a6aeb655a6bb7b5807be18f4b5253f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
