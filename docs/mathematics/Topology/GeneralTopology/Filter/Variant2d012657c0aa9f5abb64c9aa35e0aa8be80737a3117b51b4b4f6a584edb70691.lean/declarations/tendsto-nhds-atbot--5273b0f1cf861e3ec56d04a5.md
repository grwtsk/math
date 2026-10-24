# tendsto_nhds_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8f085ef7cbae8eb3b2dcb2e3fb7580d01f3e49e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d012657c0aa9f5abb64c9aa35e0aa8be80737a3117b51b4b4f6a584edb70691.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ba86e0b-5bac-d752-6871-01251eae5ca2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb395780-9378-b1df-b3ea-b38f184f0e9a",
  "kind": "theorem",
  "lexical_name": "tendsto_nhds_atBot",
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
  "slug": "tendsto-nhds-atbot--5273b0f1cf861e3ec56d04a5",
  "source": {
    "blob": "b8f085ef7cbae8eb3b2dcb2e3fb7580d01f3e49e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant2d012657c0aa9f5abb64c9aa35e0aa8be80737a3117b51b4b4f6a584edb70691.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5273b0f1cf861e3ec56d04a5741314016266fbd809a4b11242daed50181b175b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant2d012657c0aa9f5abb64c9aa35e0aa8be80737a3117b51b4b4f6a584edb70691.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb395780-9378-b1df-b3ea-b38f184f0e9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem tendsto_nhds_atBot [NoMinOrder X] : Tendsto 𝓝 (atBot : Filter X) (𝓝 atBot) :=
  @Filter.tendsto_nhds_atTop Xᵒᵈ _ _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant2d012657c0aa9f5abb64c9aa35e0aa8be80737a3117b51b4b4f6a584edb70691.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant2d012657c0aa9f5abb64c9aa35e0aa8be80737a3117b51b4b4f6a584edb70691.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8f085ef7cbae8eb3b2dcb2e3fb7580d01f3e49e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
