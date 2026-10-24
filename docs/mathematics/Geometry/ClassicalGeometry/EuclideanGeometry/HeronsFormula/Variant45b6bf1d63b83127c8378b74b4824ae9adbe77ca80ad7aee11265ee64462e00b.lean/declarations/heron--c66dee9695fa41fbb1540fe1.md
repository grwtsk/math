# heron

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0ee490d-1ba5-817d-73ab-452847395ac3",
  "kind": "theorem",
  "lexical_name": "heron",
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
  "slug": "heron--c66dee9695fa41fbb1540fe1",
  "source": {
    "blob": "d96fb8d6e74a5760f29923f152da54c69d170c7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 35,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/HeronsFormula/Variant45b6bf1d63b83127c8378b74b4824ae9adbe77ca80ad7aee11265ee64462e00b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c66dee9695fa41fbb1540fe19ad2b3a829557643ff933b622fced6042ff77085",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/HeronsFormula/Variant45b6bf1d63b83127c8378b74b4824ae9adbe77ca80ad7aee11265ee64462e00b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0ee490d-1ba5-817d-73ab-452847395ac3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem heron {p₁ p₂ p₃ : P} (h1 : p₁ ≠ p₂) (h2 : p₃ ≠ p₂) :
    let a := dist p₁ p₂
    let b := dist p₃ p₂
    let c := dist p₁ p₃
    let s := (a + b + c) / 2
    1 / 2 * a * b * sin (∠ p₁ p₂ p₃) = √(s * (s - a) * (s - b) * (s - c)) := by
  intro a b c s
  let γ := ∠ p₁ p₂ p₃
  obtain := (dist_pos.mpr h1).ne', (dist_pos.mpr h2).ne'
  have cos_rule : cos γ = (a * a + b * b - c * c) / (2 * a * b) := by
    simp [field, a, b, c, γ, mul_comm,
      dist_sq_eq_dist_sq_add_dist_sq_sub_two_mul_dist_mul_dist_mul_cos_angle p₁ p₂ p₃]
  let numerator := (2 * a * b) ^ 2 - (a * a + b * b - c * c) ^ 2
  let denominator := (2 * a * b) ^ 2
  have split_to_frac : ↑1 - cos γ ^ 2 = numerator / denominator := by
    simp [field, numerator, denominator, cos_rule]
  have numerator_nonneg : 0 ≤ numerator := by
    have frac_nonneg : 0 ≤ numerator / denominator :=
      (sub_nonneg.mpr (cos_sq_le_one γ)).trans_eq split_to_frac
    rcases div_nonneg_iff.mp frac_nonneg with h | h
    · exact h.left
    · simpa [numerator, denominator, a, b, c, h1, h2] using le_antisymm h.right (sq_nonneg _)
  have ab2_nonneg : 0 ≤ 2 * a * b := by positivity
  calc
    1 / 2 * a * b * sin γ = 1 / 2 * a * b * (√numerator / √denominator) := by
      rw [sin_eq_sqrt_one_sub_cos_sq, split_to_frac, sqrt_div numerator_nonneg] <;>
        simp [γ, angle_nonneg, angle_le_pi]
    _ = 1 / 4 * √((2 * a * b) ^ 2 - (a * a + b * b - c * c) ^ 2) := by
      simp (disch := positivity) [field, numerator, denominator, -mul_eq_mul_left_iff]; ring
    _ = ↑1 / ↑4 * √(s * (s - a) * (s - b) * (s - c) * ↑4 ^ 2) := by simp only [s]; ring_nf
    _ = √(s * (s - a) * (s - b) * (s - c)) := by
      rw [sqrt_mul', sqrt_sq, div_mul_eq_mul_div, one_mul, mul_div_cancel_right₀] <;> norm_num

end Theorems100
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/HeronsFormula/Variant45b6bf1d63b83127c8378b74b4824ae9adbe77ca80ad7aee11265ee64462e00b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/HeronsFormula/Variant45b6bf1d63b83127c8378b74b4824ae9adbe77ca80ad7aee11265ee64462e00b.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d96fb8d6e74a5760f29923f152da54c69d170c7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
