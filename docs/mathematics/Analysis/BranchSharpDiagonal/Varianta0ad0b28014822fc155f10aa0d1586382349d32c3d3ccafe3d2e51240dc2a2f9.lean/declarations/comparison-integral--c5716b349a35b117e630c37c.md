# comparison_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd2263de-fdd2-8bee-b1f5-a8df89673394",
  "kind": "theorem",
  "lexical_name": "comparison_integral",
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
  "slug": "comparison-integral--c5716b349a35b117e630c37c",
  "source": {
    "blob": "b0e95b1dc23f1700c8892652db73d1586345d97c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 130,
    "path": "GRWTSK/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5716b349a35b117e630c37c17af80b2e96f715b972ec96711fc074d629e3ee0",
  "verification": {
    "reference": "docs/verification/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd2263de-fdd2-8bee-b1f5-a8df89673394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comparison_integral {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    (∫ x in (0 : ℝ)..Real.exp t, comparison A t x) =
      4 * (t - 2 * Real.log A) - 8 + 8 * A * Real.exp (-t / 2) := by
  have hp : 0 < A ^ 2 := by positivity
  have hcut := cutoff_order hA ht
  have hsmall : (∫ x in (0 : ℝ)..A ^ 2, comparison A t x) =
      A ^ 2 * (4 * (A⁻¹ - Real.exp (-t / 2)) ^ 2) := by
    calc
      _ = ∫ _x in (0 : ℝ)..A ^ 2, 4 * (A⁻¹ - Real.exp (-t / 2)) ^ 2 := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le hp.le] at hx
        exact comparison_below hA hx.2
      _ = _ := by simp only [intervalIntegral.integral_const, sub_zero, smul_eq_mul]
  have hInv : IntervalIntegrable (fun x : ℝ ↦ x⁻¹) volume (A ^ 2) (Real.exp t) := by
    apply ContinuousOn.intervalIntegrable_of_Icc hcut
    exact continuousOn_id.inv₀ (fun x hx ↦ (hp.trans_le hx.1).ne')
  have hSqrtInv : IntervalIntegrable (fun x : ℝ ↦ (Real.sqrt x)⁻¹)
      volume (A ^ 2) (Real.exp t) := by
    apply ContinuousOn.intervalIntegrable_of_Icc hcut
    exact Real.continuous_sqrt.continuousOn.inv₀
      (fun x hx ↦ (Real.sqrt_pos.mpr (hp.trans_le hx.1)).ne')
  have hlarge : (∫ x in A ^ 2..Real.exp t, comparison A t x) =
      4 * (t - 2 * Real.log A) -
        8 * Real.exp (-t / 2) * (2 * (Real.exp (t / 2) - A)) +
          4 * Real.exp (-t / 2) ^ 2 * (Real.exp t - A ^ 2) := by
    calc
      _ = ∫ x in A ^ 2..Real.exp t,
          4 * x⁻¹ - (8 * Real.exp (-t / 2)) * (Real.sqrt x)⁻¹ +
            4 * Real.exp (-t / 2) ^ 2 := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le hcut] at hx
        rw [comparison_above hx.1]
        have hi : (Real.sqrt x)⁻¹ ^ 2 = x⁻¹ := by
          rw [inv_pow, Real.sq_sqrt (hp.trans_le hx.1).le]
        calc
          _ = 4 * ((Real.sqrt x)⁻¹ ^ 2) -
              (8 * Real.exp (-t / 2)) * (Real.sqrt x)⁻¹ +
                4 * Real.exp (-t / 2) ^ 2 := by ring
          _ = _ := by rw [hi]
      _ = _ := by
        rw [intervalIntegral.integral_add
          ((hInv.const_mul 4).sub (hSqrtInv.const_mul (8 * Real.exp (-t / 2))))
          (continuous_const.intervalIntegrable _ _),
          intervalIntegral.integral_sub (hInv.const_mul 4)
            (hSqrtInv.const_mul (8 * Real.exp (-t / 2))),
          intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
          integral_inv_of_pos hp (Real.exp_pos t), inverse_sqrt_integral hA ht,
          intervalIntegral.integral_const]
        rw [Real.log_div (Real.exp_pos t).ne' hp.ne', Real.log_exp, Real.log_pow]
        simp only [Nat.cast_ofNat, smul_eq_mul]
        ring
  have hc : Real.exp (-t / 2) * Real.exp (t / 2) = 1 := by
    rw [← Real.exp_add, show -t / 2 + t / 2 = 0 by ring, Real.exp_zero]
  have hc2 : Real.exp (-t / 2) ^ 2 * Real.exp t = 1 := by
    rw [pow_two, ← Real.exp_add, ← Real.exp_add,
      show -t / 2 + -t / 2 + t = 0 by ring, Real.exp_zero]
  rw [← intervalIntegral.integral_add_adjacent_intervals
    ((comparison_continuous hA t).intervalIntegrable 0 (A ^ 2))
    ((comparison_continuous hA t).intervalIntegrable (A ^ 2) (Real.exp t)), hsmall, hlarge]
  have hAi : A * A⁻¹ = 1 := mul_inv_cancel₀ (by linarith : A ≠ 0)
  have hAi2 := congrArg (fun x : ℝ ↦ x ^ 2) hAi
  have hAi3 := congrArg (fun x : ℝ ↦ x * (A * Real.exp (-t / 2))) hAi
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0e95b1dc23f1700c8892652db73d1586345d97c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
