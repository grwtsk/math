# pntBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:447030e5-0c96-e5d1-fe3c-e43896f1465d",
  "kind": "theorem",
  "lexical_name": "pntBigO",
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
  "slug": "pntbigo--301ac43ff6fe846479f036ff",
  "source": {
    "blob": "c0704692114bca6c8ed8a8e14715cb316b48f6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:301ac43ff6fe846479f036ff5059d18312125d0217e047926a0660b8af22eb44",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:447030e5-0c96-e5d1-fe3c-e43896f1465d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pntBigO : (θ - id) =O[atTop] fun (x : ℝ) ↦ x / log x ^ 2 := by
  obtain ⟨c, hc⟩ := MediumPNT
  have hl : (ψ - id) =O[atTop] fun (x : ℝ) ↦ x / log x ^ 2 := by
    have h_exp : (fun x : ℝ => exp (-c * (log x) ^ (1 / 10 : ℝ))) =O[atTop]
      (fun x : ℝ => (log x) ^ (-2 : ℝ)) := by
      -- This lemma is autoformalized by Aristotle.
      have h_exp : Tendsto (fun x : ℝ => exp (-c * (log x) ^ (1 / 10 : ℝ)) * (log x) ^ 2)
        atTop (𝓝 0) := by
        suffices h_y : Tendsto (fun y : ℝ => exp (-c * y) * y ^ 20) atTop (nhds 0) by
          have h_subst : Tendsto (fun x : ℝ => exp (-c * (log x) ^ (1 / 10 : ℝ)) *
          ((log x) ^ (1 / 10 : ℝ)) ^ 20) atTop (𝓝 0) :=
          h_y.comp (tendsto_rpow_atTop (by norm_num) |> Tendsto.comp <| tendsto_log_atTop)
          refine h_subst.congr' ?_
          filter_upwards [eventually_gt_atTop 1] with x hx
          rw [← rpow_natCast, ← rpow_mul (log_nonneg hx.le)]
          norm_num
        suffices h_z : Tendsto (fun z : ℝ => exp (-z) * (z / c) ^ 20) atTop (nhds 0) by
          convert h_z.comp (tendsto_id.const_mul_atTop hc.1) using 2
          norm_num [hc.1.ne']
        convert (tendsto_pow_mul_exp_neg_atTop_nhds_zero 20).div_const (c ^ 20) using 2 <;> ring
      rw [isBigO_iff]
      obtain ⟨M, hM⟩ := eventually_atTop.mp (h_exp.eventually (Metric.ball_mem_nhds _ zero_lt_one))
      norm_cast
      norm_num
      refine ⟨1, Max.max M 2, fun x hx => ?_⟩
      rw [← div_eq_mul_inv, le_div_iff₀ (sq_pos_of_pos <| log_pos <| by grind [le_max_right M 2])]
      have := abs_lt.mp (hM x <| le_trans (le_max_left M 2) hx)
      norm_num at *
      nlinarith
    refine hc.2.trans ?_
    convert (isBigO_refl (fun x : ℝ => x) atTop).mul h_exp using 2
    simp [field]
  have : θ - id = (ψ - id) + (θ - ψ) := by ring
  refine this ▸ hl.add (isBigO_iff.2 ⟨432, ?_⟩)
  filter_upwards [Ioi_mem_atTop 1] with x hx
  simp only [Pi.sub_apply, norm_eq_abs, norm_div, norm_pow, sq_abs, mul_div]
  have nonnegx : 0 ≤ x := by grind
  calc
  _ ≤ 2 * √x * log x := by rw [← neg_sub, abs_neg]; exact abs_psi_sub_theta_le_sqrt_mul_log hx.le
  _ ≤ _ := by
    rw [le_div_iff₀ (sq_pos_of_pos (log_pos hx)), mul_assoc, ← pow_succ' _ 2]
    simp only [reduceAdd]
    have : log x ^ 3 ≤ 216 * x ^ (1 / 2 : ℝ) := by
      have := rpow_le_rpow (log_nonneg hx.le) (log_le_rpow_div nonnegx
        (by grind : 0 < 1 / (6 : ℝ))) (by grind : 0 ≤ (3 : ℝ))
      simp only [rpow_ofNat, one_div, div_inv_eq_mul, mul_comm,
        mul_rpow (by grind : 0 ≤ (6 : ℝ)) (rpow_nonneg nonnegx _), ← rpow_mul nonnegx] at this
      norm_num at this
      exact this
    have := mul_le_mul_of_nonneg_left this (mul_nonneg (by simp : 0 ≤ (2 : ℝ)) (by simp : 0 ≤ √x))
    rw [← sqrt_eq_rpow, mul_comm 216 √x, ← mul_assoc, mul_assoc 2 √x √x, mul_self_sqrt nonnegx,
      ← mul_comm 216, ← mul_assoc] at this
    nth_rewrite 3 [← abs_of_nonneg nonnegx] at this
    norm_num at this
    exact this

@[blueprint
  "rs-pnt"
  (title := "A medium version of the prime number theorem")
  (statement := /-- $\vartheta(x) = x + O( x / \log^2 x)$. -/)
  (proof := /-- This in principle follows by establishing an analogue of Theorem \ref{chebyshev-asymptotic}, using mediumPNT in place of weakPNT. -/)
  (latexEnv := "theorem")
  (discussion := 597)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0704692114bca6c8ed8a8e14715cb316b48f6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
