# eq_zero_or_oangle_eq_iff_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a7c60b47d67c3a2db03a1274110fcab25974d9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 789,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a709822d5247778b4dc4c89556133b9def925460660ef9af213ab42f2f74131.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb0dabc5-a10c-161e-0253-be97c114d3ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:172807d9-5715-b57a-b080-c6e486862ed9",
  "kind": "theorem",
  "lexical_name": "eq_zero_or_oangle_eq_iff_inner_eq_zero",
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
  "slug": "eq-zero-or-oangle-eq-iff-inner-eq-zero--caed0001de1e45b907d3bf63",
  "source": {
    "blob": "4a7c60b47d67c3a2db03a1274110fcab25974d9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 801,
    "line": 789,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant0a709822d5247778b4dc4c89556133b9def925460660ef9af213ab42f2f74131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caed0001de1e45b907d3bf6325083b50f9cb36d3dbeeb98964667171bb998595",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant0a709822d5247778b4dc4c89556133b9def925460660ef9af213ab42f2f74131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:172807d9-5715-b57a-b080-c6e486862ed9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–801.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_or_oangle_eq_iff_inner_eq_zero {x y : V} :
    x = 0 ∨ y = 0 ∨ o.oangle x y = (π / 2 : ℝ) ∨ o.oangle x y = (-π / 2 : ℝ) ↔ ⟪x, y⟫ = 0 := by
  by_cases hx : x = 0; · simp [hx]
  by_cases hy : y = 0; · simp [hy]
  rw [InnerProductGeometry.inner_eq_zero_iff_angle_eq_pi_div_two, or_iff_right hx, or_iff_right hy]
  refine' ⟨fun h => _, fun h => _⟩
  · rwa [o.angle_eq_abs_oangle_toReal hx hy, Real.Angle.abs_toReal_eq_pi_div_two_iff]
  · convert o.oangle_eq_angle_or_eq_neg_angle hx hy using 2 <;> rw [h]
    simp only [neg_div, Real.Angle.coe_neg]
#align orientation.eq_zero_or_oangle_eq_iff_inner_eq_zero Orientation.eq_zero_or_oangle_eq_iff_inner_eq_zero

/-- If the oriented angle between two vectors is `π / 2`, the inner product of those vectors
is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant0a709822d5247778b4dc4c89556133b9def925460660ef9af213ab42f2f74131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant0a709822d5247778b4dc4c89556133b9def925460660ef9af213ab42f2f74131.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7c60b47d67c3a2db03a1274110fcab25974d9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
