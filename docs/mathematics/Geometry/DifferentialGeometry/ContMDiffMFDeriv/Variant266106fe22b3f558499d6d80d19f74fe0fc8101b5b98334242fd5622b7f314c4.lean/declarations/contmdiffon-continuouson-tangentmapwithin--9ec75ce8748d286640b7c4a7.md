# ContMDiffOn.continuousOn_tangentMapWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a30afb0689985d5c351b5975ffcf5c9998a80f5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5581d51-4aab-cb3b-5232-3bc49f15f768",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11f27bf3-f7c4-17cb-8e12-f8385d076bfe",
  "kind": "theorem",
  "lexical_name": "ContMDiffOn.continuousOn_tangentMapWithin",
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
  "slug": "contmdiffon-continuouson-tangentmapwithin--9ec75ce8748d286640b7c4a7",
  "source": {
    "blob": "a30afb0689985d5c351b5975ffcf5c9998a80f5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 298,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ec75ce8748d286640b7c4a7205de458b611d495c172614856c5ef749e6924b1",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11f27bf3-f7c4-17cb-8e12-f8385d076bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffOn.continuousOn_tangentMapWithin (hf : CMDiff[s] n f) (hmn : 1 ≤ n)
    (hs : UniqueMDiff[s]) :
    ContinuousOn (tangentMap[s] f) (π E (TangentSpace I) ⁻¹' s) := by
  have : CMDiff[π E (TangentSpace I) ⁻¹' s] 0 (tangentMap[s] f) :=
    hf.contMDiffOn_tangentMapWithin hmn hs
  exact this.continuousOn

/-- If a function is `C^n`, then its bundled derivative is `C^m` when `m+1 ≤ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a30afb0689985d5c351b5975ffcf5c9998a80f5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
