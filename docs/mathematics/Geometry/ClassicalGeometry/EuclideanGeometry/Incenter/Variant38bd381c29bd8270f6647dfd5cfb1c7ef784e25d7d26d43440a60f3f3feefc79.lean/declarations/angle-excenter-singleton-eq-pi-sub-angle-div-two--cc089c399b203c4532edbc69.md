# angle_excenter_singleton_eq_pi_sub_angle_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86a227ab743ccccb78a0a4897c9fd34277dea709",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42054c4c-955b-d2f9-e06d-ca659351605c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d37671b-221c-13d7-3874-c7b7bd29fac2",
  "kind": "lemma",
  "lexical_name": "angle_excenter_singleton_eq_pi_sub_angle_div_two",
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
  "slug": "angle-excenter-singleton-eq-pi-sub-angle-div-two--cc089c399b203c4532edbc69",
  "source": {
    "blob": "86a227ab743ccccb78a0a4897c9fd34277dea709",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 359,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc089c399b203c4532edbc69289908655ad18efa16a32f126b92c484bed8a962",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d37671b-221c-13d7-3874-c7b7bd29fac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma angle_excenter_singleton_eq_pi_sub_angle_div_two {i₁ i₂ i₃ : Fin 3} (h₁₂ : i₁ ≠ i₂)
    (h₁₃ : i₁ ≠ i₃) (h₂₃ : i₂ ≠ i₃) :
    ∠ (t.points i₃) (t.points i₂) (t.excenter {i₁}) =
      (π - ∠ (t.points i₃) (t.points i₂) (t.points i₁)) / 2 := by
  let S : AffineSubspace ℝ P := affineSpan ℝ (Set.range t.points)
  let t' : Triangle ℝ S := t.restrict S le_rfl
  suffices ∠ (t'.points i₃) (t'.points i₂) (t'.excenter {i₁}) =
      (π - ∠ (t'.points i₃) (t'.points i₂) (t'.points i₁)) / 2 by
    simpa [t', ← S.angle_coe, t.excenterExists_singleton i₁] using this
  refine angle_eq_pi_sub_angle_div_two_of_oangle_eq_add_pi_of_sOppSide
    (t'.independent.injective.ne h₂₃.symm) ?_
    (t'.sOppSide_affineSpan_pair_excenter_singleton_point h₁₃ h₁₂ h₂₃.symm)
  simp_rw [← sub_eq_iff_eq_add, oangle_rev (excenter t' {i₁}), oangle_rev (t'.points i₁),
    sub_eq_add_neg, ← neg_add, neg_inj, eq_comm, t'.oangle_excenter_singleton_eq_add_pi h₁₂ h₁₃ h₂₃]

/-- The excenter of a triangle opposite a vertex bisects the angle at another vertex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86a227ab743ccccb78a0a4897c9fd34277dea709` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
