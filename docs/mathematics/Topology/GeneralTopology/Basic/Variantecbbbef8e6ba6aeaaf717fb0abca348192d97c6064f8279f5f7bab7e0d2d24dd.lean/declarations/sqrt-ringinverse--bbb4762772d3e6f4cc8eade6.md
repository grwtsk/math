# sqrt_ringInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "732ddfe217a6b1ddb950ddac65b28a8ebe04e6af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 789,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c6e5521-328b-d3c9-039b-3a3439b55a77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ec33c9d-5de2-fba6-e282-c294246dfd6b",
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
  "slug": "sqrt-ringinverse--bbb4762772d3e6f4cc8eade6",
  "source": {
    "blob": "732ddfe217a6b1ddb950ddac65b28a8ebe04e6af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 812,
    "line": 789,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbb4762772d3e6f4cc8eade641ccde236e4fdb9f7e4c70aad78280b4fc6585b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ec33c9d-5de2-fba6-e282-c294246dfd6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–812.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `732ddfe217a6b1ddb950ddac65b28a8ebe04e6af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
