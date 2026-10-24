# eq_zero_or_oangle_eq_iff_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3de15b3-570d-f604-8786-a1a01440b374",
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
  "slug": "eq-zero-or-oangle-eq-iff-inner-eq-zero--95137fc6eaa8b3baf44f873b",
  "source": {
    "blob": "7834dee5e69e8b6768e602c5406282ecfe289a34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 705,
    "line": 694,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantcb63435331a302a95b7b0a899e78bfa2253b80bb687d5d9a95aa65ba7484fe16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95137fc6eaa8b3baf44f873b90c4da284f42631e2963ce4574e2badc38594e95",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantcb63435331a302a95b7b0a899e78bfa2253b80bb687d5d9a95aa65ba7484fe16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3de15b3-570d-f604-8786-a1a01440b374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–705.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_or_oangle_eq_iff_inner_eq_zero {x y : V} :
    x = 0 ∨ y = 0 ∨ o.oangle x y = (π / 2 : ℝ) ∨ o.oangle x y = (-π / 2 : ℝ) ↔ ⟪x, y⟫ = 0 := by
  by_cases hx : x = 0; · simp [hx]
  by_cases hy : y = 0; · simp [hy]
  rw [InnerProductGeometry.inner_eq_zero_iff_angle_eq_pi_div_two, or_iff_right hx, or_iff_right hy]
  refine ⟨fun h => ?_, fun h => ?_⟩
  · rwa [o.angle_eq_abs_oangle_toReal hx hy, Real.Angle.abs_toReal_eq_pi_div_two_iff]
  · convert o.oangle_eq_angle_or_eq_neg_angle hx hy using 2 <;> rw [h]
    simp only [neg_div, Real.Angle.coe_neg]

/-- If the oriented angle between two vectors is `π / 2`, the inner product of those vectors
is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantcb63435331a302a95b7b0a899e78bfa2253b80bb687d5d9a95aa65ba7484fe16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantcb63435331a302a95b7b0a899e78bfa2253b80bb687d5d9a95aa65ba7484fe16.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7834dee5e69e8b6768e602c5406282ecfe289a34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
