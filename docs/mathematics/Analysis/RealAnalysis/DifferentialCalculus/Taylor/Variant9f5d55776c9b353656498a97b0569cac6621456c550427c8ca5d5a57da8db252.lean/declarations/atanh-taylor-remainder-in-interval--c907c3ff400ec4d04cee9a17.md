# atanh_taylor_remainder_in_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1383,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8245643e-5a23-04ba-8dd8-1b037a8f488f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ba4b8dc-a3ed-c9c6-44a1-488e275a5060",
  "kind": "theorem",
  "lexical_name": "atanh_taylor_remainder_in_interval",
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
  "slug": "atanh-taylor-remainder-in-interval--c907c3ff400ec4d04cee9a17",
  "source": {
    "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1653,
    "line": 1383,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c907c3ff400ec4d04cee9a1786cbf665efc5766d5fc9bf236adf3c29b6de1412",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ba4b8dc-a3ed-c9c6-44a1-488e275a5060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1383–1653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atanh_taylor_remainder_in_interval {q : ℚ} (hq : |(q : ℝ)| < 1) (n : ℕ) :
    Real.atanh q - ((atanhTaylorCoeffs n).zipIdx.map (fun (c, i) => (c : ℝ) * (q : ℝ) ^ i)).sum
    ∈ atanhRemainderBoundComputable |q| n := by
  -- The remainder is the tail of the series
  simp only [atanhRemainderBoundComputable, abs_abs]
  have hq_abs_lt : |q| < 1 := by
    have h := abs_lt.mp hq
    rw [abs_lt]; constructor
    · exact_mod_cast h.1
    · exact_mod_cast h.2
  have h_not_ge : ¬(|q| ≥ 1) := not_le.mpr hq_abs_lt
  simp only [h_not_ge, mem_def]
  -- The bound R = |q|^(n+1)/(1-|q|) in ℚ
  set R_rat := |q| ^ (n + 1) / (1 - |q|) with hR_rat_def
  -- Key bounds: |q| < 1 in ℚ
  have hr_nonneg_rat : 0 ≤ |q| := abs_nonneg q
  have hdenom_pos_rat : 0 < 1 - |q| := by linarith
  have hR_nonneg_rat' : 0 ≤ R_rat := by
    apply div_nonneg
    · exact pow_nonneg hr_nonneg_rat (n + 1)
    · linarith
  have hR_nonneg : (0 : ℝ) ≤ R_rat := Rat.cast_nonneg.mpr hR_nonneg_rat'
  -- The absolute value of the remainder is bounded
  have habs : |Real.atanh q - ((atanhTaylorCoeffs n).zipIdx.map
      (fun (c, i) => (c : ℝ) * (q : ℝ) ^ i)).sum| ≤ (R_rat : ℝ) := by
    -- Strategy: The atanh series is Σ_k q^(2k+1)/(2k+1)
    -- The polynomial computes Σ_{i≤n, i odd} q^i/i
    -- The remainder is Σ_{k: 2k+1 > n} q^(2k+1)/(2k+1)
    -- Bound: |remainder| ≤ Σ_{k: 2k+1 > n} |q|^(2k+1) ≤ |q|^(n+1)/(1-|q|)

    -- Get the series representation
    have hseries := Real.atanh_hasSum' hq

    -- The polynomial sum equals the partial series sum for terms with index ≤ n
    -- atanhTaylorCoeffs n = [0, 1, 0, 1/3, 0, 1/5, ...] for indices 0..n
    -- So the sum is Σ_{i odd, i ≤ n} q^i/i = Σ_{k: 2k+1 ≤ n} q^(2k+1)/(2k+1)

    -- For the bound, we use that each term |q^(2k+1)/(2k+1)| ≤ |q|^(2k+1)
    -- and the geometric series Σ_{m≥n+1} |q|^m ≤ |q|^(n+1)/(1-|q|)

    -- This is a non-trivial series argument - for now use the bound directly
    -- The remainder terms satisfy |term_k| ≤ |q|^(2k+1) for 2k+1 > n
    -- Summing: |remainder| ≤ |q|^(n+1) * (1 + |q| + |q|² + ...) = |q|^(n+1)/(1-|q|)

    have hq_real_lt : |(q : ℝ)| < 1 := hq
    have hq_abs_nonneg : 0 ≤ |(q : ℝ)| := abs_nonneg _

    -- The remainder is bounded by a geometric series tail
    -- |Σ_{k: 2k+1 > n} q^(2k+1)/(2k+1)| ≤ Σ_{k: 2k+1 > n} |q|^(2k+1)
    --                                    ≤ |q|^(n+1) + |q|^(n+2) + ...
    --                                    = |q|^(n+1) / (1 - |q|)
    -- Define the series term and the split point m
    let term := fun k : ℕ => (q : ℝ) ^ (2 * k + 1) / (2 * k + 1)
    -- m = number of terms with 2k+1 ≤ n, i.e., k ≤ (n-1)/2
    let m := (n + 1) / 2

    -- Key: 2m ≥ n (so 2m+1 ≥ n+1)
    have hm_bound : 2 * m ≥ n := by simp only [m]; omega

    -- Step 1: Show polynomial sum equals partial series sum up to m terms
    -- The polynomial atanhTaylorCoeffs n has coefficients:
    -- index i: 1/i if i is odd and i ≤ n, else 0
    -- So the sum gives Σ_{k: 2k+1 ≤ n} q^(2k+1)/(2k+1) = Σ_{k < m} term k
    have h_poly_eq_partial :
        ((atanhTaylorCoeffs n).zipIdx.map (fun (c, i) => (c : ℝ) * (q : ℝ) ^ i)).sum =
        ∑ k ∈ Finset.range m, term k := by
      -- Step 1: Convert the list sum to a Finset sum over indices.
      have hlist :
          ((atanhTaylorCoeffs n).zipIdx.map (fun (c, i) => (c : ℝ) * (q : ℝ) ^ i)).sum =
          ∑ i ∈ Finset.range (n + 1),
            ((if i % 2 = 1 then ((i : ℚ) : ℚ)⁻¹ else 0 : ℚ) : ℝ) * (q : ℝ) ^ i := by
        simp [atanhTaylorCoeffs]
        rw [List.zipIdx_map]
        simp only [List.map_map]
        -- Simplify the composition after zipIdx_map.
        have h1 :
            (List.range (n + 1)).zipIdx.map
                ((fun p : ℚ × ℕ => (p.1 : ℝ) * (q : ℝ) ^ p.2) ∘
                  Prod.map (fun i : ℕ => if i % 2 = 1 then ((i : ℚ) : ℚ)⁻¹ else 0) id) =
              (List.range (n + 1)).zipIdx.map
                (fun p : ℕ × ℕ =>
                  ((if p.1 % 2 = 1 then ((p.1 : ℚ) : ℚ)⁻¹ else 0 : ℚ) : ℝ) * (q : ℝ) ^ p.2) := by
          apply List.map_congr_left
          intro ⟨a, b⟩ _
          simp [Function.comp, Prod.map_apply]
        -- Replace zipIdx over range with a direct map on indices.
        have h2 :
            (List.range (n + 1)).zipIdx.map
                (fun p : ℕ × ℕ =>
                  ((if p.1 % 2 = 1 then ((p.1 : ℚ) : ℚ)⁻¹ else 0 : ℚ) : ℝ) * (q : ℝ) ^ p.2) =
              (List.range (n + 1)).map
                (fun i : ℕ =>
                  ((if i % 2 = 1 then ((i : ℚ) : ℚ)⁻¹ else 0 : ℚ) : ℝ) * (q : ℝ) ^ i) := by
          convert zipIdx_range_map
            (fun a b =>
              ((if a % 2 = 1 then ((a : ℚ) : ℚ)⁻¹ else 0 : ℚ) : ℝ) * (q : ℝ) ^ b) (n + 1) using 2
        rw [h1, h2]
        exact list_map_sum_eq_finset_sum
          (fun i : ℕ =>
            ((if i % 2 = 1 then ((i : ℚ) : ℚ)⁻¹ else 0 : ℚ) : ℝ) * (q : ℝ) ^ i) (n + 1)

      -- Step 2: Filter to odd indices (even indices contribute zero).
      have hsum_filter :
          ∑ i ∈ Finset.range (n + 1),
              ((if i % 2 = 1 then ((i : ℚ) : ℚ)⁻¹ else 0 : ℚ) : ℝ) * (q : ℝ) ^ i =
            ∑ i ∈ (Finset.range (n + 1)).filter (fun i => i % 2 = 1),
              (q : ℝ) ^ i / i := by
        have hterm :
            ∀ i : ℕ,
              ((if i % 2 = 1 then ((i : ℚ) : ℚ)⁻¹ else 0 : ℚ) : ℝ) * (q : ℝ) ^ i =
                if i % 2 = 1 then (q : ℝ) ^ i / i else 0 := by
          intro i
          by_cases hodd : i % 2 = 1
          · simp [hodd, div_eq_mul_inv, Rat.cast_inv, Rat.cast_natCast,
              mul_comm]
          · simp [hodd]
        calc
          ∑ i ∈ Finset.range (n + 1),
              ((if i % 2 = 1 then ((i : ℚ) : ℚ)⁻¹ else 0 : ℚ) : ℝ) * (q : ℝ) ^ i
              =
              ∑ i ∈ Finset.range (n + 1),
                (if i % 2 = 1 then (q : ℝ) ^ i / i else 0) := by
                  refine Finset.sum_congr rfl ?_
                  intro i hi
                  exact hterm i
          _ =
              ∑ i ∈ (Finset.range (n + 1)).filter (fun i => i % 2 = 1),
                (q : ℝ) ^ i / i := by
                  symm
                  exact (Finset.sum_filter
                    (s := Finset.range (n + 1))
                    (f := fun i => (q : ℝ) ^ i / i)
                    (p := fun i => i % 2 = 1))

      -- Step 3: Reindex odd indices by k with i = 2k+1.
      have hsum_reindex :
          ∑ i ∈ (Finset.range (n + 1)).filter (fun i => i % 2 = 1),
              (q : ℝ) ^ i / i =
            ∑ k ∈ Finset.range m, term k := by
        refine (Finset.sum_nbij
          (s := Finset.range m)
          (t := (Finset.range (n + 1)).filter (fun i => i % 2 = 1))
          (i := fun k => 2 * k + 1)
          (f := term)
          (g := fun i => (q : ℝ) ^ i / i)
          ?_ ?_ ?_ ?_).symm
        · intro k hk
          apply Finset.mem_filter.2
          constructor
          · -- membership in range
            have hk' : k < m := Finset.mem_range.1 hk
            have hk_succ : Nat.succ k ≤ m := (Nat.succ_le_iff).2 hk'
            have hk_succ' : k + 1 ≤ (n + 1) / 2 := by simpa [m] using hk_succ
            have hk_mul : (k + 1) * 2 ≤ n + 1 :=
              (Nat.le_div_iff_mul_le Nat.zero_lt_two).1 hk_succ'
            have hk_mul' : 2 * k + 2 ≤ n + 1 := by
              simpa [Nat.add_mul, Nat.mul_comm, Nat.mul_left_comm, Nat.mul_assoc] using hk_mul
            have hk_lt : 2 * k + 1 < n + 1 := by
              have hlt : 2 * k + 1 < 2 * k + 2 := Nat.lt_succ_self (2 * k + 1)
              exact lt_of_lt_of_le hlt hk_mul'
            exact Finset.mem_range.2 hk_lt
          · -- oddness
            have hodd : Odd (2 * k + 1) := ⟨k, rfl⟩
            exact (Nat.odd_iff).1 hodd
        · intro a ha b hb hEq
          have hEq' : Nat.succ (2 * a) = Nat.succ (2 * b) := by
            simpa [Nat.succ_eq_add_one] using hEq
          have hEq'' : 2 * a = 2 * b := (Nat.succ_inj).1 hEq'
          exact Nat.mul_left_cancel Nat.zero_lt_two hEq''
        · intro i hi
          simp [m]
          use (i - 1) / 2
          simp at hi
          grind only
        · intro k hk
          simp [term]

      -- Combine the steps.
      calc
        ((atanhTaylorCoeffs n).zipIdx.map (fun (c, i) => (c : ℝ) * (q : ℝ) ^ i)).sum
            = ∑ i ∈ Finset.range (n + 1),
                ((if i % 2 = 1 then ((i : ℚ) : ℚ)⁻¹ else 0 : ℚ) : ℝ) * (q : ℝ) ^ i := hlist
        _ = ∑ i ∈ (Finset.range (n + 1)).filter (fun i => i % 2 = 1),
              (q : ℝ) ^ i / i := hsum_filter
        _ = ∑ k ∈ Finset.range m, term k := hsum_reindex

    -- Step 2: The remainder is the tail of the series starting at m
    have h_summable := hseries.summable
    have h_tail_summable : Summable fun k => term (k + m) := (summable_nat_add_iff m).mpr h_summable
    have h_tail_eq : Real.atanh q - ∑ k ∈ Finset.range m, term k = ∑' k, term (k + m) := by
      have h_split := h_summable.sum_add_tsum_nat_add m
      have h_tsum_eq : ∑' i, term i = Real.atanh q := hseries.tsum_eq
      linarith [h_split, h_tsum_eq]

    rw [h_poly_eq_partial, h_tail_eq]

    -- Step 3: Bound the tail by geometric series
    have hz_abs_sq : |(q : ℝ)| ^ 2 < 1 := by
      have h1 : |(q : ℝ)| ^ 2 ≤ |(q : ℝ)| := by
        have hn : 0 ≤ |(q : ℝ)| := abs_nonneg _
        have hle : |(q : ℝ)| ≤ 1 := le_of_lt hq
        nlinarith [sq_nonneg (|(q : ℝ)| - 1)]
      linarith
    have hz_abs_nonneg : 0 ≤ |(q : ℝ)| := abs_nonneg _
    have hz_abs_le : |(q : ℝ)| ≤ 1 := le_of_lt hq

    -- Define the dominating geometric term
    let geo_term := fun k : ℕ => |(q : ℝ)| ^ (2 * m + 1) * (|(q : ℝ)| ^ 2) ^ k

    have h_geo_summable : Summable geo_term := by
      apply Summable.mul_left
      exact summable_geometric_of_lt_one (sq_nonneg _) hz_abs_sq

    have h_term_bound : ∀ k, |term (k + m)| ≤ geo_term k := by
      intro k
      simp only [term, geo_term]
      rw [abs_div, abs_pow]
      have h_pow_eq : |(q : ℝ)| ^ (2 * (k + m) + 1) = |(q : ℝ)| ^ (2 * m + 1) * (|(q : ℝ)| ^ 2) ^ k := by
        have : 2 * (k + m) + 1 = 2 * m + 1 + 2 * k := by ring
        rw [this, pow_add, pow_mul]
      rw [h_pow_eq]
      have h_denom_pos' : (0 : ℝ) < 2 * (k + m : ℕ) + 1 := by positivity
      have h_denom_ge_one : (1 : ℝ) ≤ |(2 : ℝ) * (k + m : ℕ) + 1| := by
        rw [abs_of_pos h_denom_pos']
        have hk : (0 : ℝ) ≤ k := Nat.cast_nonneg k
        have hm' : (0 : ℝ) ≤ m := Nat.cast_nonneg m
        push_cast; linarith
      calc |(q : ℝ)| ^ (2 * m + 1) * (|(q : ℝ)| ^ 2) ^ k / |(2 : ℝ) * (k + m : ℕ) + 1|
          ≤ |(q : ℝ)| ^ (2 * m + 1) * (|(q : ℝ)| ^ 2) ^ k / 1 := by
            apply div_le_div_of_nonneg_left _ (by positivity) h_denom_ge_one
            positivity
        _ = |(q : ℝ)| ^ (2 * m + 1) * (|(q : ℝ)| ^ 2) ^ k := by ring

    have h_norm_sum : ‖∑' k, term (k + m)‖ ≤ ∑' k, ‖term (k + m)‖ :=
      norm_tsum_le_tsum_norm h_tail_summable.norm
    simp only [Real.norm_eq_abs] at h_norm_sum
    calc |∑' k, term (k + m)|
        ≤ ∑' k, |term (k + m)| := h_norm_sum
      _ ≤ ∑' k, geo_term k := h_tail_summable.abs.tsum_le_tsum h_term_bound h_geo_summable
      _ = |(q : ℝ)| ^ (2 * m + 1) * ∑' k, (|(q : ℝ)| ^ 2) ^ k := by
          simp only [geo_term]; rw [tsum_mul_left]
      _ = |(q : ℝ)| ^ (2 * m + 1) / (1 - |(q : ℝ)| ^ 2) := by
          rw [tsum_geometric_of_lt_one (sq_nonneg _) hz_abs_sq]; ring
      _ ≤ |(q : ℝ)| ^ (n + 1) / (1 - |(q : ℝ)| ^ 2) := by
          -- 2m + 1 ≥ n + 1 since 2m ≥ n
          have h_exp_le : n + 1 ≤ 2 * m + 1 := by omega
          have h_pow_le : |(q : ℝ)| ^ (2 * m + 1) ≤ |(q : ℝ)| ^ (n + 1) :=
            pow_le_pow_of_le_one hz_abs_nonneg hz_abs_le h_exp_le
          have h_denom_pos : 0 < 1 - |(q : ℝ)| ^ 2 := by nlinarith [sq_nonneg (q : ℝ), sq_abs (q : ℝ)]
          exact div_le_div_of_nonneg_right h_pow_le h_denom_pos.le
      _ ≤ |(q : ℝ)| ^ (n + 1) / (1 - |(q : ℝ)|) := by
          -- 1 - |q|² ≥ 1 - |q| since |q|² ≤ |q| for |q| ≤ 1
          have h1 : |(q : ℝ)| ^ 2 ≤ |(q : ℝ)| := by nlinarith [sq_nonneg (|(q : ℝ)| - 1)]
          have h2 : 1 - |(q : ℝ)| ≤ 1 - |(q : ℝ)| ^ 2 := by linarith
          have h3 : 0 < 1 - |(q : ℝ)| := by linarith
          have h4 : 0 ≤ |(q : ℝ)| ^ (n + 1) := pow_nonneg hz_abs_nonneg _
          exact div_le_div_of_nonneg_left h4 h3 h2
      _ = (R_rat : ℝ) := by
          -- R_rat = |q|^(n+1)/(1-|q|) in ℚ
          simp only [hR_rat_def]
          -- Show: |(q:ℝ)|^(n+1)/(1-|(q:ℝ)|) = (|q|^(n+1)/(1-|q|) : ℚ)
          rw [← Rat.cast_abs q]
          push_cast
          ring
  have h := abs_le.mp habs
  constructor
  · calc ((-R_rat : ℚ) : ℝ) = -((R_rat : ℚ) : ℝ) := by push_cast; ring
      _ ≤ _ := h.1
  · exact h.2

/-- FTIA for atanhPointComputable: Real.atanh q ∈ atanhPointComputable q n for |q| < 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean#L1383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c6829e8730fc564ee9c4c8215bb55539bae25a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
