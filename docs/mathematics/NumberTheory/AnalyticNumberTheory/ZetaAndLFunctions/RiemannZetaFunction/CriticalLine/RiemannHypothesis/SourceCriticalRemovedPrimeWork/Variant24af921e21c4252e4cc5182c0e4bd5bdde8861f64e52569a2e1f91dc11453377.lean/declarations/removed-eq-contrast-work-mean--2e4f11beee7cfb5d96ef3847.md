# removed_eq_contrast_work_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9055a8546a95d70489d9010ce9edc0f99178718",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24af921e21c4252e4cc5182c0e4bd5bdde8861f64e52569a2e1f91dc11453377.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31071d15-8331-945b-2ccd-469fe9fa58dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0ab0f6b-3723-2f21-62c9-1b8620c013bf",
  "kind": "theorem",
  "lexical_name": "removed_eq_contrast_work_mean",
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
  "slug": "removed-eq-contrast-work-mean--2e4f11beee7cfb5d96ef3847",
  "source": {
    "blob": "a9055a8546a95d70489d9010ce9edc0f99178718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant24af921e21c4252e4cc5182c0e4bd5bdde8861f64e52569a2e1f91dc11453377.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e4f11beee7cfb5d96ef38473913bf99efcb043c9b5bf2bab0e7a173fa22367f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant24af921e21c4252e4cc5182c0e4bd5bdde8861f64e52569a2e1f91dc11453377.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0ab0f6b-3723-2f21-62c9-1b8620c013bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem removed_eq_contrast_work_mean {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      pairedErrorContrast A-(criticalDecayWork A+criticalDecayNegativeMean A) := by
  have hp : 0 < A := by linarith
  have hip : IntervalIntegrable (fun u => criticalDecay u*positiveSlope A u)
      volume 0 (2*A) :=
    (decay_continuous.mul (positiveSlope_continuous hp)).intervalIntegrable
  have hin : IntervalIntegrable (fun u => criticalDecay u*negativeSlope A u)
      volume 0 (2*A) :=
    (decay_continuous.mul (negativeSlope_continuous hp)).intervalIntegrable
  have hw : criticalDecayWork A =
      (∫ u in 0..2*A, criticalDecay u*positiveSlope A u) -
        (∫ u in 0..2*A, criticalDecay u*negativeSlope A u) := by
    rw [← intervalIntegral.integral_sub hip hin]
    simp_rw [← mul_sub, slope_difference]
    rfl
  unfold criticalRemovedPairedWork
  simp_rw [sub_mul]
  rw [intervalIntegral.integral_sub (positiveSlopeWork_intervalIntegrable hp) hip,
    intervalIntegral.integral_sub (negativeSlopeWork_intervalIntegrable hp) hin,
    pairedErrorContrast_eq hA]
  unfold criticalDecayNegativeMean negativeErrorMean positiveSlopeWork negativeSlopeWork
  rw [hw, negativeMass_eq_positive_add_one hA]
  have hn : positiveMass A+1 ≠ 0 := by
    rw [← negativeMass_eq_positive_add_one hA]
    exact (negativeMass_pos hA).ne'
  field_simp [hn]
  ring

/-- The independently derived main term retains its exact endpoint compensation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant24af921e21c4252e4cc5182c0e4bd5bdde8861f64e52569a2e1f91dc11453377.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant24af921e21c4252e4cc5182c0e4bd5bdde8861f64e52569a2e1f91dc11453377.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9055a8546a95d70489d9010ce9edc0f99178718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
