# mongePoint_eq_affineCombination_of_pointsWithCircumcenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4461380a-ffe9-c72a-46c9-5eada4e63964",
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
  "slug": "mongepoint-eq-affinecombination-of-pointswithcircumcenter--8ec08d284cd4df6165f735b5",
  "source": {
    "blob": "f582cc6d4efac0da3198e0b3cbe489bfc5611cb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 166,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ec08d284cd4df6165f735b5cf48f33903f2ec14d1b34b382af01ba6a876b96f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4461380a-ffe9-c72a-46c9-5eada4e63964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–188.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f582cc6d4efac0da3198e0b3cbe489bfc5611cb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
