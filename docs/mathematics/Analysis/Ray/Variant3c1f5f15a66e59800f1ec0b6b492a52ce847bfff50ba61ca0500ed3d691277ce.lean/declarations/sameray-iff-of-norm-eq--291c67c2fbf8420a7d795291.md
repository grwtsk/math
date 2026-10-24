# sameRay_iff_of_norm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fd9d5e4c7c4c4406e0b366a22fb138f5e72565e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c14d39b-cba8-6250-a1c9-a8576d040c04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bf5eb2a-3d15-1324-6616-795c95ec7796",
  "kind": "theorem",
  "lexical_name": "sameRay_iff_of_norm_eq",
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
  "slug": "sameray-iff-of-norm-eq--291c67c2fbf8420a7d795291",
  "source": {
    "blob": "3fd9d5e4c7c4c4406e0b366a22fb138f5e72565e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 99,
    "path": "GRWTSK/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:291c67c2fbf8420a7d795291a7ef2535a95d2b55360066b6fcd8f69aea0dd445",
  "verification": {
    "reference": "docs/verification/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bf5eb2a-3d15-1324-6616-795c95ec7796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sameRay_iff_of_norm_eq (h : ‖x‖ = ‖y‖) : SameRay ℝ x y ↔ x = y := by
  obtain rfl | hy := eq_or_ne y 0
  · rw [norm_zero, norm_eq_zero] at h
    exact iff_of_true (SameRay.zero_right _) h
  · exact ⟨fun hxy => norm_injOn_ray_right hy hxy SameRay.rfl h, fun hxy => hxy ▸ SameRay.rfl⟩
#align same_ray_iff_of_norm_eq sameRay_iff_of_norm_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fd9d5e4c7c4c4406e0b366a22fb138f5e72565e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
