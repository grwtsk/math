# dist_sq_add_dist_sq_eq_two_mul_dist_midpoint_sq_add_half_dist_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "252595b3e38c1ef65ffdb991f790cd82b040e4ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b9a409c-fde7-2eae-7237-de6ab4438f9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91aea1dc-4d55-d99f-6115-c6c4fe2e50fe",
  "kind": "theorem",
  "lexical_name": "dist_sq_add_dist_sq_eq_two_mul_dist_midpoint_sq_add_half_dist_sq",
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
  "slug": "dist-sq-add-dist-sq-eq-two-mul-dist-midpoint-sq-add-half-dist-sq--b6c182151dc3cc476f76fa15",
  "source": {
    "blob": "252595b3e38c1ef65ffdb991f790cd82b040e4ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 314,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6c182151dc3cc476f76fa1570d0523dcb0d42578540f01ef2a3768c56ecdd74",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91aea1dc-4d55-d99f-6115-c6c4fe2e50fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_sq_add_dist_sq_eq_two_mul_dist_midpoint_sq_add_half_dist_sq (a b c : P) :
    dist a b ^ 2 + dist a c ^ 2 = 2 * (dist a (midpoint ℝ b c) ^ 2 + (dist b c / 2) ^ 2) := by
  by_cases hbc : b = c
  · simp [hbc, midpoint_self, dist_self, two_mul]
  · let m := midpoint ℝ b c
    have : dist b c ≠ 0 := (dist_pos.mpr hbc).ne'
    have hm := dist_sq_mul_dist_add_dist_sq_mul_dist a b c m (angle_midpoint_eq_pi b c hbc)
    simp only [m, dist_left_midpoint, dist_right_midpoint, Real.norm_two] at hm
    calc
      dist a b ^ 2 + dist a c ^ 2 = 2 / dist b c * (dist a b ^ 2 *
        ((2 : ℝ)⁻¹ * dist b c) + dist a c ^ 2 * (2⁻¹ * dist b c)) := by
        -- TODO(https://github.com/leanprover-community/mathlib4/issues/15486): used to be `field_simp`, but was really slow
        -- replaced by `simp only ...` to speed up. Reinstate `field_simp` once it is faster.
        simp (disch := field_simp_discharge) only [inv_eq_one_div, div_mul_eq_mul_div, one_mul,
          mul_div_assoc', add_div', div_mul_cancel₀, div_div, eq_div_iff]
        ring
      _ = 2 * (dist a (midpoint ℝ b c) ^ 2 + (dist b c / 2) ^ 2) := by
        rw [hm]
        -- TODO(https://github.com/leanprover-community/mathlib4/issues/15486): used to be `field_simp`, but was really slow
        -- replaced by `simp only ...` to speed up. Reinstate `field_simp` once it is faster.
        simp (disch := field_simp_discharge) only [inv_eq_one_div, div_mul_eq_mul_div, one_mul,
          mul_div_assoc', div_div, add_div', div_pow, eq_div_iff, div_eq_iff]
        ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `252595b3e38c1ef65ffdb991f790cd82b040e4ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
