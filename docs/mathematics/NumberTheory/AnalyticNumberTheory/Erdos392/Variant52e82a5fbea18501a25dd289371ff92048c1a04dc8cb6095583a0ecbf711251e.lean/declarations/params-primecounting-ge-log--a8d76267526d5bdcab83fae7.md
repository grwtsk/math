# Params.primeCounting_ge_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f48cb0fd-073a-4b90-9b3d-3b7bedc332dc",
  "kind": "lemma",
  "lexical_name": "Params.primeCounting_ge_log",
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
  "slug": "params-primecounting-ge-log--a8d76267526d5bdcab83fae7",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1890,
    "line": 1835,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8d76267526d5bdcab83fae75fda9bd672b77c45210c740c953104ef0347562f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f48cb0fd-073a-4b90-9b3d-3b7bedc332dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1835–1890.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.primeCounting_ge_log (n : ℕ) (hn : n ≥ 2) :
    (n.primeCounting : ℝ) ≥ Real.log n := by
  have h_prod_le : ∀ k : ℕ, Nat.primeCounting (2 ^ k) ≥ k := by
    intro k
    induction k with
    | zero => norm_num
    | succ k ih =>
      obtain ⟨p, hp_prime, hp_bounds⟩ : ∃ p, p.Prime ∧ 2 ^ k < p ∧ p ≤ 2 ^ (k + 1) := by
        obtain ⟨p, hp₁, hp₂⟩ := bertrand (2 ^ k) (by positivity)
        exact ⟨p, hp₁, by linarith, by rw [_root_.pow_succ']; linarith⟩
      rw [primeCounting] at *
      rw [primeCounting', count_eq_card_filter_range] at *
      refine le_trans (succ_le_succ ih) (Finset.card_lt_card ?_)
      norm_num [Finset.ssubset_def, Finset.subset_iff]
      exact ⟨fun x hx₁ hx₂ => ⟨by linarith, hx₂⟩,
        p, by linarith, hp_prime, fun hx₃ => by linarith⟩
  obtain ⟨k, hk⟩ : ∃ k : ℕ, 2 ^ k ≤ n ∧ n < 2 ^ (k + 1) :=
    ⟨log 2 n, pow_le_of_le_log (ne_zero_of_lt hn)
        (log_anti_left (h_prod_le (succ 1)) (h_prod_le 2)),
      lt_pow_of_log_lt (one_lt_two) (Nat.lt_add_of_pos_right (h_prod_le (succ 0)))⟩
  have h_pi_ge_k : primeCounting n ≥ k := le_trans (h_prod_le k) (monotone_primeCounting hk.1)
  have h_log_le : Real.log n ≤ (k + 1) * Real.log 2 := by
    rw [← Real.log_rpow zero_lt_two]
    gcongr
    norm_cast
    linarith [pow_succ' 2 k]
  have h_k_ge_5 : 5 ≤ k → (k + 1) * Real.log 2 ≤ k := fun hk => by
    have := Real.log_two_lt_d9
    norm_num1 at *
    nlinarith [show (k : ℝ) ≥ 5 by norm_cast]
  by_cases hk_ge_5 : 5 ≤ k
  · exact le_trans h_log_le (le_trans (h_k_ge_5 hk_ge_5) (mod_cast h_pi_ge_k))
  · interval_cases k <;> norm_num at *
    · grind
    · rcases hk with ⟨hk₁, hk₂⟩; interval_cases n <;> norm_num at *
      · exact le_trans log_two_lt_d9.le
          (by norm_num; linarith [show (primeCounting 2 : ℝ) ≥ 1 by exact_mod_cast h_pi_ge_k])
      · rw [show primeCounting 3 = 2 by rfl]; norm_num
        linarith [log_le_sub_one_of_pos zero_lt_three]
    · rcases hk with ⟨hk₁, hk₂⟩; interval_cases n <;> norm_num at *
      · rw [show (4 : ℝ) = 2 ^ 2 by norm_num, Real.log_pow]; norm_num
        exact le_trans (mul_le_mul_of_nonneg_left log_two_lt_d9.le zero_le_two)
          (by norm_num; linarith [show (primeCounting 4 : ℝ) ≥ 2 by exact_mod_cast h_pi_ge_k])
      · rw [show (primeCounting 5 : ℝ) = 3 by norm_cast]
        have := log_two_lt_d9; norm_num at *
        linarith [log_le_sub_one_of_pos (show 0 < 5 / 4 by norm_num)]
      · rw [show primeCounting 6 = 3 by rfl]; norm_num
        have := log_two_lt_d9; have := log_lt_sub_one_of_pos zero_lt_three
        norm_num at *
        linarith
      · rw [show primeCounting 7 = 4 by rfl]; norm_num
        linarith [LogTables.log_7_lt]
    · grw [h_log_le, log_two_lt_d9, ← h_pi_ge_k]; norm_num
    · grw [h_log_le, log_two_lt_d9, ← h_pi_ge_k]; norm_num

/-- `π(n) * L * (L - logₚ L) ≥ log n * (1 / log 2 - 1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L1835).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
