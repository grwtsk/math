# mul_dist_add_mul_dist_eq_mul_dist_of_cospherical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30ed3d92-dd05-9568-0d33-8dc211709857",
  "kind": "theorem",
  "lexical_name": "mul_dist_add_mul_dist_eq_mul_dist_of_cospherical",
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
  "slug": "mul-dist-add-mul-dist-eq-mul-dist-of-cospherical--864563ef2a1a5de416cd13c6",
  "source": {
    "blob": "23778cb886da039daf740092e6552000b0998755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 59,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Ptolemy/Variant23550d5686acc8b5a8a3c44a140c73e9c146680f6ea3b134be82d26ff90b4b00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:864563ef2a1a5de416cd13c66028ae67c0f4d31d619f4245dae74224cf8c01c4",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Ptolemy/Variant23550d5686acc8b5a8a3c44a140c73e9c146680f6ea3b134be82d26ff90b4b00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30ed3d92-dd05-9568-0d33-8dc211709857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_dist_add_mul_dist_eq_mul_dist_of_cospherical {a b c d p : P}
    (h : Cospherical ({a, b, c, d} : Set P)) (hapc : ∠ a p c = π) (hbpd : ∠ b p d = π) :
    dist a b * dist c d + dist b c * dist d a = dist a c * dist b d := by
  have h' : Cospherical ({a, c, b, d} : Set P) := by rwa [Set.insert_comm c b {d}]
  have hmul := mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_pi h' hapc hbpd
  have hbp := left_dist_ne_zero_of_angle_eq_pi hbpd
  have h₁ : dist c d = dist c p / dist b p * dist a b := by
    rw [dist_mul_of_eq_angle_of_dist_mul b p a c p d, dist_comm a b]
    · rw [angle_eq_angle_of_angle_eq_pi_of_angle_eq_pi hbpd hapc, angle_comm]
    all_goals field_simp [mul_comm, hmul]
  have h₂ : dist d a = dist a p / dist b p * dist b c := by
    rw [dist_mul_of_eq_angle_of_dist_mul c p b d p a, dist_comm c b]
    · rwa [angle_comm, angle_eq_angle_of_angle_eq_pi_of_angle_eq_pi]; rwa [angle_comm]
    all_goals field_simp [mul_comm, hmul]
  have h₃ : dist d p = dist a p * dist c p / dist b p := by field_simp [mul_comm, hmul]
  have h₄ : ∀ x y : ℝ, x * (y * x) = x * x * y := fun x y => by rw [mul_left_comm, mul_comm]
  -- takes 450ms, but the "equivalent" simp call leaves some remaining goals
  field_simp [h₁, h₂, dist_eq_add_dist_of_angle_eq_pi hbpd, h₃, hbp, dist_comm a b, h₄, ← sq,
    dist_sq_mul_dist_add_dist_sq_mul_dist b, hapc]

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Ptolemy/Variant23550d5686acc8b5a8a3c44a140c73e9c146680f6ea3b134be82d26ff90b4b00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Ptolemy/Variant23550d5686acc8b5a8a3c44a140c73e9c146680f6ea3b134be82d26ff90b4b00.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23778cb886da039daf740092e6552000b0998755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
