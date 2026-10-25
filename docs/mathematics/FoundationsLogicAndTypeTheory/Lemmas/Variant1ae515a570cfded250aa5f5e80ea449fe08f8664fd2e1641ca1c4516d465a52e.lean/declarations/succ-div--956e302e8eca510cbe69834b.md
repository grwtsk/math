# succ_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0531ba5-4f72-c96a-64a2-5d6bf054ff0c",
  "kind": "theorem",
  "lexical_name": "succ_div",
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
  "slug": "succ-div--956e302e8eca510cbe69834b",
  "source": {
    "blob": "e925f2aefbbbc40d44a26ea4c5b1ed0a3ae6e79e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:956e302e8eca510cbe69834b4f14faf38c0c5f9c6bba6d7edbd76a9d3b6a36a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0531ba5-4f72-c96a-64a2-5d6bf054ff0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_div : ∀ a b : ℕ, (a + 1) / b = a / b + if b ∣ a + 1 then 1 else 0
  | a, 0 => by simp
  | 0, 1 => by simp
  | 0, b + 2 => by
    have hb2 : b + 2 > 1 := by simp
    simp [ne_of_gt hb2, div_eq_of_lt hb2]
  | a + 1, b + 1 => by
    rw [Nat.div_eq]
    conv_rhs => rw [Nat.div_eq]
    by_cases hb_eq_a : b = a + 1
    · simp [hb_eq_a, le_refl]
    by_cases hb_le_a1 : b ≤ a + 1
    · have hb_le_a : b ≤ a := le_of_lt_succ (lt_of_le_of_ne hb_le_a1 hb_eq_a)
      have h₁ : 0 < b + 1 ∧ b + 1 ≤ a + 1 + 1 := ⟨succ_pos _, (add_le_add_iff_right _).2 hb_le_a1⟩
      have h₂ : 0 < b + 1 ∧ b + 1 ≤ a + 1 := ⟨succ_pos _, (add_le_add_iff_right _).2 hb_le_a⟩
      have dvd_iff : b + 1 ∣ a - b + 1 ↔ b + 1 ∣ a + 1 + 1 := by
        rw [Nat.dvd_add_iff_left (dvd_refl (b + 1)), ← add_tsub_add_eq_tsub_right a 1 b,
          add_comm (_ - _), add_assoc, tsub_add_cancel_of_le (succ_le_succ hb_le_a), add_comm 1]
      have wf : a - b < a + 1 := lt_succ_of_le tsub_le_self
      rw [if_pos h₁, if_pos h₂, @add_tsub_add_eq_tsub_right, ← tsub_add_eq_add_tsub hb_le_a,
        have := wf
        succ_div (a - b),
        @add_tsub_add_eq_tsub_right]
      simp [dvd_iff, succ_eq_add_one, add_comm 1, add_assoc]
    · have hba : ¬b ≤ a := not_le_of_gt (lt_trans (lt_succ_self a) (lt_of_not_ge hb_le_a1))
      have hb_dvd_a : ¬b + 1 ∣ a + 2 := fun h =>
        hb_le_a1 (le_of_succ_le_succ (le_of_dvd (succ_pos _) h))
      simp [hba, hb_le_a1, hb_dvd_a]
#align nat.succ_div Nat.succ_div

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e925f2aefbbbc40d44a26ea4c5b1ed0a3ae6e79e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
