# mem_circumsphere_of_two_zsmul_oangle_eq

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
      "line": 500,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8523c3d-a93d-b0fd-b54a-da7a6ee5fc75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e8cfc66-729a-9628-5d85-e06a001c2f2c",
  "kind": "theorem",
  "lexical_name": "mem_circumsphere_of_two_zsmul_oangle_eq",
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
  "slug": "mem-circumsphere-of-two-zsmul-oangle-eq--7cd197ccc91586ae69e42973",
  "source": {
    "blob": "a8e1687e754f23f032e9fc12f85edd47b2b39990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 500,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cd197ccc91586ae69e4297387550eb0cae3cabf418c429f09b1f3736cb2d1ed",
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

Occurrence: `result:1e8cfc66-729a-9628-5d85-e06a001c2f2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_circumsphere_of_two_zsmul_oangle_eq {t : Triangle ℝ P} {p : P} {i₁ i₂ i₃ : Fin 3}
    (h₁₂ : i₁ ≠ i₂) (h₁₃ : i₁ ≠ i₃) (h₂₃ : i₂ ≠ i₃)
    (h : (2 : ℤ) • ∡ (t.points i₁) p (t.points i₃) =
      (2 : ℤ) • ∡ (t.points i₁) (t.points i₂) (t.points i₃)) : p ∈ t.circumsphere := by
  let t'p : Fin 3 → P := Function.update t.points i₂ p
  have h₁ : t'p i₁ = t.points i₁ := by simp [t'p, h₁₂]
  have h₂ : t'p i₂ = p := by simp [t'p]
  have h₃ : t'p i₃ = t.points i₃ := by simp [t'p, h₂₃.symm]
  have ha : AffineIndependent ℝ t'p := by
    rw [affineIndependent_iff_not_collinear_of_ne h₁₂ h₁₃ h₂₃, h₁, h₂, h₃,
      collinear_iff_of_two_zsmul_oangle_eq h, ←
      affineIndependent_iff_not_collinear_of_ne h₁₂ h₁₃ h₂₃]
    exact t.independent
  let t' : Triangle ℝ P := ⟨t'p, ha⟩
  have h₁' : t'.points i₁ = t.points i₁ := h₁
  have h₂' : t'.points i₂ = p := h₂
  have h₃' : t'.points i₃ = t.points i₃ := h₃
  have h' : (2 : ℤ) • ∡ (t'.points i₁) (t'.points i₂) (t'.points i₃) =
      (2 : ℤ) • ∡ (t.points i₁) (t.points i₂) (t.points i₃) := by rwa [h₁', h₂', h₃']
  rw [← circumsphere_eq_circumsphere_of_eq_of_eq_of_two_zsmul_oangle_eq h₁₂ h₁₃ h₂₃ h₁' h₃' h', ←
    h₂']
  exact Simplex.mem_circumsphere _ _

end Oriented

open scoped Affine.Simplex Module.Oriented.Arbitrary in
/-- The circumradius of a triangle may be expressed explicitly as half the length of a side
divided by the sine of the angle at the third point (a version of the law of sines or sine rule). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e1687e754f23f032e9fc12f85edd47b2b39990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
