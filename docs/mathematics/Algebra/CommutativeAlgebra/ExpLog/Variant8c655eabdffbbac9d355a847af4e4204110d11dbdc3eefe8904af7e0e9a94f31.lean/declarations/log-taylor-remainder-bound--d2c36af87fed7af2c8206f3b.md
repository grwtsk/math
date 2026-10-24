# log_taylor_remainder_bound'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d857735-ecff-0eeb-20fb-7c05e50ace12",
  "kind": "theorem",
  "lexical_name": "log_taylor_remainder_bound'",
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
  "slug": "log-taylor-remainder-bound--d2c36af87fed7af2c8206f3b",
  "source": {
    "blob": "a1e41e733f1a16cd97715254de4b056b1744911a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 351,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2c36af87fed7af2c8206f3baf43000558b4199dd93687f09d7a3096f6c80eb4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d857735-ecff-0eeb-20fb-7c05e50ace12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_taylor_remainder_bound' (J : IntervalRat) (c : ℚ) (n : ℕ) (z : ℝ)
    (hpos : J.lo > 0) (hc_lo : (J.lo : ℝ) ≤ c) (hc_hi : (c : ℝ) ≤ J.hi)
    (hz : z ∈ J) :
    |Real.log z - Real.log c -
      Polynomial.aeval (z - (c : ℝ)) (logTaylorPolyAtCenter c n)| ≤
    (logLagrangeRemainder J c n : ℝ) := by
  set a : ℝ := (J.lo : ℝ) with ha_def
  set b : ℝ := (J.hi : ℝ) with hb_def
  have hab : a ≤ b := by simp only [ha_def, hb_def]; exact_mod_cast J.le
  have ha_pos : 0 < a := by simp only [ha_def]; exact_mod_cast hpos
  have hc_pos : 0 < (c : ℝ) := lt_of_lt_of_le ha_pos hc_lo
  have hz_mem : z ∈ Set.Icc a b := by
    simp only [Set.mem_Icc, IntervalRat.mem_def, ha_def, hb_def] at hz ⊢
    exact ⟨hz.1, hz.2⟩

  have hU_open : IsOpen (Set.Ioi (0 : ℝ)) := isOpen_Ioi
  have hI_sub : Set.Icc a b ⊆ Set.Ioi 0 := by
    intro y hy
    simp only [Set.mem_Ioi]
    exact lt_of_lt_of_le ha_pos hy.1

  have hlog_smooth : ContDiffOn ℝ (n + 1) Real.log (Set.Ioi 0) := by
    apply (Real.contDiffOn_log.of_le le_top).mono
    intro y hy
    simp only [Set.mem_Ioi, Set.mem_compl_iff, Set.mem_singleton_iff] at hy ⊢
    exact ne_of_gt hy

  set M : ℝ := n.factorial / a^(n+1) with hM_def
  have hM_nonneg : 0 ≤ M := by
    apply div_nonneg
    · exact Nat.cast_nonneg _
    · exact pow_nonneg (le_of_lt ha_pos) _

  have hM_bound : ∀ y ∈ Set.Icc a b, ‖iteratedDeriv (n + 1) Real.log y‖ ≤ M := by
    intro y hy
    have hy_pos : 0 < y := lt_of_lt_of_le ha_pos hy.1
    rw [LeanCert.Core.iteratedDeriv_log (Nat.succ_ne_zero n) hy_pos]
    have hn_sub : (n + 1 : ℕ) - 1 = n := Nat.succ_sub_one n
    simp only [Real.norm_eq_abs, hn_sub, zpow_neg, zpow_natCast]
    rw [abs_mul, abs_mul]
    have h_neg_one : |(-1 : ℝ)^n| = 1 := by
      rw [abs_pow]
      simp only [abs_neg, abs_one, one_pow]
    rw [h_neg_one, one_mul]
    have h_fact : |(n.factorial : ℝ)| = n.factorial := abs_of_nonneg (Nat.cast_nonneg _)
    rw [h_fact]
    simp only [abs_inv, abs_pow, abs_of_pos hy_pos]
    rw [← div_eq_mul_inv]
    apply div_le_div_of_nonneg_left (Nat.cast_nonneg _)
    · exact pow_pos ha_pos _
    · exact pow_le_pow_left₀ (le_of_lt ha_pos) hy.1 _

  have hTaylor := LeanCert.Core.taylor_remainder_bound_on hU_open hI_sub hc_lo hc_hi
    hlog_smooth hM_bound hM_nonneg z hz_mem

  have hcoeffs_match : ∀ i ∈ Finset.range (n + 1), i ≠ 0 →
      (logTaylorCoeffs c n i : ℝ) = iteratedDeriv i Real.log c / i.factorial := by
    intro i hi hi_ne
    have hi_pos : 0 < i := Nat.pos_of_ne_zero hi_ne
    have hi_le : i ≤ n := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
    simp only [logTaylorCoeffs, hi_ne, ite_false, hi_le, ite_true]
    rw [LeanCert.Core.iteratedDeriv_log hi_ne hc_pos]
    have _hsub : i - 1 + 1 = i := Nat.sub_add_cancel hi_pos
    have hfact : (i.factorial : ℝ) = i * (i - 1).factorial := by
      have h := Nat.mul_factorial_pred hi_ne
      simp only [← h, Nat.cast_mul]
    simp only [zpow_neg, zpow_natCast]
    rw [hfact]
    have hc_ne : (c : ℝ) ≠ 0 := ne_of_gt hc_pos
    have hci_ne : (c : ℝ)^i ≠ 0 := pow_ne_zero i hc_ne
    have hi_ne' : (i : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr hi_ne
    have hfact_ne : ((i - 1).factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero _)
    field_simp
    push_cast
    rw [div_eq_mul_inv, mul_assoc, mul_assoc ((-1) ^ _), ← mul_one (_ ^ (_ - 1))]
    congr 1
    . grind only
    . grind only
  have hsum_eq : ∑ i ∈ Finset.range (n + 1), (iteratedDeriv i Real.log c / i.factorial) * (z - c)^i
      = Real.log c + Polynomial.aeval (z - (c : ℝ)) (logTaylorPolyAtCenter c n) := by
    rw [Finset.sum_eq_add_sum_diff_singleton_of_mem (Finset.mem_range.mpr (Nat.zero_lt_succ n))]
    simp only [pow_zero, mul_one, iteratedDeriv_zero, Nat.factorial_zero, Nat.cast_one, div_one]
    congr 1
    rw [logTaylorPolyAtCenter]
    rw [map_sum]
    simp only [Polynomial.aeval_mul, Polynomial.aeval_C, Polynomial.aeval_X_pow]
    have h0_zero : (algebraMap ℚ ℝ) (logTaylorCoeffs c n 0) * (z - c)^0 = 0 := by
      simp only [logTaylorCoeffs, ite_true, map_zero, zero_mul]
    rw [Finset.sum_eq_add_sum_diff_singleton_of_mem (Finset.mem_range.mpr (Nat.zero_lt_succ n))]
    rw [h0_zero, zero_add]
    apply Finset.sum_congr rfl
    intro i hi
    have hi_mem : i ∈ Finset.range (n + 1) := (Finset.mem_sdiff.mp hi).1
    have hi_ne : i ≠ 0 := Finset.notMem_singleton.mp (Finset.mem_sdiff.mp hi).2
    simp only [eq_ratCast]
    rw [← hcoeffs_match i hi_mem hi_ne]

  have hTaylor' : ‖Real.log z - ∑ i ∈ Finset.range (n + 1),
        iteratedDeriv i Real.log c / i.factorial * (z - c)^i‖
      ≤ M * |z - c|^(n + 1) / (n + 1).factorial := hTaylor
  rw [hsum_eq] at hTaylor'
  have h_goal_eq : |Real.log z - Real.log c - Polynomial.aeval (z - (c : ℝ)) (logTaylorPolyAtCenter c n)|
      = ‖Real.log z - (Real.log c + Polynomial.aeval (z - (c : ℝ)) (logTaylorPolyAtCenter c n))‖ := by
    rw [Real.norm_eq_abs]; ring_nf
  rw [h_goal_eq]

  have hbound : M * |z - c|^(n+1) / (n+1).factorial ≤ (logLagrangeRemainder J c n : ℝ) := by
    unfold logLagrangeRemainder
    have hpos' : ¬(J.lo ≤ 0) := not_le.mpr hpos
    simp only [hpos', ite_false]
    have hfact_eq : M / (n+1).factorial = 1 / ((n+1) * a^(n+1)) := by
      rw [hM_def, Nat.factorial_succ]
      have ha_pow_ne : a^(n+1) ≠ 0 := pow_ne_zero _ (ne_of_gt ha_pos)
      have hn1_ne : (n + 1 : ℝ) ≠ 0 := by positivity
      have hfact_ne : (n.factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
      field_simp
      grind only
    have hstep : M * |z - c|^(n+1) / (n+1).factorial = |z - c|^(n+1) / ((n+1) * a^(n+1)) := by
      have h1 : M * |z - c|^(n+1) / (n+1).factorial = M / (n+1).factorial * |z - c|^(n+1) := by ring
      rw [h1, hfact_eq, one_div, inv_mul_eq_div]
    calc M * |z - c|^(n+1) / (n+1).factorial
        = |z - c|^(n+1) / ((n+1) * a^(n+1)) := hstep
      _ ≤ _ := ?_
    have hz_c_bound : |z - c| ≤ max (|a - c|) (|b - c|) := by
      have hzc : z - c ∈ Set.Icc (a - c) (b - c) := by
        simp only [Set.mem_Icc]
        constructor <;> linarith [hz_mem.1, hz_mem.2]
      exact abs_le_max_abs_abs (Set.mem_Icc.mp hzc).1 (Set.mem_Icc.mp hzc).2
    have ha_eq : a = (J.lo : ℝ) := ha_def
    have hb_eq : b = (J.hi : ℝ) := hb_def
    simp only [Rat.cast_div, Rat.cast_pow, Rat.cast_mul, Rat.cast_natCast, Rat.cast_max,
      Rat.cast_abs, Rat.cast_sub, Rat.cast_add, Rat.cast_one, ha_eq]
    have hJlo_pos : (0 : ℝ) < J.lo := by exact_mod_cast hpos
    have hn1_pos : (0 : ℝ) < n + 1 := by positivity
    have hdenom_pos : 0 < (n + 1 : ℝ) * (J.lo : ℝ)^(n+1) := by
      apply mul_pos hn1_pos
      exact pow_pos hJlo_pos _
    apply div_le_div_of_nonneg_right _ (le_of_lt hdenom_pos)
    apply pow_le_pow_left₀ (abs_nonneg _)
    calc |z - ↑c| ≤ max (|a - c|) (|b - c|) := hz_c_bound
      _ = max (|(J.lo : ℝ) - c|) (|(J.hi : ℝ) - c|) := by rw [ha_eq, hb_eq]

  exact le_trans hTaylor' hbound

/-- log z ∈ (tmLog J n).evalSet z for all z in J when J.lo > 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1e41e733f1a16cd97715254de4b056b1744911a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
