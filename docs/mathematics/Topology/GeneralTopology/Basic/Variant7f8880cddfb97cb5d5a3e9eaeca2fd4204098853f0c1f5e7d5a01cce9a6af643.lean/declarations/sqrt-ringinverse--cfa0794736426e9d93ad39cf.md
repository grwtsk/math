# sqrt_ringInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0592f007-d9e8-e238-234d-0c538225dd21",
  "kind": "lemma",
  "lexical_name": "sqrt_ringInverse",
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
  "slug": "sqrt-ringinverse--cfa0794736426e9d93ad39cf",
  "source": {
    "blob": "3ec5dbefe8609409fed35b3e004162817c4bfc78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 820,
    "line": 797,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfa0794736426e9d93ad39cfc5f6de28016e278389638c9ddd3c3cce1d46e186",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0592f007-d9e8-e238-234d-0c538225dd21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 797–820.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sqrt_ringInverse {a : A} : sqrt a⁻¹ʳ = (sqrt a)⁻¹ʳ := by
  by_cases ha : IsStrictlyPositive a
  · rw [sqrt_eq_rpow, sqrt_eq_rpow, inverse_rpow _ _ (by grind),
        inverse_eq_rpow_neg_one, rpow_rpow _ _ _ (by grind)]
    grind only
  · have ha' : ¬IsUnit (sqrt a) := by rwa [CFC.isUnit_sqrt_iff_isStrictlyPositive]
    obtain (H | H) : ¬0 ≤ a ∨ ¬IsUnit a := by grind
    · rw [sqrt_of_not_nonneg H, inverse_zero]
      by_cases hunit : IsUnit a
      · have h₂ : ¬0 ≤ inverse a := by grind [CFC.ringInverse_nonneg_iff_nonneg_of_isUnit]
        rw [sqrt_of_not_nonneg h₂]
      · simp [inverse_non_unit _ hunit]
    · simp [inverse_non_unit _ ha', inverse_non_unit _ H]

/-- For an element `a` in a C⋆-algebra, TFAE:
1. `a` is strictly positive,
2. `sqrt a` is strictly positive and `a = sqrt a * sqrt a`,
3. `sqrt a` is invertible and `a = sqrt a * sqrt a`,
4. `a = b * b` for some strictly positive `b`,
5. `a = b * b` for some self-adjoint and invertible `b`,
6. `a = star b * b` for some invertible `b`,
7. `a = b * star b` for some invertible `b`,
8. `0 ≤ a` and `a` is invertible,
9. `a` is self-adjoint and has positive spectrum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean#L797).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ec5dbefe8609409fed35b3e004162817c4bfc78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
