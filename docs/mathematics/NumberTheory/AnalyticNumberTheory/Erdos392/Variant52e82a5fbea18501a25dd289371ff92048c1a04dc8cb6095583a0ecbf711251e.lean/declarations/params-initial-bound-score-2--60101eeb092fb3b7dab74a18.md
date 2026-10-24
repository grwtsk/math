# Params.initial.bound_score_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87974f4a-0124-590d-1421-f30df6e08c4c",
  "kind": "theorem",
  "lexical_name": "Params.initial.bound_score_2",
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
  "slug": "params-initial-bound-score-2--60101eeb092fb3b7dab74a18",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2508,
    "line": 2418,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60101eeb092fb3b7dab74a1806dd58e185d40dde740d0f21eb9473d0ee3e1495",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87974f4a-0124-590d-1421-f30df6e08c4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2418–2508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Params.initial.bound_score_2 (ε : ℝ) (hε : ε > 0) (M : ℕ) :
    ∀ᶠ L in .atTop, ∀ᶠ n in .atTop, ∀ P : Params,
      P.L = L → P.n = n → P.M = M →
        ∑ _p ∈ Finset.filter (·.Prime) (Finset.Iic (P.n / P.L)),
        P.M * Real.log P.n ≤ ε * P.n := by
  have pi_equiv := pi_alt'
  rw [IsEquivalent, isLittleO_iff] at pi_equiv
  specialize pi_equiv (by norm_num : (1 : ℝ) / 2 > 0)
  rw [Filter.eventually_atTop] at pi_equiv
  obtain ⟨N₀, hN₀⟩ := pi_equiv
  filter_upwards [Filter.eventually_ge_atTop
    (max 2 (max (⌈N₀⌉₊ + 1) (⌈4 * M / ε⌉₊ + 1)))] with L hL
  have hL2 : L ≥ 2 := le_of_max_le_left hL
  have hLN₀ : (L : ℝ) > N₀ :=
    (le_ceil N₀).trans_lt (by exact_mod_cast (le_max_left _ _).trans (le_of_max_le_right hL))
  have hL4Mε : (L : ℝ) > 4 * M / ε :=
    (le_ceil _).trans_lt (by exact_mod_cast (le_max_right _ _).trans (le_of_max_le_right hL))
  have hLpos : (L : ℝ) > 0 := by positivity
  filter_upwards [Filter.eventually_ge_atTop (4 * L ^ 2)] with n hn P hPL hPn hPM
  simp only [hPM, hPL, hPn]
  have hnL2 : n ≥ L ^ 2 := (Nat.le_mul_of_pos_left _ (by omega : 0 < 4)).trans hn
  have hnLge : n / L ≥ L := le_div_iff_mul_le (by omega) |>.mpr (by rw [sq] at hnL2; exact hnL2)
  have hnLN₀ : ((n / L : ℕ) : ℝ) > N₀ := hLN₀.trans_le (by exact_mod_cast hnLge)
  conv_lhs => rw [Finset.sum_const, nsmul_eq_mul]
  have hcard : (filter Prime (Finset.Iic (n / L))).card = primeCounting (n / L) := by
    simp only [primeCounting, primeCounting', card_filter, count_eq_card_filter_range]
    congr 1; ext p
    rw [Finset.mem_Iic, Finset.mem_range, Nat.lt_succ_iff]
  rw [hcard]
  rcases eq_or_ne M 0 with rfl | hMne
  · simp [mul_nonneg (hε.le) (cast_nonneg _)]
  have hnLgt1 : (1 : ℝ) < (n / L : ℕ) := by exact_mod_cast hL2.trans hnLge
  have hlogPos : Real.log (n / L : ℕ) > 0 := Real.log_pos hnLgt1
  have hdivPos : (0 : ℝ) < (n / L : ℕ) / Real.log (n / L : ℕ) := div_pos (by grind) hlogPos
  have hπ : (primeCounting (n / L) : ℝ) ≤
      3 / 2 * ((n / L : ℕ) / Real.log (n / L : ℕ)) := by
    have h := hN₀ ((n / L : ℕ) : ℝ) hnLN₀.le
    simp only [Pi.sub_apply, floor_natCast, norm_eq_abs, abs_of_pos hdivPos] at h
    linarith [abs_sub_le_iff.mp h]
  have hn4 : n ≥ 4 := (Nat.pow_le_pow_left hL2 2).trans hnL2
  have hnpos : (n : ℝ) > 0 := cast_pos.mpr (by positivity)
  have hn_gt_1 : (1 : ℝ) < n := by exact_mod_cast (by grind)
  have hlogN : Real.log (n / L : ℕ) ≥ Real.log n / 2 := by
    have hsqrt : ((n / L : ℕ) : ℝ) ≥ Real.sqrt n := by
      have h1 : Real.sqrt n ≤ n / (2 * L) := by
        rw [sqrt_le_iff]
        refine ⟨by positivity, ?_⟩
        rw [div_pow, le_div_iff₀ (by positivity)]
        have hn4L2 : (4 : ℝ) * L ^ 2 ≤ n := by exact_mod_cast hn
        have h2L_sq : ((2 : ℝ) * L) ^ 2 = 4 * L ^ 2 := by ring
        nlinarith [h2L_sq, sq_nonneg ((n : ℝ) - 4 * L ^ 2)]
      have h2 : (n : ℝ) / L - Real.sqrt n ≥ 1 := by
        have hL_ne : (L : ℝ) ≠ 0 := by positivity
        calc (n : ℝ) / L - Real.sqrt n ≥ n / L - n / (2 * L) := by grind
          _ = n / (2 * L) := by grind
          _ ≥ 4 * L ^ 2 / (2 * L) := by gcongr; exact_mod_cast hn
          _ = 2 * L := by grind
          _ ≥ 4 := by
            have hL2' : (2 : ℝ) ≤ L := ofNat_le_cast.mpr hL2
            grind
          _ ≥ 1 := by grind
      have h3 : ((n / L : ℕ) : ℝ) ≥ (n : ℝ) / L - 1 := by
        have hlt := sub_one_lt_floor (a := (n : ℝ) / L)
        rw [floor_div_eq_div] at hlt
        grind
      grind
    calc
      Real.log (n / L : ℕ) ≥ Real.log (Real.sqrt n) := log_le_log (sqrt_pos.mpr hnpos) hsqrt
      _ = Real.log n / 2 := log_sqrt hnpos.le
  calc
    (primeCounting (n / L) : ℝ) * (M * Real.log n)
      ≤ 3 / 2 * ((n / L : ℕ) / Real.log (n / L : ℕ)) * (M * Real.log n) := by gcongr
    _ ≤ 3 / 2 * ((n : ℝ) / L / Real.log (n / L : ℕ)) * (M * Real.log n) := by
        have : ((n / L : ℕ) : ℝ) ≤ (n : ℝ) / L := cast_div_le
        gcongr
    _ ≤ 3 / 2 * ((n : ℝ) / L / (Real.log n / 2)) * (M * Real.log n) := by
        have : 0 < Real.log n / 2 := div_pos (log_pos hn_gt_1) (by grind)
        gcongr
    _ = 3 * M * n / L := by field_simp [log_ne_zero_of_pos_of_ne_one hnpos <| ne_of_gt hn_gt_1]
    _ ≤ ε * n := by
        rw [div_le_iff₀ hLpos]
        have : 4 * M < ε * L := by linarith [(div_lt_iff₀ hε).mp hL4Mε]
        calc 3 * M * n ≤ ε * L * n := by nlinarith
          _ = ε * n * L := by ring

@[blueprint "bound-score-3"
  (statement := /-- If $n$ sufficiently large depending on $M, \varepsilon$, then
  $\sum_{p \leq \sqrt{n}} M \log^2 n / \log 2 \leq \varepsilon n$. -/)
  (proof := /-- Crude estimation. -/)
  (discussion := 516)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L2418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
