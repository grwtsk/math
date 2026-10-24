# lemma_abadimpseri

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2754,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8bee86f-8993-ebec-a909-7dffeda8f3fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:701f9af9-f6b4-ac68-36f0-4728423ad738",
  "kind": "lemma",
  "lexical_name": "lemma_abadimpseri",
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
  "slug": "lemma-abadimpseri--57a9329a8f32d77b2a7100a5",
  "source": {
    "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2859,
    "line": 2754,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57a9329a8f32d77b2a7100a56829763345c6f768cd18136699050b447da148a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:701f9af9-f6b4-ac68-36f0-4728423ad738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2754–2859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lemma_abadimpseri (ϑ : ℝ) (hϑ : |ϑ| < 1) :
    ∑' n : ℕ, (1 / ((n + 1 : ℝ) - ϑ) ^ 3 + 1 / ((n + 1 : ℝ) + ϑ) ^ 3) ≤
      1 / (1 - |ϑ|) ^ 3 + 2 * (riemannZeta 3).re - 1 := by
  have h_sum_bound : ∀ n : ℕ, (1 / (n + 1 - ϑ) ^ 3 + 1 / (n + 1 + ϑ) ^ 3) ≤
      (1 / (n + 1 - |ϑ|) ^ 3 + 1 / (n + 1 + |ϑ|) ^ 3) := by intro n; cases abs_cases ϑ <;> grind
  have h_sum_bound_endpoints : (∑' n : ℕ, (1 / (n + 1 - |ϑ|) ^ 3 + 1 / (n + 1 + |ϑ|) ^ 3)) ≤
      (1 / (1 - |ϑ|) ^ 3) + 2 * (riemannZeta 3).re - 1 := by
    have h_sum_endpoints_bound : (∑' n : ℕ, (1 / (n + 2 - |ϑ|) ^ 3 + 1 / (n + 1 + |ϑ|) ^ 3)) ≤
        2 * (riemannZeta 3).re - 1 := by
      have h_term_bound : ∀ n : ℕ, (1 / (n + 2 - |ϑ|) ^ 3 + 1 / (n + 1 + |ϑ|) ^ 3) ≤
          (1 / (n + 1) ^ 3 + 1 / (n + 2) ^ 3) := by
        intro n
        rw [div_add_div, div_add_div, div_le_div_iff₀] <;> try positivity
        · have h_simp : (n + 1 + |ϑ|) ^ 3 + (n + 2 - |ϑ|) ^ 3 ≤ (n + 1) ^ 3 + (n + 2) ^ 3 := by
            nlinarith [abs_nonneg ϑ, pow_two_nonneg (|ϑ| : ℝ), pow_two_nonneg (n : ℝ),
              mul_lt_mul_of_pos_left hϑ <| Nat.cast_add_one_pos n]
          field_simp
          refine le_trans (mul_le_mul_of_nonneg_left h_simp <| by positivity) ?_
          have h_simp : (n + 1 : ℝ) ^ 3 * (n + 2) ^ 3 ≤ (n + 1 + |ϑ|) ^ 3 * (n + 2 - |ϑ|) ^ 3 := by
            rw [← mul_pow, ← mul_pow]; exact pow_le_pow_left₀ (by positivity) (by nlinarith [abs_nonneg ϑ]) _
          exact mul_le_mul h_simp (by linarith) (by positivity)
            (by exact mul_nonneg (pow_nonneg (by positivity) _) (pow_nonneg (by linarith [abs_nonneg ϑ]) _))
        · exact mul_pos (pow_pos (by linarith [abs_nonneg ϑ]) _) (pow_pos (by linarith [abs_nonneg ϑ]) _)
        · exact pow_ne_zero _ (by linarith [abs_nonneg ϑ])
      refine le_trans (Summable.tsum_le_tsum h_term_bound ?_ ?_) ?_
      · exact of_nonneg_of_le (fun n ↦ add_nonneg (one_div_nonneg.mpr (pow_nonneg (by linarith [abs_nonneg ϑ]) _))
          (one_div_nonneg.mpr (pow_nonneg (by linarith [abs_nonneg ϑ]) _)))
            h_term_bound (add (by exact_mod_cast summable_nat_add_iff 1 |>.2 <| summable_one_div_nat_pow.2 <| by omega)
              (by exact_mod_cast summable_nat_add_iff 2 |>.2 <| summable_one_div_nat_pow.2 <| by omega))
      · exact add (by simpa using summable_nat_add_iff 1 |>.2 <| summable_one_div_nat_pow.2 <| by omega)
          (by simpa using summable_nat_add_iff 2 |>.2 <| summable_one_div_nat_pow.2 <| by omega)
      · have h_sum_zeta : ∑' n : ℕ, (1 / (n + 1 : ℝ) ^ 3 + 1 / (n + 2 : ℝ) ^ 3) =
            2 * (∑' n : ℕ, (1 / (n + 1 : ℝ) ^ 3)) - 1 := by
          rw [Summable.tsum_add, Summable.tsum_eq_zero_add] <;> norm_num
          · norm_num [add_assoc]; ring
          · exact_mod_cast summable_nat_add_iff 1 |>.2 <| summable_nat_pow_inv.2 <| by omega
          · exact_mod_cast summable_nat_add_iff 1 |>.2 <| summable_nat_pow_inv.2 <| by omega
          · exact_mod_cast summable_nat_add_iff 2 |>.2 <| summable_nat_pow_inv.2 <| by omega
        convert h_sum_zeta.le using 2
        erw [zeta_eq_tsum_one_div_nat_add_one_cpow] <;> norm_num
        · convert ofReal_re _; simp [Complex.ofReal_tsum]
    rw [Summable.tsum_eq_zero_add]
    · norm_num [add_assoc, add_left_comm, add_comm, div_eq_mul_inv, mul_add, mul_comm,
        mul_left_comm, tsum_mul_left] at *
      have hs₁ : Summable fun n : ℕ ↦ ((|ϑ| + (n + 1)) ^ 3)⁻¹ :=
        of_nonneg_of_le (fun n ↦ inv_nonneg.2 (pow_nonneg (by positivity) _))
          (fun n ↦ by simpa using inv_anti₀ (by positivity) (pow_le_pow_left₀ (by positivity)
            (show (|ϑ| + (n + 1) : ℝ) ≥ n + 1 by linarith [abs_nonneg ϑ]) 3))
          (summable_nat_add_iff 1 |>.2 <| Real.summable_one_div_nat_pow.2 <| by omega)
      have hs₂ : Summable fun n : ℕ ↦ (((n : ℝ) + 2 - |ϑ|) ^ 3)⁻¹ :=
        of_nonneg_of_le (fun n ↦ inv_nonneg.2 (pow_nonneg (by linarith [abs_nonneg ϑ]) _))
          (fun n ↦ by rw [inv_le_comm₀] <;> norm_num <;> ring_nf <;>
            nlinarith [abs_nonneg ϑ, pow_two_nonneg ((n : ℝ) + 1 - |ϑ|)])
          (summable_nat_add_iff 1 |>.2 <| Real.summable_one_div_nat_pow.2 one_lt_two)
      rw [Summable.tsum_add hs₁ hs₂] at h_sum_endpoints_bound
      rw [Summable.tsum_add]
      · rw [show (∑' b : ℕ, ((|ϑ| + (b + 2)) ^ 3)⁻¹) = (∑' b : ℕ, ((|ϑ| + (b + 1)) ^ 3)⁻¹) - ((|ϑ| + 1) ^ 3)⁻¹ from ?_]
        · nlinarith [show 0 < (|ϑ| + 1) ^ 3 by positivity, inv_mul_cancel₀ (show (|ϑ| + 1) ^ 3 ≠ 0 by positivity)]
        · rw [eq_comm, Summable.tsum_eq_zero_add]
          · norm_num [add_assoc]
          · exact hs₁
      · exact_mod_cast of_nonneg_of_le (fun n ↦ by positivity)
          (fun n ↦ by rw [inv_le_comm₀] <;> norm_num <;> ring_nf <;> nlinarith only [abs_nonneg ϑ, hϑ])
            (summable_nat_add_iff 1 |>.2 <| Real.summable_one_div_nat_pow.2 one_lt_two)
      · exact hs₂
    · refine Summable.add ?_ ?_
      · have : Summable (fun n : ℕ ↦ (1 : ℝ) / (n : ℝ) ^ 3) := summable_one_div_nat_pow.2 (by omega)
        rw [← summable_nat_add_iff 1] at this ⊢
        exact of_nonneg_of_le (fun n ↦ one_div_nonneg.mpr (pow_nonneg (by cases abs_cases ϑ <;> linarith) _))
          (fun n ↦ one_div_le_one_div_of_le (by positivity)
            (pow_le_pow_left₀ (by positivity) (by cases abs_cases ϑ <;> linarith) _)) this
      · exact_mod_cast of_nonneg_of_le (fun n ↦ by positivity)
          (fun n ↦ by simpa using inv_anti₀ (by positivity) (pow_le_pow_left₀ (by positivity)
            (show (n : ℝ) + 1 + |ϑ| ≥ n + 1 by linarith [abs_nonneg ϑ]) 3))
          (summable_nat_add_iff 1 |>.2 <| Real.summable_one_div_nat_pow.2 <| by omega)
  refine le_trans (Summable.tsum_le_tsum h_sum_bound ?_ ?_) h_sum_bound_endpoints
  · have h_bound : ∀ n : ℕ,
        (1 / (n + 1 - ϑ) ^ 3 + 1 / (n + 1 + ϑ) ^ 3) ≤ 2 / (n + 1 - |ϑ|) ^ 3 := fun n ↦ by
      have : (1 / (n + 1 - ϑ) ^ 3 + 1 / (n + 1 + ϑ) ^ 3) ≤
          (1 / (n + 1 - |ϑ|) ^ 3 + 1 / (n + 1 - |ϑ|) ^ 3) := by
        cases abs_cases ϑ <;> simp only [add_le_add_iff_left, one_div, sub_neg_eq_add, add_le_add_iff_right, *]
        · exact inv_anti₀ (pow_pos (by linarith) _) (by gcongr <;> linarith)
        · exact inv_anti₀ (pow_pos (by linarith) _)
            (pow_le_pow_left₀ (by linarith) (by linarith) _)
      exact this.trans_eq (by ring)
    refine of_nonneg_of_le (fun n ↦ ?_) (fun n ↦ h_bound n) ?_
    · exact add_nonneg (one_div_nonneg.mpr (pow_nonneg (by linarith [abs_lt.mp hϑ]) _))
        (one_div_nonneg.mpr (pow_nonneg (by linarith [abs_lt.mp hϑ]) _))
    · have : Summable (fun n : ℕ ↦ 2 / (n : ℝ) ^ 3) :=
        mul_left 2 <| Real.summable_nat_pow_inv.2 (by norm_num : (1 : ℕ) < 3)
      rw [← summable_nat_add_iff 1] at this ⊢
      exact of_nonneg_of_le (fun n ↦ div_nonneg zero_le_two (pow_nonneg (by linarith [abs_nonneg ϑ]) _))
        (fun n ↦ div_le_div_of_nonneg_left (by positivity) (by positivity)
          (pow_le_pow_left₀ (by linarith [abs_nonneg ϑ]) (by linarith [abs_nonneg ϑ]) _)) this
  · refine add ?_ ?_
    · rw [← summable_nat_add_iff 1]
      simp only [one_div, Nat.cast_add, Nat.cast_one] at *
      exact of_nonneg_of_le (fun n ↦ inv_nonneg.2 (pow_nonneg (by linarith [abs_nonneg ϑ]) _))
        (fun n ↦ by rw [inv_le_comm₀] <;> norm_num <;> ring_nf <;>
          nlinarith [abs_nonneg ϑ, pow_two_nonneg ((n : ℝ) ^ 2), pow_two_nonneg ((n : ℝ) + 1),
            pow_two_nonneg ((n : ℝ) + 1 - |ϑ|)]) (summable_nat_add_iff 1 |>.2 <| summable_one_div_nat_pow.2 one_lt_two)
    · exact of_nonneg_of_le (fun n ↦ by positivity)
        (fun n ↦ by simpa using inv_anti₀ (by positivity) (pow_le_pow_left₀ (by positivity)
          (show (n : ℝ) + 1 + |ϑ| ≥ n + 1 by linarith [abs_nonneg ϑ]) 3))
            (summable_nat_add_iff 1 |>.2 <| summable_one_div_nat_pow.2 <| by omega)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean#L2754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0f3aece12c9562ccb5ca1c7447b813a4348cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
