# oangle_eq_pi_iff_sameRay_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59d34c43-b024-5d1e-7afe-1984d3a7c090",
  "kind": "theorem",
  "lexical_name": "oangle_eq_pi_iff_sameRay_neg",
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
  "slug": "oangle-eq-pi-iff-sameray-neg--c25264cc1a2b627c289b371e",
  "source": {
    "blob": "90e9bd1c4a1c866672c2bd7f790e5b1bb9fad448",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 376,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4350b076c29d91bf2cf65c8fa38714ab7392a2838b6be7aa816cb3b4b3a21f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c25264cc1a2b627c289b371eb99e5ce95df3d29247993bdc6d5dc7a2ffddb229",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4350b076c29d91bf2cf65c8fa38714ab7392a2838b6be7aa816cb3b4b3a21f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59d34c43-b024-5d1e-7afe-1984d3a7c090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_eq_pi_iff_sameRay_neg {x y : V} :
    o.oangle x y = π ↔ x ≠ 0 ∧ y ≠ 0 ∧ SameRay ℝ x (-y) := by
  rw [← o.oangle_eq_zero_iff_sameRay]
  constructor
  · intro h
    by_cases hx : x = 0; · simp [hx, Real.Angle.pi_ne_zero.symm] at h
    by_cases hy : y = 0; · simp [hy, Real.Angle.pi_ne_zero.symm] at h
    refine ⟨hx, hy, ?_⟩
    rw [o.oangle_neg_right hx hy, h, Real.Angle.coe_pi_add_coe_pi]
  · rintro ⟨hx, hy, h⟩
    rwa [o.oangle_neg_right hx hy, ← Real.Angle.sub_coe_pi_eq_add_coe_pi, sub_eq_zero] at h

/-- The oriented angle between two vectors is zero or `π` if and only if those two vectors are
not linearly independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4350b076c29d91bf2cf65c8fa38714ab7392a2838b6be7aa816cb3b4b3a21f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4350b076c29d91bf2cf65c8fa38714ab7392a2838b6be7aa816cb3b4b3a21f0.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90e9bd1c4a1c866672c2bd7f790e5b1bb9fad448` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
