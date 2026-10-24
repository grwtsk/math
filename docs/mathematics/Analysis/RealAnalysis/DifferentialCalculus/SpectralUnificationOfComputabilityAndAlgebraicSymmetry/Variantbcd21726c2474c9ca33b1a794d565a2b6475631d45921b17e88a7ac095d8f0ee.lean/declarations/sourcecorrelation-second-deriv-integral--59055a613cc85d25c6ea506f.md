# sourceCorrelation_second_deriv_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d9d8435-04d3-946f-69c3-a5d1ec858524",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_second_deriv_integral",
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
  "slug": "sourcecorrelation-second-deriv-integral--59055a613cc85d25c6ea506f",
  "source": {
    "blob": "dcb00583131d9522c9ca15a3331104c4f77dc223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbcd21726c2474c9ca33b1a794d565a2b6475631d45921b17e88a7ac095d8f0ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59055a613cc85d25c6ea506fbedf2bd1c63da20d69473bdd6ed15f4710823325",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbcd21726c2474c9ca33b1a794d565a2b6475631d45921b17e88a7ac095d8f0ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d9d8435-04d3-946f-69c3-a5d1ec858524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_second_deriv_integral (A t : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t =
      -(∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        deriv (normalizedTest explicitSecondDerivative A) (x - t)) := by
  have hd := (reflectedTest_hasCompactSupport A (by linarith)).hasDerivAt_convolution_right
    (ContinuousLinearMap.lsmul ℝ ℝ)
    (normalizedTest_deriv_integrable A hA).locallyIntegrable (reflectedTest_contDiff A hA) t
  rw [sourceCorrelation_deriv_eq_convolution A hA, hd.deriv, reflectedTest_deriv A hA]
  unfold convolution
  rw [← integral_neg]
  apply integral_congr_ae
  filter_upwards with x
  simp [sub_eq_add_neg]

/-- The correlation is globally C² although the test was only required to be C¹. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbcd21726c2474c9ca33b1a794d565a2b6475631d45921b17e88a7ac095d8f0ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbcd21726c2474c9ca33b1a794d565a2b6475631d45921b17e88a7ac095d8f0ee.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcb00583131d9522c9ca15a3331104c4f77dc223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
