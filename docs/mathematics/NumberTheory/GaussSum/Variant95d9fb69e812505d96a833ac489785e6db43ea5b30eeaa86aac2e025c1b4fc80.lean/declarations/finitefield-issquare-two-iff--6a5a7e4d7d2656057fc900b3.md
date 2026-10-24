# FiniteField.isSquare_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7d3bddc79562c1967683537b75f5fe003a62c75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:622db898-ac0b-7f80-3c09-41c98847c46c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc96122c-a115-f141-3584-e8469226cde8",
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
  "slug": "finitefield-issquare-two-iff--6a5a7e4d7d2656057fc900b3",
  "source": {
    "blob": "f7d3bddc79562c1967683537b75f5fe003a62c75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 42,
    "path": "GRWTSK/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a5a7e4d7d2656057fc900b3da4fc73edba1520047ba5f0d3d6ede374ed7a4b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc96122c-a115-f141-3584-e8469226cde8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–64.

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

[Verification target and public status](../../../../../verification/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7d3bddc79562c1967683537b75f5fe003a62c75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
