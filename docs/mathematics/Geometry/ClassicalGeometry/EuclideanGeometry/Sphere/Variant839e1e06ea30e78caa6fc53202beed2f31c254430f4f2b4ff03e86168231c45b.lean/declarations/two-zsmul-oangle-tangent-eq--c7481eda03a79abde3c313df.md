# two_zsmul_oangle_tangent_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8e1687e754f23f032e9fc12f85edd47b2b39990",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c39150e9-f8b5-c016-06e0-7af51fe31134",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2e09a13-f788-d345-2b07-781cedd82eea",
  "kind": "theorem",
  "lexical_name": "two_zsmul_oangle_tangent_eq",
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
  "slug": "two-zsmul-oangle-tangent-eq--c7481eda03a79abde3c313df",
  "source": {
    "blob": "a8e1687e754f23f032e9fc12f85edd47b2b39990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 309,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7481eda03a79abde3c313dfc21f0a22b3bb22a64971f50b5f67fe0829b7f28e",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2e09a13-f788-d345-2b07-781cedd82eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_zsmul_oangle_tangent_eq {s : Sphere P} {p₁ p₂ p₃ p₄ : P} (hp₁ : p₁ ∈ s) (hp₂ : p₂ ∈ s)
    (hp₃ : p₃ ∈ s) (htan : s.IsTangentAt p₁ line[ℝ, p₁, p₄]) (hp₄p₁ : p₄ ≠ p₁) (hp₃p₁ : p₃ ≠ p₁)
    (hp₃p₂ : p₃ ≠ p₂) (hp₂p₁ : p₂ ≠ p₁) :
    (2 : ℤ) • ∡ p₄ p₁ p₂ = (2 : ℤ) • ∡ p₁ p₃ p₂ := by
  have hcenter : s.center ≠ p₁ := (ne_center_of_mem_of_mem_of_ne hp₁ hp₃ hp₃p₁.symm).symm
  have hr : s.radius ≠ 0 := by rw [← mem_sphere.mp hp₁]; exact dist_ne_zero.mpr hcenter.symm
  have htan_chord : (2 : ℤ) • ∡ p₄ p₁ p₂ = π + (2 : ℤ) • ∡ s.center p₁ p₂ := by
    have hright : (2 : ℤ) • ∡ p₄ p₁ s.center = π :=
      htan.two_zsmul_oangle_eq_pi hr (right_mem_affineSpan_pair ℝ p₁ p₄) hp₄p₁
    rw [← oangle_add hp₄p₁ hcenter hp₂p₁, smul_add, hright]
  have hinscribed : (2 : ℤ) • ∡ p₁ p₃ p₂ = π + (2 : ℤ) • ∡ s.center p₁ p₂ := by
    have h := two_zsmul_oangle_center_add_two_zsmul_oangle_eq_pi hp₁ hp₃ hp₂ hp₃p₁ hp₃p₂ hp₂p₁.symm
    rw [oangle_rev, smul_neg] at h
    rw [← h]; abel
  exact htan_chord.trans hinscribed.symm

/-- A base angle of an isosceles triangle with apex at the center of a circle is acute. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e1687e754f23f032e9fc12f85edd47b2b39990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
