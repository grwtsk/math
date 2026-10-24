# actual_archimedean_integrable_of_multiplier_estimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:304a821b-6d6d-120a-0f62-b82db60f942a",
  "kind": "theorem",
  "lexical_name": "actual_archimedean_integrable_of_multiplier_estimate",
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
  "slug": "actual-archimedean-integrable-of-multiplier-estimate--8e44f7540a90a2cb1304d265",
  "source": {
    "blob": "e167558f4c2c3084a659524c651bf9141143cfd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 46,
    "path": "GRWTSK/Analysis/Fourier/DigammaMultiplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e44f7540a90a2cb1304d26548a73cf854d63700ee59ddbb43f54da7c7fcfd1c",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/DigammaMultiplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:304a821b-6d6d-120a-0f62-b82db60f942a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_archimedean_integrable_of_multiplier_estimate
    (hestimate : MultiplierEstimateObligation) (A : ℝ) (hA : 1 ≤ A) :
    Integrable (archimedeanIntegrand explicitSecondDerivative A) volume := by
  have hpos : 0 < A := by linarith
  have hc := BridgeFourier.sourceFourier_continuous (normalizedTest_integrable A hpos)
  have hm : AEStronglyMeasurable (archimedeanIntegrand explicitSecondDerivative A) volume :=
    (archimedeanMultiplier_measurable.mul
      (Complex.continuous_normSq.comp hc).measurable).aestronglyMeasurable
  have hmajor := ((BridgeFourier.actual_fourier_square_integrable A hA).const_mul
    (|archimedeanConstant| + 4)).add
      ((BridgeFourier.actual_logarithmic_fourier_integrable A hA).div_const 2)
  apply hmajor.mono' hm
  filter_upwards [] with ξ
  dsimp only [archimedeanIntegrand]
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (Complex.normSq_nonneg _)]
  calc
    |archimedeanMultiplier ξ| *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) ≤
      (|archimedeanConstant| + 4 + Real.log (1 + 4 * ξ ^ 2) / 2) *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) :=
      mul_le_mul_of_nonneg_right (multiplier_abs_le_of_estimate hestimate ξ)
        (Complex.normSq_nonneg _)
    _ = _ := by simp only [Pi.add_apply]; ring

/-- Proving the actual source multiplier estimate would discharge the remaining B3.1 gate.
The estimate is retained in the theorem type; no inhabitant of it is supplied here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/DigammaMultiplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/DigammaMultiplier.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e167558f4c2c3084a659524c651bf9141143cfd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
