# oangle_eq_pi_sub_two_zsmul_oangle_sub_of_norm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdd784c8-edbd-0a33-4661-e80903b0fad2",
  "kind": "theorem",
  "lexical_name": "oangle_eq_pi_sub_two_zsmul_oangle_sub_of_norm_eq",
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
  "slug": "oangle-eq-pi-sub-two-zsmul-oangle-sub-of-norm-eq--b9fe579b6269ee892ec82b2f",
  "source": {
    "blob": "e028067f601fd2e937463eca35e7079ed9a4513e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 589,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9fe579b6269ee892ec82b2f1d7723cc93998817e0aeb09ef5d4fab165438fa8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdd784c8-edbd-0a33-4661-e80903b0fad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_eq_pi_sub_two_zsmul_oangle_sub_of_norm_eq {x y : V} (hn : x ≠ y) (h : ‖x‖ = ‖y‖) :
    o.oangle y x = π - (2 : ℤ) • o.oangle (y - x) y := by
  rw [two_zsmul]
  nth_rw 1 [← o.oangle_sub_eq_oangle_sub_rev_of_norm_eq h]
  rw [eq_sub_iff_add_eq, ← oangle_neg_neg, ← add_assoc]
  have hy : y ≠ 0 := by
    rintro rfl
    rw [norm_zero, norm_eq_zero] at h
    exact hn h
  have hx : x ≠ 0 := norm_ne_zero_iff.1 (h.symm ▸ norm_ne_zero_iff.2 hy)
  convert o.oangle_add_cyc3_neg_right (neg_ne_zero.2 hy) hx (sub_ne_zero_of_ne hn.symm) using 1
  simp
#align orientation.oangle_eq_pi_sub_two_zsmul_oangle_sub_of_norm_eq Orientation.oangle_eq_pi_sub_two_zsmul_oangle_sub_of_norm_eq

/-- The angle between two vectors, with respect to an orientation given by `Orientation.map`
with a linear isometric equivalence, equals the angle between those two vectors, transformed by
the inverse of that equivalence, with respect to the original orientation. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e028067f601fd2e937463eca35e7079ed9a4513e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
