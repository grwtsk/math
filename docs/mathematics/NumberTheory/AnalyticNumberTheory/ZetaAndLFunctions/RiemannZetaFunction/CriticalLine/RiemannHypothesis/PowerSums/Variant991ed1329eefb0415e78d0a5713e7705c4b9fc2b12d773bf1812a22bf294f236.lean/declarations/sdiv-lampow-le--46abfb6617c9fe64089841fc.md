# Sdiv_lamPow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f29c44ef-9a4f-2b1a-9e57-8b9ac7551c92",
  "kind": "theorem",
  "lexical_name": "Sdiv_lamPow_le",
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
  "slug": "sdiv-lampow-le--46abfb6617c9fe64089841fc",
  "source": {
    "blob": "56b2ec289c14eb974349c5fde527a64e55247a00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 102,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46abfb6617c9fe64089841fc7f8badcc619f16c1cd0bad56f01567bf8e4c8f2d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f29c44ef-9a4f-2b1a-9e57-8b9ac7551c92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sdiv_lamPow_le : ∀ (m : ℕ) {u : ℝ}, 0 ≤ u →
    Sdiv (Λ ^ m) u ≤ (u + m * KM) ^ m / m.factorial
  | 0, u, hu => by simp [Sdiv_one hu]
  | m + 1, u, hu => by
      set c : ℝ := u + m * KM with hc
      have hcu : 0 ≤ c - u := by rw [hc]; nlinarith [KM_nonneg, (Nat.cast_nonneg m : (0:ℝ) ≤ m)]
      have hc0 : 0 ≤ c := by linarith
      -- the comparison polynomial f(v) = (c − v)^m / m!  and its derivative
      set f : ℝ → ℝ := fun v => (c - v) ^ m / m.factorial with hf
      set f' : ℝ → ℝ := fun v => -(m * (c - v) ^ (m - 1)) / m.factorial with hf'
      have hderiv : ∀ v ∈ Set.Icc 0 u, HasDerivAt f (f' v) v := by
        intro v _
        have h := (((hasDerivAt_id v).const_sub c).fun_pow m).div_const (m.factorial : ℝ)
        exact h.congr_deriv (by simp only [hf', id_eq]; ring)
      have hf'c : ContinuousOn f' (Set.Icc 0 u) := by
        simp only [hf']
        fun_prop
      -- step 1: recursion + induction hypothesis inside the sum
      have hrec : Sdiv (Λ ^ (m + 1)) u ≤ ∑ d ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ d / d * f (Real.log d) := by
        rw [pow_succ', Sdiv_mul]
        refine sum_le_sum fun d hd => ?_
        have hlog : Real.log d ≤ u := log_le_of_mem_Ioc_floor_exp hd
        have hlog0 : 0 ≤ Real.log d := Real.log_natCast_nonneg d
        refine mul_le_mul_of_nonneg_left ?_ (div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg d))
        have ih := Sdiv_lamPow_le m (u := u - Real.log d) (by linarith)
        simp only [hf]
        exact ih.trans_eq (by rw [hc]; ring)
      -- step 2: Mertens step for f
      have hstep := mertens_step hu hderiv hf'c
      have hint_f : ∫ v in (0:ℝ)..u, f v = (c ^ (m + 1) - (c - u) ^ (m + 1)) / ((m + 1) * m.factorial) := by
        simp only [hf]
        rw [intervalIntegral.integral_div, integral_const_sub_pow]
        field_simp
      have hfu : |f u| = (c - u) ^ m / m.factorial := by
        simp only [hf]
        rw [abs_of_nonneg (div_nonneg (pow_nonneg hcu m) (Nat.cast_nonneg _))]
      have hint_f' : ∫ v in (0:ℝ)..u, |f' v| = (c ^ m - (c - u) ^ m) / m.factorial := by
        -- |f'(v)| = m (c−v)^{m−1}/m! on [0,u]  (c − v ≥ 0 there)
        have heq : ∀ v ∈ Set.uIcc 0 u, |f' v| = (m * (c - v) ^ (m - 1)) / m.factorial := by
          intro v hv
          rw [Set.uIcc_of_le hu] at hv
          have hcv : 0 ≤ c - v := by linarith [hv.2]
          simp only [hf', neg_div, abs_neg]
          exact abs_of_nonneg (div_nonneg (mul_nonneg (Nat.cast_nonneg m) (pow_nonneg hcv _)) (Nat.cast_nonneg _))
        rw [intervalIntegral.integral_congr heq]
        rcases Nat.eq_zero_or_pos m with hm | hm
        · subst hm; simp
        · obtain ⟨n, rfl⟩ : ∃ n, m = n + 1 := ⟨m - 1, by omega⟩
          simp only [Nat.add_sub_cancel]
          rw [intervalIntegral.integral_div, intervalIntegral.integral_const_mul, integral_const_sub_pow]
          push_cast
          field_simp
      -- step 3: combine  Σ ≤ ∫f + K(|f u| + ∫|f'|) = (c^{m+1} − (c−u)^{m+1})/(m+1)! + K c^m/m! ≤ (c+K)^{m+1}/(m+1)!
      have hsum_le : ∑ d ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ d / d * f (Real.log d)
          ≤ (∫ v in (0:ℝ)..u, f v) + KM * (|f u| + ∫ v in (0:ℝ)..u, |f' v|) := by
        have := (abs_sub_le_iff.mp (le_of_eq rfl |>.trans hstep)).1
        linarith
      have hfact : ((m + 1).factorial : ℝ) = (m + 1) * m.factorial := by
        rw [Nat.factorial_succ]; push_cast; ring
      have hmf : (0:ℝ) < m.factorial := by exact_mod_cast Nat.factorial_pos m
      calc Sdiv (Λ ^ (m + 1)) u
          ≤ (∫ v in (0:ℝ)..u, f v) + KM * (|f u| + ∫ v in (0:ℝ)..u, |f' v|) := hrec.trans hsum_le
        _ = (c ^ (m + 1) - (c - u) ^ (m + 1)) / ((m + 1) * m.factorial) + KM * (c ^ m / m.factorial) := by
            rw [hint_f, hfu, hint_f']; ring
        _ ≤ c ^ (m + 1) / ((m + 1) * m.factorial) + KM * (c ^ m / m.factorial) := by
            gcongr
            · linarith [pow_nonneg hcu (m + 1)]
        _ = (c ^ (m + 1) + (m + 1) * c ^ m * KM) / ((m + 1) * m.factorial) := by
            field_simp
        _ ≤ (c + KM) ^ (m + 1) / ((m + 1) * m.factorial) := by
            gcongr
            exact pow_add_mul_pow_le hc0 KM_nonneg m
        _ = (u + ↑(m + 1) * KM) ^ (m + 1) / (m + 1).factorial := by
            rw [hfact, hc]; push_cast; ring

/-- monotonicity in u of Sdiv for f ≥ 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant991ed1329eefb0415e78d0a5713e7705c4b9fc2b12d773bf1812a22bf294f236.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56b2ec289c14eb974349c5fde527a64e55247a00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
