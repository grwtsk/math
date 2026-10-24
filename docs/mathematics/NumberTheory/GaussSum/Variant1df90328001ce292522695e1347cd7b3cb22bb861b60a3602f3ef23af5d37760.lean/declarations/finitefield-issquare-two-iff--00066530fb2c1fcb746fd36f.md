# FiniteField.isSquare_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7bb6516-2b96-40ab-734b-976747946b51",
  "kind": "theorem",
  "lexical_name": "FiniteField.isSquare_two_iff",
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
  "slug": "finitefield-issquare-two-iff--00066530fb2c1fcb746fd36f",
  "source": {
    "blob": "e562ec12f3b7ee7cae7c24d0b5fda2ca8002bc73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 50,
    "path": "GRWTSK/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00066530fb2c1fcb746fd36f165b0553389c82d2cf5fc584607e121894f21d87",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7bb6516-2b96-40ab-734b-976747946b51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteField.isSquare_two_iff :
    IsSquare (2 : F) ↔ Fintype.card F % 8 ≠ 3 ∧ Fintype.card F % 8 ≠ 5 := by
  classical
  by_cases hF : ringChar F = 2
  focus
    have h := FiniteField.even_card_of_char_two hF
    simp only [FiniteField.isSquare_of_char_two hF, true_iff_iff]
  rotate_left
  focus
    have h := FiniteField.odd_card_of_char_ne_two hF
    rw [← quadraticChar_one_iff_isSquare (Ring.two_ne_zero hF), quadraticChar_two hF,
      χ₈_nat_eq_if_mod_eight]
    simp only [h, Nat.one_ne_zero, if_false, ite_eq_left_iff, Ne.def, (by decide : (-1 : ℤ) ≠ 1),
      imp_false, Classical.not_not]
  all_goals
    rw [← Nat.mod_mod_of_dvd _ (by norm_num : 2 ∣ 8)] at h
    have h₁ := Nat.mod_lt (Fintype.card F) (by decide : 0 < 8)
    revert h₁ h
    generalize Fintype.card F % 8 = n
    intros; interval_cases n <;> simp_all -- Porting note: was `decide!`
#align finite_field.is_square_two_iff FiniteField.isSquare_two_iff

/-- The value of the quadratic character at `-2` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussSum/Variant1df90328001ce292522695e1347cd7b3cb22bb861b60a3602f3ef23af5d37760.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e562ec12f3b7ee7cae7c24d0b5fda2ca8002bc73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
