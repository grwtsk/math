# fullPeanoRaw_fubini

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e817545-693c-379a-3e6d-bea778682324",
  "kind": "theorem",
  "lexical_name": "fullPeanoRaw_fubini",
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
  "slug": "fullpeanoraw-fubini--9d5092cb739506efb2fb272a",
  "source": {
    "blob": "f42b7005cabdca208e10ecad7446edd3c4970519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 215,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant941f3629a2cbe28b9bcd4f878feb452d8119e1aaace6e91b9908c80bc9ccbd27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d5092cb739506efb2fb272ae72647f3849af94e52f46dd015031a392bd7ae1c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant941f3629a2cbe28b9bcd4f878feb452d8119e1aaace6e91b9908c80bc9ccbd27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e817545-693c-379a-3e6d-bea778682324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullPeanoRaw_fubini (A : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..(2 * A), fullPeanoRaw u *
      deriv (deriv (weightedCorrelation A)) u) =
    ∑' n : ℕ, sourceAtom n * (∫ u in (0 : ℝ)..(2 * A),
      max (sourceLog n - u) 0 * deriv (deriv (weightedCorrelation A)) u) := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hcc := hd.continuous_deriv (by norm_num)
  obtain ⟨C, hC⟩ := isCompact_Icc.exists_bound_of_continuousOn
    (s := Icc (0 : ℝ) (2 * A)) hcc.continuousOn
  let B := max C 0
  have hB : 0 ≤ B := le_max_right _ _
  let F : ℕ → ℝ → ℝ := fun n u ↦ sourceAtom n * max (sourceLog n - u) 0 *
    deriv (deriv (weightedCorrelation A)) u
  let b : ℕ → ℝ → ℝ := fun n _ ↦ (sourceAtom n * sourceLog n) * B
  have hb (u : ℝ) (hu : u ∈ Ioc (0 : ℝ) (2 * A)) (n : ℕ) : ‖F n u‖ ≤ b n u := by
    have hb' : ‖deriv (deriv (weightedCorrelation A)) u‖ ≤ B :=
      (hC u ⟨hu.1.le, hu.2⟩).trans (le_max_left _ _)
    dsimp only [F, b]
    rw [norm_mul, norm_mul, Real.norm_eq_abs, abs_of_nonneg (sourceAtom_nonneg n),
      Real.norm_eq_abs, abs_of_nonneg (le_max_right _ _)]
    apply mul_le_mul
      (mul_le_mul_of_nonneg_left (max_le (by linarith [hu.1]) (sourceLog_nonneg n))
        (sourceAtom_nonneg n)) hb' (norm_nonneg _)
      (mul_nonneg (sourceAtom_nonneg n) (sourceLog_nonneg n))
  have hs : Summable (fun n : ℕ ↦ (sourceAtom n * sourceLog n) * B) :=
    sourceAtom_log_summable.mul_right B
  have hsum : HasSum (fun n : ℕ ↦ ∫ u in (0 : ℝ)..(2 * A), F n u)
      (∫ u in (0 : ℝ)..(2 * A), ∑' n : ℕ, F n u) := by
    apply intervalIntegral.hasSum_integral_of_dominated_convergence b
    · intro n
      exact (show Continuous (F n) by dsimp only [F]; fun_prop).aestronglyMeasurable
    · intro n
      filter_upwards with u hu
      rw [uIoc_of_le (by linarith : 0 ≤ 2 * A)] at hu
      exact hb u hu n
    · filter_upwards with u _hu
      exact hs
    · change IntervalIntegrable
        (fun _u : ℝ ↦ ∑' n : ℕ, (sourceAtom n * sourceLog n) * B) volume 0 (2 * A)
      exact intervalIntegrable_const
    · filter_upwards with u hu
      rw [uIoc_of_le (by linarith : 0 ≤ 2 * A)] at hu
      exact (hs.of_norm_bounded (hb u hu)).hasSum
  calc
    _ = ∫ u in (0 : ℝ)..(2 * A), ∑' n : ℕ, F n u := by
      apply intervalIntegral.integral_congr
      intro u _hu
      dsimp only [F, fullPeanoRaw]
      rw [tsum_mul_right]
    _ = ∑' n : ℕ, ∫ u in (0 : ℝ)..(2 * A), F n u := hsum.tsum_eq.symm
    _ = _ := by simp_rw [F, mul_assoc, intervalIntegral.integral_const_mul]

/-- Complete finite-scale energy; all infinite complementary affine jets are retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant941f3629a2cbe28b9bcd4f878feb452d8119e1aaace6e91b9908c80bc9ccbd27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant941f3629a2cbe28b9bcd4f878feb452d8119e1aaace6e91b9908c80bc9ccbd27.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f42b7005cabdca208e10ecad7446edd3c4970519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
