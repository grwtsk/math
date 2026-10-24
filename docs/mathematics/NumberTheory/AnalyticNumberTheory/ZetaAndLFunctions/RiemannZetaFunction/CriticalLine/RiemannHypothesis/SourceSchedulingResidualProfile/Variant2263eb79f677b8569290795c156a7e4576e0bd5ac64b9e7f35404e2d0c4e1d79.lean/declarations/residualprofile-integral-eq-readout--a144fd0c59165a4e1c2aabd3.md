# residualProfile_integral_eq_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8793c3d0-16db-a7d9-f1e1-d4b7fb3aae17",
  "kind": "theorem",
  "lexical_name": "residualProfile_integral_eq_readout",
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
  "slug": "residualprofile-integral-eq-readout--a144fd0c59165a4e1c2aabd3",
  "source": {
    "blob": "7ace9bc6526295b5ac837ab1a48cee6b3e79001b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingResidualProfile/Variant2263eb79f677b8569290795c156a7e4576e0bd5ac64b9e7f35404e2d0c4e1d79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a144fd0c59165a4e1c2aabd3fcc568ea88cb847e6ae53f63e3b58b37077828b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingResidualProfile/Variant2263eb79f677b8569290795c156a7e4576e0bd5ac64b9e7f35404e2d0c4e1d79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8793c3d0-16db-a7d9-f1e1-d4b7fb3aae17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residualProfile_integral_eq_readout (c b d : ι → ℝ)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 2 f) (T : ℝ)
    (hc : ∀ i, 0 ≤ c i ∧ c i ≤ T) (hT : f T = 0) (hT' : deriv f T = 0) :
    (∫ t in 0..T, deriv (deriv f) t * residualProfile c b d t) =
      readout c b d f (deriv f) := by
  have hfd : ContDiff ℝ 1 (deriv f) := hf.deriv'
  have hd : Continuous (deriv (deriv f)) := hfd.continuous_deriv_one
  have hi (i : ι) : IntervalIntegrable
      (fun t => if c i ≤ t then deriv (deriv f) t * (b i * (t - c i) - d i) else 0)
      volume 0 T := intervalIntegrable_closed_step 0 T (c i) _
        ((hd.mul (by fun_prop)).intervalIntegrable 0 T)
  have he : (fun t => deriv (deriv f) t * residualProfile c b d t) =
      fun t => ∑ i, if c i ≤ t then
        deriv (deriv f) t * (b i * (t - c i) - d i) else 0 := by
    funext t
    unfold residualProfile
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    by_cases ht : c i ≤ t <;> simp [ht]
  rw [he, intervalIntegral.integral_finsetSum]
  · unfold readout
    apply Finset.sum_congr rfl
    intro i _
    rw [integral_closed_step 0 T (c i) (hc i).1 (hc i).2]
    have hfun : (fun t => deriv (deriv f) t * (b i * (t - c i) - d i)) =
        fun t => b i * ((t - c i) * deriv (deriv f) t) - d i * deriv (deriv f) t := by
      funext t
      ring
    have ht : IntervalIntegrable (fun t => (t - c i) * deriv (deriv f) t)
        volume (c i) T :=
      ((by fun_prop : Continuous (fun t : ℝ => t - c i)).mul hd).intervalIntegrable (c i) T
    rw [hfun,
      intervalIntegral.integral_sub (ht.const_mul _) ((hd.intervalIntegrable _ _).const_mul _),
      intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
      second_endpoint_integral f hf (c i) T hT hT',
      intervalIntegral.integral_deriv_eq_sub
        (fun t _ => hfd.differentiable (by norm_num) t)
        (hfd.continuous_deriv_one.intervalIntegrable (c i) T), hT']
    ring
  · intro i _
    exact hi i

/-- The complete absolute profile is priced, including all signed derivative loads. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingResidualProfile/Variant2263eb79f677b8569290795c156a7e4576e0bd5ac64b9e7f35404e2d0c4e1d79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingResidualProfile/Variant2263eb79f677b8569290795c156a7e4576e0bd5ac64b9e7f35404e2d0c4e1d79.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ace9bc6526295b5ac837ab1a48cee6b3e79001b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
