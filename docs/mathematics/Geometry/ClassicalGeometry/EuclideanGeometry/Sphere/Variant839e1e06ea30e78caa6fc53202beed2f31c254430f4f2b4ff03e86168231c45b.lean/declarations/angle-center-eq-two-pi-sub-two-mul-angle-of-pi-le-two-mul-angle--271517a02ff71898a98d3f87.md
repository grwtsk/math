# angle_center_eq_two_pi_sub_two_mul_angle_of_pi_le_two_mul_angle

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
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e682dcd-ff54-1d96-de8e-dd953cc512fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a203f2ae-d188-df61-e601-e052dd2879fa",
  "kind": "theorem",
  "lexical_name": "angle_center_eq_two_pi_sub_two_mul_angle_of_pi_le_two_mul_angle",
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
  "slug": "angle-center-eq-two-pi-sub-two-mul-angle-of-pi-le-two-mul-angle--271517a02ff71898a98d3f87",
  "source": {
    "blob": "a8e1687e754f23f032e9fc12f85edd47b2b39990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 224,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:271517a02ff71898a98d3f87bc4a191e3ded9a881a2273f330d2c61bf306097c",
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

Occurrence: `result:a203f2ae-d188-df61-e601-e052dd2879fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_center_eq_two_pi_sub_two_mul_angle_of_pi_le_two_mul_angle {s : Sphere P}
    {p₁ p₂ p₃ : P} (hp₁ : p₁ ∈ s) (hp₂ : p₂ ∈ s) (hp₃ : p₃ ∈ s) (hp₂p₁ : p₂ ≠ p₁)
    (hp₂p₃ : p₂ ≠ p₃) (h : π ≤ 2 * ∠ p₁ p₂ p₃) :
    ∠ p₁ s.center p₃ = 2 * π - 2 * ∠ p₁ p₂ p₃ := by
  have : FiniteDimensional ℝ V := .of_fact_finrank_eq_two
  have hp₁c : p₁ ≠ s.center := ne_center_of_mem_of_mem_of_ne hp₁ hp₂ hp₂p₁.symm
  have hp₃c : p₃ ≠ s.center := ne_center_of_mem_of_mem_of_ne hp₃ hp₂ hp₂p₃.symm
  rw [angle_eq_abs_oangle_toReal hp₁c hp₃c,
    Sphere.oangle_center_eq_two_zsmul_oangle hp₁ hp₂ hp₃ hp₂p₁ hp₂p₃]
  linarith [two_mul_angle_eq_two_pi_sub_abs_two_zsmul_oangle_toReal hp₂p₁.symm hp₂p₃.symm
    (by linarith)]

end Sphere

section

variable [Module.Oriented ℝ V (Fin 2)]

local notation "o" => Module.Oriented.positiveOrientation

namespace Sphere

/-- Oriented angle version of "angles in same segment are equal" and "opposite angles of a
cyclic quadrilateral add to π", for oriented angles mod π (for which those are the same result),
represented here as equality of twice the angles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant839e1e06ea30e78caa6fc53202beed2f31c254430f4f2b4ff03e86168231c45b.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e1687e754f23f032e9fc12f85edd47b2b39990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
