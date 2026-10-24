# removed_eq_contrast_work_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bda245a-69e7-8a3b-595b-41bbbcd1f2f8",
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
  "slug": "removed-eq-contrast-work-mean--4d505481d4c649cd51230d35",
  "source": {
    "blob": "1711a4ec951ea6611afb0f20d913ff5f754bffef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant3a1491680490c6a943ae75990d257c883ecb88e134719127be954ed8ed3f132f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d505481d4c649cd51230d356e0d8f8b34b364cc316ac6a6c7fd0d71313821eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant3a1491680490c6a943ae75990d257c883ecb88e134719127be954ed8ed3f132f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bda245a-69e7-8a3b-595b-41bbbcd1f2f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem removed_eq_contrast_work_mean {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      pairedErrorContrast A-(criticalDecayWork A+criticalDecayNegativeMean A) := by
  have hp : 0 < A := by linarith
  have hip : IntervalIntegrable (fun u => criticalDecay u*positiveSlope A u)
      volume 0 (2*A) :=
    (decay_continuous.mul (positiveSlope_continuous hp)).intervalIntegrable
      (μ := volume) 0 (2*A)
  have hin : IntervalIntegrable (fun u => criticalDecay u*negativeSlope A u)
      volume 0 (2*A) :=
    (decay_continuous.mul (negativeSlope_continuous hp)).intervalIntegrable
      (μ := volume) 0 (2*A)
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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant3a1491680490c6a943ae75990d257c883ecb88e134719127be954ed8ed3f132f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant3a1491680490c6a943ae75990d257c883ecb88e134719127be954ed8ed3f132f.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1711a4ec951ea6611afb0f20d913ff5f754bffef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
