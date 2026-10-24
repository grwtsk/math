# tendsto_smoothingFun_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb856f040270765afe527066a77b6bb4b1af22e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e683a84a-a7fc-2416-3852-d8ae0058ddf0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:068d6649-9164-5933-da46-ff0cef9c2956",
  "kind": "theorem",
  "lexical_name": "tendsto_smoothingFun_of_ne_zero",
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
  "slug": "tendsto-smoothingfun-of-ne-zero--7eaad029ab655db158c06c7d",
  "source": {
    "blob": "bb856f040270765afe527066a77b6bb4b1af22e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7eaad029ab655db158c06c7dace235451be9c9be0b16718a27f6c3d350b5438b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:068d6649-9164-5933-da46-ff0cef9c2956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_smoothingFun_of_ne_zero (hμ1 : μ 1 ≤ 1) {x : R} (hx : μ x ≠ 0) :
    Tendsto (smoothingSeminormSeq μ x) atTop (𝓝 (smoothingFun μ x)) := by
  let L := iInf fun n : PNat => μ (x ^ (n : ℕ)) ^ (1 / (n : ℝ))
  have hL0 : 0 ≤ L := le_ciInf fun x => rpow_nonneg (apply_nonneg _ _) _
  rw [Metric.tendsto_atTop]
  intro ε hε
  /- For each `ε > 0`, we can find a positive natural number `m1` such that
  `μ x ^ (1 / m1) < L + ε/2`. -/
  obtain ⟨m1, hm1⟩ := smoothingSeminormSeq_exists_pnat μ x hε
  /- For `n` large enough, we have that
    `(L + ε / 2) ^ (-(n % m1) / n)) * (μ x ^ (n % m1)) ^ (1 / n) - 1 ≤ ε / (2 * (L + ε / 2))`. -/
  obtain ⟨m2, hm2⟩ : ∃ m : ℕ, ∀ n ≥ m,
      (L + ε / 2) ^ (-(((n % m1 : ℕ) : ℝ) / (n : ℝ))) * (μ x ^ (n % m1)) ^ (1 / (n : ℝ)) - 1 ≤
      ε / (2 * (L + ε / 2)) := by
    have hε2 : 0 < ε / 2 := half_pos hε
    have hL2 := smoothingSeminormSeq_tendsto_aux μ hL0 hε2 (PNat.pos m1) hx
    rw [Metric.tendsto_atTop] at hL2
    set δ : ℝ := ε / (2 * (L + ε / 2)) with hδ_def
    have hδ : 0 < δ := by
      rw [hδ_def, div_mul_eq_div_mul_one_div]
      exact mul_pos hε2
        ((one_div (L + ε / 2)).symm ▸ inv_pos_of_pos (add_pos_of_nonneg_of_pos hL0 hε2))
    obtain ⟨N, hN⟩ := hL2 δ hδ
    use N
    intro n hn
    specialize hN n hn
    rw [Real.dist_eq, abs_lt] at hN
    exact le_of_lt hN.right
  /- We now show that for all `n ≥ max m1 m2`, we have
    `dist (smoothingSeminormSeq μ x n) (smoothingFun μ x) < ε`. -/
  use max (m1 : ℕ) m2
  intro n hn
  have hn0 : 0 < n := lt_of_lt_of_le (lt_of_lt_of_le (PNat.pos m1) (le_max_left (m1 : ℕ) m2)) hn
  rw [Real.dist_eq, abs_lt]
  have hL_le : L ≤ smoothingSeminormSeq μ x n := by
    rw [← PNat.mk_coe n hn0]
    apply ciInf_le (smoothingSeminormSeq_bddBelow μ x)
  refine ⟨lt_of_lt_of_le (neg_lt_zero.mpr hε) (sub_nonneg.mpr hL_le), ?_⟩
  -- It is enough to show that `smoothingSeminormSeq μ x n < L + ε`, that is,
  -- `μ (x ^ n) ^ (1 / ↑n) < L + ε`.
  suffices h : smoothingSeminormSeq μ x n < L + ε by rwa [tsub_lt_iff_left hL_le]
  by_cases hxn : μ (x ^ (n % m1)) = 0
  · /- If `μ (x ^ (n % m1)) = 0`, this reduces to showing that
     `μ (x ^ (↑m1 * (n / ↑m1)) * x ^ (n % ↑m1)) ^ (1 / ↑n) ≤
     (μ (x ^ (↑m1 * (n / ↑m1))) * μ (x ^ (n % ↑m1))) ^ (1 / ↑n)`, which follows from the
     submultiplicativity of `μ`. -/
    simp only [smoothingSeminormSeq]
    nth_rw 1 [← div_add_mod n m1]
    have hLε : 0 < L + ε := add_pos_of_nonneg_of_pos hL0 hε
    apply lt_of_le_of_lt _ hLε
    rw [pow_add, ← MulZeroClass.mul_zero (μ (x ^ ((m1 : ℕ) * (n / (m1 : ℕ)))) ^ (1 / (n : ℝ))),
      ← zero_rpow (one_div_cast_ne_zero (pos_iff_ne_zero.mp hn0)), ← hxn,
      ← mul_rpow (apply_nonneg μ _) (apply_nonneg μ _)]
    exact rpow_le_rpow (apply_nonneg μ _) (map_mul_le_mul μ _ _) (one_div_cast_nonneg _)
  · --Otherwise, we have `0 < μ (x ^ (n % ↑m1))`.
    have hxn' : 0 < μ (x ^ (n % ↑m1)) := lt_of_le_of_ne (apply_nonneg _ _) (Ne.symm hxn)
    simp only [smoothingSeminormSeq]
    nth_rw 1 [← div_add_mod n m1]
    /- We use the submultiplicativity of `μ` to deduce
    `μ (x ^ (m1 * (n / m1)) ^ (1 / n) ≤ (μ (x ^ m1) ^ (n / m1)) ^ (1 / n)`. -/
    have h : μ (x ^ ((m1 : ℕ) * (n / (m1 : ℕ)))) ^ (1 / (n : ℝ)) ≤
        (μ (x ^ (m1 : ℕ)) ^ (n / (m1 : ℕ))) ^ (1 / (n : ℝ)) := by
      apply rpow_le_rpow (apply_nonneg μ _) _ (one_div_cast_nonneg _)
      rw [pow_mul]
      exact map_pow_le_pow μ (x^(m1 : ℕ))
        (pos_iff_ne_zero.mp (Nat.div_pos (le_trans (le_max_left (m1 : ℕ) m2) hn) (PNat.pos m1)))
    have hL0' : 0 < L + ε / 2 := add_pos_of_nonneg_of_pos hL0 (half_pos hε)
    /- We show that `(μ (x ^ (m1 : ℕ)) ^ (n / (m1 : ℕ))) ^ (1 / (n : ℝ)) <
        (L + ε / 2) ^ (1 - (((n % m1 : ℕ) : ℝ) / (n : ℝ)))`. -/
    have h1 : (μ (x ^ (m1 : ℕ)) ^ (n / (m1 : ℕ))) ^ (1 / (n : ℝ)) <
        (L + ε / 2) * (L + ε / 2) ^ (-(((n % m1 : ℕ) : ℝ) / (n : ℝ))) := by
      have hm10 : (m1 : ℝ) ≠ 0 := cast_ne_zero.mpr (_root_.ne_of_gt (PNat.pos m1))
      rw [← rpow_lt_rpow_iff (rpow_nonneg (apply_nonneg μ _) _) (le_of_lt hL0')
        (cast_pos.mpr (PNat.pos m1)), ← rpow_mul (apply_nonneg μ _), one_div_mul_cancel hm10,
        rpow_one] at hm1
      nth_rw 1 [← rpow_one (L + ε / 2)]
      have : (n : ℝ) / n = (1 : ℝ) := div_self (cast_ne_zero.mpr (_root_.ne_of_gt hn0))
      nth_rw 2 [← this]; clear this
      nth_rw 3 [← div_add_mod n m1]
      have h_lt : 0 < ((n / m1 : ℕ) : ℝ) / (n : ℝ) :=
        div_pos (cast_pos.mpr (Nat.div_pos (le_trans (le_max_left _ _) hn) (PNat.pos m1)))
          (cast_pos.mpr hn0)
      rw [← rpow_natCast, ← rpow_add hL0', ← neg_div, div_add_div_same, Nat.cast_add,
        add_neg_cancel_right, Nat.cast_mul, ← rpow_mul (apply_nonneg μ _), mul_one_div,
        mul_div_assoc, rpow_mul (le_of_lt hL0')]
      exact rpow_lt_rpow (apply_nonneg μ _) hm1 h_lt
    /- We again use the submultiplicativity of `μ` to deduce
    `μ (x ^ (n % m1)) ^ (1 / n) ≤ (μ x ^ (n % m1)) ^ (1 / n)`. -/
    have h2 : μ (x ^ (n % m1)) ^ (1 / (n : ℝ)) ≤ (μ x ^ (n % m1)) ^ (1 / (n : ℝ)) := by
      by_cases hnm1 : n % m1 = 0
      · simpa [hnm1, pow_zero] using rpow_le_rpow (apply_nonneg μ _) hμ1 (one_div_cast_nonneg _)
      · exact rpow_le_rpow (apply_nonneg μ _) (map_pow_le_pow μ _ hnm1) (one_div_cast_nonneg _)
    /- We bound `(L + ε / 2) ^ (1 -n % m1) / n) * (μ x ^ (n % m1)) ^ (1 / n)` by `L + ε`. -/
    have h3 : (L + ε / 2) * (L + ε / 2) ^ (-(((n % m1 : ℕ) : ℝ) / (n : ℝ))) *
          (μ x ^ (n % m1)) ^ (1 / (n : ℝ)) ≤ L + ε := by
      have heq : L + ε = L + ε / 2 + ε / 2 := by rw [add_assoc, add_halves]
      have hL0' : 0 < L + ε / 2 := add_pos_of_nonneg_of_pos hL0 (half_pos hε)
      rw [heq, ← tsub_le_iff_left]
      nth_rw 3 [← mul_one (L + ε / 2)]
      rw [mul_assoc, ← mul_sub, mul_comm, ← le_div_iff₀ hL0', div_div]
      exact hm2 n (le_trans (le_max_right (m1 : ℕ) m2) hn)
    have h4 : 0 < μ (x ^ (n % ↑m1)) ^ (1 / (n : ℝ)) := rpow_pos_of_pos hxn' _
    have h5 : 0 < (L + ε / 2) * (L + ε / 2) ^ (-(↑(n % ↑m1) / (n : ℝ))) :=
      mul_pos hL0' (rpow_pos_of_pos hL0' _)
    /- We combine the previous steps to deduce that
     `μ (x ^ (↑m1 * (n / ↑m1) + n % ↑m1)) ^ (1 / ↑n) < L + ε`. -/
    calc μ (x ^ ((m1 : ℕ) * (n / (m1 : ℕ)) + n % m1)) ^ (1 / (n : ℝ)) =
          μ (x ^ ((m1 : ℕ) * (n / (m1 : ℕ))) * x ^ (n % m1)) ^ (1 / (n : ℝ)) := by rw [pow_add]
      _ ≤ (μ (x ^ ((m1 : ℕ) * (n / (m1 : ℕ)))) * μ (x ^ (n % m1))) ^ (1 / (n : ℝ)) :=
        (rpow_le_rpow (apply_nonneg μ _) (map_mul_le_mul μ _ _) (one_div_cast_nonneg _))
      _ = μ (x ^ ((m1 : ℕ) * (n / (m1 : ℕ)))) ^ (1 / (n : ℝ)) *
          μ (x ^ (n % m1)) ^ (1 / (n : ℝ)) :=
        (mul_rpow (apply_nonneg μ _) (apply_nonneg μ _))
      _ ≤ (μ (x ^ (m1 : ℕ)) ^ (n / (m1 : ℕ))) ^ (1 / (n : ℝ)) *
            μ (x ^ (n % m1)) ^ (1 / (n : ℝ)) := ((mul_le_mul_right h4).mpr h)
      _ < (L + ε / 2) * (L + ε / 2) ^ (-(((n % m1 : ℕ) : ℝ) / (n : ℝ))) *
            μ (x ^ (n % m1)) ^ (1 / (n : ℝ)) := (mul_lt_mul h1 (le_refl _) h4 (le_of_lt h5))
      _ ≤ (L + ε / 2) * (L + ε / 2) ^ (-(((n % m1 : ℕ) : ℝ) / (n : ℝ))) *
            (μ x ^ (n % m1)) ^ (1 / (n : ℝ)) := ((mul_le_mul_left h5).mpr h2)
      _ ≤ L + ε := h3

/-- If `μ 1 ≤ 1`, then `smoothingFun μ x` is the limit of `smoothingSeminormSeq μ x`
  as `n` tends to infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb856f040270765afe527066a77b6bb4b1af22e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
