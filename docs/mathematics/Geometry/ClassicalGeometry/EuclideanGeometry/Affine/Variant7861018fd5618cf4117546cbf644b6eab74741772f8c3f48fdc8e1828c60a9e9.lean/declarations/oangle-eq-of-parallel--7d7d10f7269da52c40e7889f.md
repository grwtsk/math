# oangle_eq_of_parallel

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
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8802a6b2-bc0b-4704-97e5-1fb6e29c8290",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0651651a-7e85-bea1-7514-9b1605f55827",
  "kind": "theorem",
  "lexical_name": "oangle_eq_of_parallel",
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
  "slug": "oangle-eq-of-parallel--7d7d10f7269da52c40e7889f",
  "source": {
    "blob": "d6bbb2d113b04bf13da394357e0496d7ca2b86ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 257,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d7d10f7269da52c40e7889fd2f30c9862ae4c397ee9902a47f0462f61cca1db",
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

Occurrence: `result:0651651a-7e85-bea1-7514-9b1605f55827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_eq_of_parallel {p₁ p₂ p₃ p₄ p₅ p₆ : P} (h₂ : p₂ ∉ line[ℝ, p₁, p₃])
    (h₄ : p₄ ∈ line[ℝ, p₁, p₃]) (h₆ : p₆ ∈ line[ℝ, p₁, p₃])
    (h₁₂₄₅ : line[ℝ, p₁, p₂] ∥ line[ℝ, p₄, p₅]) (h₃₂₆₅ : line[ℝ, p₃, p₂] ∥ line[ℝ, p₆, p₅]) :
    ∡ p₁ p₂ p₃ = ∡ p₄ p₅ p₆ := by
  rw [oangle, oangle]
  have hd : line[ℝ, p₆, p₄].direction ≤ line[ℝ, p₃, p₁].direction := by
    rw [Set.pair_comm p₃]
    exact AffineSubspace.direction_le (affineSpan_pair_le_of_mem_of_mem h₆ h₄)
  obtain ⟨r, hr, h₅₄, h₆₅, -⟩ := exists_eq_smul_of_parallel h₂ h₁₂₄₅
    (Set.pair_comm p₃ p₂ ▸ Set.pair_comm p₆ p₅ ▸ h₃₂₆₅).direction_eq.symm.le hd
  rw [← neg_inj, neg_vsub_eq_vsub_rev, ← smul_neg, neg_vsub_eq_vsub_rev] at h₅₄
  rw [h₅₄, h₆₅]
  rcases hr.lt_or_gt with hlt | hlt
  · simp [-neg_vsub_eq_vsub_rev, hlt]
  · simp [hlt]

/-- Given three points not equal to `p`, the angle between the first and the second at `p` plus
the angle between the second and the third equals the angle between the first and the third. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6bbb2d113b04bf13da394357e0496d7ca2b86ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
