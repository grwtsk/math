# isCompact_symm_image_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec7a4bb01fa881cafc11a4f6f7868aa1a5ba3e65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a305cab-28ba-073b-7db4-e39d7b0dbd32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d7daa59-c341-e326-4341-c34bb5279fb5",
  "kind": "theorem",
  "lexical_name": "isCompact_symm_image_closedBall",
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
  "slug": "iscompact-symm-image-closedball--ec764f2a1fd3f9031b05730b",
  "source": {
    "blob": "ec7a4bb01fa881cafc11a4f6f7868aa1a5ba3e65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec764f2a1fd3f9031b05730b21dd06971646a729ce1d713fd9309057501a1be2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d7daa59-c341-e326-4341-c34bb5279fb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_symm_image_closedBall :
    IsCompact ((extChartAt I c).symm '' (closedBall (extChartAt I c c) f.rOut ∩ range I)) :=
  ((isCompact_closedBall _ _).inter_right I.closed_range).image_of_continuousOn <|
    (continuousOn_extChartAt_symm _ _).mono f.closedBall_subset
#align smooth_bump_function.is_compact_symm_image_closed_ball SmoothBumpFunction.isCompact_symm_image_closedBall

/-- Given a smooth bump function `f : SmoothBumpFunction I c`, the closed ball of radius `f.R` is
known to include the support of `f`. These closed balls (in the model normed space `E`) intersected
with `Set.range I` form a basis of `𝓝[range I] (extChartAt I c c)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BumpFunction/Varianta4ab5bee065ca31f8b79cd87b3e3489aead36663f6acfe0af00784ccaf40dc37.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec7a4bb01fa881cafc11a4f6f7868aa1a5ba3e65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
