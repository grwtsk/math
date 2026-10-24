# actualCenteredMangoldtRiesz_area_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28a438bc-dd0f-458f-b4b8-baec0704dc8d",
  "kind": "theorem",
  "lexical_name": "actualCenteredMangoldtRiesz_area_bound",
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
  "slug": "actualcenteredmangoldtriesz-area-bound--ea4637e96ec3be6efc83bff8",
  "source": {
    "blob": "9c2e6289aad458251d3d7c497cb084a5e0740027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 347,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variant74663d2392d8c57adcb1e67031545454627397a1dc955feb97c8fd0b5dbd3f4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea4637e96ec3be6efc83bff8f8650ade8da8711803880ce725ddf72f942a11dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variant74663d2392d8c57adcb1e67031545454627397a1dc955feb97c8fd0b5dbd3f4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28a438bc-dd0f-458f-b4b8-baec0704dc8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredMangoldtRiesz_area_bound {A : ℝ} (hA : 91 ≤ A) (b : ℝ) :
    |mertensResidual A - archimedeanMultiplier 0 / 2| ≤
      (5 / A^2) * ∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t| := by
  have hA1 : 1 ≤ A := by linarith
  have hi := (actualCenteredMangoldtRiesz_intervalIntegrable hA1 b).abs.const_mul (5 / A^2)
  have hb := intervalIntegral.norm_integral_le_of_norm_le (by linarith : 0 ≤ 2 * A)
    (f := fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualCenteredMangoldtRieszPrimitive A b t)
    (g := fun t => (5 / A^2) * |actualCenteredMangoldtRieszPrimitive A b t|)
    (Filter.Eventually.of_forall fun t _ => by
      rw [Real.norm_eq_abs, abs_mul]
      exact mul_le_mul_of_nonneg_right
        (RH16FiveCesaro.actualCorrelation_second_abs_le_five hA t) (abs_nonneg _)) hi
  rw [actualCenteredMangoldtRiesz_readout hA1 b, Real.norm_eq_abs,
    intervalIntegral.integral_const_mul] at hb
  exact hb

end FormalResearch.RiemannHypothesis.SourceActualRieszCenteredReconstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variant74663d2392d8c57adcb1e67031545454627397a1dc955feb97c8fd0b5dbd3f4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variant74663d2392d8c57adcb1e67031545454627397a1dc955feb97c8fd0b5dbd3f4d.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c2e6289aad458251d3d7c497cb084a5e0740027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
