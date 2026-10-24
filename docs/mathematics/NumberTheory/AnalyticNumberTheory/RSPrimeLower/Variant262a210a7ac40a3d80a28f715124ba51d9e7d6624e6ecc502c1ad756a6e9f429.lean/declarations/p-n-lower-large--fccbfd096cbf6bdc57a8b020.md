# p_n_lower_large

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e427cb901f7152caa01418ccc8fe9b5f302a1eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01d9afa5-c09c-cf7e-017a-31f06eb49fa8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d53f904-e625-d20d-48e9-0bb2ef77cbf9",
  "kind": "lemma",
  "lexical_name": "p_n_lower_large",
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
  "slug": "p-n-lower-large--fccbfd096cbf6bdc57a8b020",
  "source": {
    "blob": "4e427cb901f7152caa01418ccc8fe9b5f302a1eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fccbfd096cbf6bdc57a8b020f214bd586c3b729f3811b164825fe91639caf4d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d53f904-e625-d20d-48e9-0bb2ef77cbf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma p_n_lower_large (n : ℕ) (hn : n ≥ 32) :
    (nth_prime' n : ℝ) > n * (Real.log n + Real.log (Real.log n) - 3 / 2) := by
  have h_dusart : (nth_prime' n : ℝ) ≥ n * (Real.log (nth_prime' n) - 1.112) := by
    have h_pi_le : (n : ℝ) ≤ (nth_prime' n) / (Real.log (nth_prime' n) - 1.112) := by
      have h_pi_le :
          pi (nth_prime' n) ≤ (nth_prime' n : ℝ) / (Real.log (nth_prime' n) - 1.112) := by
        convert Dusart.corollary_5_3_b _ using 1
        have h_step1 : (nth_prime' n : ℝ) ≥ n + 1 := by
          norm_cast
          have h_step1 : ∀ n ≥ 1, nth_prime' n ≥ n + 1 := by
            intro n hn
            induction n, hn using Nat.le_induction with
            | base =>
              exact Prime.two_le (prime_nth_prime 0) |> succ_le_of_lt |> le_trans <| le_refl _
            | succ n _ ih =>
              exact succ_le_of_lt (lt_of_le_of_lt ih (nth_strictMono (infinite_setOf_prime) (pred_lt (by positivity))))
          exact h_step1 n (by linarith)
        generalize_proofs at *
        have h_exp_approx : Real.exp 1.112 < 33 := by linarith [LogTables.exp_1_112_lt]
        linarith [show (n : ℝ) ≥ 32 by norm_cast]
      convert h_pi_le using 1
      exact_mod_cast Eq.symm (pi_nth_prime' n (by linarith))
    rwa [le_div_iff₀ (sub_pos.mpr <| by
      contrapose! h_pi_le
      exact lt_of_le_of_lt
        (div_nonpos_of_nonneg_of_nonpos (Nat.cast_nonneg _) (sub_nonpos.mpr h_pi_le))
        (by positivity))] at h_pi_le
  have h_log_pn :
      Real.log (nth_prime' n) ≥ Real.log n + Real.log (Real.log n - 1.112) := by
    have h_pn_ge : (nth_prime' n : ℝ) ≥ n * (Real.log n - 1.112) := by
      refine le_trans ?_ h_dusart
      generalize_proofs at *; (
      gcongr;
      refine Nat.le_induction ?_ ?_ n (show n ≥ 1 from by linarith) <;>
        intros <;> simp_all only [nth_prime']
      · exact Prime.pos (prime_nth_prime 0) |> one_le_of_lt
      · exact nth_strictMono (infinite_setOf_prime) (by omega) |> lt_of_le_of_lt (by omega))
    have h_log_gt : Real.log n > 1.112 := by
      have : Real.log 32 > 1.112 := by linarith [LogTables.log_32_gt]
      exact this.trans_le (Real.log_le_log (by norm_num) (mod_cast hn)) |> lt_of_lt_of_le <| le_rfl
    have h_log_pn_ge :
        Real.log (nth_prime' n) ≥ Real.log (n * (Real.log n - 1.112)) :=
      Real.log_le_log (mul_pos (by positivity) (sub_pos.mpr h_log_gt)) h_pn_ge
    have h_log_split :
        Real.log (n * (Real.log n - 1.112)) =
          Real.log n + Real.log (Real.log n - 1.112) := by
      rw [Real.log_mul] <;> norm_num
      · aesop
      · linarith [Real.log_le_log (by norm_num : (0 : ℝ) < 32) (by norm_cast),
          LogTables.log_32_gt]
    linarith [h_log_pn_ge, h_log_split]
  have h_loglog : Real.log (Real.log n - 1.112) > 0.85 := by
    have h_log_n_ge : Real.log n ≥ Real.log 32 :=
      Real.log_le_log (by norm_num) (by norm_cast)
    have h_log_32 : Real.log 32 > 3.465 := by linarith [LogTables.log_32_gt]
    have h_log_2_353 : log 2.353 > 0.85 := by linarith [LogTables.log_2_353_gt]
    exact (h_log_2_353.trans_le
      (Real.log_le_log (by norm_num) (by linarith))).trans_le' (by norm_num)
  have h_pn_ge2 : (nth_prime' n : ℝ) ≥ n * (Real.log n + 0.85 - 1.112) :=
    le_trans (mul_le_mul_of_nonneg_left (by linarith) (Nat.cast_nonneg _)) h_dusart
  have h_log_32_bound : Real.log 32 - 0.262 > 3.2 := by linarith [LogTables.log_32_gt]
  have h_pn_ge3 : (nth_prime' n : ℝ) ≥ n * 3.2 := by
    have : Real.log n - 0.262 ≥ Real.log 32 - 0.262 :=
      sub_le_sub_right (Real.log_le_log (by norm_num) (by norm_cast)) _
    exact le_trans (mul_le_mul_of_nonneg_left (by linarith) (cast_nonneg _)) h_pn_ge2
  have h_pn_gt_nlogn : (nth_prime' n : ℝ) > n * Real.log n := by
    have h_log_pn_gt : Real.log (nth_prime' n) > Real.log n + 1.16 := by
      have : Real.log (nth_prime' n) ≥ Real.log n + Real.log (3.2) := by
        rw [← log_mul (by positivity) (by positivity)]
        exact log_le_log (by positivity) (by linarith)
      have : log (3.2) > 1.16 := by linarith [LogTables.log_3_2_gt]
      linarith
    have : (nth_prime' n : ℝ) ≥ n * (Real.log n + 1.16 - 1.112) :=
      le_trans (mul_le_mul_of_nonneg_left (by linarith) (cast_nonneg _)) h_dusart
    linarith [show (n : ℝ) ≥ 32 by norm_cast]
  have h_log_sum : Real.log (nth_prime' n) > Real.log n + log (log n) := by
    rw [← log_mul (by positivity) (by exact ne_of_gt <| log_pos <| by norm_cast; linarith)]
    exact log_lt_log (by exact mul_pos (by positivity) <| log_pos <| by norm_cast; linarith) h_pn_gt_nlogn
  nlinarith [show (n : ℝ) ≥ 32 by norm_cast]

end RS_prime_helper
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variant262a210a7ac40a3d80a28f715124ba51d9e7d6624e6ecc502c1ad756a6e9f429.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e427cb901f7152caa01418ccc8fe9b5f302a1eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
