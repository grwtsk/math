# angle_eq_arcsin_of_angle_eq_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0372b3e3832567432b3c8a8a5df638f72a9e88d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/540d048313425044b96ff2d5d2229e27fa2e443808c67f9d29e5c9c879b1c7f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba447934-2835-57d7-e3b4-c5934ded4f61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae129e9c-d42b-627d-1484-93c217be60de",
  "kind": "theorem",
  "lexical_name": "angle_eq_arcsin_of_angle_eq_pi_div_two",
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
  "slug": "angle-eq-arcsin-of-angle-eq-pi-div-two--3b6fb8cfb1f0da60fd3a25f3",
  "source": {
    "blob": "0372b3e3832567432b3c8a8a5df638f72a9e88d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 340,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant540d048313425044b96ff2d5d2229e27fa2e443808c67f9d29e5c9c879b1c7f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b6fb8cfb1f0da60fd3a25f3106a7f0fc06b2f2d04404bb02313fc4549f248e0",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant540d048313425044b96ff2d5d2229e27fa2e443808c67f9d29e5c9c879b1c7f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae129e9c-d42b-627d-1484-93c217be60de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_eq_arcsin_of_angle_eq_pi_div_two {p₁ p₂ p₃ : P} (h : ∠ p₁ p₂ p₃ = π / 2)
    (h0 : p₁ ≠ p₂ ∨ p₃ ≠ p₂) : ∠ p₂ p₃ p₁ = Real.arcsin (dist p₁ p₂ / dist p₁ p₃) := by
  rw [angle, ← inner_eq_zero_iff_angle_eq_pi_div_two, real_inner_comm, ← neg_eq_zero, ←
    inner_neg_left, neg_vsub_eq_vsub_rev] at h
  rw [← @vsub_ne_zero V, @ne_comm _ p₃, ← @vsub_ne_zero V _ _ _ p₂, or_comm] at h0
  rw [angle, dist_eq_norm_vsub V p₁ p₂, dist_eq_norm_vsub V p₁ p₃, ← vsub_add_vsub_cancel p₁ p₂ p₃,
    add_comm, angle_add_eq_arcsin_of_inner_eq_zero h h0]

/-- An angle in a right-angled triangle expressed using `arctan`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant540d048313425044b96ff2d5d2229e27fa2e443808c67f9d29e5c9c879b1c7f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant540d048313425044b96ff2d5d2229e27fa2e443808c67f9d29e5c9c879b1c7f4.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0372b3e3832567432b3c8a8a5df638f72a9e88d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
