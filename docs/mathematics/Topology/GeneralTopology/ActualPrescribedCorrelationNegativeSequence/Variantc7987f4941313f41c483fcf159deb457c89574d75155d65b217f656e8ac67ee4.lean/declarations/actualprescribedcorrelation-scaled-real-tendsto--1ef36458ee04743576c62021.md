# actualPrescribedCorrelation_scaled_real_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b5e9331-8c2b-e799-af8e-e5e221a4041d",
  "kind": "theorem",
  "lexical_name": "actualPrescribedCorrelation_scaled_real_tendsto",
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
  "slug": "actualprescribedcorrelation-scaled-real-tendsto--1ef36458ee04743576c62021",
  "source": {
    "blob": "8015b0e54468b13ff6f484e3683f957667932ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variantc7987f4941313f41c483fcf159deb457c89574d75155d65b217f656e8ac67ee4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ef36458ee04743576c620218d61e6c0604d2ef3868b9ce5594c0d5ebbe7b133",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variantc7987f4941313f41c483fcf159deb457c89574d75155d65b217f656e8ac67ee4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b5e9331-8c2b-e799-af8e-e5e221a4041d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPrescribedCorrelation_scaled_real_tendsto :
    Tendsto (fun n : ℕ =>
      actualPrescribedScaleSequence n ^ 9 * sourceNormalization (actualPrescribedScaleSequence n) *
        Real.exp (-actualPrescribedScaleSequence n) *
        (actualHalfCorrelationTransform (actualPrescribedScaleSequence n)
          actualPrescribedComplexMode).re) atTop (𝓝 (-1179648 : ℝ)) := by
  have hh := Complex.continuous_re.continuousAt.tendsto.comp
    ((actualHalfCorrelationTransform_normalized_tendsto
      actualPrescribedComplexMode_re_pos).comp actualPrescribedScaleSequence_tendsto)
  have hc : 384 / actualPrescribedComplexMode ^ 3 - 96 / actualPrescribedComplexMode ^ 5 =
      actualLeadingComplexCoefficient actualPrescribedComplexMode :=
    (actualLeadingComplexCoefficient_eq actualPrescribedComplexMode_re_pos).symm
  rw [hc, actualLeadingComplexCoefficient_prescribed_square_re] at hh
  apply hh.congr'
  exact Filter.Eventually.of_forall fun n => by
    dsimp [actualCorrelationAsymptoticScale]
    rw [actualPrescribedScaleSequence_phase]
    simp only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, zero_mul, zero_add, sub_zero]

/-- Eventually the unscaled actual transform itself has negative real part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variantc7987f4941313f41c483fcf159deb457c89574d75155d65b217f656e8ac67ee4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variantc7987f4941313f41c483fcf159deb457c89574d75155d65b217f656e8ac67ee4.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8015b0e54468b13ff6f484e3683f957667932ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
