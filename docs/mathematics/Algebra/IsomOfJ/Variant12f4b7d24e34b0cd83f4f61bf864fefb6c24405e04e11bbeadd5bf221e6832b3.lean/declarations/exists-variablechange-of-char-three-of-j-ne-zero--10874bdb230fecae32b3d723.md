# exists_variableChange_of_char_three_of_j_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b924a8ec-4a78-a3ef-0ea9-097172247591",
  "kind": "lemma",
  "lexical_name": "exists_variableChange_of_char_three_of_j_ne_zero",
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
  "slug": "exists-variablechange-of-char-three-of-j-ne-zero--10874bdb230fecae32b3d723",
  "source": {
    "blob": "02bf3bd8617dce24bf839b9539871912aac33bdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 124,
    "path": "GRWTSK/Algebra/IsomOfJ/Variant12f4b7d24e34b0cd83f4f61bf864fefb6c24405e04e11bbeadd5bf221e6832b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10874bdb230fecae32b3d72356b9d62c3db895fbdec6a1069721dcfcac8bf7cf",
  "verification": {
    "reference": "docs/verification/Algebra/IsomOfJ/Variant12f4b7d24e34b0cd83f4f61bf864fefb6c24405e04e11bbeadd5bf221e6832b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b924a8ec-4a78-a3ef-0ea9-097172247591`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_variableChange_of_char_three_of_j_ne_zero
    [E.IsCharThreeJNeZeroNF] [E'.IsCharThreeJNeZeroNF] (heq : E.j = E'.j) :
    ∃ C : VariableChange F, C • E = E' := by
  have h := E.Δ'.ne_zero
  rw [E.coe_Δ', Δ_of_isCharThreeJNeZeroNF_of_char_three, mul_ne_zero_iff, neg_ne_zero,
    pow_ne_zero_iff three_ne_zero] at h
  obtain ⟨ha₂, ha₆⟩ := h
  have h := E'.Δ'.ne_zero
  rw [E'.coe_Δ', Δ_of_isCharThreeJNeZeroNF_of_char_three, mul_ne_zero_iff, neg_ne_zero,
    pow_ne_zero_iff three_ne_zero] at h
  obtain ⟨ha₂', ha₆'⟩ := h
  have : NeZero (2 : F) := NeZero.mk <| by
    rw [show (2 : F) = -1 by linear_combination CharP.cast_eq_zero F 3, neg_ne_zero]
    exact one_ne_zero
  obtain ⟨u, hu⟩ := IsSepClosed.exists_pow_nat_eq (E.a₂ / E'.a₂) 2
  have hu0 : u ≠ 0 := by
    rw [← pow_ne_zero_iff two_ne_zero, hu, div_ne_zero_iff]
    exact ⟨ha₂, ha₂'⟩
  use ⟨Units.mk0 u hu0, 0, 0, 0⟩
  ext
  · simp_rw [variableChange_a₁, a₁_of_isCharThreeJNeZeroNF]
    ring1
  · simp_rw [variableChange_a₂, a₁_of_isCharThreeJNeZeroNF, Units.val_inv_eq_inv_val,
      Units.val_mk0, inv_pow, inv_mul_eq_div, hu]
    simp [field]
  · simp_rw [variableChange_a₃, a₁_of_isCharThreeJNeZeroNF, a₃_of_isCharThreeJNeZeroNF]
    ring1
  · simp_rw [variableChange_a₄, a₁_of_isCharThreeJNeZeroNF, a₃_of_isCharThreeJNeZeroNF,
      a₄_of_isCharThreeJNeZeroNF]
    ring1
  · simp_rw [j_of_isCharThreeJNeZeroNF_of_char_three, div_eq_div_iff ha₆ ha₆'] at heq
    simp_rw [variableChange_a₆, a₁_of_isCharThreeJNeZeroNF, a₃_of_isCharThreeJNeZeroNF,
      a₄_of_isCharThreeJNeZeroNF, Units.val_inv_eq_inv_val, Units.val_mk0,
      inv_pow, inv_mul_eq_div, pow_mul u 2 3, hu]
    simp [field]
    linear_combination heq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsomOfJ/Variant12f4b7d24e34b0cd83f4f61bf864fefb6c24405e04e11bbeadd5bf221e6832b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsomOfJ/Variant12f4b7d24e34b0cd83f4f61bf864fefb6c24405e04e11bbeadd5bf221e6832b3.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02bf3bd8617dce24bf839b9539871912aac33bdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
