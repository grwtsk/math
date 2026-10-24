# actualUpperPeriodMeanTrace_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa0892ff-fa89-c1e3-5cb7-778a30d112a7",
  "kind": "theorem",
  "lexical_name": "actualUpperPeriodMeanTrace_tendsto_zero",
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
  "slug": "actualupperperiodmeantrace-tendsto-zero--c361959c35db94d704b0f44a",
  "source": {
    "blob": "2dddda296840e79bc5f3075b450469433d5222da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 241,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant62ae5d704b21134e8b1f3e598c95d5af226ac9addd159293ea17d9540c2db021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c361959c35db94d704b0f44a3f48ff3d365f2a78651bb59557869a66b556e97b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant62ae5d704b21134e8b1f3e598c95d5af226ac9addd159293ea17d9540c2db021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa0892ff-fa89-c1e3-5cb7-778a30d112a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperPeriodMeanTrace_tendsto_zero :
    Tendsto actualUpperPeriodMeanTrace atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  have he : Tendsto (fun A : ℝ =>
      135 * (Real.log 4 + 4 + Real.log 2) * Real.exp (3 / 2) / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [div_eq_mul_inv, mul_zero] using
      (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0 : ℝ))).const_mul
        (135 * (Real.log 4 + 4 + Real.log 2) * Real.exp (3 / 2))
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _ he
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  apply (actualUpperPeriodMeanTrace_abs_le hA).trans
  apply div_le_div_of_nonneg_left (by positivity) (by linarith : 0 < A)
  have hx : 1 ≤ Real.exp A := Real.one_le_exp_iff.mpr (by linarith)
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualUpperPeriodMeanTrace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant62ae5d704b21134e8b1f3e598c95d5af226ac9addd159293ea17d9540c2db021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant62ae5d704b21134e8b1f3e598c95d5af226ac9addd159293ea17d9540c2db021.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dddda296840e79bc5f3075b450469433d5222da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
