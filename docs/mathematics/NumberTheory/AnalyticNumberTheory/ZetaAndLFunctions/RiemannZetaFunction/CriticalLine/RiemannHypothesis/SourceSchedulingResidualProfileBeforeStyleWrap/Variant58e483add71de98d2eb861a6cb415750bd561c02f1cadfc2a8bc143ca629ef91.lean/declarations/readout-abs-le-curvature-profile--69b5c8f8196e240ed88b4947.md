# readout_abs_le_curvature_profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3387ae47-037d-b25a-dbd5-5992164a8d3e",
  "kind": "theorem",
  "lexical_name": "readout_abs_le_curvature_profile",
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
  "slug": "readout-abs-le-curvature-profile--69b5c8f8196e240ed88b4947",
  "source": {
    "blob": "8461e7cc4d8e732cbf1ea260ed3e19c02cdd43ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingResidualProfileBeforeStyleWrap/Variant58e483add71de98d2eb861a6cb415750bd561c02f1cadfc2a8bc143ca629ef91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69b5c8f8196e240ed88b494740d2fb921ae3f9d912ed6adc67d437653bb21f4f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingResidualProfileBeforeStyleWrap/Variant58e483add71de98d2eb861a6cb415750bd561c02f1cadfc2a8bc143ca629ef91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3387ae47-037d-b25a-dbd5-5992164a8d3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readout_abs_le_curvature_profile (c b d : ι → ℝ)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 2 f) (T L : ℝ) (hT0 : 0 ≤ T)
    (hc : ∀ i, 0 ≤ c i ∧ c i ≤ T) (hT : f T = 0) (hT' : deriv f T = 0)
    (hcurv : ∀ t ∈ Icc 0 T, |deriv (deriv f) t| ≤ L) :
    |readout c b d f (deriv f)| ≤ L * ∫ t in 0..T, |residualProfile c b d t| := by
  rw [← residualProfile_integral_eq_readout c b d f hf T hc hT hT']
  have hg : IntervalIntegrable (fun t => L * |residualProfile c b d t|) volume 0 T := by
    simpa only [Real.norm_eq_abs] using (residualProfile_intervalIntegrable c b d T).norm.const_mul L
  have hbound := intervalIntegral.norm_integral_le_of_norm_le
    (f := fun t => deriv (deriv f) t * residualProfile c b d t) hT0
    (Filter.Eventually.of_forall (fun t ht => ?_)) hg
  · rw [intervalIntegral.integral_const_mul] at hbound
    simpa only [Real.norm_eq_abs] using hbound
  · simp only [Real.norm_eq_abs, abs_mul]
    exact mul_le_mul_of_nonneg_right (hcurv t ⟨ht.1.le, ht.2⟩) (abs_nonneg _)

end FormalResearch.RiemannHypothesis.SourceSchedulingResidualProfile
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingResidualProfileBeforeStyleWrap/Variant58e483add71de98d2eb861a6cb415750bd561c02f1cadfc2a8bc143ca629ef91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingResidualProfileBeforeStyleWrap/Variant58e483add71de98d2eb861a6cb415750bd561c02f1cadfc2a8bc143ca629ef91.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8461e7cc4d8e732cbf1ea260ed3e19c02cdd43ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
