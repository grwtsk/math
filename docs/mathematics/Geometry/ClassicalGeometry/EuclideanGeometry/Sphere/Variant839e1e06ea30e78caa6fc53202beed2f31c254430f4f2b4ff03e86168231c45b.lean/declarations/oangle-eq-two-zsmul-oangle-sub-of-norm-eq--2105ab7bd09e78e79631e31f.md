# oangle_eq_two_zsmul_oangle_sub_of_norm_eq

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
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2404e0e0-5d0c-74b6-fca3-f827cb38fc98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4afbb93-2db4-2d5a-934e-698a15b5adde",
  "kind": "theorem",
  "lexical_name": "oangle_eq_two_zsmul_oangle_sub_of_norm_eq",
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
  "slug": "oangle-eq-two-zsmul-oangle-sub-of-norm-eq--2105ab7bd09e78e79631e31f",
  "source": {
    "blob": "a8e1687e754f23f032e9fc12f85edd47b2b39990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 35,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2105ab7bd09e78e79631e31fb584847e83b5323e94ec948c26cb8dee6becf8f5",
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

Occurrence: `result:a4afbb93-2db4-2d5a-934e-698a15b5adde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_eq_two_zsmul_oangle_sub_of_norm_eq {x y z : V} (hxyne : x ≠ y) (hxzne : x ≠ z)
    (hxy : ‖x‖ = ‖y‖) (hxz : ‖x‖ = ‖z‖) : o.oangle y z = (2 : ℤ) • o.oangle (y - x) (z - x) := by
  have hy : y ≠ 0 := by
    rintro rfl
    rw [norm_zero, norm_eq_zero] at hxy
    exact hxyne hxy
  have hx : x ≠ 0 := norm_ne_zero_iff.1 (hxy.symm ▸ norm_ne_zero_iff.2 hy)
  have hz : z ≠ 0 := norm_ne_zero_iff.1 (hxz ▸ norm_ne_zero_iff.2 hx)
  calc
    o.oangle y z = o.oangle x z - o.oangle x y := (o.oangle_sub_left hx hy hz).symm
    _ = π - (2 : ℤ) • o.oangle (x - z) x - (π - (2 : ℤ) • o.oangle (x - y) x) := by
      rw [o.oangle_eq_pi_sub_two_zsmul_oangle_sub_of_norm_eq hxzne.symm hxz.symm,
        o.oangle_eq_pi_sub_two_zsmul_oangle_sub_of_norm_eq hxyne.symm hxy.symm]
    _ = (2 : ℤ) • (o.oangle (x - y) x - o.oangle (x - z) x) := by abel
    _ = (2 : ℤ) • o.oangle (x - y) (x - z) := by
      rw [o.oangle_sub_right (sub_ne_zero_of_ne hxyne) (sub_ne_zero_of_ne hxzne) hx]
    _ = (2 : ℤ) • o.oangle (y - x) (z - x) := by rw [← oangle_neg_neg, neg_sub, neg_sub]

/-- The angle at the center of a circle equals twice the angle at the circumference, oriented vector
angle form with the radius specified. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e1687e754f23f032e9fc12f85edd47b2b39990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
