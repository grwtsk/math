# chebyshev_asymptotic_pnt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c61ae2baadd315460b22c4490f0640c924460c1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2453,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84697cf9-1aa8-b64c-c0e4-7d84781efbbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:150e0ba8-3edf-cc4c-8fc2-eeb1e98e7acf",
  "kind": "theorem",
  "lexical_name": "chebyshev_asymptotic_pnt",
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
  "slug": "chebyshev-asymptotic-pnt--62d97e2f25db6c73a08521fb",
  "source": {
    "blob": "c61ae2baadd315460b22c4490f0640c924460c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2527,
    "line": 2453,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62d97e2f25db6c73a08521fb712b37deef71dc08ff1185a16f84b7f597da040b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:150e0ba8-3edf-cc4c-8fc2-eeb1e98e7acf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2453–2527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshev_asymptotic_pnt
    {q : ℕ} {a : ℕ} (hq : q ≥ 1) (ha : a.Coprime q) (ha' : a < q) :
    (fun x ↦ ∑ p ∈ filter Nat.Prime (Iic ⌊x⌋₊), if p % q = a then log p else 0) ~[atTop]
      fun x ↦ x / q.totient := by
  let ψ_aq : ℝ → ℝ := fun x ↦ ∑ n ∈ Icc 1 ⌊x⌋₊, if n % q = a then Λ n else 0
  have htot_pos : (0 : ℝ) < q.totient := cast_pos.mpr (totient_pos.mpr hq)
  have hψ_equiv : ψ_aq ~[atTop] fun x ↦ x / q.totient := by
    have hW := WeakPNT_AP hq ha ha'
    simp only [cumsum, ← Iio_eq_range] at hW
    have hψ_eq x : ψ_aq x = ∑ n ∈ Iio (⌊x⌋₊ + 1), if n % q = a then Λ n else 0 := by
      simp only [ψ_aq, show Icc 1 ⌊x⌋₊ = (Iio (⌊x⌋₊ + 1)).filter (1 ≤ ·) by
        ext n; simp [mem_Icc, mem_filter]; tauto, sum_filter]
      refine sum_congr rfl fun n _ ↦ ?_
      by_cases hn : 1 ≤ n <;> simp only [hn, ↓reduceIte]
      push Not at hn; interval_cases n; simp
    refine (isEquivalent_iff_tendsto_one ?_).mpr ?_
    · filter_upwards [eventually_ge_atTop 1] with x hx; exact div_ne_zero (by linarith) htot_pos.ne'
    have hlim1 : Tendsto (fun x : ℝ ↦ (∑ n ∈ Iio (⌊x⌋₊ + 1), if n % q = a then Λ n else 0) /
        (⌊x⌋₊ + 1 : ℝ)) atTop (nhds (1 / q.totient)) := by
      have heq : (fun x : ℝ ↦ (∑ n ∈ Iio (⌊x⌋₊ + 1), if n % q = a then Λ n else 0) /
          (⌊x⌋₊ + 1 : ℝ)) = (fun N ↦ (∑ n ∈ Iio N, if n % q = a then Λ n else 0) / N) ∘
          (fun x : ℝ ↦ ⌊x⌋₊ + 1) := by ext x; simp [Function.comp_apply]
      exact heq ▸ hW.comp ((tendsto_add_atTop_nat 1).comp tendsto_nat_floor_atTop)
    have hgoal_eq : (ψ_aq / fun x ↦ x / (q.totient : ℝ)) =
        fun x ↦ ψ_aq x / x * q.totient := by ext x; simp only [Pi.div_apply, div_div_eq_mul_div]; ring
    rw [hgoal_eq, show (1 : ℝ) = 1 / q.totient * 1 * q.totient by field_simp]
    refine Tendsto.mul ?_ tendsto_const_nhds
    have heq' : (fun x ↦ ψ_aq x / x) =ᶠ[atTop]
        fun x ↦ (∑ n ∈ Iio (⌊x⌋₊ + 1), if n % q = a then Λ n else 0) / (⌊x⌋₊ + 1 : ℝ) * ((⌊x⌋₊ + 1 : ℝ) / x) := by
      filter_upwards [eventually_gt_atTop 0] with x hx
      simp only [hψ_eq]; field_simp
    exact Tendsto.congr' heq'.symm (hlim1.mul tendsto_floor_add_one_div_self)
  refine hψ_equiv.add_isLittleO'' (IsBigO.trans_isLittleO (g := fun x ↦ 2 * x.sqrt * x.log) ?_ ?_)
  · rw [isBigO_iff']; refine ⟨1, one_pos, eventually_atTop.mpr ⟨2, fun x hx ↦ ?_⟩⟩
    simp only [Pi.sub_apply, norm_eq_abs, one_mul]
    have hdiff_nonneg : 0 ≤ ψ_aq x - ∑ p ∈ filter Nat.Prime (Iic ⌊x⌋₊), if p % q = a then log p else 0 := by
      simp only [ψ_aq, sub_nonneg]
      calc (∑ p ∈ filter Nat.Prime (Iic ⌊x⌋₊), if p % q = a then log p else (0 : ℝ))
          ≤ ∑ p ∈ filter Nat.Prime (Iic ⌊x⌋₊), if p % q = a then Λ p else (0 : ℝ) :=
            sum_le_sum fun p hp ↦ by split_ifs <;> simp [vonMangoldt_apply_prime (mem_filter.mp hp).2]
        _ ≤ ∑ n ∈ Icc 1 ⌊x⌋₊, if n % q = a then Λ n else (0 : ℝ) :=
            sum_le_sum_of_subset_of_nonneg
              (fun p hp ↦ by simp only [mem_filter, mem_Iic, mem_Icc] at hp ⊢; exact ⟨hp.2.one_lt.le, hp.1⟩)
              (fun n _ _ ↦ by split_ifs <;> [exact vonMangoldt_nonneg; rfl])
    have hdiff_le : ψ_aq x - (∑ p ∈ filter Nat.Prime (Iic ⌊x⌋₊), if p % q = a then log p else (0 : ℝ)) ≤ ψ x - θ x := by
      simp only [ψ_aq, Chebyshev.psi_eq_sum_Icc, Chebyshev.theta_eq_sum_Icc]
      conv_rhs => rw [Icc_zero_eq_insert, sum_insert (by simp : (0 : ℕ) ∉ Icc 1 ⌊x⌋₊),
        show Λ 0 = 0 by simp only [ArithmeticFunction.map_zero], zero_add,
        show filter Nat.Prime (insert 0 (Icc 1 ⌊x⌋₊)) = filter Nat.Prime (Icc 1 ⌊x⌋₊) by
          simp [filter_insert, Nat.not_prime_zero]]
      rw [filter_prime_Iic_eq_Icc, ← sum_filter_add_sum_filter_not (Icc 1 ⌊x⌋₊) Nat.Prime,
        show (∑ p ∈ filter Nat.Prime (Icc 1 ⌊x⌋₊), if p % q = a then log p else (0 : ℝ)) =
          ∑ p ∈ filter Nat.Prime (Icc 1 ⌊x⌋₊), if p % q = a then Λ p else (0 : ℝ) from
          sum_congr rfl fun p hp ↦ by simp only [mem_filter] at hp; split_ifs <;> simp [vonMangoldt_apply_prime hp.2],
        ← sum_filter_add_sum_filter_not (Icc 1 ⌊x⌋₊) Nat.Prime,
        show (∑ p ∈ filter Nat.Prime (Icc 1 ⌊x⌋₊), Λ p) = ∑ p ∈ filter Nat.Prime (Icc 1 ⌊x⌋₊), log p from
          sum_congr rfl fun p hp ↦ vonMangoldt_apply_prime (mem_filter.mp hp).2]
      have h1 : (∑ n ∈ (Icc 1 ⌊x⌋₊).filter (¬Nat.Prime ·), if n % q = a then Λ n else (0 : ℝ)) ≤
          ∑ n ∈ (Icc 1 ⌊x⌋₊).filter (¬Nat.Prime ·), Λ n :=
        sum_le_sum fun n _ ↦ by split_ifs <;> [exact le_refl _; exact vonMangoldt_nonneg]
      linarith
    rw [abs_of_nonneg hdiff_nonneg, abs_of_nonneg (by bound)]
    exact hdiff_le.trans ((le_abs_self _).trans (Chebyshev.abs_psi_sub_theta_le_sqrt_mul_log (by linarith)))
  · simpa only [mul_assoc] using
      (isLittleO_sqrt_mul_log.const_mul_left 2).trans_isTheta (isTheta_self_div_const htot_pos.ne')

@[blueprint
  (title := "Dirichlet's theorem")
  (statement := /-- Any primitive residue class contains an infinite number of primes. -/)
  (proof := /--
  If this were not the case, then the sum $\sum_{p \leq x: p = a\ (q)} \log p$
  would be bounded in $x$, contradicting Theorem \ref{chebyshev-asymptotic-pnt}.
  -/)
  (proofUses := ["chebyshev-asymptotic-pnt"])
  (latexEnv := "corollary")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean#L2453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61ae2baadd315460b22c4490f0640c924460c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
