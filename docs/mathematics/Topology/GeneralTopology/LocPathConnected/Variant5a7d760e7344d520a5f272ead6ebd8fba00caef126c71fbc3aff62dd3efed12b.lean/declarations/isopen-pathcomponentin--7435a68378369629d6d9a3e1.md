# IsOpen.pathComponentIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20b35ae20c58c764294baa7a3d75478f9fe36f33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b91c5b2-9491-eb74-fb17-24b33e661a89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1233355f-6cf4-f25a-9f10-204ba9cc43a2",
  "kind": "theorem",
  "lexical_name": "IsOpen.pathComponentIn",
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
  "slug": "isopen-pathcomponentin--7435a68378369629d6d9a3e1",
  "source": {
    "blob": "20b35ae20c58c764294baa7a3d75478f9fe36f33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7435a68378369629d6d9a3e1531e8577e5befd6f96ac5cbe46d9f306bb8a0130",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1233355f-6cf4-f25a-9f10-204ba9cc43a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsOpen.pathComponentIn (x : X) (hF : IsOpen F) :
    IsOpen (pathComponentIn x F) := by
  rw [isOpen_iff_mem_nhds]
  intro y hy
  let ⟨s, hs⟩ := (path_connected_basis y).mem_iff.mp (hF.mem_nhds (pathComponentIn_subset hy))
  exact mem_of_superset hs.1.1 <| pathComponentIn_congr hy ▸
    hs.1.2.subset_pathComponentIn (mem_of_mem_nhds hs.1.1) hs.2

/-- In a locally path connected space, each path component is an open set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20b35ae20c58c764294baa7a3d75478f9fe36f33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
