# oangle_sign_smul_add_smul_smul_add_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:249a6844-f367-0fa2-8b11-d58a4f1b13d5",
  "kind": "theorem",
  "lexical_name": "oangle_sign_smul_add_smul_smul_add_smul",
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
  "slug": "oangle-sign-smul-add-smul-smul-add-smul--03e25700df940fc62cd1fb5b",
  "source": {
    "blob": "e028067f601fd2e937463eca35e7079ed9a4513e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1077,
    "line": 1061,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03e25700df940fc62cd1fb5b2643f514082d66340245675fa26f3342ba5c8791",
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

Occurrence: `result:249a6844-f367-0fa2-8b11-d58a4f1b13d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1061–1077.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_sign_smul_add_smul_smul_add_smul (x y : V) (r₁ r₂ r₃ r₄ : ℝ) :
    (o.oangle (r₁ • x + r₂ • y) (r₃ • x + r₄ • y)).sign =
      SignType.sign (r₁ * r₄ - r₂ * r₃) * (o.oangle x y).sign := by
  by_cases hr₁ : r₁ = 0
  · rw [hr₁, zero_smul, zero_mul, zero_add, zero_sub, Left.sign_neg,
      oangle_sign_smul_left, add_comm, oangle_sign_smul_add_smul_right, oangle_rev,
      Real.Angle.sign_neg, sign_mul, mul_neg, mul_neg, neg_mul, mul_assoc]
  · rw [← o.oangle_sign_smul_add_right (r₁ • x + r₂ • y) (r₃ • x + r₄ • y) (-r₃ / r₁), smul_add,
      smul_smul, smul_smul, div_mul_cancel _ hr₁, neg_smul, ← add_assoc, add_comm (-(r₃ • x)), ←
      sub_eq_add_neg, sub_add_cancel, ← add_smul, oangle_sign_smul_right,
      oangle_sign_smul_add_smul_left, ← mul_assoc, ← sign_mul, add_mul, mul_assoc, mul_comm r₂ r₁, ←
      mul_assoc, div_mul_cancel _ hr₁, add_comm, neg_mul, ← sub_eq_add_neg, mul_comm r₄,
      mul_comm r₃]
#align orientation.oangle_sign_smul_add_smul_smul_add_smul Orientation.oangle_sign_smul_add_smul_smul_add_smul

set_option maxHeartbeats 350000 in
/-- A base angle of an isosceles triangle is acute, oriented vector angle form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean#L1061).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e028067f601fd2e937463eca35e7079ed9a4513e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
