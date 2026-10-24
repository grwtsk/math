# Params.initial.bound_score_3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d01c5226-2fca-37aa-678e-3b792827c4a5",
  "kind": "theorem",
  "lexical_name": "Params.initial.bound_score_3",
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
  "slug": "params-initial-bound-score-3--879a3b9eca26667bcdb11249",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2589,
    "line": 2509,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:879a3b9eca26667bcdb112493abbb26ea4fe8152701ae2c2f2becc1d719ac11a",
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

Occurrence: `result:d01c5226-2fca-37aa-678e-3b792827c4a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2509–2589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Params.initial.bound_score_3 (ε : ℝ) (hε : ε > 0) (M : ℕ) :
    ∀ᶠ n in .atTop, ∀ P : Params,
      P.M = M → P.n = n → ∑ _p ∈ filter (·.Prime) (Finset.Iic ⌊(Real.sqrt P.n)⌋₊),
          P.M * Real.log P.n * Real.log P.n / Real.log 2 ≤ ε * P.n := by
  have h_littleO : (fun x : ℝ ↦ Real.sqrt x * Real.log x) =o[Filter.atTop] (fun x ↦ x) :=
    (isLittleO_mul_iff_isLittleO_div (hf := by
      filter_upwards [Filter.eventually_gt_atTop 0] with x hx; exact sqrt_ne_zero'.mpr hx)).mpr
      (by simp_rw [div_sqrt, sqrt_eq_rpow]; exact isLittleO_log_rpow_atTop one_half_pos)
  obtain ⟨N₀, hN₀⟩ := Metric.tendsto_atTop.mp
    (h_littleO.tendsto_div_nhds_zero.comp tendsto_natCast_atTop_atTop)
      (ε * Real.log 2 / (8 * (M + 1))) (by positivity)
  obtain ⟨N₁, hN₁⟩ := Filter.eventually_atTop.mp <| isLittleO_iff.mp pi_alt' one_half_pos
  filter_upwards [Filter.eventually_ge_atTop
    (max 16 (max N₀ ((⌈N₁⌉₊ + 1) ^ 2)))] with n hn P hPM hPn
  simp only [hPM, hPn]; have hn16 : n ≥ 16 := le_of_max_le_left hn
  have hnpos : (n : ℝ) > 0 := by positivity
  have hlogn_pos : Real.log n > 0 := log_pos (by exact_mod_cast lt_of_add_left_lt hn16)
  have hsqrt_pos : Real.sqrt n > 0 := sqrt_pos.mpr hnpos
  have hn16' : (16 : ℝ) ≤ n := by exact_mod_cast hn16
  have hsqrt_ge_4 : Real.sqrt n ≥ 4 := by
    nlinarith [Real.sq_sqrt hnpos.le, sq_nonneg (Real.sqrt n - 4)]
  have hfloor_gt_1 : (1 : ℝ) < ⌊Real.sqrt n⌋₊ := by
    exact_mod_cast lt_of_add_left_lt (le_floor (by linarith : (3 : ℝ) ≤ Real.sqrt n))
  conv_lhs => rw [sum_const, nsmul_eq_mul]
  rw [show (filter Nat.Prime (Finset.Iic ⌊Real.sqrt n⌋₊)).card =
    primeCounting ⌊Real.sqrt n⌋₊ by
    simp only [primeCounting, primeCounting', card_filter, count_eq_card_filter_range]
    congr 1; ext p; simp only [Finset.mem_Iic, Finset.mem_range, Nat.lt_succ_iff]]
  rcases eq_or_ne M 0 with rfl | hMne; · simp [mul_nonneg hε.le (cast_nonneg _)]
  have hsqrt_N₁ : (⌊Real.sqrt n⌋₊ : ℝ) > N₁ := by
    have hnsq : n ≥ (⌈N₁⌉₊ + 1) ^ 2 := (le_max_right _ _).trans (le_of_max_le_right hn)
    have : Real.sqrt n ≥ ⌈N₁⌉₊ + 1 := by
      calc (⌈N₁⌉₊ : ℝ) + 1 = Real.sqrt (((⌈N₁⌉₊ + 1 : ℕ) : ℝ) ^ 2) := by
            rw [Real.sqrt_sq (cast_nonneg' (⌈N₁⌉₊ + 1))]; simp
        _ ≤ Real.sqrt n := sqrt_le_sqrt (by exact_mod_cast hnsq)
    linarith [le_ceil N₁, sub_one_lt_floor (Real.sqrt n)]
  have hlog_floor_pos : Real.log ⌊Real.sqrt n⌋₊ > 0 := log_pos hfloor_gt_1
  have hπ : (primeCounting ⌊Real.sqrt n⌋₊ : ℝ) ≤
      3 / 2 * (⌊Real.sqrt n⌋₊ / Real.log ⌊Real.sqrt n⌋₊) := by
    have := hN₁ ⌊Real.sqrt n⌋₊ hsqrt_N₁.le
    simp only [Pi.sub_apply, floor_natCast, norm_eq_abs, abs_of_pos (by positivity :
      (0 : ℝ) < ⌊Real.sqrt n⌋₊ / Real.log ⌊Real.sqrt n⌋₊)] at this
    linarith [(abs_le.mp this).2]
  have hlog_floor_ge : Real.log ⌊Real.sqrt n⌋₊ ≥ Real.log n / 4 := by
    have hfloor_ge : (⌊Real.sqrt n⌋₊ : ℝ) ≥ Real.sqrt n / 2 := by
      linarith [sub_one_lt_floor (Real.sqrt n)]
    calc Real.log ⌊Real.sqrt n⌋₊
        ≥ log (Real.sqrt n / 2) := log_le_log (by positivity) hfloor_ge
      _ = Real.log n / 2 - Real.log 2 := by
          rw [log_div hsqrt_pos.ne' two_ne_zero, log_sqrt hnpos.le]
      _ ≥ Real.log n / 4 := by
          have : Real.log n ≥ 4 * Real.log 2 := by
            calc Real.log n ≥ Real.log 16 := log_le_log ofNat_pos' <| ofNat_le_cast.mpr hn16
              _ = 4 * Real.log 2 := by rw [show (16 : ℝ) = 2 ^ 4 by norm_num, Real.log_pow]; ring
          linarith
  have hbound := hN₀ n ((le_max_left ..).trans (le_of_max_le_right hn))
  simp only [Function.comp_apply, Real.dist_eq, sub_zero] at hbound
  have h_sqrt_log : Real.sqrt n * Real.log n < ε * Real.log 2 * n / (8 * (M + 1)) := by
    have : Real.sqrt n * Real.log n / n < ε * Real.log 2 / (8 * (M + 1)) := by
      linarith [(abs_lt.mp hbound).2, (by positivity : Real.sqrt n * Real.log n / n ≥ 0)]
    calc Real.sqrt n * Real.log n = Real.sqrt n * Real.log n / n * n := by field_simp
      _ < ε * Real.log 2 / (8 * (M + 1)) * n := by gcongr
      _ = _ := by ring
  calc (primeCounting ⌊Real.sqrt n⌋₊ : ℝ) * (M * Real.log n * Real.log n / Real.log 2)
      ≤ 3 / 2 * (⌊Real.sqrt n⌋₊ / Real.log ⌊Real.sqrt n⌋₊) *
          (M * Real.log n * Real.log n / Real.log 2) := by gcongr
    _ ≤ 3 / 2 * (Real.sqrt n / (Real.log n / 4)) *
          (M * Real.log n * Real.log n / Real.log 2) := by gcongr; exact floor_le hsqrt_pos.le
    _ = 6 * M * Real.sqrt n * Real.log n / Real.log 2 := by field_simp; ring
    _ ≤ 8 * (M + 1) * Real.sqrt n * Real.log n / Real.log 2 := by
        have h6le8 : (6 : ℝ) * M ≤ 8 * (M + 1) := by
          exact_mod_cast (by omega : 6 * M ≤ 8 * (M + 1))
        have := hlogn_pos; gcongr
    _ ≤ ε * n := by
        rw [div_le_iff₀ (log_pos one_lt_two)]
        calc 8 * (M + 1) * Real.sqrt n * Real.log n
          ≤ 8 * (M + 1) * (ε * Real.log 2 * n / (8 * (M + 1))) :=
            le_of_lt (by nlinarith [h_sqrt_log])
        _ = ε * n * Real.log 2 := by field_simp

/-- The product `∏ p ≤ n, (1 - 1/p)` over primes tends to zero as `n → ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L2509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
