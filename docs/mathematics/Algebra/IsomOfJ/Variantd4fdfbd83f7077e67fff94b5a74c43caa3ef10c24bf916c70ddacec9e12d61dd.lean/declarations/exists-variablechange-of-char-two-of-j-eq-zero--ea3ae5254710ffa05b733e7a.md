# exists_variableChange_of_char_two_of_j_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58722997b352a3118099a7d9552a0f25e58d69a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc40c5fb-2ef7-198d-0d9c-e31ec75ddfc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:618505b0-c3dc-c20b-8b82-c3eace0e9570",
  "kind": "lemma",
  "lexical_name": "exists_variableChange_of_char_two_of_j_eq_zero",
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
  "slug": "exists-variablechange-of-char-two-of-j-eq-zero--ea3ae5254710ffa05b733e7a",
  "source": {
    "blob": "58722997b352a3118099a7d9552a0f25e58d69a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 55,
    "path": "GRWTSK/Algebra/IsomOfJ/Variantd4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea3ae5254710ffa05b733e7aa203b98daf070d51de80056124741b76b01bdf6d",
  "verification": {
    "reference": "docs/verification/Algebra/IsomOfJ/Variantd4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:618505b0-c3dc-c20b-8b82-c3eace0e9570`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_variableChange_of_char_two_of_j_eq_zero
    [E.IsCharTwoJEqZeroNF] [E'.IsCharTwoJEqZeroNF] : ∃ C : VariableChange F, C • E = E' := by
  have ha₃ := E.Δ'.ne_zero
  rw [E.coe_Δ', Δ_of_isCharTwoJEqZeroNF_of_char_two, pow_ne_zero_iff (Nat.succ_ne_zero _)] at ha₃
  have ha₃' := E'.Δ'.ne_zero
  rw [E'.coe_Δ', Δ_of_isCharTwoJEqZeroNF_of_char_two, pow_ne_zero_iff (Nat.succ_ne_zero _)] at ha₃'
  have : NeZero (3 : F) := NeZero.mk <| by
    rw [show (3 : F) = 1 by linear_combination CharP.cast_eq_zero F 2]
    exact one_ne_zero
  obtain ⟨u, hu⟩ := IsSepClosed.exists_pow_nat_eq (E.a₃ / E'.a₃) 3
  obtain ⟨s, hs⟩ := IsSepClosed.exists_root_C_mul_X_pow_add_C_mul_X_add_C' 2 4
    1 _ (E.a₄ - u ^ 4 * E'.a₄) (by simp) (by simp) ha₃
  obtain ⟨t, ht⟩ := IsSepClosed.exists_root_C_mul_X_pow_add_C_mul_X_add_C' 2 2
    1 _ (s ^ 6 + E.a₄ * s ^ 2 + E.a₆ - u ^ 6 * E'.a₆) (by simp) (by simp) ha₃
  have hu0 : u ≠ 0 := by
    rw [← pow_ne_zero_iff three_ne_zero, hu, div_ne_zero_iff]
    exact ⟨ha₃, ha₃'⟩
  use ⟨Units.mk0 u hu0, s ^ 2, s, t⟩
  ext
  · simp_rw [variableChange_a₁, a₁_of_isCharTwoJEqZeroNF,
      show (2 : F) = 0 from CharP.cast_eq_zero F 2]
    ring1
  · simp_rw [variableChange_a₂, a₁_of_isCharTwoJEqZeroNF, a₂_of_isCharTwoJEqZeroNF,
      show (3 : F) = 1 by linear_combination CharP.cast_eq_zero F 2]
    ring1
  · simp_rw [variableChange_a₃, Units.val_inv_eq_inv_val, Units.val_mk0, inv_pow, inv_mul_eq_div,
      hu, a₁_of_isCharTwoJEqZeroNF, show (2 : F) = 0 from CharP.cast_eq_zero F 2]
    simp [field]
  · simp [field, variableChange_a₄, a₁_of_isCharTwoJEqZeroNF, a₂_of_isCharTwoJEqZeroNF]
    linear_combination hs + (s ^ 4 - s * t - E.a₃ * s) * CharP.cast_eq_zero F 2
  · simp [field, variableChange_a₆, a₁_of_isCharTwoJEqZeroNF, a₂_of_isCharTwoJEqZeroNF]
    linear_combination ht - (t ^ 2 + E.a₃ * t) * CharP.cast_eq_zero F 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsomOfJ/Variantd4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsomOfJ/Variantd4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58722997b352a3118099a7d9552a0f25e58d69a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
