# _root_.Sbtw.angle₁₂₃_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c47f89eb022195ac8ec51f64594c27ba33981657",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61a9ee309118904224adb7397eea146ba1a9f8212b563b25d6e8c3c760554a69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6417997-8838-70dc-8343-eee40f35cf48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b74b1d4-b593-43cf-f876-0de1169a4c52",
  "kind": "theorem",
  "lexical_name": "_root_.Sbtw.angle₁₂₃_eq_pi",
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
  "slug": "root-sbtw-angle-eq-pi--6ae2ea337002dc6f7b2eefad",
  "source": {
    "blob": "c47f89eb022195ac8ec51f64594c27ba33981657",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 247,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant61a9ee309118904224adb7397eea146ba1a9f8212b563b25d6e8c3c760554a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ae2ea337002dc6f7b2eefad559eb1693f3d9d503886cbcdad4923c02418e376",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant61a9ee309118904224adb7397eea146ba1a9f8212b563b25d6e8c3c760554a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b74b1d4-b593-43cf-f876-0de1169a4c52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Sbtw.angle₁₂₃_eq_pi {p₁ p₂ p₃ : P} (h : Sbtw ℝ p₁ p₂ p₃) : ∠ p₁ p₂ p₃ = π := by
  rw [angle, angle_eq_pi_iff]
  rcases h with ⟨⟨r, ⟨hr0, hr1⟩, hp₂⟩, hp₂p₁, hp₂p₃⟩
  refine ⟨vsub_ne_zero.2 hp₂p₁.symm, -(1 - r) / r, ?_⟩
  have hr0' : r ≠ 0 := by
    rintro rfl
    rw [← hp₂] at hp₂p₁
    simp at hp₂p₁
  have hr1' : r ≠ 1 := by
    rintro rfl
    rw [← hp₂] at hp₂p₃
    simp at hp₂p₃
  replace hr0 := hr0.lt_of_ne hr0'.symm
  replace hr1 := hr1.lt_of_ne hr1'
  refine ⟨div_neg_of_neg_of_pos (Left.neg_neg_iff.2 (sub_pos.2 hr1)) hr0, ?_⟩
  rw [← hp₂, AffineMap.lineMap_apply, vsub_vadd_eq_vsub_sub, vsub_vadd_eq_vsub_sub, vsub_self,
    zero_sub, smul_neg, smul_smul, div_mul_cancel₀ _ hr0', neg_smul, neg_neg, sub_eq_iff_eq_add, ←
    add_smul, sub_add_cancel, one_smul]

/-- If the second of three points is strictly between the other two, the angle at that point
(reversed) is π. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant61a9ee309118904224adb7397eea146ba1a9f8212b563b25d6e8c3c760554a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant61a9ee309118904224adb7397eea146ba1a9f8212b563b25d6e8c3c760554a69.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c47f89eb022195ac8ec51f64594c27ba33981657` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
