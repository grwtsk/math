# cast_add_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f81c8b94feba28f5e25cb0bb38cc6e30f06e3609",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6fa6258-03a3-167f-3676-19f8ade9840b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9fffa0e1-1619-5198-2b83-e4e4960a4a41",
  "kind": "theorem",
  "lexical_name": "cast_add_of_ne_zero",
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
  "slug": "cast-add-of-ne-zero--41776b5a6488d2daf8990bd2",
  "source": {
    "blob": "f81c8b94feba28f5e25cb0bb38cc6e30f06e3609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41776b5a6488d2daf8990bd276ad91e64581005c11e3ea449e35742b509b8e38",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fffa0e1-1619-5198-2b83-e4e4960a4a41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_add_of_ne_zero :
    ∀ {m n : ℚ}, (m.den : α) ≠ 0 → (n.den : α) ≠ 0 → ((m + n : ℚ) : α) = m + n
  | ⟨n₁, d₁, h₁, c₁⟩, ⟨n₂, d₂, h₂, c₂⟩ => fun (d₁0 : (d₁ : α) ≠ 0) (d₂0 : (d₂ : α) ≠ 0) => by
    have d₁0' : (d₁ : ℤ) ≠ 0 :=
      Int.coe_nat_ne_zero.2 fun e => by rw [e] at d₁0; exact d₁0 Nat.cast_zero
    have d₂0' : (d₂ : ℤ) ≠ 0 :=
      Int.coe_nat_ne_zero.2 fun e => by rw [e] at d₂0; exact d₂0 Nat.cast_zero
    rw [num_den', num_den', add_def'' d₁0' d₂0']
    suffices (n₁ * (d₂ * ((d₂ : α)⁻¹ * (d₁ : α)⁻¹)) + n₂ * (d₁ * (d₂ : α)⁻¹) * (d₁ : α)⁻¹ : α)
        = n₁ * (d₁ : α)⁻¹ + n₂ * (d₂ : α)⁻¹ by
      rw [cast_mk_of_ne_zero, cast_mk_of_ne_zero, cast_mk_of_ne_zero]
      · simpa [division_def, left_distrib, right_distrib, mul_inv_rev, d₁0, d₂0, mul_assoc]
      all_goals simp [d₁0, d₂0]
    rw [← mul_assoc (d₂ : α), mul_inv_cancel d₂0, one_mul, (Nat.cast_commute _ _).eq]
    simp [d₁0, mul_assoc]
#align rat.cast_add_of_ne_zero Rat.cast_add_of_ne_zero

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f81c8b94feba28f5e25cb0bb38cc6e30f06e3609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
