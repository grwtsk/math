# _root_.GRWTSK.Algebra.UniversalAlgebra.OfAbvLe.Variantae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.cauchy_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9124c450-bdc7-0980-18aa-ced99a584e71",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.UniversalAlgebra.OfAbvLe.Variantae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.cauchy_product",
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
  "slug": "root-grwtsk-algebra-universalalgebra-ofabvle-variantae3f93e66bd5b66c1915--e77b069f9cddc2443310617d",
  "source": {
    "blob": "44639a22ea77a54bac0cb9fc4f68c0a8a2f8aef1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 68,
    "path": "GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variantc95ef59d63381bb9dc687c3b88cc7edb309f3b228e818816890cff6490f2da12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e77b069f9cddc2443310617d09b7c51d43833f793e4d2eb64f0ebaadc5561266",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/BigOperators/Variantc95ef59d63381bb9dc687c3b88cc7edb309f3b228e818816890cff6490f2da12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9124c450-bdc7-0980-18aa-ced99a584e71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.UniversalAlgebra.OfAbvLe.Variantae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.cauchy_product (ha : IsCauSeq abs fun m ↦ ∑ n ∈ range m, abv (f n))
    (hb : IsCauSeq abv fun m ↦ ∑ n ∈ range m, g n) (ε : α) (ε0 : 0 < ε) :
    ∃ i : ℕ, ∀ j ≥ i,
      abv ((∑ k ∈ range j, f k) * ∑ k ∈ range j, g k -
        ∑ n ∈ range j, ∑ m ∈ range (n + 1), f m * g (n - m)) < ε := by
  let ⟨P, hP⟩ := ha.bounded
  let ⟨Q, hQ⟩ := hb.bounded
  have hP0 : 0 < P := lt_of_le_of_lt (abs_nonneg _) (hP 0)
  have hPε0 : 0 < ε / (2 * P) := div_pos ε0 (mul_pos (show (2 : α) > 0 by simp) hP0)
  let ⟨N, hN⟩ := hb.cauchy₂ hPε0
  have hQε0 : 0 < ε / (4 * Q) :=
    div_pos ε0 (mul_pos (show (0 : α) < 4 by simp) (lt_of_le_of_lt (abv_nonneg _ _) (hQ 0)))
  let ⟨M, hM⟩ := ha.cauchy₂ hQε0
  refine ⟨2 * (max N M + 1), fun K hK ↦ ?_⟩
  have h₁ :
    (∑ m ∈ range K, ∑ k ∈ range (m + 1), f k * g (m - k)) =
      ∑ m ∈ range K, ∑ n ∈ range (K - m), f m * g n := by
    simpa using sum_range_diag_flip K fun m n ↦ f m * g n
  have h₂ :
    (fun i ↦ ∑ k ∈ range (K - i), f i * g k) = fun i ↦ f i * ∑ k ∈ range (K - i), g k := by
    simp [Finset.mul_sum]
  have h₃ :
    ∑ i ∈ range K, f i * ∑ k ∈ range (K - i), g k =
      ∑ i ∈ range K, f i * (∑ k ∈ range (K - i), g k - ∑ k ∈ range K, g k) +
        ∑ i ∈ range K, f i * ∑ k ∈ range K, g k := by
    rw [← sum_add_distrib]; simp [(mul_add _ _ _).symm]
  have two_mul_two : (4 : α) = 2 * 2 := by norm_num
  have hQ0 : Q ≠ 0 := fun h ↦ by simp [h] at hQε0
  have h2Q0 : 2 * Q ≠ 0 := mul_ne_zero two_ne_zero hQ0
  have hε : ε / (2 * P) * P + ε / (4 * Q) * (2 * Q) = ε := by
    rw [← div_div, div_mul_cancel₀ _ (Ne.symm (ne_of_lt hP0)), two_mul_two, mul_assoc, ← div_div,
      div_mul_cancel₀ _ h2Q0, add_halves]
  have hNMK : max N M + 1 < K :=
    lt_of_lt_of_le (by rw [two_mul]; exact lt_add_of_pos_left _ (Nat.succ_pos _)) hK
  have hKN : N < K :=
    calc
      N ≤ max N M := le_max_left _ _
      _ < max N M + 1 := Nat.lt_succ_self _
      _ < K := hNMK
  have hsumlesum :
      (∑ i ∈ range (max N M + 1),
        abv (f i) * abv ((∑ k ∈ range (K - i), g k) - ∑ k ∈ range K, g k)) ≤
      ∑ i ∈ range (max N M + 1), abv (f i) * (ε / (2 * P)) := by
    gcongr with m hmJ
    refine le_of_lt <| hN (K - m) (le_tsub_of_add_le_left <| hK.trans' ?_) K hKN.le
    rw [two_mul]
    gcongr
    · exact (mem_range.1 hmJ).le
    · exact Nat.le_succ_of_le (le_max_left _ _)
  have hsumltP : (∑ n ∈ range (max N M + 1), abv (f n)) < P :=
    calc
      (∑ n ∈ range (max N M + 1), abv (f n)) = |∑ n ∈ range (max N M + 1), abv (f n)| :=
        Eq.symm (abs_of_nonneg (sum_nonneg fun x _ ↦ abv_nonneg abv (f x)))
      _ < P := hP (max N M + 1)
  rw [h₁, h₂, h₃, sum_mul, ← sub_sub, sub_right_comm, sub_self, zero_sub, abv_neg abv]
  refine lt_of_le_of_lt (IsAbsoluteValue.abv_sum _ _ _) ?_
  suffices
    (∑ i ∈ range (max N M + 1),
          abv (f i) * abv ((∑ k ∈ range (K - i), g k) - ∑ k ∈ range K, g k)) +
        ((∑ i ∈ range K, abv (f i) * abv ((∑ k ∈ range (K - i), g k) - ∑ k ∈ range K, g k)) -
          ∑ i ∈ range (max N M + 1),
            abv (f i) * abv ((∑ k ∈ range (K - i), g k) - ∑ k ∈ range K, g k)) <
      ε / (2 * P) * P + ε / (4 * Q) * (2 * Q) by
    rw [hε] at this
    simpa [abv_mul abv] using this
  gcongr
  · exact lt_of_le_of_lt hsumlesum
        (by rw [← sum_mul, mul_comm]; gcongr)
  rw [sum_range_sub_sum_range (le_of_lt hNMK)]
  calc
    (∑ i ∈ range K with max N M + 1 ≤ i,
          abv (f i) * abv ((∑ k ∈ range (K - i), g k) - ∑ k ∈ range K, g k)) ≤
        ∑ i ∈ range K with max N M + 1 ≤ i, abv (f i) * (2 * Q) := by
        gcongr
        rw [sub_eq_add_neg]
        grw [abv_add abv]
        rw [two_mul, abv_neg abv]
        gcongr <;> exact le_of_lt (hQ _)
    _ < ε / (4 * Q) * (2 * Q) := by
        rw [← sum_mul, ← sum_range_sub_sum_range (le_of_lt hNMK)]
        have := lt_of_le_of_lt (abv_nonneg _ _) (hQ 0)
        gcongr
        exact (le_abs_self _).trans_lt <|
          hM _ ((Nat.le_succ_of_le (le_max_right _ _)).trans hNMK.le) _ <|
            Nat.le_succ_of_le <| le_max_right _ _

variable [Archimedean α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/BigOperators/Variantc95ef59d63381bb9dc687c3b88cc7edb309f3b228e818816890cff6490f2da12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variantc95ef59d63381bb9dc687c3b88cc7edb309f3b228e818816890cff6490f2da12.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44639a22ea77a54bac0cb9fc4f68c0a8a2f8aef1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
