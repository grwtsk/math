# sum_Fmaj_sq_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4353fda9-ed9e-3def-a050-6a42e7bfb1c3",
  "kind": "theorem",
  "lexical_name": "sum_Fmaj_sq_div_le",
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
  "slug": "sum-fmaj-sq-div-le--6c85ce5aa98132d16b38dd15",
  "source": {
    "blob": "140e9178fb05091a1f0436370130aea90afdfddf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 147,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c85ce5aa98132d16b38dd1535b6f3f7bb503b8ca227732f7a15583dbd0d1c45",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4353fda9-ed9e-3def-a050-6a42e7bfb1c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Fmaj_sq_div_le {x u : ℝ} (hx : 0 ≤ x) (hu : 0 ≤ u) (hxu : x * u ≤ 4)
    (hxK : 32 * Real.exp 1 * KM * x ≤ 1) :
    ∑ N ∈ Ioc 0 ⌊Real.exp u⌋₊, Fmaj x N ^ 2 / N ≤ CF := by
  set X : ℕ := ⌊Real.exp u⌋₊ with hX
  -- (1) pointwise: F(N)² ≤ Σ_{i<X} 2^{i+1} (x^{i+1} Λ^{i+1} N)², and (Λ^{i+1}N)² ≤ u^{i+1} Λ^{i+1} N
  have hpt : ∀ N ∈ Ioc 0 X, Fmaj x N ^ 2 / N
      ≤ ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * u ^ (i + 1) * ((Λ ^ (i + 1)) N / N) := by
    intro N hN
    have hN0 : 0 < N := (mem_Ioc.mp hN).1
    have hNX : N ≤ X := (mem_Ioc.mp hN).2
    have hΩ : Ω N ≤ X := (cardFactors_le_self N).trans hNX
    have hlogN : Real.log N ≤ u := log_le_of_mem_Ioc_floor_exp hN
    have hlog0 : 0 ≤ Real.log N := Real.log_natCast_nonneg N
    rw [Fmaj_eq_sum_range_of_le x hΩ, div_eq_mul_inv, ]
    calc (∑ i ∈ range X, x ^ (i + 1) * (Λ ^ (i + 1)) N) ^ 2 * (N:ℝ)⁻¹
        ≤ (∑ i ∈ range X, 2 ^ (i + 1) * (x ^ (i + 1) * (Λ ^ (i + 1)) N) ^ 2) * (N:ℝ)⁻¹ :=
          mul_le_mul_of_nonneg_right (sq_sum_range_le_sum_two_pow_mul_sq X _) (by positivity)
      _ = ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * ((Λ ^ (i + 1)) N * (Λ ^ (i + 1)) N) * (N:ℝ)⁻¹ := by
          rw [sum_mul]; refine sum_congr rfl fun i _ => by ring
      _ ≤ ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * (u ^ (i + 1) * (Λ ^ (i + 1)) N) * (N:ℝ)⁻¹ := by
          refine sum_le_sum fun i _ => ?_
          refine mul_le_mul_of_nonneg_right ?_ (by positivity)
          refine mul_le_mul_of_nonneg_left ?_ (by positivity)
          refine mul_le_mul_of_nonneg_right ?_ (lamPow_nonneg _ _)
          exact (lamPow_le_log_pow _ _).trans (pow_le_pow_left₀ hlog0 hlogN _)
      _ = _ := sum_congr rfl fun i _ => by ring
  -- (2) sum over N, swap, use the PowerSums bound
  have hswap : ∑ N ∈ Ioc 0 X, ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * u ^ (i + 1) * ((Λ ^ (i + 1)) N / N)
      = ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * u ^ (i + 1) * Sdiv (Λ ^ (i + 1)) u := by
    rw [sum_comm]
    refine sum_congr rfl fun i _ => ?_
    rw [← mul_sum]; rfl
  have hterm : ∀ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * u ^ (i + 1) * Sdiv (Λ ^ (i + 1)) u
      ≤ (4 * x ^ 2 * u ^ 2) ^ (i + 1) / (i + 1).factorial + (1 / 2 : ℝ) ^ (i + 1) := by
    intro i _
    have h1 : 2 ^ (i + 1) * x ^ (2 * (i + 1)) * u ^ (i + 1) * Sdiv (Λ ^ (i + 1)) u
        ≤ 2 ^ (i + 1) * x ^ (2 * (i + 1)) * u ^ (i + 1) * ((u + ↑(i + 1) * KM) ^ (i + 1) / (i + 1).factorial) :=
      mul_le_mul_of_nonneg_left (Sdiv_lamPow_le (i + 1) hu) (by positivity)
    refine h1.trans ((term_bound hx hu (i + 1)).trans ?_)
    have h0 : 0 ≤ 4 * Real.exp 1 * KM * x ^ 2 * u :=
      mul_nonneg (mul_nonneg (mul_nonneg (by positivity) KM_nonneg) (sq_nonneg x)) hu
    have hhalf : 4 * Real.exp 1 * KM * x ^ 2 * u ≤ 1 / 2 := by
      have hprod : (32 * Real.exp 1 * KM * x) * (x * u) ≤ 1 * 4 :=
        mul_le_mul hxK hxu (mul_nonneg hx hu) zero_le_one
      calc 4 * Real.exp 1 * KM * x ^ 2 * u = (32 * Real.exp 1 * KM * x) * (x * u) / 8 := by ring
        _ ≤ 1 * 4 / 8 := div_le_div_of_nonneg_right hprod (by norm_num)
        _ ≤ 1 / 2 := by norm_num
    exact add_le_add le_rfl (pow_le_pow_left₀ h0 hhalf _)
  calc ∑ N ∈ Ioc 0 X, Fmaj x N ^ 2 / N
      ≤ ∑ N ∈ Ioc 0 X, ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * u ^ (i + 1) * ((Λ ^ (i + 1)) N / N) :=
        sum_le_sum hpt
    _ = ∑ i ∈ range X, 2 ^ (i + 1) * x ^ (2 * (i + 1)) * u ^ (i + 1) * Sdiv (Λ ^ (i + 1)) u := hswap
    _ ≤ ∑ i ∈ range X, ((4 * x ^ 2 * u ^ 2) ^ (i + 1) / (i + 1).factorial + (1 / 2 : ℝ) ^ (i + 1)) := sum_le_sum hterm
    _ = (∑ i ∈ range X, (4 * x ^ 2 * u ^ 2) ^ (i + 1) / (i + 1).factorial) + ∑ i ∈ range X, (1 / 2 : ℝ) ^ (i + 1) :=
        sum_add_distrib
    _ ≤ Real.exp 64 + 2 := by
        gcongr
        · -- shift index and compare with the exponential series of 4x²u² ≤ 16 ≤ 32
          have h8 : 4 * x ^ 2 * u ^ 2 ≤ 64 := by nlinarith [sq_nonneg (x * u), mul_nonneg hx hu]
          have h80 : 0 ≤ 4 * x ^ 2 * u ^ 2 := by positivity
          calc ∑ i ∈ range X, (4 * x ^ 2 * u ^ 2) ^ (i + 1) / (i + 1).factorial
              ≤ ∑ i ∈ range (X + 1), (4 * x ^ 2 * u ^ 2) ^ i / i.factorial := by
                rw [sum_range_succ']
                simp only [pow_zero, Nat.factorial_zero, Nat.cast_one, div_one]
                linarith
            _ ≤ Real.exp (4 * x ^ 2 * u ^ 2) := Real.sum_le_exp_of_nonneg h80 _
            _ ≤ Real.exp 64 := Real.exp_le_exp.mpr h8
        · calc ∑ i ∈ range X, (1 / 2 : ℝ) ^ (i + 1) ≤ ∑ i ∈ range (X + 1), (1 / 2 : ℝ) ^ i := by
                rw [sum_range_succ']; simp only [pow_zero]; linarith
            _ ≤ 2 := sum_geometric_two_le _
    _ = CF := rfl

/-! ### the diagonal sum: S(u) ≤ C(1+u)² -/

/-- Σ_{N ≤ e^u} Λ(N)²/N ≤ u(u + K). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `140e9178fb05091a1f0436370130aea90afdfddf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
