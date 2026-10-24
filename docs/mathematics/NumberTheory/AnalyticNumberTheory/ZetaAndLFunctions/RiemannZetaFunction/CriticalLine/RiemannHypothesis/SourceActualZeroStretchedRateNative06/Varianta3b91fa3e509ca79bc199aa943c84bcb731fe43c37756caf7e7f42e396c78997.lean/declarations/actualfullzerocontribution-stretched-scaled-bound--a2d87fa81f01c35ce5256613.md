# actualFullZeroContribution_stretched_scaled_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:485f9e1f-febd-29d0-b4fd-fd3d97977373",
  "kind": "theorem",
  "lexical_name": "actualFullZeroContribution_stretched_scaled_bound",
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
  "slug": "actualfullzerocontribution-stretched-scaled-bound--a2d87fa81f01c35ce5256613",
  "source": {
    "blob": "042a81f9d99fab612636c0df0d262de7c46903a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 311,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative06/Varianta3b91fa3e509ca79bc199aa943c84bcb731fe43c37756caf7e7f42e396c78997.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2d87fa81f01c35ce52566137b5c21700bb6069e7cbd7103690af2410d3dc843",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative06/Varianta3b91fa3e509ca79bc199aa943c84bcb731fe43c37756caf7e7f42e396c78997.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:485f9e1f-febd-29d0-b4fd-fd3d97977373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullZeroContribution_stretched_scaled_bound :
    ∃ C c R0 : ℝ, 0 ≤ C ∧ 0 < c ∧ 1 ≤ R0 ∧ ∀ A : ℝ, R0 ≤ A →
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualFullZeroContribution A‖ ≤
        C * Real.exp (-c * A ^ (1 / 10 : ℝ)) := by
  obtain ⟨K,d,Rl,hK,hd,hRl,hlo⟩ := actualLowZeroHead_scaled_exponential_bound
  obtain ⟨a,ha,hmi⟩ := actualMiddleZeroHeightHead_gap_bound
  obtain ⟨B,hB,hta⟩ := scaled_tail_uniform_bound
  have hh : Tendsto actualZeroStretchedHeight atTop atTop :=
    Real.tendsto_exp_atTop.comp (tendsto_rpow_atTop (by norm_num : (0 : ℝ) < 1 / 10))
  obtain ⟨Rh,hRh⟩ := tendsto_atTop_atTop.mp hh 4
  let c : ℝ := min d (min (2 * a) 4)
  let Cm : ℝ := actualZeroTailWeightConstant * actualZeroSixTail 4
  have hCm : 0 ≤ Cm := by
    dsimp [Cm,actualZeroTailWeightConstant,actualZeroSixTail]
    exact mul_nonneg (by positivity) (tsum_nonneg (fun rho => by split_ifs <;> positivity))
  have hc : 0 < c := lt_min hd (lt_min (by linarith [ha.1]) (by norm_num))
  have hcd : c ≤ d := min_le_left _ _
  have hca : c ≤ 2 * a := (min_le_right _ _).trans (min_le_left _ _)
  have hc4 : c ≤ 4 := (min_le_right _ _).trans (min_le_right _ _)
  refine ⟨K + Cm + B,c,max Rl Rh,by positivity,hc,hRl.trans (le_max_left _ _),?_⟩
  intro A hA
  have hAl : Rl ≤ A := (le_max_left _ _).trans hA
  have hA1 : 1 ≤ A := hRl.trans hAl
  have hAp : 0 < A := by linarith
  let x : ℝ := A ^ (1 / 10 : ℝ)
  have hx : 0 ≤ x := Real.rpow_nonneg hAp.le _
  have hxA : x ≤ A := Real.rpow_le_self_of_one_le hA1 (by norm_num)
  have hheight : 4 ≤ actualZeroStretchedHeight A := hRh A ((le_max_right _ _).trans hA)
  have helo : Real.exp (-d * A) ≤ Real.exp (-c * x) := by
    apply Real.exp_le_exp.mpr
    have hb : c * x ≤ d * A :=
      (mul_le_mul_of_nonneg_left hxA hc.le).trans
        (mul_le_mul_of_nonneg_right hcd hAp.le)
    linarith
  have hemi : Real.exp (-2 * (a / (Real.log (actualZeroStretchedHeight A)) ^ 9) * A) =
      Real.exp (-(2 * a) * x) := by
    congr 1
    have he := actualZeroStretchedExponent_eq a A hAp
    dsimp [x]
    nlinarith
  have hemib : Real.exp (-(2 * a) * x) ≤ Real.exp (-c * x) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  have heta : B / (actualZeroStretchedHeight A) ^ 4 = B * Real.exp (-4 * x) := by
    unfold actualZeroStretchedHeight
    rw [← Real.exp_nat_mul,div_eq_mul_inv,← Real.exp_neg]
    congr 1
    dsimp [x]
    ring
  have hetab : Real.exp (-4 * x) ≤ Real.exp (-c * x) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  rw [actualFullZeroContribution_eq_head_add_tail A (actualZeroStretchedHeight A) hA1,
    actualZeroHeightHead_eq_low_add_middle A (actualZeroStretchedHeight A) hheight,
    mul_add,mul_add]
  calc
    _ ≤ ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightHead A 4‖ +
        ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
          actualMiddleZeroHeightHead A (actualZeroStretchedHeight A)‖ +
        ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
          actualZeroHeightTail A (actualZeroStretchedHeight A)‖ :=
      (norm_add_le _ _).trans (add_le_add (norm_add_le _ _) (le_refl _))
    _ ≤ K * Real.exp (-d * A) +
        Cm * Real.exp (-(2 * a) * x) + B * Real.exp (-4 * x) := by
      apply add_le_add
      · apply add_le_add (hlo A hAl)
        simpa only [hemi] using hmi A (actualZeroStretchedHeight A) hA1 hheight
      · simpa only [heta] using hta A (actualZeroStretchedHeight A) hA1 hheight
    _ ≤ K * Real.exp (-c * x) + Cm * Real.exp (-c * x) + B * Real.exp (-c * x) := by
      gcongr
    _ = _ := by ring

/-- The unchanged source quadratic value receives this actual-zero budget,
without a sign assumption on any off-axis ordinary complex square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative06/Varianta3b91fa3e509ca79bc199aa943c84bcb731fe43c37756caf7e7f42e396c78997.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroStretchedRateNative06/Varianta3b91fa3e509ca79bc199aa943c84bcb731fe43c37756caf7e7f42e396c78997.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042a81f9d99fab612636c0df0d262de7c46903a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
