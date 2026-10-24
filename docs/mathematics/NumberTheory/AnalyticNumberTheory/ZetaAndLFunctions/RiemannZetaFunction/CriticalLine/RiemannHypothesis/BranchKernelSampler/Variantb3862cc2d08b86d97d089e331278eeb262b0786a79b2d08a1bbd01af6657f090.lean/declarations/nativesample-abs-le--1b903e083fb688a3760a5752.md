# nativeSample_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4803c111-fe3d-7cf4-e969-c43a5ff8ee57",
  "kind": "theorem",
  "lexical_name": "nativeSample_abs_le",
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
  "slug": "nativesample-abs-le--1b903e083fb688a3760a5752",
  "source": {
    "blob": "849a8a25f7474780165270bb88439ed309133a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 164,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b903e083fb688a3760a5752fd1066dfddac8ce82a0b7ec34b589cf4ae64a2e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4803c111-fe3d-7cf4-e969-c43a5ff8ee57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nativeSample_abs_le {A t B0 B1 : ℝ} {F : ℝ → ℝ} (ht : 0 ≤ t)
    (hF : ContDiff ℝ 1 F) (hMom : TwoMomentProfile F) (hB : ProfileSupBounds F B0 B1)
    (hzero : ∀ u : ℝ, 2 * A ≤ u → F u = 0) :
    |nativeSample A F t| ≤ 8 * B0 + 4 * B1 := by
  have hTail : SamplingTailZero F (Real.exp t) (sourceKernelCutoff A) := by
    intro u hu
    have huUpper : sourceUpper A < u := (Nat.lt_floor_add_one (sourceUpper A)).trans hu
    have hu0 : 0 < u := (Real.exp_pos (2 * A)).trans huUpper
    have hlog : 2 * A < Real.log u := (Real.lt_log_iff_exp_lt hu0).2 huUpper
    simp only [logSamplingTerm, Real.log_exp, hzero (t + Real.log u) (by linarith), mul_zero]
  have he : nativeSample A F t = Real.exp (t / 2) *
      leftSampleSum (logSamplingTerm F (Real.exp t)) (sourceKernelCutoff A) := by
    rw [nativeSample, leftSampleSum, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k hk
    have hk1 := (Finset.mem_Icc.mp hk).1
    have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
    have hcoef : Real.exp (t / 2) * Real.exp (-(t + Real.log k) / 2) =
        (Real.sqrt (k : ℝ))⁻¹ := by
      rw [← Real.exp_add]
      convert exp_neg_log_half_eq_inv_sqrt hk0 using 1
      congr 1
      ring
    simp only [logSamplingTerm, Real.log_exp]
    calc
      _ = Real.log (k : ℝ) * (Real.sqrt (k : ℝ))⁻¹ * F (t + Real.log k) := by ring
      _ = _ := by rw [← hcoef]; ring
  rw [he, abs_mul, abs_of_pos (Real.exp_pos _)]
  have h := mul_le_mul_of_nonneg_left
    (two_moment_sampling_bound hF hMom (Real.exp_pos t) hB (sourceKernelCutoff A) hTail)
    (Real.exp_pos (t / 2)).le
  have hc : Real.exp (t / 2) * Real.exp (-Real.log (Real.exp t) / 2) = 1 := by
    rw [Real.log_exp, ← Real.exp_add]
    rw [show t / 2 + -t / 2 = 0 by ring, Real.exp_zero]
  simpa only [← mul_assoc, hc, one_mul] using h

/-- The actual kernel slope satisfies the source sampler allowance without an analytic premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849a8a25f7474780165270bb88439ed309133a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
