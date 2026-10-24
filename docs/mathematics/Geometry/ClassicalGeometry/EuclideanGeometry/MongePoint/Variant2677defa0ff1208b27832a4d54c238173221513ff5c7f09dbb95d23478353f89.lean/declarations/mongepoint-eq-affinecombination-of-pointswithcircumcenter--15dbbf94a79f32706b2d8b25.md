# mongePoint_eq_affineCombination_of_pointsWithCircumcenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "083ec60696de53c7aca080ff9859c888f1c86916",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2677defa0ff1208b27832a4d54c238173221513ff5c7f09dbb95d23478353f89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:564f4c78-93d9-28b3-5a8c-1634cc67cbe6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3be04df4-2bfd-fa7a-032e-517c9ad2546b",
  "kind": "theorem",
  "lexical_name": "mongePoint_eq_affineCombination_of_pointsWithCircumcenter",
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
  "slug": "mongepoint-eq-affinecombination-of-pointswithcircumcenter--15dbbf94a79f32706b2d8b25",
  "source": {
    "blob": "083ec60696de53c7aca080ff9859c888f1c86916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 158,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant2677defa0ff1208b27832a4d54c238173221513ff5c7f09dbb95d23478353f89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15dbbf94a79f32706b2d8b2550c3b5b34472dff297b2695fd4d4686aa5d3a028",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant2677defa0ff1208b27832a4d54c238173221513ff5c7f09dbb95d23478353f89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3be04df4-2bfd-fa7a-032e-517c9ad2546b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mongePoint_eq_affineCombination_of_pointsWithCircumcenter {n : ℕ}
    (s : Simplex ℝ P (n + 2)) :
    s.mongePoint =
      (univ : Finset (PointsWithCircumcenterIndex (n + 2))).affineCombination ℝ
        s.pointsWithCircumcenter (mongePointWeightsWithCircumcenter n) := by
  rw [mongePoint_eq_smul_vsub_vadd_circumcenter,
    centroid_eq_affineCombination_of_pointsWithCircumcenter,
    circumcenter_eq_affineCombination_of_pointsWithCircumcenter, affineCombination_vsub, ← map_smul,
    weightedVSub_vadd_affineCombination]
  congr with i
  rw [Pi.add_apply, Pi.smul_apply, smul_eq_mul, Pi.sub_apply]
  cases i <;>
      simp_rw [centroidWeightsWithCircumcenter, circumcenterWeightsWithCircumcenter,
        mongePointWeightsWithCircumcenter] <;>
    rw [add_tsub_assoc_of_le (by decide : 1 ≤ 2), (by decide : 2 - 1 = 1)]
  · rw [ite_eq_left (mem_univ _), card_fin]
    field
  · simp [field]
    ring

/-- The weights for the Monge point of an (n+2)-simplex, minus the
centroid of an n-dimensional face, in terms of
`pointsWithCircumcenter`.  This definition is only valid when `i₁ ≠ i₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant2677defa0ff1208b27832a4d54c238173221513ff5c7f09dbb95d23478353f89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant2677defa0ff1208b27832a4d54c238173221513ff5c7f09dbb95d23478353f89.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `083ec60696de53c7aca080ff9859c888f1c86916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
