# norm_integral_le_of_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c13d81f8-6270-46be-4462-a69076fb6ab3",
  "kind": "theorem",
  "lexical_name": "norm_integral_le_of_norm_le",
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
  "slug": "norm-integral-le-of-norm-le--cd55ee6e4eecf3b7f0df2486",
  "source": {
    "blob": "f0925e524275a3187930041cbdadbf1efd6be99b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 367,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd55ee6e4eecf3b7f0df2486588887c29ca95d9ddc897e6d74f27e00fb737c7d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c13d81f8-6270-46be-4462-a69076fb6ab3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_integral_le_of_norm_le {g : ℝⁿ → ℝ} (hle : ∀ x ∈ Box.Icc I, ‖f x‖ ≤ g x)
    (μ : Measure ℝⁿ) [IsLocallyFiniteMeasure μ] (hg : Integrable I l g μ.toBoxAdditive.toSMul) :
    ‖(integral I l f μ.toBoxAdditive.toSMul : E)‖ ≤ integral I l g μ.toBoxAdditive.toSMul := by
  by_cases hfi : Integrable.{u, v, v} I l f μ.toBoxAdditive.toSMul
  · refine le_of_tendsto_of_tendsto' hfi.hasIntegral.norm hg.hasIntegral fun π => ?_
    refine norm_sum_le_of_le _ fun J _ => ?_
    simp only [BoxAdditiveMap.toSMul_apply, norm_smul, smul_eq_mul, Real.norm_eq_abs,
      μ.toBoxAdditive_apply, abs_of_nonneg measureReal_nonneg]
    gcongr
    exact hle _ <| π.tag_mem_Icc _
  · rw [integral, dite_eq_right hfi, norm_zero]
    exact integral_nonneg (fun x hx => (norm_nonneg _).trans (hle x hx)) μ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0925e524275a3187930041cbdadbf1efd6be99b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
