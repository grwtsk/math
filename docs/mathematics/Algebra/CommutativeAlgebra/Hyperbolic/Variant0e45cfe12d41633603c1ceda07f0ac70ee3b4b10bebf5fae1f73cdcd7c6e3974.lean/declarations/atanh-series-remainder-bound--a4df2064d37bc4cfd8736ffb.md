# atanh_series_remainder_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:295562c7-f8ee-f641-6e96-7ddfb359460a",
  "kind": "theorem",
  "lexical_name": "atanh_series_remainder_bound",
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
  "slug": "atanh-series-remainder-bound--a4df2064d37bc4cfd8736ffb",
  "source": {
    "blob": "c7aeee2aaf3c61bbb1db59f1c08119012d375839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 894,
    "line": 758,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4df2064d37bc4cfd8736ffb741e07680d30af9a33c67a45b8ae35048475373a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:295562c7-f8ee-f641-6e96-7ddfb359460a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 758–894.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atanh_series_remainder_bound {z : ℝ} (hz : |z| < 1) (n : ℕ) :
    |Real.atanh z - ∑ k ∈ Finset.range (n + 1), (atanhTaylorCoeffs n k : ℝ) * z ^ k| ≤
    |z| ^ (n + 1) / (1 - z ^ 2) := by
  -- Get the series representation
  have hseries := Real.atanh_hasSum hz
  -- Key facts about z
  have hz_sq : z ^ 2 < 1 := (sq_lt_one_iff_abs_lt_one z).mpr hz
  have h_denom_pos : 0 < 1 - z ^ 2 := by linarith
  have hz_abs_sq : |z| ^ 2 < 1 := by rwa [sq_abs]
  have hz_abs_nonneg : 0 ≤ |z| := abs_nonneg z
  have hz_abs_le : |z| ≤ 1 := le_of_lt hz

  -- Define the series term and the split point m
  let term := fun k : ℕ => z ^ (2 * k + 1) / (2 * k + 1)
  -- m = number of terms with 2k+1 ≤ n, i.e., k ≤ (n-1)/2
  let m := (n + 1) / 2

  -- Key: 2m ≥ n (so 2m+1 ≥ n+1)
  have hm_bound : 2 * m ≥ n := by
    simp only [m]
    omega

  -- Step 1: Show polynomial sum equals partial series sum up to m terms
  have h_poly_eq_partial :
      ∑ i ∈ Finset.range (n + 1), (atanhTaylorCoeffs n i : ℝ) * z ^ i =
      ∑ k ∈ Finset.range m, term k := by
    -- The polynomial has nonzero coefficients only at odd indices 2k+1 ≤ n
    -- which corresponds to k < m = (n+1)/2
    -- We rewrite LHS by filtering to odd terms and reindexing
    have h_even_zero : ∀ i ∈ Finset.range (n + 1), ¬(i % 2 = 1) →
        (atanhTaylorCoeffs n i : ℝ) * z ^ i = 0 := by
      intro i hi hi_not_odd
      have hi_range : i < n + 1 := Finset.mem_range.mp hi
      unfold atanhTaylorCoeffs
      have h_le : i ≤ n := Nat.lt_succ_iff.mp hi_range
      simp only [h_le, ite_true]
      simp only [hi_not_odd, ite_false, Rat.cast_zero, zero_mul]
    -- Split sum into even and odd parts
    conv_lhs =>
      rw [← Finset.sum_filter_add_sum_filter_not (Finset.range (n + 1)) (fun i => i % 2 = 1)]
    simp only [Finset.sum_eq_zero (fun i hi => h_even_zero i (Finset.mem_filter.mp hi).1
      (Finset.mem_filter.mp hi).2), add_zero]
    -- Reindex: odd i in [0, n] correspond to k in [0, m) where k = (i-1)/2, i = 2k+1
    -- The bijection shows the polynomial sum equals the partial series sum
    symm
    apply Finset.sum_bij (i := fun k _ => 2 * k + 1)
    -- hi: 2k+1 is in filter
    case hi => intro k hk
               simp only [Finset.mem_filter, Finset.mem_range] at hk ⊢
               exact ⟨by omega, by omega⟩
    -- h: terms match
    case h => intro k hk
              simp only [Finset.mem_range] at hk
              have h_odd : (2 * k + 1) % 2 = 1 := by omega
              have h_le : 2 * k + 1 ≤ n := by omega
              unfold atanhTaylorCoeffs
              have h_div : (2 * k + 1 - 1) / 2 = k := by omega
              simp only [h_le, ite_true, h_odd, Nat.add_sub_cancel]
              push_cast
              have h_ne : (2 * (k : ℝ) + 1) ≠ 0 := by positivity
              simp only [term]
              field_simp
              grind
    -- i_inj: injective
    case i_inj => intro k₁ _ k₂ _ h; omega
    -- i_surj: surjective
    case i_surj => intro i hi
                   simp only [Finset.mem_filter, Finset.mem_range] at hi
                   exact ⟨(i - 1) / 2, Finset.mem_range.mpr (by omega), by omega⟩

  -- Step 2: The remainder is the tail of the series starting at m
  have h_summable := hseries.summable
  have h_tail_summable : Summable fun k => term (k + m) := (summable_nat_add_iff m).mpr h_summable
  have h_tail_eq : Real.atanh z - ∑ k ∈ Finset.range m, term k = ∑' k, term (k + m) := by
    have h_split := h_summable.sum_add_tsum_nat_add m
    -- h_split : (∑ i ∈ range m, term i) + ∑' i, term (i + m) = ∑' i, term i
    have h_tsum_eq : ∑' i, term i = Real.atanh z := hseries.tsum_eq
    linarith [h_split, h_tsum_eq]

  rw [h_poly_eq_partial, h_tail_eq]

  -- Step 3: Bound the tail by geometric series
  -- |term (k + m)| = |z|^(2(k+m)+1) / (2(k+m)+1) ≤ |z|^(2(k+m)+1) ≤ |z|^(2m+1) * |z|^(2k)
  let geo_term := fun k : ℕ => |z| ^ (2 * m + 1) * (|z| ^ 2) ^ k

  have h_geo_summable : Summable geo_term := by
    apply Summable.mul_left
    exact summable_geometric_of_lt_one (sq_nonneg _) hz_abs_sq

  have h_term_bound : ∀ k, |term (k + m)| ≤ geo_term k := by
    intro k
    simp only [term, geo_term]
    rw [abs_div, abs_pow]
    have h_pow_eq : |z| ^ (2 * (k + m) + 1) = |z| ^ (2 * m + 1) * (|z| ^ 2) ^ k := by
      have : 2 * (k + m) + 1 = 2 * m + 1 + 2 * k := by ring
      rw [this, pow_add, pow_mul]
    rw [h_pow_eq]
    -- The denominator |2*(k+m)+1| ≥ 1, so dividing makes the numerator smaller
    have h_denom_pos' : (0 : ℝ) < 2 * (k + m : ℕ) + 1 := by positivity
    have h_denom_ge_one : (1 : ℝ) ≤ |(2 : ℝ) * (k + m : ℕ) + 1| := by
      rw [abs_of_pos h_denom_pos']
      have hk : (0 : ℝ) ≤ k := Nat.cast_nonneg k
      have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
      push_cast
      linarith
    calc |z| ^ (2 * m + 1) * (|z| ^ 2) ^ k / |(2 : ℝ) * (k + m : ℕ) + 1|
        ≤ |z| ^ (2 * m + 1) * (|z| ^ 2) ^ k / 1 := by
          apply div_le_div_of_nonneg_left _ (by positivity) h_denom_ge_one
          positivity
      _ = |z| ^ (2 * m + 1) * (|z| ^ 2) ^ k := by ring

  -- Apply the bound
  have h_norm_sum : ‖∑' k, term (k + m)‖ ≤ ∑' k, ‖term (k + m)‖ :=
    norm_tsum_le_tsum_norm h_tail_summable.norm
  simp only [Real.norm_eq_abs] at h_norm_sum
  calc |∑' k, term (k + m)|
      ≤ ∑' k, |term (k + m)| := h_norm_sum
    _ ≤ ∑' k, geo_term k := h_tail_summable.abs.tsum_le_tsum h_term_bound h_geo_summable
    _ = |z| ^ (2 * m + 1) * ∑' k, (|z| ^ 2) ^ k := by
        simp only [geo_term]
        rw [tsum_mul_left]
    _ = |z| ^ (2 * m + 1) / (1 - |z| ^ 2) := by
        rw [tsum_geometric_of_lt_one (sq_nonneg _) hz_abs_sq]
        ring
    _ = |z| ^ (2 * m + 1) / (1 - z ^ 2) := by rw [sq_abs]
    _ ≤ |z| ^ (n + 1) / (1 - z ^ 2) := by
        -- 2m + 1 ≥ n + 1 since 2m ≥ n (from hm_bound)
        -- For 0 ≤ |z| ≤ 1, larger exponent means smaller value
        have h_exp_le : n + 1 ≤ 2 * m + 1 := by omega
        have h_pow_le : |z| ^ (2 * m + 1) ≤ |z| ^ (n + 1) :=
          pow_le_pow_of_le_one hz_abs_nonneg hz_abs_le h_exp_le
        exact div_le_div_of_nonneg_right h_pow_le (by linarith)

/-! ### Correctness theorems -/

/-- atanh z ∈ (tmAtanh J n).evalSet z for all z in J with |z| < 1.
    Precondition: The domain radius must be ≤ 99/100. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean#L758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7aeee2aaf3c61bbb1db59f1c08119012d375839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
