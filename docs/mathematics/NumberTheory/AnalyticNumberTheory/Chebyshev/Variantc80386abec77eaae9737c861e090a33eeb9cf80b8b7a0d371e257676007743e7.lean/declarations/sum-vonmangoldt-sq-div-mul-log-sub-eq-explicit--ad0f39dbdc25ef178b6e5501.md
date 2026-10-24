# sum_vonMangoldt_sq_div_mul_log_sub_eq_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af3b386e-bc60-10eb-95a0-60f12b22facf",
  "kind": "theorem",
  "lexical_name": "sum_vonMangoldt_sq_div_mul_log_sub_eq_explicit",
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
  "slug": "sum-vonmangoldt-sq-div-mul-log-sub-eq-explicit--ad0f39dbdc25ef178b6e5501",
  "source": {
    "blob": "8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1191,
    "line": 1055,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad0f39dbdc25ef178b6e55017677d079c17ddf16de4614cdd74c1e85d4ba8a3c",
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

Occurrence: `result:af3b386e-bc60-10eb-95a0-60f12b22facf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1055–1191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_vonMangoldt_sq_div_mul_log_sub_eq_explicit : ∀ x : ℝ, 2 ≤ x →
    |(∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n ^ 2 / n * (Real.log x - Real.log n)) -
        Real.log x ^ 3 / 6|
      ≤ ((2 * (Real.log 4 + 4) + 1537 / Real.log 2) / 2 + 1 / Real.log 2) * Real.log x ^ 2 := by
  set C2 : ℝ := 2 * (Real.log 4 + 4) + 1537 / Real.log 2 with hC2def
  have hlog2pos : (0 : ℝ) < Real.log 2 := Real.log_pos one_lt_two
  have hC2 : ∀ y : ℝ, 2 ≤ y → |(∑ n ∈ Ioc 0 ⌊y⌋₊, Λ n ^ 2 / n) - Real.log y ^ 2 / 2|
      ≤ C2 * Real.log y := by
    intro y hy
    rw [hC2def]
    exact sum_vonMangoldt_sq_div_eq_explicit y hy
  have hC20 : (0:ℝ) < C2 := by
    rw [hC2def]
    have h4 : (0:ℝ) ≤ Real.log 4 := Real.log_nonneg (by norm_num)
    positivity
  intro x hx
  show _ ≤ (C2 / 2 + 1 / Real.log 2) * Real.log x ^ 2
  have hx1 : (1 : ℝ) ≤ x := by linarith
  have hlx : (0 : ℝ) < Real.log x := Real.log_pos (by linarith)
  -- the target sum equals ∫ t⁻¹ M2sum t
  have habel := abel_log_M2sum hx1
  have hident : ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n ^ 2 / n * (Real.log x - Real.log n)
      = ∫ t in Set.Ioc 1 x, t⁻¹ * M2sum t := by
    have e1 : ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n ^ 2 / n * (Real.log x - Real.log n)
        = Real.log x * (∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n ^ 2 / n)
          - ∑ n ∈ Ioc 0 ⌊x⌋₊, Real.log n * (Λ n ^ 2 / n) := by
      rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
      exact Finset.sum_congr rfl fun n _ => by ring
    rw [e1, habel]
    ring
  rw [hident]
  -- pointwise bound for the error density on (1, x]
  have hM2b : ∀ t ∈ Set.Ioc (1 : ℝ) x,
      |M2sum t - Real.log t ^ 2 / 2| ≤ C2 * Real.log t + 1 := by
    intro t ht
    have hlt0 : (0 : ℝ) ≤ Real.log t := Real.log_nonneg ht.1.le
    rcases le_or_gt 2 t with h2 | h2
    · have h := hC2 t h2
      rw [M2sum_eq_Ioc]
      have hC2log : (0 : ℝ) ≤ C2 * Real.log t := mul_nonneg hC20.le hlt0
      calc |(∑ n ∈ Ioc 0 ⌊t⌋₊, Λ n ^ 2 / n) - Real.log t ^ 2 / 2| ≤ C2 * Real.log t := h
        _ ≤ C2 * Real.log t + 1 := by linarith
    · have ht1 : (1 : ℝ) < t := ht.1
      have hfl : ⌊t⌋₊ = 1 := by
        rw [Nat.floor_eq_iff (by linarith : (0 : ℝ) ≤ t)]
        constructor
        · exact_mod_cast ht1.le
        · exact_mod_cast (by linarith : t < 1 + 1)
      have hM20 : M2sum t = 0 := by
        rw [M2sum_eq_Ioc, hfl]
        rw [show Finset.Ioc 0 1 = {1} from rfl]
        simp [vonMangoldt_apply_one]
      rw [hM20, zero_sub, abs_neg, abs_of_nonneg (by positivity)]
      have hlt2 : Real.log t ≤ Real.log 2 := Real.log_le_log (by linarith) h2.le
      have hl21 : Real.log 2 < 1 := by nlinarith [Real.log_two_lt_d9]
      nlinarith [mul_nonneg hC20.le hlt0]
  -- integrabilities
  have hcont_logsq : IntegrableOn (fun t : ℝ => t⁻¹ * (Real.log t ^ 2 / 2)) (Set.Ioc 1 x) := by
    refine (ContinuousOn.integrableOn_Icc ?_).mono_set Set.Ioc_subset_Icc_self
    have hlogcont : ContinuousOn Real.log (Set.Icc 1 x) := fun t ht =>
      (Real.continuousAt_log (by nlinarith [ht.1])).continuousWithinAt
    refine ContinuousOn.mul ?_ ((hlogcont.pow 2).div_const 2)
    exact continuousOn_inv₀.mono fun t ht => by
      simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
      nlinarith [ht.1]
  have hint_M2 : IntegrableOn (fun t : ℝ => t⁻¹ * M2sum t) (Set.Ioc 1 x) :=
    integrableOn_inv_mul_mono M2sum_mono M2sum_nonneg hx1
  have hint_diff : IntegrableOn
      (fun t : ℝ => t⁻¹ * (M2sum t - Real.log t ^ 2 / 2)) (Set.Ioc 1 x) :=
    ((hint_M2.sub hcont_logsq).congr_fun
      (fun t _ => by simp only [Pi.sub_apply]; ring) measurableSet_Ioc)
  have hsplit : ∫ t in Set.Ioc 1 x, t⁻¹ * M2sum t
      = (∫ t in Set.Ioc 1 x, t⁻¹ * (Real.log t ^ 2 / 2))
        + ∫ t in Set.Ioc 1 x, t⁻¹ * (M2sum t - Real.log t ^ 2 / 2) := by
    rw [← MeasureTheory.integral_add hcont_logsq hint_diff]
    exact setIntegral_congr_fun measurableSet_Ioc fun t _ => by ring
  have hval : ∫ t in Set.Ioc 1 x, t⁻¹ * (Real.log t ^ 2 / 2) = Real.log x ^ 3 / 6 := by
    have e : ∫ t in Set.Ioc 1 x, t⁻¹ * (Real.log t ^ 2 / 2)
        = ∫ t in Set.Ioc 1 x, (t⁻¹ * Real.log t ^ 2) * (1 / 2) :=
      setIntegral_congr_fun measurableSet_Ioc fun t _ => by ring
    rw [e, MeasureTheory.integral_mul_const, integral_inv_mul_log_sq hx1]
    ring
  -- error bound
  have hint_invlog : IntegrableOn (fun t : ℝ => t⁻¹ * Real.log t) (Set.Ioc 1 x) := by
    refine (ContinuousOn.integrableOn_Icc ?_).mono_set Set.Ioc_subset_Icc_self
    refine ContinuousOn.mul ?_ ?_
    · exact continuousOn_inv₀.mono fun t ht => by
        simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
        nlinarith [ht.1]
    · exact fun t ht => (Real.continuousAt_log (by nlinarith [ht.1])).continuousWithinAt
  have hint_inv : IntegrableOn (fun t : ℝ => t⁻¹) (Set.Ioc 1 x) := by
    refine (ContinuousOn.integrableOn_Icc ?_).mono_set Set.Ioc_subset_Icc_self
    exact continuousOn_inv₀.mono fun t ht => by
      simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
      nlinarith [ht.1]
  have hE : |∫ t in Set.Ioc 1 x, t⁻¹ * (M2sum t - Real.log t ^ 2 / 2)|
      ≤ C2 * (Real.log x ^ 2 / 2) + Real.log x := by
    have hg_int : IntegrableOn (fun t : ℝ => C2 * (t⁻¹ * Real.log t) + t⁻¹) (Set.Ioc 1 x) :=
      (hint_invlog.const_mul C2).add hint_inv
    have hb : ∀ᵐ t ∂(volume.restrict (Set.Ioc 1 x)),
        ‖t⁻¹ * (M2sum t - Real.log t ^ 2 / 2)‖ ≤ C2 * (t⁻¹ * Real.log t) + t⁻¹ := by
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
      have ht1 : (1 : ℝ) ≤ t := ht.1.le
      have ht0 : (0 : ℝ) < t := lt_of_lt_of_le one_pos ht1
      have hti : (0 : ℝ) ≤ t⁻¹ := by positivity
      rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg hti]
      calc t⁻¹ * |M2sum t - Real.log t ^ 2 / 2| ≤ t⁻¹ * (C2 * Real.log t + 1) :=
            mul_le_mul_of_nonneg_left (hM2b t ht) hti
        _ = C2 * (t⁻¹ * Real.log t) + t⁻¹ := by ring
    calc |∫ t in Set.Ioc 1 x, t⁻¹ * (M2sum t - Real.log t ^ 2 / 2)|
        ≤ ∫ t in Set.Ioc 1 x, (C2 * (t⁻¹ * Real.log t) + t⁻¹) := by
          rw [← Real.norm_eq_abs]
          exact norm_integral_le_of_norm_le hg_int hb
      _ = C2 * (∫ t in Set.Ioc 1 x, t⁻¹ * Real.log t) + ∫ t in Set.Ioc 1 x, t⁻¹ := by
          rw [MeasureTheory.integral_add (hint_invlog.const_mul C2) hint_inv,
            MeasureTheory.integral_const_mul]
      _ = C2 * (Real.log x ^ 2 / 2) + Real.log x := by
          rw [integral_inv_mul_log hx1, integral_inv_Ioc hx1]
  -- assemble
  rw [hsplit, hval]
  have harr : Real.log x ^ 3 / 6
        + (∫ t in Set.Ioc 1 x, t⁻¹ * (M2sum t - Real.log t ^ 2 / 2))
        - Real.log x ^ 3 / 6
      = ∫ t in Set.Ioc 1 x, t⁻¹ * (M2sum t - Real.log t ^ 2 / 2) := by ring
  rw [harr]
  have hlogx2 : Real.log x ≤ Real.log x ^ 2 / Real.log 2 := by
    rw [le_div_iff₀ hlog2pos]
    have : Real.log 2 ≤ Real.log x := Real.log_le_log two_pos hx
    nlinarith [hlx]
  calc |∫ t in Set.Ioc 1 x, t⁻¹ * (M2sum t - Real.log t ^ 2 / 2)|
      ≤ C2 * (Real.log x ^ 2 / 2) + Real.log x := hE
    _ ≤ C2 * (Real.log x ^ 2 / 2) + Real.log x ^ 2 / Real.log 2 := by linarith
    _ = (C2 / 2 + 1 / Real.log 2) * Real.log x ^ 2 := by
        field_simp

/-- [eq:cheb2].2: Σ_{n≤x} (Λ(n)²/n)(log x − log n) = (log x)³/6 + O((log x)²).
Paper [lem:cheb]: "The second formula is ∫₁ˣ (Σ_{n≤t} Λ(n)²/n) dt/t."  (From the explicit-constant version.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean#L1055).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
