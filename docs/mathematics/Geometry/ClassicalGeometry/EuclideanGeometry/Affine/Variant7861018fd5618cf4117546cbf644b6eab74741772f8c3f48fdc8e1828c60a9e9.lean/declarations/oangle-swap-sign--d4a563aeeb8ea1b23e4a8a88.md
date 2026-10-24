# oangle_swap₁₂_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6bbb2d113b04bf13da394357e0496d7ca2b86ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 470,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57e7768f-65ff-1f6d-b8de-bfe9164c6839",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08a94de2-14a4-c661-22ea-2bced4b169fb",
  "kind": "theorem",
  "lexical_name": "oangle_swap₁₂_sign",
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
  "slug": "oangle-swap-sign--d4a563aeeb8ea1b23e4a8a88",
  "source": {
    "blob": "d6bbb2d113b04bf13da394357e0496d7ca2b86ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 470,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4a563aeeb8ea1b23e4a8a8893329a7b7f065dc70cf776e1881881bd13e094b2",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08a94de2-14a4-c661-22ea-2bced4b169fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_swap₁₂_sign (p₁ p₂ p₃ : P) : -(∡ p₁ p₂ p₃).sign = (∡ p₂ p₁ p₃).sign := by
  rw [eq_comm, oangle, oangle, ← o.oangle_neg_neg, neg_vsub_eq_vsub_rev, neg_vsub_eq_vsub_rev, ←
    vsub_sub_vsub_cancel_left p₁ p₃ p₂, ← neg_vsub_eq_vsub_rev p₃ p₂, sub_eq_add_neg,
    neg_vsub_eq_vsub_rev p₂ p₁, add_comm, ← @neg_one_smul ℝ]
  nth_rw 2 [← one_smul ℝ (p₁ -ᵥ p₂)]
  rw [o.oangle_sign_smul_add_smul_right]
  simp

/-- Swapping the first and third points in an oriented angle negates the sign of that angle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6bbb2d113b04bf13da394357e0496d7ca2b86ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
