# continuous_symm_of_mem_pretrivializationAtlas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d099ad1fd51f6fe75a4ee2befe3e2579ad497c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 770,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/8528012378b33892a7a43fdf9c436c7ac046b052615065599bfb150e98b2f4dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5acbf090-752c-a8a6-7d39-a0b133dc6117",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13b6c7aa-7f28-25e6-6653-66cc56be19e7",
  "kind": "theorem",
  "lexical_name": "continuous_symm_of_mem_pretrivializationAtlas",
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
  "slug": "continuous-symm-of-mem-pretrivializationatlas--f126b35fa02504a13b7db7b0",
  "source": {
    "blob": "4d099ad1fd51f6fe75a4ee2befe3e2579ad497c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 770,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8528012378b33892a7a43fdf9c436c7ac046b052615065599bfb150e98b2f4dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f126b35fa02504a13b7db7b0e0f16c38610e206f9f21ce5f7b5404257f348cc5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8528012378b33892a7a43fdf9c436c7ac046b052615065599bfb150e98b2f4dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13b6c7aa-7f28-25e6-6653-66cc56be19e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 770–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_symm_of_mem_pretrivializationAtlas (he : e ∈ a.pretrivializationAtlas) :
    @ContinuousOn _ _ _ a.totalSpaceTopology e.toPartialEquiv.symm e.target := by
  refine fun z H U h => preimage_nhdsWithin_coinduced' H (le_def.1 (nhds_mono ?_) U h)
  exact le_iSup₂ (α := TopologicalSpace (TotalSpace F E)) e he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8528012378b33892a7a43fdf9c436c7ac046b052615065599bfb150e98b2f4dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8528012378b33892a7a43fdf9c436c7ac046b052615065599bfb150e98b2f4dc.lean#L770).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d099ad1fd51f6fe75a4ee2befe3e2579ad497c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
