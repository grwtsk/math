# inseparable_iff_clusterPt_uniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1df82c42119be01e922d187d81992ba3065ec3ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f16d635-24fd-d32f-8f3f-54eb635e131e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:970d60b7-e452-945a-241e-0dc969426289",
  "kind": "theorem",
  "lexical_name": "inseparable_iff_clusterPt_uniformity",
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
  "slug": "inseparable-iff-clusterpt-uniformity--ab98fbde60e37b7073ca2395",
  "source": {
    "blob": "1df82c42119be01e922d187d81992ba3065ec3ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab98fbde60e37b7073ca239566f5e7f4919c802f6bd95ecde7337e399f74b73b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:970d60b7-e452-945a-241e-0dc969426289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inseparable_iff_clusterPt_uniformity {x y : α} :
    Inseparable x y ↔ ClusterPt (x, y) (𝓤 α) := by
  refine ⟨fun h ↦ .of_nhds_le h.nhds_le_uniformity, fun h ↦ ?_⟩
  simp_rw [uniformity_hasBasis_closed.inseparable_iff_uniformity, isClosed_iff_clusterPt]
  exact fun U ⟨hU, hUc⟩ ↦ hUc _ <| h.mono <| le_principal_iff.2 hU

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Separation/Variant4d035099f93e1b3aefe6158b811c2e517a86844023439a34a309b319a9bd3b75.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1df82c42119be01e922d187d81992ba3065ec3ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
