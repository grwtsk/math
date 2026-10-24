# ker_toContinuousLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2be48f91fcc6b0932c9b3bb4810f8851c7b492d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:296441d9-a64b-77bb-43ea-4b60bccb6bb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f515cdfe-6860-410a-ce8a-c84a87bdfbcf",
  "kind": "theorem",
  "lexical_name": "ker_toContinuousLinearMap",
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
  "slug": "ker-tocontinuouslinearmap--4f8ebd94936410d715ccbb6d",
  "source": {
    "blob": "2be48f91fcc6b0932c9b3bb4810f8851c7b492d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 319,
    "path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f8ebd94936410d715ccbb6dc3cfac9adb185c04554a933b85f20b0b86674045",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f515cdfe-6860-410a-ce8a-c84a87bdfbcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_toContinuousLinearMap (f : E →ₗ[𝕜] F') :
    ker (LinearMap.toContinuousLinearMap f) = ker f :=
  rfl
#align linear_map.ker_to_continuous_linear_map LinearMap.ker_toContinuousLinearMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2be48f91fcc6b0932c9b3bb4810f8851c7b492d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
