# actualPrescribedCorrelation_scaled_real_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:025e6ddf-9717-69a5-baeb-b8547f3c791e",
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
  "slug": "actualprescribedcorrelation-scaled-real-tendsto--d668c136624c7b34ed1752a8",
  "source": {
    "blob": "aef77582935cc57a85ff0ebcb028d9ff54b9d9cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 52,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variantefc1c59b9ec51e36b40f93a5871427babc0e4aedb0a1d54d61b85fe882c7675a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d668c136624c7b34ed1752a882d008f85e9cde8241e887bc15937edd54c0ec0d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variantefc1c59b9ec51e36b40f93a5871427babc0e4aedb0a1d54d61b85fe882c7675a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:025e6ddf-9717-69a5-baeb-b8547f3c791e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–72.

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
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, sub_zero]

/-- Eventually the unscaled actual transform itself has negative real part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variantefc1c59b9ec51e36b40f93a5871427babc0e4aedb0a1d54d61b85fe882c7675a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variantefc1c59b9ec51e36b40f93a5871427babc0e4aedb0a1d54d61b85fe882c7675a.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aef77582935cc57a85ff0ebcb028d9ff54b9d9cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
