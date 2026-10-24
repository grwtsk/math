# squareMinusDecay_eq_paired_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e93fe45a-7bb3-d19a-55c1-c5ad514f656c",
  "kind": "theorem",
  "lexical_name": "squareMinusDecay_eq_paired_difference",
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
  "slug": "squareminusdecay-eq-paired-difference--7d9f0f3bb804b2c75965b9fe",
  "source": {
    "blob": "91f4fe7a71f7480cf80994a0c0aa59d0efb203cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variantcbecc2ceb015fa8c579ef5f1fb3db84c2b374faa7a6901cb4fd12a05c60136a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d9f0f3bb804b2c75965b9fe3df0fa5120750853a246bd8268935c3ec0b9740d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variantcbecc2ceb015fa8c579ef5f1fb3db84c2b374faa7a6901cb4fd12a05c60136a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e93fe45a-7bb3-d19a-55c1-c5ad514f656c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem squareMinusDecay_eq_paired_difference {A : ℝ} (hA : 1 ≤ A) :
    squareMinusDecayPairedWork A =
      squareTailPairedWork A - (criticalDecayWork A + criticalDecayNegativeMean A) := by
  have hp : 0 < A := by linarith
  have hip := (criticalDecay_continuous.mul (positiveSlope_continuous hp)).intervalIntegrable
    (μ := volume) 0 (2*A)
  have hin := (criticalDecay_continuous.mul (negativeSlope_continuous hp)).intervalIntegrable
    (μ := volume) 0 (2*A)
  have hq := squareTail_intervalIntegrable hp
  have hqp := hq.mul_continuousOn (positiveSlope_continuous hp).continuousOn
  have hqn := hq.mul_continuousOn (negativeSlope_continuous hp).continuousOn
  have hw : criticalDecayWork A = (∫ u in 0..2*A, criticalDecay u * positiveSlope A u) -
      (∫ u in 0..2*A, criticalDecay u * negativeSlope A u) := by
    rw [← intervalIntegral.integral_sub hip hin]
    simp_rw [← mul_sub, slope_difference]
    rfl
  rw [squareMinusDecayPairedWork]
  simp_rw [sub_mul]
  rw [intervalIntegral.integral_sub hqp hip, intervalIntegral.integral_sub hqn hin]
  unfold squareTailPairedWork squareTailNegativeMean criticalDecayNegativeMean
  rw [hw, negativeMass_eq_positive_add_one hA]
  have hn : positiveMass A+1 ≠ 0 := by
    rw [← negativeMass_eq_positive_add_one hA]
    exact (negativeMass_pos hA).ne'
  field_simp [hn]
  ring

/-- Complete B2 and both means remain alongside the signed square main-term error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variantcbecc2ceb015fa8c579ef5f1fb3db84c2b374faa7a6901cb4fd12a05c60136a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variantcbecc2ceb015fa8c579ef5f1fb3db84c2b374faa7a6901cb4fd12a05c60136a1.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f4fe7a71f7480cf80994a0c0aa59d0efb203cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
