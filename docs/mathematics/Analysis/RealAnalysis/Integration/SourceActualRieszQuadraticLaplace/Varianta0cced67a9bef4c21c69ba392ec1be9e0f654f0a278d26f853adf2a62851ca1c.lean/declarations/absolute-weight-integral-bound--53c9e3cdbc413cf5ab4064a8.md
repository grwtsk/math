# absolute_weight_integral_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc8171d1-787e-24ff-db63-7f489ed03301",
  "kind": "theorem",
  "lexical_name": "absolute_weight_integral_bound",
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
  "slug": "absolute-weight-integral-bound--53c9e3cdbc413cf5ab4064a8",
  "source": {
    "blob": "1ea6aa9a7f976a7cb4abc908264f02f4909c608c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 228,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53c9e3cdbc413cf5ab4064a85b77f08a1862c9b72cab8793ffc898a2c49e0ed9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc8171d1-787e-24ff-db63-7f489ed03301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem absolute_weight_integral_bound {M R σ : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R) (hσ : 0 < σ)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2) :
    (∫ t in Ioi 0, ‖profile t * Real.exp (-σ * t)‖) ≤
      actualRieszQuadraticLaplaceBudget M R σ := by
  have heq : (∫ t in Ioi 0, ‖profile t * Real.exp (-σ * t)‖) =
      σ * ∫ t in Ioi 0, actualRieszAbsoluteCumulative t * Real.exp (-σ * t) :=
    tendsto_nhds_unique
      (intervalIntegral_tendsto_integral_Ioi 0
        (profile_real_weight_integrable hM hR hσ harea).norm tendsto_id)
      (weighted_norm_finite_tendsto hM hR hσ harea)
  rw [heq]
  have hh : (∫ t in Ioi 0, actualRieszAbsoluteCumulative t * Real.exp (-σ * t)) ≤
      M * (R ^ 2 / σ + 1 / (2 * σ ^ 3)) := by
    apply le_of_tendsto (intervalIntegral_tendsto_integral_Ioi 0
      (cumulative_weight_integrable hM hR hσ harea) tendsto_id)
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with b hb
    simp only [id_eq]
    have he : (∫ t in 0..b, actualRieszAbsoluteCumulative t * Real.exp (-σ * t)) =
        ∫ t in 0..b, ‖actualRieszAbsoluteCumulative t * Real.exp (-σ * t)‖ := by
      apply intervalIntegral.integral_congr
      rw [uIcc_of_le hb]
      intro t ht
      rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (area_nonneg ht.1) (Real.exp_pos _).le)]
    rw [he]
    exact cumulative_weight_norm_bound hM hR hσ harea hb
  calc
    _ ≤ σ * (M * (R ^ 2 / σ + 1 / (2 * σ ^ 3))) :=
      mul_le_mul_of_nonneg_left hh hσ.le
    _ = _ := by unfold actualRieszQuadraticLaplaceBudget; field_simp; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea6aa9a7f976a7cb4abc908264f02f4909c608c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
