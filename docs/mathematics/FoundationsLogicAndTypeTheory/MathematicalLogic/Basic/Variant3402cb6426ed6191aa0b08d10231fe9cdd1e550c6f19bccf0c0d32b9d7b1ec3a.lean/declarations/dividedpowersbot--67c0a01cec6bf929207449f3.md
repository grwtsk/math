# dividedPowersBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a5c4b37cffa427af8ba95d36046463fb289276a22b4f1e4630c56ce08012cf8",
  "kind": "def",
  "lexical_name": "dividedPowersBot",
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
  "slug": "dividedpowersbot--67c0a01cec6bf929207449f3",
  "source": {
    "blob": "c0b3af1fad9e007182ccf68f5d4a9b00c557889a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67c0a01cec6bf929207449f300d24584211c03aa81918e84a4ed09a5d6814d0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a5c4b37cffa427af8ba95d36046463fb289276a22b4f1e4630c56ce08012cf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dividedPowersBot : DividedPowers (⊥ : Ideal A) where
  dpow n a := open Classical in ite (a = 0 ∧ n = 0) 1 0
  dpow_null {n a} ha := by
    simp only [mem_bot] at ha
    rw [if_neg]
    exact not_and_of_not_left (n = 0) ha
  dpow_zero ha := by
    rw [mem_bot.mp ha]
    simp only [and_self, ite_true]
  dpow_one ha := by
    simp [mem_bot.mp ha]
  dpow_mem {n a} hn _ := by
    simp only [mem_bot, ite_eq_right_iff, and_imp]
    exact fun _ a ↦ False.elim (hn a)
  dpow_add ha hb := by
    rw [mem_bot.mp ha, mem_bot.mp hb, add_zero]
    simp only [true_and, ge_iff_le, tsub_eq_zero_iff_le, mul_ite, mul_one, mul_zero]
    split_ifs with h
    · simp [h]
    · symm
      apply sum_eq_zero
      intro i hi
      simp only [mem_antidiagonal] at hi
      split_ifs with h2 h1
      · rw [h1, h2, add_zero] at hi
        exfalso
        exact h hi.symm
      · rfl
      · rfl
  dpow_mul {n} _ _ hx := by
    rw [mem_bot.mp hx]
    simp only [mul_zero, true_and, mul_ite, mul_one]
    by_cases hn : n = 0
    · rw [if_pos hn, hn, if_pos rfl, _root_.pow_zero]
    · simp only [if_neg hn]
  mul_dpow {m n x} hx := by
    rw [mem_bot.mp hx]
    simp only [true_and, mul_ite, mul_one, mul_zero, add_eq_zero]
    by_cases hn : n = 0
    · simp only [hn, ite_true, and_true, add_zero, choose_self, cast_one]
    · rw [if_neg hn, if_neg]
      exact not_and_of_not_right (m = 0) hn
  dpow_comp m {n a} hn ha := by
    rw [mem_bot.mp ha]
    simp only [true_and, ite_eq_right_iff, _root_.mul_eq_zero, mul_ite, mul_one, mul_zero]
    by_cases hm : m = 0
    · simp [hm, uniformBell_zero_left, hn]
    · simp only [hm, and_false, ite_false, false_or, if_neg hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0b3af1fad9e007182ccf68f5d4a9b00c557889a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
