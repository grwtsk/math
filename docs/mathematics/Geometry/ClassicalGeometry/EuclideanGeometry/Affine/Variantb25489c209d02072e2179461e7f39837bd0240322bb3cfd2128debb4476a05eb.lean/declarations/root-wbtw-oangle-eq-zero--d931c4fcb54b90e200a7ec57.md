# _root_.Wbtw.oangle₂₁₃_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc023be4391216f20ea2103fdb0b91f0e893f789",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 422,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b25489c209d02072e2179461e7f39837bd0240322bb3cfd2128debb4476a05eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:868fc70a-ddff-4dbd-7715-a377d6c276c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b36b66d5-ac27-b0f3-4548-99609cd5f73b",
  "kind": "theorem",
  "lexical_name": "_root_.Wbtw.oangle₂₁₃_eq_zero",
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
  "slug": "root-wbtw-oangle-eq-zero--d931c4fcb54b90e200a7ec57",
  "source": {
    "blob": "fc023be4391216f20ea2103fdb0b91f0e893f789",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 422,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantb25489c209d02072e2179461e7f39837bd0240322bb3cfd2128debb4476a05eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d931c4fcb54b90e200a7ec578c5fa649713466fcdd0860ff96ff0bad26046954",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantb25489c209d02072e2179461e7f39837bd0240322bb3cfd2128debb4476a05eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b36b66d5-ac27-b0f3-4548-99609cd5f73b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Wbtw.oangle₂₁₃_eq_zero {p₁ p₂ p₃ : P} (h : Wbtw ℝ p₁ p₂ p₃) : ∡ p₂ p₁ p₃ = 0 := by
  by_cases hp₂p₁ : p₂ = p₁; · simp [hp₂p₁]
  by_cases hp₃p₁ : p₃ = p₁; · simp [hp₃p₁]
  rw [oangle_eq_zero_iff_angle_eq_zero hp₂p₁ hp₃p₁]
  exact h.angle₂₁₃_eq_zero_of_ne hp₂p₁

/-- If the second of three points is strictly between the other two, the oriented angle at the
first point is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantb25489c209d02072e2179461e7f39837bd0240322bb3cfd2128debb4476a05eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantb25489c209d02072e2179461e7f39837bd0240322bb3cfd2128debb4476a05eb.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc023be4391216f20ea2103fdb0b91f0e893f789` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
