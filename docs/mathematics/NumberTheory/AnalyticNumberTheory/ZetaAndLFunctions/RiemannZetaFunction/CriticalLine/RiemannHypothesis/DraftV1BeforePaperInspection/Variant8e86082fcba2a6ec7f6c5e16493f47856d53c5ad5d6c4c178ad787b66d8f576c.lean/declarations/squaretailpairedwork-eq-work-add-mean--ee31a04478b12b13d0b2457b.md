# squareTailPairedWork_eq_work_add_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0bedc577c56e4c181f05c107f4f8736323b21ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:938d58eb-f816-a5a2-8ddd-791dc1f77952",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c118eb8-381d-86f4-86a0-6d770bfb9f48",
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
  "slug": "squaretailpairedwork-eq-work-add-mean--ee31a04478b12b13d0b2457b",
  "source": {
    "blob": "f0bedc577c56e4c181f05c107f4f8736323b21ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 190,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee31a04478b12b13d0b2457b9b53269aed80c9a1f38d0f2323d7423b4855dcff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c118eb8-381d-86f4-86a0-6d770bfb9f48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–208.

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
  have hn : negativeMass A ≠ 0 := ne_of_gt (negativeMass_pos hA)
  field_simp [hn]
  nlinarith [mass_difference hA]

end FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0bedc577c56e4c181f05c107f4f8736323b21ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
