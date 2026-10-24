# actualCenteredMangoldtRiesz_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0edd9576-e8c9-77af-76a5-39bb5b969c02",
  "kind": "theorem",
  "lexical_name": "actualCenteredMangoldtRiesz_readout",
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
  "slug": "actualcenteredmangoldtriesz-readout--e2aca45a184435a3e8866d20",
  "source": {
    "blob": "deb7d25c124080cc4afd76afd598fc4c3002f251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 310,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstruction/Variantc680650e27b002cfb474f92ccd24f23e30fc45bc1fa67e8bfa658a61a45bc22b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2aca45a184435a3e8866d20f27c154af84db3fc5a1e76e42bd8e57400a62590",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstruction/Variantc680650e27b002cfb474f92ccd24f23e30fc45bc1fa67e8bfa658a61a45bc22b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0edd9576-e8c9-77af-76a5-39bb5b969c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredMangoldtRiesz_readout {A : ℝ} (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualCenteredMangoldtRieszPrimitive A b t) =
        mertensResidual A - archimedeanMultiplier 0 / 2 := by
  have hp : 0 < A := by linarith
  let C'' := deriv (deriv (sourceCorrelation explicitSecondDerivative A))
  have hc : Continuous C'' := (sourceCorrelation_deriv_contDiff hp).continuous_deriv_one
  have hH := actualMangoldtRiesz_pairing_intervalIntegrable hp
  have he : (fun t => C'' t * actualCenteredMangoldtRieszPrimitive A b t) =
      (fun t => C'' t * actualMangoldtRieszPrimitive t -
        actualRieszLinearCenter A * (t * C'' t) - b * C'' t) := by
    funext t
    unfold actualCenteredMangoldtRieszPrimitive
    ring
  rw [he, intervalIntegral.integral_sub
    (f := fun t => C'' t * actualMangoldtRieszPrimitive t -
      actualRieszLinearCenter A * (t * C'' t)) (g := fun t => b * C'' t)
    (hH.sub (((continuous_id.mul hc).const_mul _).intervalIntegrable 0 (2 * A)))
    ((hc.const_mul _).intervalIntegrable 0 (2 * A)),
    intervalIntegral.integral_sub (f := fun t => C'' t * actualMangoldtRieszPrimitive t)
    (g := fun t => actualRieszLinearCenter A * (t * C'' t)) hH
    (((continuous_id.mul hc).const_mul _).intervalIntegrable 0 (2 * A)),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]
  have hm := actualCorrelation_Riesz_curvature_moments hA
  rw [show (∫ t in 0..2 * A, t * C'' t) = 1 from hm.2,
    show (∫ t in 0..2 * A, C'' t) = 0 from hm.1, mul_one, mul_zero, sub_zero]
  have hr := actualMangoldtRiesz_reconstruction hA
  rw [actualRiesz_continuousMoment_eq_neg_magnitude hA] at hr
  unfold actualRieszLinearCenter
  linarith

/-- The actual five-curvature budget contracts the literal finite absolute centered area. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstruction/Variantc680650e27b002cfb474f92ccd24f23e30fc45bc1fa67e8bfa658a61a45bc22b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstruction/Variantc680650e27b002cfb474f92ccd24f23e30fc45bc1fa67e8bfa658a61a45bc22b.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deb7d25c124080cc4afd76afd598fc4c3002f251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
