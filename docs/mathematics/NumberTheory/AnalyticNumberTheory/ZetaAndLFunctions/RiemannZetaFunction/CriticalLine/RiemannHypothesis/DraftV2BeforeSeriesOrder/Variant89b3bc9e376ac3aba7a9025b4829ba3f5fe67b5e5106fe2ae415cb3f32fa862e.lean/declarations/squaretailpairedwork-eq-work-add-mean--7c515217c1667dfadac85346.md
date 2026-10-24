# squareTailPairedWork_eq_work_add_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9963796-cbdd-9d28-372d-8bd13d40fe66",
  "kind": "theorem",
  "lexical_name": "squareTailPairedWork_eq_work_add_mean",
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
  "slug": "squaretailpairedwork-eq-work-add-mean--7c515217c1667dfadac85346",
  "source": {
    "blob": "d767b7cbe9aeac6a51dfa9a1091041fd4cbb832b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 196,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant89b3bc9e376ac3aba7a9025b4829ba3f5fe67b5e5106fe2ae415cb3f32fa862e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c515217c1667dfadac8534651f779196b831c3d1af9153bb711d1362563964b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant89b3bc9e376ac3aba7a9025b4829ba3f5fe67b5e5106fe2ae415cb3f32fa862e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9963796-cbdd-9d28-372d-8bd13d40fe66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareTailPairedWork_eq_work_add_mean {A : ℝ} (hA : 1 ≤ A) :
    squareTailPairedWork A = squareTailWork A + squareTailNegativeMean A := by
  have hp : 0 < A := by linarith
  have hi := squareTail_intervalIntegrable hp
  have hip := hi.mul_continuousOn (positiveSlope_continuous hp).continuousOn
  have hin := hi.mul_continuousOn (negativeSlope_continuous hp).continuousOn
  have hw : squareTailWork A = (∫ u in 0..2*A, squareTail u * positiveSlope A u) -
      (∫ u in 0..2*A, squareTail u * negativeSlope A u) := by
    rw [← intervalIntegral.integral_sub hip hin]
    unfold squareTailWork
    apply intervalIntegral.integral_congr
    intro u hu
    rw [← mul_sub, slope_difference]
  rw [squareTailPairedWork, hw, squareTailNegativeMean]
  rw [negativeMass_eq_positive_add_one hA]
  have hn : positiveMass A + 1 ≠ 0 := by
    rw [← negativeMass_eq_positive_add_one hA]
    exact ne_of_gt (negativeMass_pos hA)
  field_simp [hn]
  ring

/-- Both phases retain the same literal arithmetic error after exact square-tail removal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant89b3bc9e376ac3aba7a9025b4829ba3f5fe67b5e5106fe2ae415cb3f32fa862e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant89b3bc9e376ac3aba7a9025b4829ba3f5fe67b5e5106fe2ae415cb3f32fa862e.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d767b7cbe9aeac6a51dfa9a1091041fd4cbb832b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
