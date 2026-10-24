# thm_1b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31d573af61253eda377326baebeb36929353a168",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16501057-380e-1b70-2791-3a5f9a789e0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6d25fa3-2274-2345-a1c9-a29117b8a9a1",
  "kind": "theorem",
  "lexical_name": "thm_1b",
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
  "slug": "thm-1b--b4ebb4c58aeab24e37c71803",
  "source": {
    "blob": "31d573af61253eda377326baebeb36929353a168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2248,
    "line": 2168,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4ebb4c58aeab24e37c71803ecf89c954005554e4f77bc4c9c20dada149d56e0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6d25fa3-2274-2345-a1c9-a29117b8a9a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2168–2248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thm_1b (k : ℕ) (hk : k ≤ 5) {X₀ X₁ : ℝ} (hX₀ : X₀ > 1) :
  ∃ mₖ Mₖ, ∀ x, x ≥ X₀ ∧ x ≥ X₁ → (x * (1 - mₖ / (log x)^k) ≤ θ x) ∧ (θ x ≤ x * (1 + Mₖ / (log x)^k)) := by
  have h_ne : Table_15 ≠ [] := by decide
  let row := Table_15.getLast h_ne
  let b : ℝ := row.1
  let M := row.2
  have hM : (b, M) ∈ Table_15 := List.getLast_mem h_ne
  by_cases hk0 : k = 0
  · subst k
    let α := Inputs.default.α
    use 1, α
    intro x hx
    have hx_pos : x > 0 := by linarith [hx.1, hX₀]
    constructor
    · rw [show 1 - 1 / (log x)^0 = 0 by simp, mul_zero]
      exact Chebyshev.theta_nonneg x
    · rw [show 1 + α / (log x)^0 = 1 + α by simp, mul_comm]
      exact Inputs.default.hα x hx_pos
  · have hk_fin : k - 1 < 5 := by omega
    let k_fin : Fin 5 := ⟨k - 1, hk_fin⟩
    let C_table := M k_fin
    let α := Inputs.default.α
    let mk := max C_table (b^k)
    let Mk := max C_table (α * b^k)
    use mk, Mk
    intro x hx
    have hx_pos : x > 0 := by linarith [hx.1, hX₀]
    have hlog_pos : log x > 0 := Real.log_pos (by linarith [hx.1, hX₀])
    have h_log_k_pos : 0 < (log x)^k := by positivity
    by_cases hxb : x ≥ exp b
    · have hk_eq : k_fin.val + 1 = k := by dsimp [k_fin]; omega
      have h_table_bound := thm_1b_table (by dsimp [b, row, Table_15]; norm_num) hM k_fin hxb
      rw [hk_eq] at h_table_bound
      constructor
      · have h_le : x * (1 - mk / (log x)^k) ≤ x * (1 - C_table / (log x)^k) := by
          gcongr; exact le_max_left _ _
        exact h_le.trans h_table_bound.1
      · have h_le : x * (1 + C_table / (log x)^k) ≤ x * (1 + Mk / (log x)^k) := by
          gcongr; exact le_max_left _ _
        exact h_table_bound.2.trans h_le
    · have h_lt : x < exp b := not_le.mp hxb
      have h_log_lt : log x < b := by
        rwa [← log_lt_log_iff hx_pos (by positivity), Real.log_exp b] at h_lt
      have h_log_k_le : (log x)^k ≤ b^k := by
        have h_log_nonneg : 0 ≤ log x := by positivity
        exact pow_le_pow_left₀ h_log_nonneg h_log_lt.le k
      constructor
      · have h_bk_le : b^k ≤ mk := le_max_right _ _
        have h_log_k_le_mk : (log x)^k ≤ mk := h_log_k_le.trans h_bk_le
        have h_le_zero : x * (1 - mk / (log x)^k) ≤ 0 := by
          have h_div : 1 ≤ mk / (log x)^k := by
            rw [one_le_div h_log_k_pos]
            exact h_log_k_le_mk
          have h_sub : 1 - mk / (log x)^k ≤ 0 := by linarith
          nlinarith [hx_pos, h_sub]
        exact h_le_zero.trans (Chebyshev.theta_nonneg x)
      · have h_α_bk_le : α * b^k ≤ Mk := le_max_right _ _
        have hα_nonneg : 0 ≤ α := by dsimp [α, Inputs.default]; positivity
        have h_le_α : α ≤ Mk / (log x)^k := by
          have h2 : α ≤ α * b^k / (log x)^k := by
            rw [mul_div_assoc]
            simpa using mul_le_mul_of_nonneg_left ((one_le_div h_log_k_pos).mpr h_log_k_le) hα_nonneg
          have h1 : α * b^k / (log x)^k ≤ Mk / (log x)^k := by gcongr
          exact h2.trans h1
        have h_bound := cor_2_1 x hx_pos
        rw [mul_comm] at h_bound
        have h_sub_bound : 1 + α ≤ 1 + Mk / (log x)^k := by linarith
        have h_final : x * (1 + α) ≤ x * (1 + Mk / (log x)^k) := by gcongr
        exact h_bound.trans h_final


blueprint_comment /--
\subsection{Computational examples}

Now we apply the previous theorem.

TODO: Corollary 11.1, 11.2
-/


end BKLNW
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean#L2168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d573af61253eda377326baebeb36929353a168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
