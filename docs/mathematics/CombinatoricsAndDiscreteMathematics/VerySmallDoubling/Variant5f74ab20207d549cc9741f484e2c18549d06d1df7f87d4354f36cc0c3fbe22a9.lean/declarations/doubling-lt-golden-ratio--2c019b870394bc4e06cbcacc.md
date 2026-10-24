# doubling_lt_golden_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc40f85f-950b-8d29-b5da-9625ccde7d46",
  "kind": "theorem",
  "lexical_name": "doubling_lt_golden_ratio",
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
  "slug": "doubling-lt-golden-ratio--2c019b870394bc4e06cbcacc",
  "source": {
    "blob": "9c83e33c3f22ae5632d9878f1fabc980dcd10abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 386,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c019b870394bc4e06cbcacc1c96eaf72b74b5b6504a2e4a9e2bbcd516cb792f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc40f85f-950b-8d29-b5da-9625ccde7d46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem doubling_lt_golden_ratio (hK₁ : 1 < K) (hKφ : K < φ)
    (hA₁ : #(A⁻¹ * A) ≤ K * #A) (hA₂ : #(A * A⁻¹) ≤ K * #A) :
    ∃ (H : Subgroup G) (_ : Fintype H) (Z : Finset G),
      #Z ≤ (2 - K) * K / ((φ - K) * (K - ψ)) ∧ (H : Set G) * Z = A * A⁻¹ := by
  -- Some useful initial calculations
  have K_pos : 0 < K := by positivity
  have hK₀ : 0 < K := by positivity
  have hKφ' : 0 < φ - K := by linarith
  have hKψ' : 0 < K - ψ := by linarith [Real.goldenConj_neg]
  have hK₂' : 0 < 2 - K := by linarith [Real.goldenRatio_lt_two]
  have const_pos : 0 < K * (2 - K) / ((φ - K) * (K - ψ)) := by positivity
  -- We dispatch the trivial case `A = ∅` separately.
  obtain rfl | A_nonempty := A.eq_empty_or_nonempty
  · exact ⟨⊥, inferInstance, ∅, by rw [card_empty, Nat.cast_zero]; positivity, by simp⟩
  -- In the case where `A` is non-empty, we consider the set `S := A * A⁻¹` and its stabilizer `H`.
  let S := A * A⁻¹
  let H := stabilizer G S
  -- `S` is finite and non-empty (because `A` is), and therefore `H` is finite too.
  have S_nonempty : S.Nonempty := by simpa [S]
  have : Finite H := by simpa [H] using! stabilizer_finite (by simpa) S.finite_toSet
  cases nonempty_fintype H
  -- By definition, `H * S = S`.
  have H_mul_S : (H : Set G) * S = S := by simp [H, ← stabilizer_coe_finset]
  -- Since `H` is a subgroup, find a finite set `Z ⊆ S` such that `H * Z = S` and `|H| * |Z| = |S|`.
  obtain ⟨Z, hZ⟩ := exists_subset_mul_eq_mul_injOn H S
  have H_mul_Z : (H : Set G) * Z = S := by simp [hZ.2.1, H_mul_S]
  have H_toFinset_mul_Z : Set.toFinset H * Z = S := by simpa [← Finset.coe_inj]
  have card_H_mul_card_Z : Fintype.card H * #Z = #S := by
    simpa [card_mul_eq_mul_card_of_injOn_opSMul hZ.2.2] using! congr_arg _ H_toFinset_mul_Z
  -- It remains to show that `|Z| ≤ C(K)` for some `C(K)` depending only on `K`.
  refine ⟨H, inferInstance, Z, ?_, mod_cast H_mul_Z⟩
  -- This is equivalent to showing that `|H| ≥ c(K)|S|` for some `c(K)` depending only on `K`.
  suffices ((φ - K) * (K - ψ)) / ((2 - K) * K) * #S ≤ Fintype.card H by
    calc
          (#Z : ℝ)
      _ = (Fintype.card H / #S : ℝ)⁻¹ := by simp [← card_H_mul_card_Z]
      _ ≤ (((φ - K) * (K - ψ) / ((2 - K) * K) * #S) / #S)⁻¹ := by gcongr
      _ = (2 - K) * K / ((φ - K) * (K - ψ)) := by
        have : (#S : ℝ) ≠ 0 := by positivity
        simp [this]
  -- Write `r(z)` the number of representations of `z ∈ S` as `x * y⁻¹` for `x, y ∈ A`.
  let r z : ℕ := A.convolution A⁻¹ z
  -- `r` is invariant under inverses.
  have r_inv z : r z⁻¹ = r z := by simp [r, inv_inv]
  -- We show that every `z ∈ S` with at least `(K - 1)|A|` representations lies in `H`,
  -- and that such `z` make up a proportion of at least `(2 - K) / ((φ - K) * (K - ψ))` of `S`.
  calc
        (φ - K) * (K - ψ) / ((2 - K) * K) * #S
    _ ≤ #{z ∈ S | (K - 1) * #A < r z} := ?_
    _ ≤ #(H : Set G).toFinset := ?_
    _ = Fintype.card H := by simp
  -- First, let's show that a large proportion of all `z ∈ S` have many representations.
  · -- Let `l` be that number.
    set l : ℕ := #{z ∈ S | (K - 1) * #A < r z} with hk
    -- By upper-bounding `r(z)` by `(K - 1)|A|` for the `z` with few representations,
    -- and by `|A|` for the `z` with many representations,
    -- we get `|A|² ≤ l|A| + (|S| - l)(K - 1)|A| = ((2 - K)l + (K - 1)|S|)|A|`.
    have ineq : #A * #A ≤ ((2 - K) * l + (K - 1) * #S) * #A := by
      calc
            (#A : ℝ) * #A
        _ = #A * #A⁻¹ := by simp
        _ = #(A ×ˢ A⁻¹) := by simp
        _ = ∑ z ∈ S, ↑(r z) := by
          norm_cast
          exact card_eq_sum_card_fiberwise fun xy hxy ↦
            mul_mem_mul (mem_product.mp hxy).1 (mem_product.mp hxy).2
        _ = ∑ z ∈ S with (K - 1) * #A < r z, ↑(r z) + ∑ z ∈ S with r z ≤ (K - 1) * #A, ↑(r z) := by
          norm_cast; simp_rw [← not_lt, sum_filter_add_sum_filter_not]
        _ ≤ ∑ z ∈ S with (K - 1) * #A < r z, ↑(#A)
          + ∑ z ∈ S with r z ≤ (K - 1) * #A, (K - 1) * #A := by
          gcongr with z hz z hz
          · exact convolution_le_card_left
          · simp_all
        _ = l * #A + (#S - l) * (K - 1) * #A := by
          simp [hk, ← not_lt, mul_assoc,
            ← S.card_filter_add_card_filter_not fun z ↦ (K - 1) * #A < r z]
        _ = ((2 - K) * l + (K - 1) * #S) * #A := by ring
    -- By cancelling `|A|` on both sides, we get `|A| ≤ (2 - K)l + (K - 1)|S|`.
    -- By composing with `|S| ≤ K|A|`, we get `|S| ≤ (2 - K)Kl + (K - 1)K|S|`.
    have : 0 < #A := by positivity
    replace ineq := calc
          (#S : ℝ)
      _ ≤ K * #A := ‹_›
      _ ≤ K * ((2 - K) * l + (K - 1) * #S) := by
        gcongr; exact le_of_mul_le_mul_right ineq <| by positivity
      _ = (2 - K) * K * l + (K - 1) * K * #S := by ring
    -- Now, we are done.
    calc
          (φ - K) * (K - ψ) / ((2 - K) * K) * #S
      _ = (φ - K) * (K - ψ) * #S / ((2 - K) * K) := div_mul_eq_mul_div ..
      _ ≤ (2 - K) * K * l / ((2 - K) * K) := by
        have := Real.goldenRatio_mul_goldenConj
        have := Real.goldenRatio_add_goldenConj
        rw [show (φ - K) * (K - ψ) = 1 - (K - 1) * K by grind]
        gcongr ?_ / _
        linarith [ineq]
      _ = l := by field
  -- Second, let's show that the `z ∈ S` with many representations are in `H`.
  · gcongr
    simp only [subset_iff, mem_filter, Set.mem_toFinset, SetLike.mem_coe, and_imp]
    rintro z hz hrz
    -- It's enough to show that `z * w ∈ S` for all `w ∈ S`.
    rw [mem_stabilizer_finset']
    rintro w hw
    -- Since `w ∈ S` and `|A⁻¹ * A| ≤ K|A|`, we know that `r(w) ≥ (2 - K)|A|`.
    have hrw : (2 - K) * #A ≤ r w := by
      simpa [card_mul_inv_eq_convolution_inv] using! le_card_mul_inv_eq hA₁ (by simpa)
    -- But also `r(z⁻¹) = r(z) > (K - 1)|A|`.
    rw [← r_inv] at hrz
    simp only [r, ← card_inter_smul] at hrz hrw
    -- By inclusion-exclusion, we get that `(z⁻¹ •> A) ∩ (w •> A)` is non-empty.
    have : (0 : ℝ) < #((z⁻¹ •> A) ∩ (w •> A)) := by
      have : (#((A ∩ z⁻¹ •> A) ∩ (A ∩ w •> A)) : ℝ) ≤ #(z⁻¹ •> A ∩ w •> A) := by
        gcongr <;> exact inter_subset_right
      have : (#((A ∩ z⁻¹ •> A) ∪ (A ∩ w •> A)) : ℝ) ≤ #A := by
        gcongr; exact union_subset inter_subset_left inter_subset_left
      have :
          (#((A ∩ z⁻¹ •> A) ∩ (A ∩ w •> A)) + #((A ∩ z⁻¹ •> A) ∪ (A ∩ w •> A)) : ℝ) =
            #(A ∩ z⁻¹ •> A) + #(A ∩ w •> A) := mod_cast card_inter_add_card_union ..
      linarith
    -- This is exactly what we set out to prove.
    simpa [S, card_smul_inter_smul, Finset.Nonempty, mem_mul, mem_inv, -mem_inv', and_assoc]
      using! this

/-! ### Doubling less than `2-ε` -/

variable (ε : ℝ)

/-- Given a constant `K ∈ ℝ` (usually `0 < K ≤ 1`) and a finite subset `S ⊆ G`,
`expansion K S : Finset G → ℝ` measures the extent to which `S` extends the argument, compared
against the reference constant `K`. That is, given a finite `A ⊆ G` (possibly empty),
`expansion K S A` is defined as the value of `#(SA) - K#S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c83e33c3f22ae5632d9878f1fabc980dcd10abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
