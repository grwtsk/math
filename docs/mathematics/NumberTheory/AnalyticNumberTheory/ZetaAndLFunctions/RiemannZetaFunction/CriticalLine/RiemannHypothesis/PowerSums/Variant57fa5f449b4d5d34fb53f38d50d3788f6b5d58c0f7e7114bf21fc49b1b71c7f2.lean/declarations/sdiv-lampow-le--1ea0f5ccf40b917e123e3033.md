# Sdiv_lamPow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9bf05b03b9bd492f525ac242ba339d7bae1fb443",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:caf97e1b-9079-3353-433b-f49c8b4ce637",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7dfe90ca-d197-4e22-26ff-41718f85bc7b",
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
  "slug": "sdiv-lampow-le--1ea0f5ccf40b917e123e3033",
  "source": {
    "blob": "9bf05b03b9bd492f525ac242ba339d7bae1fb443",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ea0f5ccf40b917e123e3033d75f46aea9ffb1dbe0554c42e0dc31856b77ff76",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dfe90ca-d197-4e22-26ff-41718f85bc7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–169.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf05b03b9bd492f525ac242ba339d7bae1fb443` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
