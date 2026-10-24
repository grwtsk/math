# oangle_swap₁₂_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55d7c324-1e0f-db68-18f5-0616d0b67806",
  "kind": "theorem",
  "lexical_name": "oangle_swap₁₂_sign",
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
  "slug": "oangle-swap-sign--e98b2768f728fc327ed7f46e",
  "source": {
    "blob": "865abc9f8f6a0a7473995d10d0a560913e9f4621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 393,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e98b2768f728fc327ed7f46e120ba58803e2e99f581c81247408d90725a1b56f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55d7c324-1e0f-db68-18f5-0616d0b67806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_swap₁₂_sign (p₁ p₂ p₃ : P) : -(∡ p₁ p₂ p₃).sign = (∡ p₂ p₁ p₃).sign := by
  rw [eq_comm, oangle, oangle, ← o.oangle_neg_neg, neg_vsub_eq_vsub_rev, neg_vsub_eq_vsub_rev, ←
    vsub_sub_vsub_cancel_left p₁ p₃ p₂, ← neg_vsub_eq_vsub_rev p₃ p₂, sub_eq_add_neg,
    neg_vsub_eq_vsub_rev p₂ p₁, add_comm, ← @neg_one_smul ℝ]
  nth_rw 2 [← one_smul ℝ (p₁ -ᵥ p₂)]
  rw [o.oangle_sign_smul_add_smul_right]
  simp

/-- Swapping the first and third points in an oriented angle negates the sign of that angle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865abc9f8f6a0a7473995d10d0a560913e9f4621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
