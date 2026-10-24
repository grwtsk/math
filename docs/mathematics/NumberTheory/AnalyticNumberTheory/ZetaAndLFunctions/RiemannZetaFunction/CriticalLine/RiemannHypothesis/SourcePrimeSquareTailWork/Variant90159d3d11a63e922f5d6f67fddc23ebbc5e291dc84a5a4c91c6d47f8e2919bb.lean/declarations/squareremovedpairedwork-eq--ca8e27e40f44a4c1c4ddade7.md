# squareRemovedPairedWork_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c6eacf12f3a86faa3d254d52219b1d260629579",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90159d3d11a63e922f5d6f67fddc23ebbc5e291dc84a5a4c91c6d47f8e2919bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6bb8a46-0aef-c170-aa58-7d360b2b3bb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14fe0ed7-b03b-6310-1a66-e961377cb5a2",
  "kind": "theorem",
  "lexical_name": "squareRemovedPairedWork_eq",
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
  "slug": "squareremovedpairedwork-eq--ca8e27e40f44a4c1c4ddade7",
  "source": {
    "blob": "8c6eacf12f3a86faa3d254d52219b1d260629579",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 225,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant90159d3d11a63e922f5d6f67fddc23ebbc5e291dc84a5a4c91c6d47f8e2919bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca8e27e40f44a4c1c4ddade71ae6b25bcc642fe2c083c257c4bd4716b19ac7b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant90159d3d11a63e922f5d6f67fddc23ebbc5e291dc84a5a4c91c6d47f8e2919bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14fe0ed7-b03b-6310-1a66-e961377cb5a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareRemovedPairedWork_eq {A : ℝ} (hA : 1 ≤ A) :
    squareRemovedPairedWork A = pairedErrorContrast A - squareTailPairedWork A := by
  have hp : 0 < A := by linarith
  have hi := squareTail_intervalIntegrable hp
  have hip := hi.mul_continuousOn (positiveSlope_continuous hp).continuousOn
  have hin := hi.mul_continuousOn (negativeSlope_continuous hp).continuousOn
  unfold squareRemovedPairedWork
  simp_rw [sub_mul]
  rw [intervalIntegral.integral_sub (positiveSlopeWork_intervalIntegrable hp) hip,
    intervalIntegral.integral_sub (negativeSlopeWork_intervalIntegrable hp) hin,
    pairedErrorContrast_eq hA]
  unfold squareTailPairedWork negativeErrorMean squareTailNegativeMean
    positiveSlopeWork negativeSlopeWork
  rw [sub_div]
  ring

/-- The square contribution cancels internally; no eventual lower witness is supplied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant90159d3d11a63e922f5d6f67fddc23ebbc5e291dc84a5a4c91c6d47f8e2919bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant90159d3d11a63e922f5d6f67fddc23ebbc5e291dc84a5a4c91c6d47f8e2919bb.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c6eacf12f3a86faa3d254d52219b1d260629579` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
