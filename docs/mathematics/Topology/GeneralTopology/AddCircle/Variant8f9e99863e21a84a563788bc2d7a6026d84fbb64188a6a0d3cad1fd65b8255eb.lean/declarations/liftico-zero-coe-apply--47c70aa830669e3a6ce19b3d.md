# liftIco_zero_coe_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6815a942dabfaf83f799770f87e460d55821c012",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 643,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae7172fe-c8fd-996c-4936-0b69979d3c9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd8450ce-0a20-e7a0-6622-f7bb1bf0c126",
  "kind": "theorem",
  "lexical_name": "liftIco_zero_coe_apply",
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
  "slug": "liftico-zero-coe-apply--47c70aa830669e3a6ce19b3d",
  "source": {
    "blob": "6815a942dabfaf83f799770f87e460d55821c012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 643,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47c70aa830669e3a6ce19b3da50764684f0a4f626abad5809a3aac992883b61a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd8450ce-0a20-e7a0-6622-f7bb1bf0c126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftIco_zero_coe_apply {f : 𝕜 → B} {x : 𝕜} (hx : x ∈ Ico 0 p) : liftIco p 0 f ↑x = f x :=
  liftIco_coe_apply (by rwa [zero_add])

variable [TopologicalSpace 𝕜] [OrderTopology 𝕜]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant8f9e99863e21a84a563788bc2d7a6026d84fbb64188a6a0d3cad1fd65b8255eb.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6815a942dabfaf83f799770f87e460d55821c012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
