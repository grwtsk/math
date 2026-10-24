# sum_vonMangoldt_div_sqrt_mul_log_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fcd7c44-374c-6dd7-6982-58903e709dbb",
  "kind": "theorem",
  "lexical_name": "sum_vonMangoldt_div_sqrt_mul_log_le",
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
  "slug": "sum-vonmangoldt-div-sqrt-mul-log-le--3f4a020e965b43511687b425",
  "source": {
    "blob": "8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 361,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f4a020e965b43511687b42581367d5aae04ff46710825cfe48f0edf29dff9e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fcd7c44-374c-6dd7-6982-58903e709dbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_vonMangoldt_div_sqrt_mul_log_le {x : ℝ} (hx : 2 ≤ x) :
    ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / (Real.sqrt n * Real.log n) ≤
      (4 * Real.log 4 + 40) * Real.sqrt x / Real.log x := by
  have hx1 : (1 : ℝ) ≤ x := by linarith
  have hx0 : (0 : ℝ) < x := by linarith
  have hlx : (0 : ℝ) < Real.log x := Real.log_pos (by linarith)
  set R : ℕ := ⌊Real.sqrt x⌋₊ with hR
  have hsqx : Real.sqrt x ≤ x := (Real.sqrt_le_left hx0.le).mpr (by nlinarith)
  have hRle : R ≤ ⌊x⌋₊ := Nat.floor_le_floor hsqx
  have hsplit : (∑ n ∈ Ioc 0 R, Λ n / (Real.sqrt n * Real.log n))
      + ∑ n ∈ Ioc R ⌊x⌋₊, Λ n / (Real.sqrt n * Real.log n)
      = ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / (Real.sqrt n * Real.log n) :=
    Finset.sum_Ioc_consecutive _ (Nat.zero_le R) hRle
  rw [← hsplit]
  -- part 1: n ≤ R = ⌊√x⌋
  have hpart1 : ∑ n ∈ Ioc 0 R, Λ n / (Real.sqrt n * Real.log n)
      ≤ 2 * Real.sqrt R := by
    refine le_trans (Finset.sum_le_sum fun n hn => ?_) (sum_one_div_sqrt_le R)
    obtain ⟨hn0, _⟩ := Finset.mem_Ioc.mp hn
    rcases Nat.lt_or_ge n 2 with h2 | h2
    · have hn1 : n = 1 := by omega
      subst hn1
      simp [vonMangoldt_apply_one]
    · have hncast : (1 : ℝ) < (n : ℝ) := by exact_mod_cast h2.trans_lt' one_lt_two
      have hlogn : (0 : ℝ) < Real.log n := Real.log_pos hncast
      have hsn : (0 : ℝ) < Real.sqrt n := Real.sqrt_pos.mpr (by positivity)
      calc Λ n / (Real.sqrt n * Real.log n)
          ≤ Real.log n / (Real.sqrt n * Real.log n) := by
            gcongr
            exact vonMangoldt_le_log
        _ = 1 / Real.sqrt n := by field_simp
  have hq : x ^ ((4 : ℝ)⁻¹) * x ^ ((4 : ℝ)⁻¹) = Real.sqrt x := by
    rw [← Real.rpow_add hx0, Real.sqrt_eq_rpow]; norm_num
  have h14nn : (0 : ℝ) ≤ x ^ ((4 : ℝ)⁻¹) := Real.rpow_nonneg hx0.le _
  have hsqR : Real.sqrt R ≤ x ^ ((4 : ℝ)⁻¹) := by
    have h1 : Real.sqrt (R : ℝ) ≤ Real.sqrt (Real.sqrt x) :=
      Real.sqrt_le_sqrt (Nat.floor_le (Real.sqrt_nonneg x))
    have h2 : Real.sqrt (Real.sqrt x) = x ^ ((4 : ℝ)⁻¹) := by
      rw [Real.sqrt_eq_rpow (Real.sqrt x), Real.sqrt_eq_rpow x, ← Real.rpow_mul hx0.le]
      norm_num
    rwa [h2] at h1
  have hlog : Real.log x ≤ 4 * x ^ ((4 : ℝ)⁻¹) := by
    have h4 := Real.log_le_rpow_div hx0.le (by norm_num : (0 : ℝ) < 4⁻¹)
    rw [div_eq_mul_inv, inv_inv] at h4
    linarith
  -- part 2: √x < n ≤ x
  have hS := sum_vonMangoldt_div_sqrt_le hx1
  have hsub : ∑ n ∈ Ioc R ⌊x⌋₊, Λ n / Real.sqrt n
      ≤ ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / Real.sqrt n := by
    refine Finset.sum_le_sum_of_subset_of_nonneg ?_ fun n _ _ => ?_
    · exact Finset.Ioc_subset_Ioc (Nat.zero_le R) le_rfl
    · exact div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _)
  have hpart2 : ∑ n ∈ Ioc R ⌊x⌋₊, Λ n / (Real.sqrt n * Real.log n)
      ≤ 2 / Real.log x * ((2 * Real.log 4 + 16) * Real.sqrt x) := by
    have step : ∀ n ∈ Ioc R ⌊x⌋₊, Λ n / (Real.sqrt n * Real.log n)
        ≤ 2 / Real.log x * (Λ n / Real.sqrt n) := by
      intro n hn
      obtain ⟨hnR, _⟩ := Finset.mem_Ioc.mp hn
      have hsx : Real.sqrt x < (n : ℝ) := by
        have := Nat.lt_floor_add_one (Real.sqrt x)
        have hn1 : (R : ℝ) + 1 ≤ (n : ℝ) := by exact_mod_cast hnR
        rw [hR] at hn1
        linarith
      have hsx0 : (0 : ℝ) < Real.sqrt x := Real.sqrt_pos.mpr hx0
      have hn0 : (0 : ℝ) < (n : ℝ) := lt_trans hsx0 hsx
      have hlogn : Real.log x / 2 ≤ Real.log n := by
        have := Real.log_le_log hsx0 hsx.le
        rwa [Real.log_sqrt hx0.le] at this
      have hlogn0 : (0 : ℝ) < Real.log n := lt_of_lt_of_le (by positivity) hlogn
      have hsn : (0 : ℝ) < Real.sqrt n := Real.sqrt_pos.mpr hn0
      have hΛ : (0 : ℝ) ≤ Λ n := vonMangoldt_nonneg
      have ha : (0 : ℝ) ≤ Λ n / Real.sqrt n := div_nonneg hΛ hsn.le
      have hL2 : (0 : ℝ) < Real.log x / 2 := by positivity
      calc Λ n / (Real.sqrt n * Real.log n)
          = (Λ n / Real.sqrt n) / Real.log n := by rw [div_div]
        _ ≤ (Λ n / Real.sqrt n) / (Real.log x / 2) := by
            rw [div_le_div_iff₀ hlogn0 hL2]
            exact mul_le_mul_of_nonneg_left hlogn ha
        _ = 2 / Real.log x * (Λ n / Real.sqrt n) := by
            rw [div_div_eq_mul_div]
            ring
    calc ∑ n ∈ Ioc R ⌊x⌋₊, Λ n / (Real.sqrt n * Real.log n)
        ≤ ∑ n ∈ Ioc R ⌊x⌋₊, 2 / Real.log x * (Λ n / Real.sqrt n) :=
          Finset.sum_le_sum step
      _ = 2 / Real.log x * ∑ n ∈ Ioc R ⌊x⌋₊, Λ n / Real.sqrt n := by
          rw [Finset.mul_sum]
      _ ≤ 2 / Real.log x * ((2 * Real.log 4 + 16) * Real.sqrt x) := by
          have h2l : (0 : ℝ) ≤ 2 / Real.log x := by positivity
          exact mul_le_mul_of_nonneg_left (le_trans hsub hS) h2l
  -- assemble: multiply through by log x
  rw [le_div_iff₀ hlx]
  have e2 : 2 / Real.log x * ((2 * Real.log 4 + 16) * Real.sqrt x) * Real.log x
      = 2 * ((2 * Real.log 4 + 16) * Real.sqrt x) := by
    field_simp
  have hp1log : (∑ n ∈ Ioc 0 R, Λ n / (Real.sqrt n * Real.log n)) * Real.log x
      ≤ 8 * Real.sqrt x := by
    have step1 : (∑ n ∈ Ioc 0 R, Λ n / (Real.sqrt n * Real.log n)) * Real.log x
        ≤ (2 * Real.sqrt R) * Real.log x :=
      mul_le_mul_of_nonneg_right hpart1 hlx.le
    have step2 : (2 * Real.sqrt R) * Real.log x ≤ (2 * x ^ ((4 : ℝ)⁻¹)) * (4 * x ^ ((4 : ℝ)⁻¹)) := by
      have hsR0 : (0 : ℝ) ≤ Real.sqrt R := Real.sqrt_nonneg _
      nlinarith [hsqR, hlog, hlx, h14nn]
    have step3 : (2 * x ^ ((4 : ℝ)⁻¹)) * (4 * x ^ ((4 : ℝ)⁻¹)) = 8 * Real.sqrt x := by
      rw [← hq]; ring
    linarith
  have hp2log : (∑ n ∈ Ioc R ⌊x⌋₊, Λ n / (Real.sqrt n * Real.log n)) * Real.log x
      ≤ 2 * ((2 * Real.log 4 + 16) * Real.sqrt x) := by
    calc (∑ n ∈ Ioc R ⌊x⌋₊, Λ n / (Real.sqrt n * Real.log n)) * Real.log x
        ≤ 2 / Real.log x * ((2 * Real.log 4 + 16) * Real.sqrt x) * Real.log x :=
          mul_le_mul_of_nonneg_right hpart2 hlx.le
      _ = 2 * ((2 * Real.log 4 + 16) * Real.sqrt x) := e2
  have hfin : (∑ n ∈ Ioc 0 R, Λ n / (Real.sqrt n * Real.log n)
      + ∑ n ∈ Ioc R ⌊x⌋₊, Λ n / (Real.sqrt n * Real.log n)) * Real.log x
      = (∑ n ∈ Ioc 0 R, Λ n / (Real.sqrt n * Real.log n)) * Real.log x
        + (∑ n ∈ Ioc R ⌊x⌋₊, Λ n / (Real.sqrt n * Real.log n)) * Real.log x := by ring
  rw [hfin]
  nlinarith [hp1log, hp2log]

/-! ## [eq:cheb1], fourth bound: Σ_{n≤x} Λ(n)² ≪ x log x -/

/-- [eq:cheb1].4: Σ_{n≤x} Λ(n)² ≤ (log 4 + 4)·x·log x, from Λ(n) ≤ log n ≤ log x. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
