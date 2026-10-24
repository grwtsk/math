# isOpen_isPathConnected_basis

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
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb4a5146-ea94-9f20-a1de-1df1b5105c66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f31725ee-b2f9-2eb5-2091-1712abce8829",
  "kind": "theorem",
  "lexical_name": "isOpen_isPathConnected_basis",
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
  "slug": "isopen-ispathconnected-basis--93cd812d3310290463163c30",
  "source": {
    "blob": "20b35ae20c58c764294baa7a3d75478f9fe36f33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93cd812d3310290463163c30f318a25cca534af87eba885fdc9765fcbb64d67a",
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

Occurrence: `result:f31725ee-b2f9-2eb5-2091-1712abce8829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_isPathConnected_basis (x : X) :
    (𝓝 x).HasBasis (fun s : Set X ↦ IsOpen s ∧ x ∈ s ∧ IsPathConnected s) id := by
  refine ⟨fun s ↦ ⟨fun hs ↦ ?_, fun ⟨u, hu⟩ ↦ mem_nhds_iff.mpr ⟨u, hu.2, hu.1.1, hu.1.2.1⟩⟩⟩
  have ⟨u, hus, hu, hxu⟩ := mem_nhds_iff.mp hs
  exact ⟨pathComponentIn x u, ⟨hu.pathComponentIn _, ⟨mem_pathComponentIn_self hxu,
    isPathConnected_pathComponentIn hxu⟩⟩, pathComponentIn_subset.trans hus⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocPathConnected/Variant5a7d760e7344d520a5f272ead6ebd8fba00caef126c71fbc3aff62dd3efed12b.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20b35ae20c58c764294baa7a3d75478f9fe36f33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
