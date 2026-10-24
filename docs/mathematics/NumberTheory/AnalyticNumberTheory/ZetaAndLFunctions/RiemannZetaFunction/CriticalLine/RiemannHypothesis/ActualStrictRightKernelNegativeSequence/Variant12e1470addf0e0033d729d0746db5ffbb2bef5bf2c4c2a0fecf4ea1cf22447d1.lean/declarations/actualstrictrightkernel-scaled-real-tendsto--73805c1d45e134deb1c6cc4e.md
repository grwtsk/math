# actualStrictRightKernel_scaled_real_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d1eecd6-2a3f-5d69-6c98-d3a5c6d475a1",
  "kind": "theorem",
  "lexical_name": "actualStrictRightKernel_scaled_real_tendsto",
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
  "slug": "actualstrictrightkernel-scaled-real-tendsto--73805c1d45e134deb1c6cc4e",
  "source": {
    "blob": "37aa8190dba5e253fafd5d297a9e8e9c9d3a9279",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualStrictRightKernelNegativeSequence/Variant12e1470addf0e0033d729d0746db5ffbb2bef5bf2c4c2a0fecf4ea1cf22447d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73805c1d45e134deb1c6cc4e139f8c53ffb16b220b99991eb33e022a7e8f429c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualStrictRightKernelNegativeSequence/Variant12e1470addf0e0033d729d0746db5ffbb2bef5bf2c4c2a0fecf4ea1cf22447d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d1eecd6-2a3f-5d69-6c98-d3a5c6d475a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualStrictRightKernel_scaled_real_tendsto :
    Tendsto (fun n : ℕ =>
      actualPrescribedScaleSequence n ^ 9 * sourceNormalization (actualPrescribedScaleSequence n) *
        Real.exp (-2 * actualPrescribedScaleSequence n) *
        (actualBilateralCorrelationTransform (actualPrescribedScaleSequence n)
          actualStrictRightMode).re) atTop (𝓝 (-4608 : ℝ)) := by
  have hh := Complex.continuous_re.continuousAt.tendsto.comp
    ((actualBilateralCorrelationTransform_normalized_tendsto
      actualStrictRightMode_re_pos).comp actualPrescribedScaleSequence_tendsto)
  have hc : 384 / actualStrictRightMode ^ 3 - 96 / actualStrictRightMode ^ 5 =
      actualLeadingComplexCoefficient actualStrictRightMode :=
    (actualLeadingComplexCoefficient_eq actualStrictRightMode_re_pos).symm
  rw [hc, actualStrictRightCoefficient_square_re] at hh
  apply hh.congr'
  exact Filter.Eventually.of_forall fun n => by
    dsimp [actualCorrelationAsymptoticScale]
    rw [actualStrictRightSequence_phase]
    simp only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, zero_mul, zero_add, sub_zero]

/-- The literal bilateral kernel is eventually negative on this strict initial line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualStrictRightKernelNegativeSequence/Variant12e1470addf0e0033d729d0746db5ffbb2bef5bf2c4c2a0fecf4ea1cf22447d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualStrictRightKernelNegativeSequence/Variant12e1470addf0e0033d729d0746db5ffbb2bef5bf2c4c2a0fecf4ea1cf22447d1.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37aa8190dba5e253fafd5d297a9e8e9c9d3a9279` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
