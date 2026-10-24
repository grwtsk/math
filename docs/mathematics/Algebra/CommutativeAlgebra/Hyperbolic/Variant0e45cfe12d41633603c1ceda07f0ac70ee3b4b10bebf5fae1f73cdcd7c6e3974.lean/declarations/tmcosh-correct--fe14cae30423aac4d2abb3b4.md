# tmCosh_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d40a4871-277f-422e-3ff7-117f8d68d8af",
  "kind": "theorem",
  "lexical_name": "tmCosh_correct",
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
  "slug": "tmcosh-correct--fe14cae30423aac4d2abb3b4",
  "source": {
    "blob": "c7aeee2aaf3c61bbb1db59f1c08119012d375839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1146,
    "line": 1056,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe14cae30423aac4d2abb3b42897cfe91a33192c21c7842d1d9807db43c25581",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d40a4871-277f-422e-3ff7-117f8d68d8af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1056–1146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmCosh_correct (J : IntervalRat) (n : ℕ) :
    ∀ z : ℝ, z ∈ J → Real.cosh z ∈ (tmCosh J n).evalSet z := by
  intro z hz
  simp only [tmCosh, evalSet, Set.mem_setOf_eq]
  set r := Real.cosh z - Polynomial.aeval (z - 0) (coshTaylorPoly n) with hr_def
  refine ⟨r, ?_, ?_⟩
  · simp only [IntervalRat.mem_def, Rat.cast_neg]
    have hpoly_eq := coshTaylorPoly_aeval_eq n z
    simp only [sub_zero] at hr_def hpoly_eq
    have hr_rewrite : r = Real.cosh z - ∑ i ∈ Finset.range (n + 1),
        (iteratedDeriv i Real.cosh 0 / i.factorial) * z ^ i := by
      rw [hr_def, hpoly_eq]
    set a := min (J.lo : ℝ) 0 with ha_def
    set b := max (J.hi : ℝ) 0 with hb_def
    have hab : a ≤ b := by simp only [ha_def, hb_def]; exact le_trans (min_le_of_right_le (le_refl 0)) (le_max_right _ _)
    have hca : a ≤ 0 := min_le_right _ _
    have hcb : 0 ≤ b := le_max_right _ _
    have hz_ab : z ∈ Set.Icc a b := by
      simp only [Set.mem_Icc, ha_def, hb_def]
      have hmem := mem_Icc_of_mem_interval hz
      constructor
      · exact le_trans (min_le_left _ _) hmem.1
      · exact le_trans hmem.2 (le_max_left _ _)
    set M := Real.exp (max (|a|) (|b|)) with hM_def
    have hM_pos : 0 ≤ M := le_of_lt (Real.exp_pos _)
    have hM : ∀ x ∈ Set.Icc a b, ‖iteratedDeriv (n + 1) Real.cosh x‖ ≤ M := by
      intro x hx
      exact (LeanCert.Core.sinh_cosh_deriv_bound hab (n + 1) x hx).2
    have hf : ContDiff ℝ (n + 1) Real.cosh := Real.contDiff_cosh.of_le le_top
    have hTaylor := LeanCert.Core.taylor_remainder_bound hab hca hcb hf hM hM_pos z hz_ab
    simp only [sub_zero] at hTaylor
    have hr_bound : ‖r‖ ≤ M * |z| ^ (n + 1) / (n + 1).factorial := by
      rw [hr_rewrite]
      exact hTaylor
    rw [Real.norm_eq_abs] at hr_bound
    have habs_z_le : |z| ≤ max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|) := abs_le_interval_radius hz
    set radius : ℚ := max (|J.lo|) (|J.hi|) with hradius_def
    have hradius_real : (radius : ℝ) = max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|) := by
      simp only [hradius_def, Rat.cast_max, Rat.cast_abs]
    have hab_le_radius : max (|a|) (|b|) ≤ radius := by
      simp only [ha_def, hb_def, hradius_real]
      apply max_le
      · calc |min (J.lo : ℝ) 0| ≤ max |(J.lo : ℝ)| |(0 : ℝ)| := abs_min_le_max_abs_abs
          _ = max |(J.lo : ℝ)| 0 := by simp
          _ ≤ max |(J.lo : ℝ)| |(J.hi : ℝ)| := max_le_max_left _ (abs_nonneg _)
      · calc |max (J.hi : ℝ) 0| ≤ max |(J.hi : ℝ)| |(0 : ℝ)| := abs_max_le_max_abs_abs
          _ = max |(J.hi : ℝ)| 0 := by simp
          _ ≤ max |(J.lo : ℝ)| |(J.hi : ℝ)| := max_le (le_max_right _ _) (le_max_of_le_left (abs_nonneg _))
    have hM_le : M ≤ Real.exp radius := Real.exp_le_exp.mpr hab_le_radius
    have hradius_nn : 0 ≤ (radius : ℝ) := by
      rw [hradius_real]; exact le_max_of_le_left (abs_nonneg _)
    have hpow_le : |z| ^ (n + 1) ≤ (radius : ℝ) ^ (n + 1) := by
      apply pow_le_pow_left₀ (abs_nonneg z)
      rw [hradius_real]; exact habs_z_le
    have hfact_pos : (0 : ℝ) < ((n + 1).factorial : ℝ) := Nat.cast_pos.mpr (Nat.factorial_pos _)
    have hexp_le_three_pow : Real.exp (radius : ℝ) ≤ (3 : ℝ) ^ (Nat.ceil radius + 1) := by
      have he_le_3 : Real.exp 1 ≤ 3 := by have h := Real.exp_one_lt_d9; linarith
      calc Real.exp (radius : ℝ)
          ≤ Real.exp (Nat.ceil radius : ℝ) := Real.exp_le_exp.mpr (by exact_mod_cast Nat.le_ceil radius)
        _ = Real.exp 1 ^ (Nat.ceil radius) := by rw [← Real.exp_nat_mul, mul_one]
        _ ≤ 3 ^ (Nat.ceil radius) := by
            apply pow_le_pow_left₀ (le_of_lt (Real.exp_pos 1))
            exact he_le_3
        _ ≤ 3 ^ (Nat.ceil radius + 1) := pow_le_pow_right₀ (by norm_num : (1 : ℝ) ≤ 3) (Nat.le_succ _)
    have hM_bound : M ≤ (3 : ℝ) ^ (Nat.ceil radius + 1) := le_trans hM_le hexp_le_three_pow
    have hrem_ge : (coshRemainderBound J n : ℝ) ≥ M * |z| ^ (n + 1) / (n + 1).factorial := by
      have h1 : M * |z| ^ (n + 1) ≤ (3 : ℝ) ^ (Nat.ceil radius + 1) * (radius : ℝ) ^ (n + 1) :=
        mul_le_mul hM_bound hpow_le (pow_nonneg (abs_nonneg z) _) (by linarith)
      calc (coshRemainderBound J n : ℝ)
          = (3 : ℝ) ^ (Nat.ceil radius + 1) * (radius : ℝ) ^ (n + 1) / (n + 1).factorial := by
            simp only [coshRemainderBound, hradius_def, Rat.cast_div, Rat.cast_mul, Rat.cast_pow,
              Rat.cast_natCast, Rat.cast_ofNat]
        _ ≥ M * |z| ^ (n + 1) / (n + 1).factorial :=
            div_le_div_of_nonneg_right h1 (le_of_lt hfact_pos)
    have hr_le_rem : |r| ≤ coshRemainderBound J n := le_trans hr_bound hrem_ge
    constructor
    · have := neg_abs_le r; linarith
    · exact le_trans (le_abs_self r) hr_le_rem
  · simp only [hr_def, sub_zero]; ring_nf

/-! ### asinh correctness infrastructure -/

/-- The n-th derivative of arsinh at 0 follows the pattern:
    - For even n: 0
    - For odd n = 2k+1: (2k)! * Ring.choose (-1/2) k

    This matches the coefficients in asinhTaylorCoeffs times n!.

    Note: This is proved using the known series expansion of arsinh,
    which satisfies arsinh(x) = Σ_{k=0}^∞ a_k x^(2k+1) where
    a_k = Ring.choose (-1/2) k / (2k+1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean#L1056).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7aeee2aaf3c61bbb1db59f1c08119012d375839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
