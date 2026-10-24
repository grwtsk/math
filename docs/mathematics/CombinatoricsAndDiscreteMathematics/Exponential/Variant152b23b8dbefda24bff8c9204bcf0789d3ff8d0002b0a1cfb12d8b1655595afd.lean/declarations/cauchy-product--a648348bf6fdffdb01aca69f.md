# cauchy_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67d71e496ea143cafd81c9aa2893b68b5ab902d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64bc17a8-4258-3d53-a4cd-9d3b7b35ffd4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6bf1b26-bb84-3d01-265e-0e05340f504f",
  "kind": "theorem",
  "lexical_name": "cauchy_product",
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
  "slug": "cauchy-product--a648348bf6fdffdb01aca69f",
  "source": {
    "blob": "67d71e496ea143cafd81c9aa2893b68b5ab902d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 239,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a648348bf6fdffdb01aca69fea25338645c4c680ead9f6e7ea36d44d4a94ffa9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6bf1b26-bb84-3d01-265e-0e05340f504f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchy_product {a b : ℕ → β} (ha : IsCauSeq abs fun m => ∑ n in range m, abv (a n))
    (hb : IsCauSeq abv fun m => ∑ n in range m, b n) (ε : α) (ε0 : 0 < ε) :
    ∃ i : ℕ,
      ∀ j ≥ i,
        abv
            (((∑ k in range j, a k) * ∑ k in range j, b k) -
              ∑ n in range j, ∑ m in range (n + 1), a m * b (n - m)) <
          ε :=
  let ⟨Q, hQ⟩ := CauSeq.bounded ⟨_, hb⟩
  let ⟨P, hP⟩ := CauSeq.bounded ⟨_, ha⟩
  have hP0 : 0 < P := lt_of_le_of_lt (abs_nonneg _) (hP 0)
  have hPε0 : 0 < ε / (2 * P) := div_pos ε0 (mul_pos (show (2 : α) > 0 by norm_num) hP0)
  let ⟨N, hN⟩ := CauSeq.cauchy₂ ⟨_, hb⟩ hPε0
  have hQε0 : 0 < ε / (4 * Q) :=
    div_pos ε0 (mul_pos (show (0 : α) < 4 by norm_num) (lt_of_le_of_lt (abv_nonneg _ _) (hQ 0)))
  let ⟨M, hM⟩ := CauSeq.cauchy₂ ⟨_, ha⟩ hQε0
  ⟨2 * (max N M + 1), fun K hK => by
    have h₁ :
      (∑ m in range K, ∑ k in range (m + 1), a k * b (m - k)) =
        ∑ m in range K, ∑ n in range (K - m), a m * b n :=
      by simpa using sum_range_diag_flip K fun m n => a m * b n
    have h₂ :
      (fun i => ∑ k in range (K - i), a i * b k) = fun i => a i * ∑ k in range (K - i), b k := by
      simp [Finset.mul_sum]
    have h₃ :
      (∑ i in range K, a i * ∑ k in range (K - i), b k) =
        (∑ i in range K, a i * ((∑ k in range (K - i), b k) - ∑ k in range K, b k)) +
          ∑ i in range K, a i * ∑ k in range K, b k :=
      by rw [← sum_add_distrib]; simp [(mul_add _ _ _).symm]
    have two_mul_two : (4 : α) = 2 * 2 := by norm_num
    have hQ0 : Q ≠ 0 := fun h => by simp [h, lt_irrefl] at hQε0
    have h2Q0 : 2 * Q ≠ 0 := mul_ne_zero two_ne_zero hQ0
    have hε : ε / (2 * P) * P + ε / (4 * Q) * (2 * Q) = ε := by
      rw [← div_div, div_mul_cancel _ (Ne.symm (ne_of_lt hP0)), two_mul_two, mul_assoc, ← div_div,
        div_mul_cancel _ h2Q0, add_halves]
    have hNMK : max N M + 1 < K :=
      lt_of_lt_of_le (by rw [two_mul]; exact lt_add_of_pos_left _ (Nat.succ_pos _)) hK
    have hKN : N < K :=
      calc
        N ≤ max N M := le_max_left _ _
        _ < max N M + 1 := (Nat.lt_succ_self _)
        _ < K := hNMK

    have hsumlesum :
      (∑ i in range (max N M + 1),
          abv (a i) * abv ((∑ k in range (K - i), b k) - ∑ k in range K, b k)) ≤
        ∑ i in range (max N M + 1), abv (a i) * (ε / (2 * P))
    · gcongr with m hmJ
      exact le_of_lt
            (hN (K - m)
              (le_tsub_of_add_le_left
                (le_trans
                  (by
                    rw [two_mul]
                    gcongr
                    · exact le_of_lt (mem_range.1 hmJ)
                    · exact le_trans (le_max_left _ _) (le_of_lt (lt_add_one _)))
                  hK))
              K (le_of_lt hKN))
    have hsumltP : (∑ n in range (max N M + 1), abv (a n)) < P :=
      calc
        (∑ n in range (max N M + 1), abv (a n)) = |∑ n in range (max N M + 1), abv (a n)| :=
          Eq.symm (abs_of_nonneg (sum_nonneg fun x _ => abv_nonneg abv (a x)))
        _ < P := hP (max N M + 1)

    rw [h₁, h₂, h₃, sum_mul, ← sub_sub, sub_right_comm, sub_self, zero_sub, abv_neg abv]
    refine' lt_of_le_of_lt (abv_sum_le_sum_abv _ _) _
    suffices
      (∑ i in range (max N M + 1),
            abv (a i) * abv ((∑ k in range (K - i), b k) - ∑ k in range K, b k)) +
          ((∑ i in range K, abv (a i) * abv ((∑ k in range (K - i), b k) - ∑ k in range K, b k)) -
            ∑ i in range (max N M + 1),
              abv (a i) * abv ((∑ k in range (K - i), b k) - ∑ k in range K, b k)) <
        ε / (2 * P) * P + ε / (4 * Q) * (2 * Q) by
      rw [hε] at this
      simpa [abv_mul abv] using this
    gcongr
    · exact lt_of_le_of_lt hsumlesum
          (by rw [← sum_mul, mul_comm]; gcongr)
    rw [sum_range_sub_sum_range (le_of_lt hNMK)]
    calc
      (∑ i in (range K).filter fun k => max N M + 1 ≤ k,
            abv (a i) * abv ((∑ k in range (K - i), b k) - ∑ k in range K, b k)) ≤
          ∑ i in (range K).filter fun k => max N M + 1 ≤ k, abv (a i) * (2 * Q) := by
          gcongr
          rw [sub_eq_add_neg]
          refine' le_trans (abv_add _ _ _) _
          rw [two_mul, abv_neg abv]
          gcongr <;> exact le_of_lt (hQ _)
      _ < ε / (4 * Q) * (2 * Q) := by
          rw [← sum_mul, ← sum_range_sub_sum_range (le_of_lt hNMK)]
          have := lt_of_le_of_lt (abv_nonneg _ _) (hQ 0)
          gcongr
          refine'
               lt_of_le_of_lt (le_abs_self _)
                (hM _ (le_trans (Nat.le_succ_of_le (le_max_right _ _)) (le_of_lt hNMK)) _
                  (Nat.le_succ_of_le (le_max_right _ _)))
      ⟩
#align cauchy_product cauchy_product

end

end NoArchimedean

end

open Finset

open CauSeq

namespace Complex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67d71e496ea143cafd81c9aa2893b68b5ab902d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
