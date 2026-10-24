# integral_inv_smul_sub_mul_tendsto_integral_lineDeriv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a23a13c4-4663-4c12-45de-e28aaae72b13",
  "kind": "theorem",
  "lexical_name": "integral_inv_smul_sub_mul_tendsto_integral_lineDeriv_mul",
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
  "slug": "integral-inv-smul-sub-mul-tendsto-integral-linederiv-mul--d7b78b16d76e26a25061213c",
  "source": {
    "blob": "eefc47f46ea17a2ed77b12d9df7e92450bdf9de2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 113,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7b78b16d76e26a25061213c2c84293a95a7dce240071736fdd4b55edf4d6447",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a23a13c4-4663-4c12-45de-e28aaae72b13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_inv_smul_sub_mul_tendsto_integral_lineDeriv_mul
    (hf : LipschitzWith C f) (hg : Integrable g μ) (v : E) :
    Tendsto (fun (t : ℝ) ↦ ∫ x, (t⁻¹ • (f (x + t • v) - f x)) * g x ∂μ) (𝓝[>] 0)
      (𝓝 (∫ x, lineDeriv ℝ f x v * g x ∂μ)) := by
  apply tendsto_integral_filter_of_dominated_convergence (fun x ↦ (C * ‖v‖) * ‖g x‖)
  · filter_upwards with t
    apply AEStronglyMeasurable.mul ?_ hg.aestronglyMeasurable
    apply aestronglyMeasurable_const.fun_smul
    apply AEStronglyMeasurable.sub _ hf.continuous.measurable.aestronglyMeasurable
    apply AEMeasurable.aestronglyMeasurable
    exact hf.continuous.measurable.comp_aemeasurable' (aemeasurable_id'.add_const _)
  · filter_upwards [self_mem_nhdsWithin] with t (ht : 0 < t)
    filter_upwards with x
    calc ‖t⁻¹ • (f (x + t • v) - f x) * g x‖
      = (t⁻¹ * ‖f (x + t • v) - f x‖) * ‖g x‖ := by simp [norm_mul, ht.le]
    _ ≤ (t⁻¹ * (C * ‖(x + t • v) - x‖)) * ‖g x‖ := by
      gcongr; exact LipschitzWith.norm_sub_le hf (x + t • v) x
    _ = (C * ‖v‖) * ‖g x‖ := by simp [field, norm_smul, abs_of_nonneg ht.le]
  · exact hg.norm.const_mul _
  · filter_upwards [hf.ae_lineDifferentiableAt v] with x hx
    exact hx.hasLineDerivAt.tendsto_slope_zero_right.mul tendsto_const_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eefc47f46ea17a2ed77b12d9df7e92450bdf9de2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
